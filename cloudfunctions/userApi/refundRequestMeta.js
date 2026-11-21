function sqlUtf8(expr) {
  return "CONVERT(IFNULL(" + expr + ",'') USING utf8mb4) COLLATE utf8mb4_general_ci"
}

function sqlUtf8Lit(value) {
  return "CONVERT('" + String(value).replace(/'/g, "''") + "' USING utf8mb4) COLLATE utf8mb4_general_ci"
}

function sqlUtf8Param() {
  return "CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci"
}

function typeLabel(type) {
  const map = {
    mall_card: '购卡退款',
    booking_cash_issue: '只退款·改发卡',
    booking_cancel: '取消预约退款',
    admin_card: '退卡',
    admin_card_delete: '删除并退卡',
    booking_wx_refund: '补退微信'
  }
  return map[type] || type || '购卡退款'
}

function encodeMeta(meta) {
  const m = meta || {}
  const parts = ['BKREF', 'v1', m.type || 'mall_card']
  const fields = {
    bid: m.bookingId || '',
    tpl: m.issueTemplateId || '',
    ip: m.issuePrice != null && m.issuePrice !== '' ? m.issuePrice : '',
    mt: m.payMeituan || 0,
    dy: m.payDouyin || 0,
    of: m.payOffline || 0,
    cid: m.coachId || '',
    cn: String(m.coachName || '').replace(/\|/g, '/'),
    init: String(m.initiatorName || '').replace(/\|/g, '/'),
    iph: m.initiatorPhone || '',
    src: m.initiatorSource || '',
    vid: m.venueId || '',
    vn: String(m.venueName || '').replace(/\|/g, '/'),
    sum: String(m.summary || '').replace(/\|/g, '/')
  }
  Object.keys(fields).forEach((k) => {
    if (fields[k] !== '' && fields[k] != null) parts.push(k + '=' + fields[k])
  })
  let s = parts.join('|')
  if (s.length > 255) s = s.slice(0, 255)
  return s
}

function parseEncoded(reason) {
  const encoded = {}
  if (String(reason || '').indexOf('BKREF|v1|') !== 0) return encoded
  const bits = String(reason).split('|')
  encoded.type = bits[2] || ''
  bits.slice(3).forEach((p) => {
    const i = p.indexOf('=')
    if (i < 0) return
    encoded[p.slice(0, i)] = p.slice(i + 1)
  })
  return encoded
}

function parseMeta(row) {
  const reason = String((row && row.reason) || '')
  let payload = {}
  if (row && row.payload_json) {
    try { payload = JSON.parse(row.payload_json) || {} } catch (e) { payload = {} }
  }
  const encoded = parseEncoded(reason)
  const type = (row && row.request_type) || encoded.type || payload.type || 'mall_card'
  const bookingId = (row && row.booking_id) || encoded.bid || payload.bookingId || ''
  const initiatorName = (row && row.initiator_name) || encoded.init || payload.initiatorName || ''
  const initiatorPhone = (row && row.initiator_phone) || encoded.iph || payload.initiatorPhone || ''
  const initiatorSource = (row && row.initiator_source) || encoded.src || payload.initiatorSource || (type === 'mall_card' ? 'miniprogram' : 'admin')
  return {
    type,
    bookingId: bookingId === '' ? '' : bookingId,
    issueTemplateId: encoded.tpl || payload.issueTemplateId || '',
    issuePrice: encoded.ip !== '' && encoded.ip != null ? Number(encoded.ip) : Number(payload.issuePrice || 0),
    payMeituan: Number(encoded.mt != null ? encoded.mt : (payload.payMeituan || 0)),
    payDouyin: Number(encoded.dy != null ? encoded.dy : (payload.payDouyin || 0)),
    payOffline: Number(encoded.of != null ? encoded.of : (payload.payOffline || 0)),
    coachId: encoded.cid || payload.coachId || '',
    coachName: encoded.cn || payload.coachName || '',
    initiatorName,
    initiatorPhone,
    initiatorSource,
    venueId: (row && row.venue_id) || encoded.vid || payload.venueId || '',
    venueName: (row && row.venue_name) || encoded.vn || payload.venueName || '',
    summary: encoded.sum || payload.summary || (reason.indexOf('BKREF|') === 0 ? '' : reason)
  }
}

function initiatorText(meta, row) {
  const m = meta || parseMeta(row || {})
  const name = m.initiatorName || (row && (row.user_name || row.user_nick)) || ''
  const phone = m.initiatorPhone || (row && row.user_phone) || ''
  const who = name && phone && phone !== name ? (name + '（' + phone + '）') : (name || phone || '未知')
  if (m.initiatorSource === 'miniprogram' || m.type === 'mall_card' && !m.initiatorName) {
    const mallName = (row && (row.user_name || row.user_nick)) || name || '会员'
    const mallPhone = (row && row.user_phone) || phone
    const mallWho = mallPhone ? (mallName + '（' + mallPhone + '）') : mallName
    return mallWho + ' · 小程序'
  }
  if (m.initiatorSource === 'admin' || m.initiatorSource === 'front') return who + ' · 后台'
  return who
}

function hoursUntilStart(b) {
  if (!b) return 0
  const date = String(b.date || '').slice(0, 10)
  const start = String(b.time || '').split(/[-~]/)[0].trim() || '00:00'
  const t = new Date(date.replace(/-/g, '/') + ' ' + start + ':00')
  if (isNaN(t.getTime())) return 0
  return (t.getTime() - Date.now()) / 3600000
}

function canMiniProgramCancel(b) {
  return hoursUntilStart(b) >= 6
}

function canMiniProgramRefund(b) {
  return hoursUntilStart(b) >= 24
}

async function withdrawRequest(conn, opts) {
  opts = opts || {}
  let row = null
  if (opts.requestId) {
    const [rows] = await conn.query('SELECT * FROM card_refund_requests WHERE id=? LIMIT 1', [opts.requestId])
    row = (rows && rows[0]) || null
  } else if (opts.bookingId) {
    row = await findPending(conn, { bookingId: opts.bookingId })
  }
  if (!row) return { ok: false, msg: '没有待确认的退款申请' }
  if (row.status === 'confirmed') return { ok: false, msg: '退款已确认，不能撤回' }
  if (row.status === 'refunding') return { ok: false, msg: '退款正在处理中，不能撤回' }
  if (row.status === 'withdrawn') return { ok: true, already: true, requestId: row.id, msg: '申请已撤回' }
  if (row.status !== 'pending') return { ok: false, msg: '该申请当前不能撤回' }
  const [ret] = await conn.query(
    `UPDATE card_refund_requests SET status='withdrawn', updated_at=NOW() WHERE id=? AND CONVERT(IFNULL(status,'') USING utf8mb4) COLLATE utf8mb4_general_ci = CONVERT('pending' USING utf8mb4) COLLATE utf8mb4_general_ci`,
    [row.id]
  )
  if (ret && ret.affectedRows === 0) return { ok: false, msg: '撤回失败，申请状态已变化' }
  return { ok: true, requestId: row.id, msg: '已撤回退款申请' }
}

function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
}

async function insertRequest(conn, rec) {
  const meta = rec.meta || {}
  const reason = rec.reason && String(rec.reason).indexOf('BKREF|') === 0
    ? rec.reason
    : encodeMeta(Object.assign({}, meta, { summary: rec.summary || meta.summary }))
  const cardId = rec.cardId != null ? rec.cardId : 0
  const baseCols = 'card_id, user_id, openid, pay_order_id, status, remaining_times, total_times, paid_amount, refund_amount, reason, requested_at, created_at, updated_at'
  const baseVals = "?, ?, ?, ?, 'pending', ?, ?, ?, ?, ?, NOW(), NOW(), NOW()"
  const baseParams = [
    cardId,
    rec.userId || null,
    rec.openid || '',
    rec.payOrderId || null,
    rec.remainingTimes != null ? rec.remainingTimes : null,
    rec.totalTimes != null ? rec.totalTimes : null,
    rec.paidAmount != null ? rec.paidAmount : null,
    rec.refundAmount != null ? rec.refundAmount : null,
    reason
  ]
  try {
    const venueId = rec.venueId || meta.venueId || ''
    const venueName = rec.venueName || meta.venueName || ''
    try {
      const [ins] = await conn.query(
        'INSERT INTO card_refund_requests (' + baseCols + ', request_type, booking_id, initiator_name, initiator_phone, initiator_source, payload_json, venue_id, venue_name) VALUES (' + baseVals + ', ?, ?, ?, ?, ?, ?, ?, ?)',
        baseParams.concat([
          meta.type || 'mall_card',
          meta.bookingId || null,
          meta.initiatorName || '',
          meta.initiatorPhone || '',
          meta.initiatorSource || 'admin',
          JSON.stringify(meta),
          venueId || null,
          venueName || null
        ])
      )
      return ins.insertId
    } catch (e0) {
      const m0 = String((e0 && e0.message) || '')
      if (m0.indexOf('Unknown column') < 0 || (m0.indexOf('venue_id') < 0 && m0.indexOf('venue_name') < 0)) throw e0
    }
    const [ins] = await conn.query(
      'INSERT INTO card_refund_requests (' + baseCols + ', request_type, booking_id, initiator_name, initiator_phone, initiator_source, payload_json) VALUES (' + baseVals + ', ?, ?, ?, ?, ?, ?)',
      baseParams.concat([
        meta.type || 'mall_card',
        meta.bookingId || null,
        meta.initiatorName || '',
        meta.initiatorPhone || '',
        meta.initiatorSource || 'admin',
        JSON.stringify(meta)
      ])
    )
    return ins.insertId
  } catch (e) {
    const msg = String((e && e.message) || '')
    if (
      msg.indexOf('Unknown column') < 0 &&
      msg.indexOf('request_type') < 0 &&
      msg.indexOf('payload_json') < 0 &&
      msg.indexOf('booking_id') < 0 &&
      msg.indexOf('initiator_') < 0 &&
      msg.indexOf('venue_') < 0
    ) throw e
    const [ins] = await conn.query(
      'INSERT INTO card_refund_requests (' + baseCols + ') VALUES (' + baseVals + ')',
      baseParams
    )
    return ins.insertId
  }
}

async function findPending(conn, opts) {
  opts = opts || {}
  if (opts.bookingId) {
    try {
      const [rows2] = await conn.query(
        "SELECT * FROM card_refund_requests WHERE CONVERT(IFNULL(status,'') USING utf8mb4) COLLATE utf8mb4_general_ci IN (CONVERT('pending' USING utf8mb4) COLLATE utf8mb4_general_ci,CONVERT('refunding' USING utf8mb4) COLLATE utf8mb4_general_ci) AND booking_id=? ORDER BY id DESC LIMIT 1",
        [opts.bookingId]
      )
      if (rows2 && rows2[0]) return rows2[0]
    } catch (e) {}
    const token = '|bid=' + opts.bookingId
    const [rows] = await conn.query(
      "SELECT * FROM card_refund_requests WHERE CONVERT(IFNULL(status,'') USING utf8mb4) COLLATE utf8mb4_general_ci IN (CONVERT('pending' USING utf8mb4) COLLATE utf8mb4_general_ci,CONVERT('refunding' USING utf8mb4) COLLATE utf8mb4_general_ci) AND (CONVERT(IFNULL(reason,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci OR CONVERT(IFNULL(reason,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci OR CONVERT(IFNULL(reason,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci) ORDER BY id DESC LIMIT 1",
      [token + '|%', token, '%'+ token + '|%']
    )
    return (rows && rows[0]) || null
  }
  if (opts.cardId != null && opts.cardId !== '') {
    const [rows] = await conn.query(
      "SELECT * FROM card_refund_requests WHERE card_id=? AND CONVERT(IFNULL(status,'') USING utf8mb4) COLLATE utf8mb4_general_ci IN (CONVERT('pending' USING utf8mb4) COLLATE utf8mb4_general_ci,CONVERT('refunding' USING utf8mb4) COLLATE utf8mb4_general_ci) ORDER BY id DESC LIMIT 1",
      [opts.cardId]
    )
    return (rows && rows[0]) || null
  }
  return null
}

async function assertApprovedRequest(conn, requestId, expectType, bookingId) {
  if (!requestId) return { ok: false, msg: '缺少已确认的退款申请' }
  const [rows] = await conn.query('SELECT * FROM card_refund_requests WHERE id=? LIMIT 1', [requestId])
  const row = rows && rows[0]
  if (!row) return { ok: false, msg: '退款申请不存在' }
  if (row.status !== 'refunding') return { ok: false, msg: '请先在退款申请中由管理员确认' }
  const meta = parseMeta(row)
  if (expectType && meta.type && meta.type !== expectType) return { ok: false, msg: '申请类型不匹配' }
  if (bookingId && meta.bookingId && String(meta.bookingId) !== String(bookingId)) {
    return { ok: false, msg: '申请与预约不匹配' }
  }
  return { ok: true, request: row, meta }
}

async function bookingHasMoneyRefund(conn, b) {
  if (money(b && b.amount) > 0) return true
  if (b && b.pay_order_id) {
    try {
      const [pos] = await conn.query('SELECT status FROM pay_orders WHERE id=? LIMIT 1', [b.pay_order_id])
      if (pos[0] && pos[0].status === 'paid') return true
    } catch (e) {}
  }
  if (b && b.id) {
    try {
      const [bled] = await conn.query(
        "SELECT amount FROM finance_ledger WHERE booking_id=? AND type='balance_out' ORDER BY id DESC LIMIT 1",
        [b.id]
      )
      if (money(bled[0] && bled[0].amount) > 0) return true
    } catch (e) {}
  }
  return false
}

function isLockBooking(b) {
  if (!b) return false
  return b.status === 'locked' || b.source === 'lock' || String(b.user_name || '') === '锁场'
}


const FN_HTTP_BASE = process.env.CLOUD_HTTP_BASE || 'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com'

function httpPostFn(name, payload, timeoutMs) {
  const https = require('https')
  const { URL } = require('url')
  const u = new URL(String(FN_HTTP_BASE).replace(/\/$/, '') + '/' + name)
  const data = JSON.stringify(payload || {})
  return new Promise((resolve, reject) => {
    const req = https.request({
      hostname: u.hostname,
      port: u.port || 443,
      path: u.pathname,
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'User-Agent': 'GoatTennisAdmin/1.0',
        'Content-Length': Buffer.byteLength(data)
      },
      timeout: timeoutMs || 45000
    }, (res) => {
      const chunks = []
      res.on('data', (c) => chunks.push(c))
      res.on('end', () => {
        const raw = Buffer.concat(chunks).toString('utf8')
        try {
          const j = JSON.parse(raw)
          resolve(j && j.body ? (typeof j.body === 'string' ? JSON.parse(j.body) : j.body) : j)
        } catch (e) {
          reject(new Error((raw || '').slice(0, 200) || '接口返回无效'))
        }
      })
    })
    req.on('error', reject)
    req.on('timeout', () => { req.destroy(); reject(new Error('调用超时')) })
    req.write(data)
    req.end()
  })
}

async function callCloudFn(cloud, name, payload) {
  if (cloud && cloud.callFunction) {
    try {
      const res = await cloud.callFunction({ name, data: payload || {} })
      if (res && res.result) return res.result
    } catch (e) {}
  }
  return httpPostFn(name, payload)
}

module.exports = {
  typeLabel,
  encodeMeta,
  parseMeta,
  initiatorText,
  insertRequest,
  findPending,
  withdrawRequest,
  hoursUntilStart,
  canMiniProgramCancel,
  canMiniProgramRefund,
  assertApprovedRequest,
  bookingHasMoneyRefund,
  isLockBooking,
  money,
  callCloudFn
}
