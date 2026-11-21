const crypto = require('crypto')
const https = require('https')
const mysql = require('mysql2/promise')
let cloud = null
try {
  cloud = require('wx-server-sdk')
  cloud.init({ env: cloud.DYNAMIC_CURRENT_ENV })
} catch (e) {}

const pool = mysql.createPool({
  host: process.env.DB_HOST || 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: Number(process.env.DB_PORT || 26462),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'goat_prod',
  waitForConnections: true,
  connectionLimit: 5,
  connectTimeout: 10000
})

const mall = require('./cardMall')
const cardPayFulfill = require('./cardPayFulfill')
const PAY_FN_VER = 'pay-20261121b'
const PENDING_TTL_MIN = 30
const BUSY_SQL = "('booked','locked','pending_pay')"

function isOutdoorSharedCourt(courtName) {
  return String(courtName || '').trim() === '外场'
}

function normCourt(c) {
  return String(c || '').trim().replace(/^发球机/u, '').replace(/场$/u, '')
}

async function resolveCourtName(conn, venueId, court) {
  const raw = String(court || '').trim()
  if (!raw) return ''
  const n = normCourt(raw)
  try {
    const [rows] = await conn.query(
      `SELECT name FROM courts
        WHERE venue_id=? AND IFNULL(status,'open') NOT IN ('disabled','closed','停用')
          AND (name=? OR name=? OR TRIM(TRAILING '场' FROM name)=?)
        ORDER BY (name=?) DESC, (name=?) DESC, id ASC LIMIT 1`,
      [venueId, raw, n + '场', n, raw, n + '场']
    )
    if (rows && rows[0] && rows[0].name) return String(rows[0].name)
  } catch (e) {}
  return raw
}


async function isCourtCustomerVisible(conn, venueId, court) {
  const raw = String(court || '').trim()
  if (isOutdoorSharedCourt(raw)) return false
  if (!venueId || !raw) return true
  try {
    const n = normCourt(raw)
    const [rows] = await conn.query(
      `SELECT name, IFNULL(customer_visible, 1) AS v FROM courts
        WHERE venue_id=? AND (name=? OR name=? OR TRIM(TRAILING '场' FROM name)=?)
        ORDER BY (name=?) DESC, id ASC
        LIMIT 1`,
      [venueId, raw, n + '场', n, raw]
    )
    if (!rows || !rows[0]) return true
    if (isOutdoorSharedCourt(rows[0].name)) return false
    return Number(rows[0].v) !== 0
  } catch (e) {
    return !isOutdoorSharedCourt(raw)
  }
}

function slotLockName(venueId, dateYmd, time, court) {
  const raw = 'book:' + String(venueId || '') + ':' + String(dateYmd || '') + ':' + String(time || '') + ':' + normCourt(court)
  if (raw.length <= 64) return raw
  return 'book:' + crypto.createHash('sha1').update(raw).digest('hex')
}

async function acquireSlotLock(conn, venueId, dateYmd, time, court) {
  const name = slotLockName(venueId, dateYmd, time, court)
  const [rows] = await conn.query('SELECT GET_LOCK(?, 10) AS ok', [name])
  if (!rows[0] || Number(rows[0].ok) !== 1) {
    const err = new Error('系统繁忙，请稍后重试')
    err.code = 'SLOT_LOCK'
    throw err
  }
  return name
}

async function releaseSlotLock(conn, name) {
  if (!name) return
  try {
    await conn.query('SELECT RELEASE_LOCK(?)', [name])
  } catch (e) {}
}

function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
}

function weekdayMon1(dateStr) {
  const s = String(dateStr || '').slice(0, 10)
  if (!s) return 0
  const d = new Date(s.replace(/-/g, '/'))
  if (Number.isNaN(d.getTime())) return 0
  const w = d.getDay()
  return w === 0 ? 7 : w
}

async function getSlotPrice(conn, venueId, court, dateStr, timeStr) {
  const wd = weekdayMon1(dateStr)
  if (!venueId || !court || !wd || !timeStr) return 0
  try {
    const raw = String(court || '').trim()
    const n = normCourt(raw)
    const [rows] = await conn.query(
      `SELECT price FROM court_prices
        WHERE venue_id=? AND weekday=? AND time_slot=?
          AND (court=? OR court=? OR court=CONCAT(?,'场'))
        LIMIT 1`,
      [venueId, wd, timeStr, raw, n, n]
    )
    return money(rows[0] && rows[0].price)
  } catch (e) {
    return 0
  }
}


async function queryWxOrder(mch, outTradeNo) {
  if (!mch || !outTradeNo) return { ok: false, msg: '缺少商户或单号' }
  const privateKey = normalizePem(mch.keyPem)
  if (!privateKey || !mch.mchid || !mch.serial) {
    return { ok: false, msg: '支付证书未配置' }
  }
  const urlPath =
    '/v3/pay/transactions/out-trade-no/' +
    encodeURIComponent(outTradeNo) +
    '?mchid=' +
    encodeURIComponent(mch.mchid)
  const authorization = authHeader(mch.mchid, mch.serial, privateKey, 'GET', urlPath, '')
  const wxRes = await requestJson(
    'GET',
    'api.mch.weixin.qq.com',
    urlPath,
    { Accept: 'application/json', Authorization: authorization },
    null
  )
  if (wxRes.status === 200 && wxRes.json) {
    return { ok: true, data: wxRes.json }
  }
  return {
    ok: false,
    status: wxRes.status,
    msg: (wxRes.json && (wxRes.json.message || wxRes.json.code)) || '查单失败',
    data: wxRes.json || null
  }
}

async function refundWxOrder(mch, opts) {
  opts = opts || {}
  if (!mch) return { ok: false, msg: '缺少商户' }
  const privateKey = normalizePem(mch.keyPem)
  if (!privateKey || !mch.mchid || !mch.serial) {
    return { ok: false, msg: '支付证书未配置，无法退款' }
  }
  const outRefundNo = opts.outRefundNo || ('RF' + String(opts.outTradeNo || '').slice(0, 28))
  const bodyObj = {
    out_refund_no: outRefundNo,
    reason: String(opts.reason || '取消订场退款').slice(0, 80),
    amount: {
      refund: Number(opts.refundFen) || 0,
      total: Number(opts.amountFen) || 0,
      currency: 'CNY'
    }
  }
  if (opts.transactionId) bodyObj.transaction_id = opts.transactionId
  else bodyObj.out_trade_no = opts.outTradeNo
  if (!bodyObj.amount.refund || !bodyObj.amount.total) {
    return { ok: false, msg: '退款金额无效' }
  }
  const wxBody = JSON.stringify(bodyObj)
  const urlPath = '/v3/refund/domestic/refunds'
  const authorization = authHeader(mch.mchid, mch.serial, privateKey, 'POST', urlPath, wxBody)
  const wxRes = await requestJson(
    'POST',
    'api.mch.weixin.qq.com',
    urlPath,
    {
      Accept: 'application/json',
      'Content-Type': 'application/json',
      Authorization: authorization
    },
    wxBody
  )
  const j = wxRes.json || {}
  // Already refunded with same out_refund_no
  if (wxRes.status === 200 && (j.refund_id || j.status === 'SUCCESS' || j.status === 'PROCESSING' || j.out_refund_no)) {
    return { ok: true, outRefundNo, refundId: j.refund_id || '', data: j }
  }
  {
    const code = String(j.code || '')
    const msg = String(j.message || '')
    if (msg.indexOf('已退款') >= 0 || msg.indexOf('重复退款') >= 0 || (code === 'INVALID_REQUEST' && msg.indexOf('退款') >= 0)) {
      return { ok: true, already: true, outRefundNo, data: j }
    }
    if (code === 'RESOURCE_NOT_EXISTS') {
      return { ok: false, msg: msg || '原订单不存在', data: j }
    }
  }
  return {
    ok: false,
    msg: (j && (j.message || j.code)) || '微信退款失败',
    data: j,
    status: wxRes.status
  }
}

async function markOrderPaid(conn, o, transactionId) {
  if (!o || !o.id) return o
  const tid = transactionId || o.transaction_id || ''
  await conn.query(
    `UPDATE pay_orders
        SET status='paid',
            transaction_id=IF(?<>'', ?, IFNULL(transaction_id,'')),
            paid_at=IFNULL(paid_at, NOW()),
            updated_at=NOW()
      WHERE id=? AND status IN ('pending','failed')`,
    [tid, tid, o.id]
  )
  const [rows] = await conn.query('SELECT * FROM pay_orders WHERE id=? LIMIT 1', [o.id])
  return rows[0] || o
}

async function cancelPendingPayBooking(conn, bookingId, payOrderId, remarkSuffix) {
  if (bookingId) {
    await conn.query(
      `UPDATE bookings
          SET status='cancelled',
              remark=CONCAT(IFNULL(remark,''), ?),
              updated_at=NOW()
        WHERE id=? AND status='pending_pay'`,
      [remarkSuffix || ' [支付超时取消]', bookingId]
    )
  }
  if (payOrderId) {
    await conn.query(
      `UPDATE pay_orders SET status='failed', updated_at=NOW()
        WHERE id=? AND status='pending'`,
      [payOrderId]
    )
  }
}

/**
 * For one stale pending booking+order: query WeChat first.
 * Paid → fulfill. Closed/notpay/expired → cancel hold.
 */
async function resolveStalePendingRow(conn, row) {
  const bookingId = row.booking_id || row.id
  const payOrderId = row.pay_order_id
  let o = null
  if (payOrderId) {
    const [pos] = await conn.query('SELECT * FROM pay_orders WHERE id=? LIMIT 1', [payOrderId])
    o = pos[0] || null
  }
  if (!o && row.out_trade_no) {
    const [pos] = await conn.query('SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1', [row.out_trade_no])
    o = pos[0] || null
  }
  if (!o) {
    await cancelPendingPayBooking(conn, bookingId, null, ' [支付超时取消·无订单]')
    return { action: 'cancelled', reason: 'no_order' }
  }
  if (o.status === 'paid' || o.status === 'refunded') {
    if (o.status === 'paid') {
      let slotLock = null
      try {
        slotLock = await acquireSlotLock(conn, o.venue_id, o.book_date, o.book_time, o.court)
      } catch (e) {}
      try {
        const r = await fulfillPaidOrder(conn, o, { from: 'sweep' })
        return { action: 'fulfilled', result: r }
      } finally {
        await releaseSlotLock(conn, slotLock)
      }
    }
    await cancelPendingPayBooking(conn, bookingId, null, ' [已退款清占坑]')
    return { action: 'cancelled', reason: 'refunded' }
  }

  const mch = mchOf(o.venue_id)
  if (!mch || !mch.keyPem) {
    // Cannot query — do not free if still within safety; only cancel very old
    await cancelPendingPayBooking(conn, bookingId, o.id, ' [支付超时取消·无法查单]')
    return { action: 'cancelled', reason: 'no_mch' }
  }
  let q
  try {
    q = await queryWxOrder(mch, o.out_trade_no)
  } catch (e) {
    console.warn('queryWxOrder', e.message || e)
    return { action: 'skip', reason: 'query_error' }
  }
  if (q.ok && q.data && q.data.trade_state === 'SUCCESS') {
    const paid = await markOrderPaid(conn, o, q.data.transaction_id || '')
    let slotLock = null
    try {
      slotLock = await acquireSlotLock(conn, paid.venue_id, paid.book_date, paid.book_time, paid.court)
    } catch (e) {}
    try {
      const r = await fulfillPaidOrder(conn, paid, { from: 'sweep_query' })
      return { action: 'fulfilled', result: r }
    } finally {
      await releaseSlotLock(conn, slotLock)
    }
  }
  const state = (q.data && q.data.trade_state) || ''
  // NOTPAY / USERPAYING — if past TTL, close local hold (user can rebook)
  // CLOSED / REVOKED / PAYERROR — cancel
  if (!q.ok && q.status === 404) {
    await cancelPendingPayBooking(conn, bookingId, o.id, ' [支付超时取消·微信无单]')
    return { action: 'cancelled', reason: 'not_found' }
  }
  if (
    state === 'NOTPAY' ||
    state === 'CLOSED' ||
    state === 'REVOKED' ||
    state === 'PAYERROR' ||
    state === '' ||
    !q.ok
  ) {
    // Try close order on WeChat if still NOTPAY (best-effort)
    await cancelPendingPayBooking(
      conn,
      bookingId,
      o.id,
      ' [支付超时取消' + (state ? '·' + state : '') + ']'
    )
    return { action: 'cancelled', reason: state || 'unpaid' }
  }
  if (state === 'USERPAYING') {
    return { action: 'skip', reason: 'user_paying' }
  }
  return { action: 'skip', reason: state || 'unknown' }
}

async function expireStalePending(conn, venueId, dateYmd, time, courtNorm) {
  try {
    const [rows] = await conn.query(
      `SELECT b.id AS booking_id, b.pay_order_id, p.out_trade_no, p.status AS pay_status
         FROM bookings b
         LEFT JOIN pay_orders p ON p.id = b.pay_order_id
        WHERE b.venue_id=? AND b.date=? AND b.time=?
          AND (b.court=? OR b.court=CONCAT(?,'场'))
          AND b.status='pending_pay'
          AND b.created_at < DATE_SUB(NOW(), INTERVAL ? MINUTE)`,
      [venueId, dateYmd, time, courtNorm, courtNorm, PENDING_TTL_MIN]
    )
    for (const r of rows || []) {
      try {
        await resolveStalePendingRow(conn, r)
      } catch (e) {
        console.warn('expireStalePending row', e.message || e)
      }
    }
  } catch (e) {
    console.warn('expireStalePending', e.message || e)
  }
}

async function sweepStalePendingGlobal(limit) {
  const lim = Math.min(50, Math.max(1, Number(limit) || 20))
  const conn = await pool.getConnection()
  const summary = { scanned: 0, fulfilled: 0, cancelled: 0, skipped: 0 }
  try {
    const [rows] = await conn.query(
      `SELECT b.id AS booking_id, b.pay_order_id, p.out_trade_no, p.status AS pay_status,
              b.venue_id, b.date, b.time, b.court
         FROM bookings b
         LEFT JOIN pay_orders p ON p.id = b.pay_order_id
        WHERE b.status='pending_pay'
          AND b.created_at < DATE_SUB(NOW(), INTERVAL ? MINUTE)
        ORDER BY b.id ASC
        LIMIT ?`,
      [PENDING_TTL_MIN, lim]
    )
    for (const r of rows || []) {
      summary.scanned += 1
      try {
        const out = await resolveStalePendingRow(conn, r)
        if (out.action === 'fulfilled') summary.fulfilled += 1
        else if (out.action === 'cancelled') summary.cancelled += 1
        else summary.skipped += 1
      } catch (e) {
        summary.skipped += 1
        console.warn('sweep row', e.message || e)
      }
    }
  } finally {
    conn.release()
  }
  return summary
}

async function ensureLedgerCourtRefund(conn, o, bookingId, outRefundNo) {
  const [exist] = await conn.query(
    `SELECT id FROM finance_ledger WHERE pay_order_id=? AND type='court_refund' LIMIT 1`,
    [o.id]
  )
  if (exist && exist[0]) return
  const amt = Math.round(Number(o.amount_fen) || 0) / 100
  if (!(amt > 0)) return
  await conn.query(
    `INSERT INTO finance_ledger
      (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
       operator_name, card_id, booking_id, pay_order_id, remark)
     VALUES (?, 'court_refund', ?, ?, ?, ?, ?, ?, NULL, ?, ?, ?)`,
    [
      o.book_date || new Date(),
      -amt,
      o.venue_id || '',
      o.venue_name || '',
      Number(o.user_id) > 0 ? Number(o.user_id) : null,
      o.user_name || '',
      '微信退款',
      bookingId || o.booking_id || null,
      o.id,
      '退款 ' + (o.court || '') + ' ' + (o.book_time || '') + ' ' + (outRefundNo || o.out_trade_no || '')
    ]
  )
}

async function refundPaidOrder(conn, o, opts) {
  opts = opts || {}
  if (!o || !o.id) return { ok: false, msg: '订单不存在', fnVer: PAY_FN_VER }
  if (o.status === 'refunded') {
    return { ok: true, already: true, msg: '已退款', fnVer: PAY_FN_VER }
  }
  if (o.status !== 'paid') {
    return { ok: false, msg: '订单未支付，无法退款', status: o.status, fnVer: PAY_FN_VER }
  }
  const mch = mchOf(o.venue_id)
  if (!mch) return { ok: false, msg: '该场馆未配置商户号', fnVer: PAY_FN_VER }
  const amountFen = Number(o.amount_fen) || 0
  const refundFen = Number(opts.refundFen != null ? opts.refundFen : amountFen) || 0
  if (!refundFen || refundFen < 1) {
    return { ok: false, msg: '退款金额无效', fnVer: PAY_FN_VER }
  }
  if (refundFen > amountFen) {
    return { ok: false, msg: '退款金额不能大于实付', fnVer: PAY_FN_VER }
  }
  const outRefundNo = opts.outRefundNo || ('RF' + String(o.out_trade_no || o.id).replace(/[^a-zA-Z0-9]/g, '').slice(0, 30))
  const wx = await refundWxOrder(mch, {
    outTradeNo: o.out_trade_no,
    transactionId: o.transaction_id || '',
    amountFen,
    refundFen,
    outRefundNo,
    reason: opts.reason || '取消订场退款'
  })
  if (!wx.ok) {
    return { ok: false, msg: wx.msg || '微信退款失败', wx: wx.data || null, fnVer: PAY_FN_VER }
  }
  await conn.query(
    `UPDATE pay_orders
        SET status='refunded',
            description=CONCAT(IFNULL(description,''), ' [退款', ?, ']'),
            updated_at=NOW()
      WHERE id=? AND status IN ('paid','refunded')`,
    [outRefundNo, o.id]
  )
  if (!opts.skipLedger) {
    try {
      await ensureLedgerCourtRefund(conn, o, o.booking_id || opts.bookingId || null, outRefundNo)
    } catch (e) {
      console.warn('court_refund ledger', e.message || e)
    }
  }
  return {
    ok: true,
    already: !!wx.already,
    outRefundNo,
    refundId: wx.refundId || '',
    refundFen,
    fnVer: PAY_FN_VER
  }
}


async function ensureLedgerCourtPay(conn, o, bookingId, outTradeNo) {
  const [exist] = await conn.query(
    `SELECT id FROM finance_ledger WHERE pay_order_id=? AND type='court_pay' LIMIT 1`,
    [o.id]
  )
  if (exist && exist[0]) return
  const amt = Math.round(Number(o.amount_fen) || 0) / 100
  await conn.query(
    `INSERT INTO finance_ledger
      (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
       operator_name, card_id, booking_id, pay_order_id, remark)
     VALUES (?, 'court_pay', ?, ?, ?, ?, ?, ?, NULL, ?, ?, ?)`,
    [
      o.book_date || new Date(),
      amt,
      o.venue_id || '',
      o.venue_name || '',
      Number(o.user_id) > 0 ? Number(o.user_id) : null,
      o.user_name || '',
      '微信支付',
      bookingId || null,
      o.id,
      (o.court || '') + ' ' + (o.book_time || '') + ' ' + (outTradeNo || o.out_trade_no || '')
    ]
  )
}

async function writeBookingLog(conn, o, bookingId) {
  try {
    const amt = Math.round(Number(o.amount_fen) || 0) / 100
    await conn.query(
      `INSERT INTO activity_logs
        (type, user_name, operator_name, phone, detail, venue_id, venue_name, amount, card_name, created_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())`,
      [
        'booking_add',
        o.user_name || '',
        o.user_name || '用户',
        o.phone || '',
        `预约 ${o.court || ''} ${o.book_date || ''} ${o.book_time || ''} · 微信支付`,
        o.venue_id || '',
        o.venue_name || '',
        amt,
        ''
      ]
    )
  } catch (e) {
    console.warn('activity_logs', e.message || e)
  }
}

/**
 * After pay_orders is paid: promote pending_pay → booked, or insert booked.
 * Idempotent. Caller should hold slot GET_LOCK when possible.
 */
async function fulfillPaidOrder(conn, o, opts) {
  opts = opts || {}
  if (!o || !o.id) return { ok: false, msg: '无订单' }
  if (mall.isCardPayOrder(o)) {
    return await cardPayFulfill.fulfillCardPayOrder(conn, o, opts)
  }
  const amt = Math.round(Number(o.amount_fen) || 0) / 100
  const courtNorm = normCourt(o.court)
  const courtName = (await resolveCourtName(conn, o.venue_id, o.court)) || o.court
  let bookingId = o.booking_id ? Number(o.booking_id) : null
  let created = false

  if (bookingId) {
    const [bk] = await conn.query('SELECT * FROM bookings WHERE id=? LIMIT 1', [bookingId])
    const b = bk && bk[0]
    if (b) {
      if (b.status === 'pending_pay' || b.status === 'booked') {
        if (b.status === 'pending_pay') {
          await conn.query(
            `UPDATE bookings
                SET status='booked', amount=?, pay_order_id=?,
                    remark=REPLACE(REPLACE(IFNULL(remark,''),'[待支付]','[微信支付]'),'(待支付)','(微信支付)'),
                    updated_at=NOW()
              WHERE id=? AND status='pending_pay'`,
            [amt, o.id, bookingId]
          )
          created = true
        } else {
          await conn.query(
            `UPDATE bookings
                SET pay_order_id=?, amount=?,
                    remark=REPLACE(REPLACE(IFNULL(remark,''),'[待支付]','[微信支付]'),'(待支付)','(微信支付)')
              WHERE id=?`,
            [o.id, amt, bookingId]
          )
        }
        await conn.query('UPDATE pay_orders SET booking_id=? WHERE id=?', [bookingId, o.id])
        await ensureLedgerCourtPay(conn, o, bookingId, o.out_trade_no)
        if (created) await writeBookingLog(conn, o, bookingId)
        return { ok: true, bookingId, created, fnVer: PAY_FN_VER }
      }
      if (b.status === 'cancelled') {
        bookingId = null
      }
    } else {
      bookingId = null
    }
  }

  // Find pending_pay by pay_order_id
  if (!bookingId) {
    const [pend] = await conn.query(
      `SELECT id FROM bookings WHERE pay_order_id=? AND status='pending_pay' ORDER BY id DESC LIMIT 1`,
      [o.id]
    )
    if (pend[0] && pend[0].id) {
      bookingId = Number(pend[0].id)
      await conn.query(
        `UPDATE bookings
            SET status='booked', amount=?, pay_order_id=?,
                remark=REPLACE(REPLACE(IFNULL(remark,''),'[待支付]','[微信支付]'),'(待支付)','(微信支付)'),
                updated_at=NOW()
          WHERE id=? AND status='pending_pay'`,
        [amt, o.id, bookingId]
      )
      await conn.query('UPDATE pay_orders SET booking_id=? WHERE id=?', [bookingId, o.id])
      await ensureLedgerCourtPay(conn, o, bookingId, o.out_trade_no)
      await writeBookingLog(conn, o, bookingId)
      return { ok: true, bookingId, created: true, fnVer: PAY_FN_VER }
    }
  }

  // Conflict check before insert
  if (o.venue_id && o.book_date && o.book_time && courtNorm) {
    const [busy] = await conn.query(
      `SELECT id, status FROM bookings
        WHERE venue_id=? AND date=? AND time=?
          AND (court=? OR court=CONCAT(?,'场'))
          AND status IN ${BUSY_SQL}
        LIMIT 1`,
      [o.venue_id, o.book_date, o.book_time, courtNorm, courtNorm]
    )
    if (busy.length) {
      await ensureLedgerCourtPay(conn, o, null, o.out_trade_no)
      console.error('fulfill conflict paid_no_slot', o.out_trade_no, busy[0])
      return {
        ok: false,
        paidNoSlot: true,
        msg: '已支付但时段已被占用，需人工退款/改约',
        conflictId: busy[0].id,
        fnVer: PAY_FN_VER
      }
    }
  }

  const userIdVal = Number(o.user_id) > 0 ? Number(o.user_id) : null
  const remarkBase = String(o.description || '').indexOf('匹克') >= 0 ? '匹克球 ' : ''
  const [res] = await conn.query(
    `INSERT INTO bookings (
      venue_id, venue_name, court, date, time,
      user_id, openid, user_name, phone, status,
      card_id, card_name, card_type,
      coach_id, coach_name, source, remark, amount, pay_order_id
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'booked', NULL, '', '', NULL, '', 'user', ?, ?, ?)`,
    [
      o.venue_id || '',
      o.venue_name || '',
      courtName,
      o.book_date,
      o.book_time,
      userIdVal,
      o.openid || '',
      o.user_name || '',
      o.phone || '',
      remarkBase + '[微信支付]',
      amt,
      o.id
    ]
  )
  bookingId = Number(res.insertId)
  await conn.query('UPDATE pay_orders SET booking_id=? WHERE id=?', [bookingId, o.id])
  await ensureLedgerCourtPay(conn, o, bookingId, o.out_trade_no)
  await writeBookingLog(conn, o, bookingId)
  return { ok: true, bookingId, created: true, fnVer: PAY_FN_VER }
}

const APPID = process.env.WX_APPID || 'wxe2f073ca2e08c355'
const WX_SECRET = process.env.WX_SECRET || ''
const NOTIFY_URL =
  process.env.WX_NOTIFY_URL ||
  'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com/payNotify'

const VENUE_MCH = {
  venue_chenjiaci: {
    mchid: process.env.WX_MCHID_CHENJIACI || '1727992653',
    serial: process.env.WX_SERIAL_CHENJIACI || '2EEDD0198FB266BC2422092D94016D4C45CB78D8',
    keyPem: process.env.WX_KEY_CHENJIACI || '',
    apiV3Key: process.env.WX_APIV3_CHENJIACI || ''
  },
  venue_haixinsha: {
    mchid: process.env.WX_MCHID_HAIXINSHA || '1677093223',
    serial: process.env.WX_SERIAL_HAIXINSHA || '207C673494633D5983A76F42FDADC7FA26A6A737',
    keyPem: process.env.WX_KEY_HAIXINSHA || '',
    apiV3Key: process.env.WX_APIV3_HAIXINSHA || ''
  },
  venue_huadiwan: {
    mchid: process.env.WX_MCHID_HUADIWAN || '1702673686',
    serial: process.env.WX_SERIAL_HUADIWAN || '52FAA65CB9BEB6EEC25B8C984547FBD9A7BF3FC3',
    keyPem: process.env.WX_KEY_HUADIWAN || '',
    apiV3Key: process.env.WX_APIV3_HUADIWAN || ''
  },
  venue_zhongda: {
    mchid: process.env.WX_MCHID_ZHONGDA || '1684193652',
    serial: process.env.WX_SERIAL_ZHONGDA || '12B8D17E8E1D9210EC7A0F70DF2DC5B5FB853413',
    keyPem: process.env.WX_KEY_ZHONGDA || '',
    apiV3Key: process.env.WX_APIV3_ZHONGDA || ''
  }
}

function getJson(url) {
  return new Promise((resolve, reject) => {
    https
      .get(url, (res) => {
        let raw = ''
        res.on('data', (c) => (raw += c))
        res.on('end', () => {
          try {
            resolve(JSON.parse(raw))
          } catch (e) {
            reject(e)
          }
        })
      })
      .on('error', reject)
  })
}

async function code2openid(code) {
  if (!code || !WX_SECRET) return ''
  const url =
    'https://api.weixin.qq.com/sns/jscode2session?appid=' +
    encodeURIComponent(APPID) +
    '&secret=' +
    encodeURIComponent(WX_SECRET) +
    '&js_code=' +
    encodeURIComponent(code) +
    '&grant_type=authorization_code'
  const data = await getJson(url)
  if (data && data.errcode) {
    console.error('jscode2session', data)
    return ''
  }
  return (data && data.openid) || ''
}

function parseEvent(event) {
  if (event && event.body) {
    try {
      const body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
      if (body && typeof body === 'object' && !Array.isArray(body)) {
        return Object.assign({}, event, body)
      }
      return body
    } catch (e) {
      return event
    }
  }
  return event || {}
}

function mchOf(venueId) {
  return VENUE_MCH[venueId] || null
}

function normalizePem(raw) {
  if (!raw) return ''
  let s = String(raw).replace(/\\n/g, '\n').replace(/\r/g, '').trim()
  const begin = '-----BEGIN PRIVATE KEY-----'
  const end = '-----END PRIVATE KEY-----'
  s = s.replace(begin, '').replace(end, '')
  const body = s.replace(/\s+/g, '')
  if (!body) return ''
  const lines = body.match(/.{1,64}/g) || [body]
  return begin + '\n' + lines.join('\n') + '\n' + end
}

function outTradeNo() {
  return 'GT' + Date.now() + Math.floor(Math.random() * 1000)
}

function requestJson(method, hostname, path, headers, body) {
  const hdrs = Object.assign({
    Accept: 'application/json',
    'User-Agent': 'Mozilla/5.0 (compatible; GoatTennisAdmin/1.0)'
  }, headers || {})
  if (!hdrs.Accept && !hdrs.accept) hdrs.Accept = 'application/json'
  if (!hdrs['User-Agent'] && !hdrs['user-agent']) hdrs['User-Agent'] = 'Mozilla/5.0 (compatible; GoatTennisAdmin/1.0)'
  return new Promise((resolve, reject) => {
    const req = https.request(
      { hostname, path, method, headers: hdrs },
      (res) => {
        let raw = ''
        res.on('data', (c) => (raw += c))
        res.on('end', () => {
          let json = null
          try {
            json = raw ? JSON.parse(raw) : {}
          } catch (e) {
            json = { raw }
          }
          resolve({ status: res.statusCode, json, raw })
        })
      }
    )
    req.setHeader('Accept', hdrs.Accept || hdrs.accept || 'application/json')
    req.setHeader('User-Agent', hdrs['User-Agent'] || hdrs['user-agent'] || 'Mozilla/5.0 (compatible; GoatTennisAdmin/1.0)')
    req.on('error', reject)
    if (body) req.write(body)
    req.end()
  })
}

function signMessage(message, privateKey) {
  const sign = crypto.createSign('RSA-SHA256')
  sign.update(message)
  return sign.sign(privateKey, 'base64')
}

function authHeader(mchid, serial, privateKey, method, urlPath, body) {
  const timestamp = String(Math.floor(Date.now() / 1000))
  const nonce = crypto.randomBytes(16).toString('hex')
  const message = method + '\n' + urlPath + '\n' + timestamp + '\n' + nonce + '\n' + body + '\n'
  const signature = signMessage(message, privateKey)
  return (
    'WECHATPAY2-SHA256-RSA2048 ' +
    'mchid="' + mchid + '",' +
    'nonce_str="' + nonce + '",' +
    'signature="' + signature + '",' +
    'timestamp="' + timestamp + '",' +
    'serial_no="' + serial + '"'
  )
}

function jsapiPaySign(appId, timeStamp, nonceStr, pkg, privateKey) {
  const message = appId + '\n' + timeStamp + '\n' + nonceStr + '\n' + pkg + '\n'
  return signMessage(message, privateKey)
}

function decryptResource(apiV3Key, resource) {
  const key = Buffer.from(apiV3Key, 'utf8')
  const nonce = Buffer.from(resource.nonce, 'utf8')
  const associatedData = Buffer.from(resource.associated_data || '', 'utf8')
  const buf = Buffer.from(resource.ciphertext, 'base64')
  const data = buf.slice(0, buf.length - 16)
  const tag = buf.slice(buf.length - 16)
  const decipher = crypto.createDecipheriv('aes-256-gcm', key, nonce)
  decipher.setAuthTag(tag)
  if (associatedData.length) decipher.setAAD(associatedData)
  return decipher.update(data, undefined, 'utf8') + decipher.final('utf8')
}

async function handleNotify(rawEvent) {
  let body = rawEvent
  if (rawEvent.body) {
    body = typeof rawEvent.body === 'string' ? JSON.parse(rawEvent.body) : rawEvent.body
  }
  if (!body || !body.resource) {
    return { code: 'FAIL', message: 'empty' }
  }
  let plain = null
  const keys = Object.keys(VENUE_MCH).map((k) => VENUE_MCH[k].apiV3Key).filter(Boolean)
  let lastErr = ''
  for (let i = 0; i < keys.length; i++) {
    try {
      plain = JSON.parse(decryptResource(keys[i], body.resource))
      break
    } catch (e) {
      lastErr = e.message
    }
  }
  if (!plain) {
    console.error('notify decrypt fail', lastErr)
    return { code: 'FAIL', message: 'decrypt' }
  }
  const tradeNo = plain.out_trade_no
  const tradeState = plain.trade_state
  const transactionId = plain.transaction_id || ''
  if (tradeState === 'SUCCESS' && tradeNo) {
    const conn = await pool.getConnection()
    let slotLock = null
    try {
      const [upd] = await conn.query(
        `UPDATE pay_orders
           SET status='paid', transaction_id=?, paid_at=NOW(), updated_at=NOW()
         WHERE out_trade_no=? AND status IN ('pending','failed')`,
        [transactionId, tradeNo]
      )
      const [rows] = await conn.query('SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1', [tradeNo])
      const o = rows[0]
      if (o) {
        try {
          if (!mall.isCardPayOrder(o)) {
            slotLock = await acquireSlotLock(conn, o.venue_id, o.book_date, o.book_time, o.court)
          }
        } catch (e) {
          console.warn('notify lock', e.message || e)
        }
        // Re-read after lock
        const [rows2] = await conn.query('SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1', [tradeNo])
        const o2 = rows2[0] || o
        if (o2.status === 'refunded') {
          // already refunded — ignore late notify
        } else {
          if (transactionId && !o2.transaction_id) {
            await conn.query(
              `UPDATE pay_orders SET transaction_id=?, status='paid', paid_at=IFNULL(paid_at,NOW()), updated_at=NOW()
                WHERE id=? AND status IN ('pending','failed','paid')`,
              [transactionId, o2.id]
            )
            o2.transaction_id = transactionId
            if (o2.status !== 'paid') o2.status = 'paid'
          }
          if (o2.status === 'paid' || (upd && upd.affectedRows)) {
            await fulfillPaidOrder(conn, o2, { from: 'notify' })
          }
        }
      }
    } catch (e) {
      console.error('notify fulfill', e.message || e)
    } finally {
      await releaseSlotLock(conn, slotLock)
      conn.release()
    }
  }
  return { code: 'SUCCESS', message: '成功' }
}

exports.main = async (rawEvent) => {
  try {
    const path = String((rawEvent && (rawEvent.path || rawEvent.requestContext && rawEvent.requestContext.path)) || '')
    const isNotify =
      path.indexOf('payNotify') >= 0 ||
      (rawEvent && rawEvent.action === 'notify') ||
      (rawEvent && rawEvent.resource && rawEvent.resource.ciphertext)

    if (isNotify) {
      return await handleNotify(rawEvent)
    }

    const event = parseEvent(rawEvent)
    let action = event.action || 'createCourtPay'
    if (action === 'confirmCardPay' || action === 'confirmPay') action = 'confirmCourtPay'

    if (action === 'ver') {
      return { ok: true, fnVer: PAY_FN_VER }
    }

    if (action === 'confirmCourtPay') {
      const tradeNo = event.outTradeNo || event.out_trade_no || ''
      if (!tradeNo) return { ok: false, msg: '缺少订单号', fnVer: PAY_FN_VER }
      // Opportunistic global sweep (non-blocking best-effort)
      try {
        sweepStalePendingGlobal(10).catch(function (e) {
          console.warn('sweep background', e && e.message)
        })
      } catch (e) {}
      const conn = await pool.getConnection()
      let slotLock = null
      try {
        const [rows] = await conn.query('SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1', [tradeNo])
        let o = rows[0]
        if (!o) return { ok: false, msg: '订单不存在', fnVer: PAY_FN_VER }
        if (o.status === 'refunded') {
          return { ok: false, msg: '订单已退款', status: 'refunded', fnVer: PAY_FN_VER }
        }
        if (o.status !== 'paid') {
          const mch = mchOf(o.venue_id)
          if (!mch || !mch.keyPem) {
            return { ok: false, waiting: true, msg: '支付确认中', status: o.status, fnVer: PAY_FN_VER }
          }
          let q
          try {
            q = await queryWxOrder(mch, tradeNo)
          } catch (e) {
            return { ok: false, waiting: true, msg: '支付确认中', status: o.status, fnVer: PAY_FN_VER }
          }
          if (q.ok && q.data && q.data.trade_state === 'SUCCESS') {
            o = await markOrderPaid(conn, o, q.data.transaction_id || '')
          } else {
            const st = (q.data && q.data.trade_state) || o.status
            if (st === 'CLOSED' || st === 'REVOKED' || st === 'PAYERROR') {
              await cancelPendingPayBooking(conn, o.booking_id, o.id, ' [支付关闭]')
              return { ok: false, msg: '支付已关闭', status: st, fnVer: PAY_FN_VER }
            }
            return {
              ok: false,
              waiting: true,
              msg: '支付确认中',
              status: st,
              fnVer: PAY_FN_VER
            }
          }
        }
        try {
          if (!mall.isCardPayOrder(o)) {
            slotLock = await acquireSlotLock(conn, o.venue_id, o.book_date, o.book_time, o.court)
          }
        } catch (e) {
          return { ok: false, msg: e.message || '系统繁忙', fnVer: PAY_FN_VER }
        }
        const [rows2] = await conn.query('SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1', [tradeNo])
        const result = await fulfillPaidOrder(conn, rows2[0] || o, { from: 'confirm' })
        return Object.assign({ fnVer: PAY_FN_VER }, result)
      } finally {
        await releaseSlotLock(conn, slotLock)
        conn.release()
      }
    }

    if (action === 'sweepStalePending') {
      try {
        const summary = await sweepStalePendingGlobal(event.limit || 30)
        return { ok: true, fnVer: PAY_FN_VER, ttlMin: PENDING_TTL_MIN, summary }
      } catch (e) {
        return { ok: false, msg: e.message || '清理失败', fnVer: PAY_FN_VER }
      }
    }

    if (action === 'refundCourtPay') {
      const tradeNo = event.outTradeNo || event.out_trade_no || ''
      const payOrderId = event.payOrderId || event.pay_order_id || ''
      const conn = await pool.getConnection()
      try {
        let o = null
        if (payOrderId) {
          const [rows] = await conn.query('SELECT * FROM pay_orders WHERE id=? LIMIT 1', [payOrderId])
          o = rows[0]
        } else if (tradeNo) {
          const [rows] = await conn.query('SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1', [tradeNo])
          o = rows[0]
        } else if (event.bookingId) {
          const [rows] = await conn.query(
            `SELECT p.* FROM pay_orders p
              INNER JOIN bookings b ON b.pay_order_id=p.id
             WHERE b.id=? LIMIT 1`,
            [event.bookingId]
          )
          o = rows[0]
          if (!o) {
            const [rows2] = await conn.query(
              'SELECT * FROM pay_orders WHERE booking_id=? ORDER BY id DESC LIMIT 1',
              [event.bookingId]
            )
            o = rows2[0]
          }
        }
        if (!o) return { ok: false, msg: '支付订单不存在', fnVer: PAY_FN_VER }
        const result = await refundPaidOrder(conn, o, {
          reason: event.reason || '取消订场退款',
          bookingId: event.bookingId || o.booking_id,
          skipLedger: event.skipLedger === true,
          outRefundNo: event.outRefundNo || event.out_refund_no || ''
        })
        return result
      } catch (e) {
        console.error('refundCourtPay', e)
        return { ok: false, msg: e.message || '退款异常', fnVer: PAY_FN_VER }
      } finally {
        conn.release()
      }
    }

    if (action === 'cancelCourtPay') {
      const tradeNo = event.outTradeNo || event.out_trade_no || ''
      if (!tradeNo) return { ok: false, msg: '缺少订单号', fnVer: PAY_FN_VER }
      const conn = await pool.getConnection()
      let slotLock = null
      try {
        const [rows] = await conn.query('SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1', [tradeNo])
        const o = rows[0]
        if (!o) return { ok: true, msg: '无订单', fnVer: PAY_FN_VER }
        if (o.status === 'paid') {
          return { ok: false, msg: '已支付不能取消', fnVer: PAY_FN_VER }
        }
        try {
          if (!mall.isCardPayOrder(o)) {
            slotLock = await acquireSlotLock(conn, o.venue_id, o.book_date, o.book_time, o.court)
          }
        } catch (e) {}
        if (o.booking_id) {
          await conn.query(
            `UPDATE bookings
                SET status='cancelled',
                    remark=CONCAT(IFNULL(remark,''), ' [取消支付]'),
                    updated_at=NOW()
              WHERE id=? AND status='pending_pay'`,
            [o.booking_id]
          )
        }
        await conn.query(
          `UPDATE bookings
              SET status='cancelled',
                  remark=CONCAT(IFNULL(remark,''), ' [取消支付]'),
                  updated_at=NOW()
            WHERE pay_order_id=? AND status='pending_pay'`,
          [o.id]
        )
        await conn.query(
          `UPDATE pay_orders SET status='failed', updated_at=NOW() WHERE id=? AND status='pending'`,
          [o.id]
        )
        return { ok: true, fnVer: PAY_FN_VER }
      } finally {
        await releaseSlotLock(conn, slotLock)
        conn.release()
      }
    }

    if (action === 'refundCardPay') {
      const tradeNo = event.outTradeNo || event.out_trade_no || ''
      const payOrderId = event.payOrderId || event.pay_order_id || ''
      const conn = await pool.getConnection()
      try {
        let o = null
        if (payOrderId) {
          const [rows] = await conn.query('SELECT * FROM pay_orders WHERE id=? LIMIT 1', [payOrderId])
          o = rows[0]
        } else if (tradeNo) {
          const [rows] = await conn.query('SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1', [tradeNo])
          o = rows[0]
        }
        if (!o) return { ok: false, msg: '支付订单不存在', fnVer: PAY_FN_VER }
        if (!mall.isCardPayOrder(o)) {
          return { ok: false, msg: '不是购卡订单，请走订场退款', fnVer: PAY_FN_VER }
        }
        const result = await refundPaidOrder(conn, o, {
          reason: event.reason || '团课卡退款',
          refundFen: event.refundFen,
          outRefundNo: event.outRefundNo || event.out_refund_no || '',
          skipLedger: event.skipLedger !== false
        })
        return result
      } catch (e) {
        console.error('refundCardPay', e)
        return { ok: false, msg: e.message || '退款异常', fnVer: PAY_FN_VER }
      } finally {
        conn.release()
      }
    }

    if (action === 'createCardPay') {
      const picked = await cardPayFulfill.pickMchVenueId(event.venueId || '', mchOf, VENUE_MCH)
      const venueId = picked.venueId || event.venueId || ''
      const mch = picked.mch
      if (!mch) {
        return { ok: false, msg: '暂未开通线上支付，请到店购买或联系前台', fnVer: PAY_FN_VER }
      }
      if (!mch.keyPem || !mch.apiV3Key) {
        return { ok: false, msg: '支付证书未配置，请联系管理员', fnVer: PAY_FN_VER }
      }
      let openid = ''
      try {
        if (cloud && cloud.getWXContext) {
          const ctx = cloud.getWXContext()
          if (ctx && ctx.OPENID) openid = ctx.OPENID
        }
      } catch (e) {}
      if (!openid && event.code) openid = await code2openid(event.code)
      if (!openid) openid = event.openid || ''
      if (!openid) return { ok: false, msg: '请先登录', fnVer: PAY_FN_VER }

      const templateId = event.templateId || event.template_id || ''
      if (!templateId) return { ok: false, msg: '请选择要购买的团课卡', fnVer: PAY_FN_VER }
      const [tplRows] = await pool.query('SELECT * FROM card_templates WHERE id=? LIMIT 1', [templateId])
      const tpl = tplRows && tplRows[0]
      if (!tpl) return { ok: false, msg: '卡模板不存在', fnVer: PAY_FN_VER }
      if (String(tpl.type || '') !== 'group') return { ok: false, msg: '商城目前仅支持购买团课卡', fnVer: PAY_FN_VER }
      const st = String(tpl.status || 'active').toLowerCase()
      if (st && st !== 'active' && st !== '启用') return { ok: false, msg: '该卡已停用', fnVer: PAY_FN_VER }
      if (!mall.isMallListed(tpl)) {
        return { ok: false, msg: '该卡未在商城上架', fnVer: PAY_FN_VER }
      }
      const charged = mall.resolveChargeFen(tpl, event.amount)
      if (!charged.ok) return { ok: false, msg: charged.msg, fnVer: PAY_FN_VER }
      const amountFen = charged.amountFen
      const no = outTradeNo()
      let venueName = event.venueName || ''
      if (!venueName && venueId) {
        try {
          const [vn] = await pool.query('SELECT name FROM venues WHERE id=? LIMIT 1', [venueId])
          venueName = (vn[0] && vn[0].name) || ''
        } catch (e) {}
      }
      const desc = mall.encodeCardPayDescription(tpl)
      const today = cardPayFulfill.ymdNowLocal()
      const userIdVal = event.userId != null && /^\d+$/.test(String(event.userId).trim())
        ? Number(String(event.userId).trim())
        : (event.userId || '')
      let payOrderDbId = null
      try {
        const [insPay] = await pool.query(
          `INSERT INTO pay_orders (
            out_trade_no, venue_id, venue_name, court, book_date, book_time,
            user_id, openid, user_name, phone, mchid, amount_fen, status, description,
            biz_type, template_id
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'pending', ?, 'card', ?)`,
          [
            no, venueId, venueName, mall.CARD_PAY_COURT, today, '',
            userIdVal, openid, event.userName || '', event.phone || '',
            mch.mchid, amountFen, desc, tpl.id
          ]
        )
        payOrderDbId = Number(insPay.insertId)
      } catch (e) {
        const msg = String((e && e.message) || '')
        if (msg.indexOf('Unknown column') < 0) throw e
        const [insPay] = await pool.query(
          `INSERT INTO pay_orders (
            out_trade_no, venue_id, venue_name, court, book_date, book_time,
            user_id, openid, user_name, phone, mchid, amount_fen, status, description
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'pending', ?)`,
          [
            no, venueId, venueName, mall.CARD_PAY_COURT, today, '',
            userIdVal, openid, event.userName || '', event.phone || '',
            mch.mchid, amountFen, desc
          ]
        )
        payOrderDbId = Number(insPay.insertId)
      }

      const privateKey = normalizePem(mch.keyPem)
      const wxBodyObj = {
        appid: APPID,
        mchid: mch.mchid,
        description: desc.slice(0, 127),
        out_trade_no: no,
        notify_url: NOTIFY_URL,
        amount: { total: amountFen, currency: 'CNY' },
        payer: { openid: openid }
      }
      const wxBody = JSON.stringify(wxBodyObj)
      const urlPath = '/v3/pay/transactions/jsapi'
      const authorization = authHeader(mch.mchid, mch.serial, privateKey, 'POST', urlPath, wxBody)
      const wxRes = await requestJson(
        'POST',
        'api.mch.weixin.qq.com',
        urlPath,
        {
          Accept: 'application/json',
          'Content-Type': 'application/json',
          Authorization: authorization
        },
        wxBody
      )
      if (!wxRes.json || !wxRes.json.prepay_id) {
        const msg = (wxRes.json && (wxRes.json.message || wxRes.json.detail && wxRes.json.detail.message)) || '微信下单失败'
        console.error('jsapi card fail', wxRes.status, wxRes.raw)
        try {
          await pool.query(`UPDATE pay_orders SET status='failed', updated_at=NOW() WHERE out_trade_no=?`, [no])
        } catch (e) {}
        return { ok: false, msg: msg, fnVer: PAY_FN_VER }
      }
      const prepayId = wxRes.json.prepay_id
      await pool.query(`UPDATE pay_orders SET prepay_id=?, updated_at=NOW() WHERE out_trade_no=?`, [prepayId, no])
      const timeStamp = String(Math.floor(Date.now() / 1000))
      const nonceStr = crypto.randomBytes(16).toString('hex')
      const pkg = 'prepay_id=' + prepayId
      const paySign = jsapiPaySign(APPID, timeStamp, nonceStr, pkg, privateKey)
      return {
        ok: true,
        outTradeNo: no,
        payOrderId: payOrderDbId ? String(payOrderDbId) : '',
        templateId: String(tpl.id),
        amountFen,
        amountYuan: mall.money(amountFen / 100),
        fnVer: PAY_FN_VER,
        payParams: {
          timeStamp,
          nonceStr,
          package: pkg,
          signType: 'RSA',
          paySign
        }
      }
    }

    if (action !== 'createCourtPay') {
      return { ok: false, msg: '未知 action', fnVer: PAY_FN_VER }
    }

    const venueId = event.venueId || ''
    const mch = mchOf(venueId)
    if (!mch) {
      return { ok: false, msg: '该场馆暂未开通线上支付，请用会员卡或到店支付', fnVer: PAY_FN_VER }
    }
    if (!mch.keyPem || !mch.apiV3Key) {
      return { ok: false, msg: '支付证书未配置，请联系管理员', fnVer: PAY_FN_VER }
    }

    let openid = ''
    try {
      if (cloud && cloud.getWXContext) {
        const ctx = cloud.getWXContext()
        if (ctx && ctx.OPENID) openid = ctx.OPENID
      }
    } catch (e) {}
    if (!openid && event.code) {
      openid = await code2openid(event.code)
    }
    if (!openid) openid = event.openid || ''
    if (!openid) return { ok: false, msg: '请先登录', fnVer: PAY_FN_VER }

    const courtRaw = event.court || ''
    const courtNorm = normCourt(courtRaw)
    const date = String(event.date || '').slice(0, 10)
    const time = event.time || ''
    if (!courtNorm || !date || !time) return { ok: false, msg: '请选择场地和时段', fnVer: PAY_FN_VER }

    const conn = await pool.getConnection()
    let slotLock = null
    let no
    let desc
    let court
    let amountFen
    let bookingId = null
    let payOrderDbId = null
    try {
      court = await resolveCourtName(conn, venueId, courtRaw)
      if (!(await isCourtCustomerVisible(conn, venueId, court || courtRaw))) {
        return { ok: false, msg: '该场地不对客人开放', fnVer: PAY_FN_VER }
      }
      try {
        slotLock = await acquireSlotLock(conn, venueId, date, time, courtNorm)
      } catch (e) {
        return { ok: false, msg: e.message || '系统繁忙，请稍后重试', fnVer: PAY_FN_VER }
      }

      await expireStalePending(conn, venueId, date, time, courtNorm)
      try {
        sweepStalePendingGlobal(5).catch(function () {})
      } catch (e) {}

      const [gc] = await conn.query(
        `SELECT id FROM group_classes
          WHERE venue_id=? AND date=? AND time=? AND (court=? OR court=CONCAT(?,'场')) AND status='open' LIMIT 1`,
        [venueId, date, time, courtNorm, courtNorm]
      )
      if (gc.length) {
        return { ok: false, msg: '该时段为团课，无法普通预约', fnVer: PAY_FN_VER }
      }

      const [busy] = await conn.query(
        `SELECT id, status FROM bookings
          WHERE venue_id=? AND date=? AND time=? AND (court=? OR court=CONCAT(?,'场'))
            AND status IN ${BUSY_SQL} LIMIT 1`,
        [venueId, date, time, courtNorm, courtNorm]
      )
      if (busy.length) {
        const locked = busy[0].status === 'locked'
        return {
          ok: false,
          msg: locked ? '该时段已锁场' : busy[0].status === 'pending_pay' ? '该时段正在支付中' : '该时段已被预约',
          fnVer: PAY_FN_VER
        }
      }

      const serverPrice = await getSlotPrice(conn, venueId, court, date, time)
      const amountYuan = Number(event.amount || 0)
      let useYuan = amountYuan
      if (serverPrice > 0) {
        // Prefer server price; allow 1 fen tolerance
        if (Math.abs(money(amountYuan) - serverPrice) > 0.011 && amountYuan > 0) {
          console.warn('amount mismatch client', amountYuan, 'server', serverPrice)
        }
        useYuan = serverPrice
      }
      amountFen = Math.round(money(useYuan) * 100)
      if (!amountFen || amountFen < 1) return { ok: false, msg: '金额无效', fnVer: PAY_FN_VER }

      no = outTradeNo()
      desc = '订场 ' + (event.venueName || '') + ' ' + court + ' ' + date + ' ' + time
      if (event.sport === 'pickleball') desc = '匹克球 ' + desc

      await conn.beginTransaction()
      try {
        const [insPay] = await conn.query(
          `INSERT INTO pay_orders (
            out_trade_no, venue_id, venue_name, court, book_date, book_time,
            user_id, openid, user_name, phone, mchid, amount_fen, status, description
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'pending', ?)`,
          [
            no,
            venueId,
            event.venueName || '',
            court,
            date,
            time,
            event.userId || '',
            openid,
            event.userName || '',
            event.phone || '',
            mch.mchid,
            amountFen,
            desc
          ]
        )
        payOrderDbId = Number(insPay.insertId)

        const remark = (event.sport === 'pickleball' ? '匹克球 ' : '') + '[待支付]'
        const userIdVal =
          event.userId != null && /^\d+$/.test(String(event.userId).trim())
            ? Number(String(event.userId).trim())
            : null
        const [insBk] = await conn.query(
          `INSERT INTO bookings (
            venue_id, venue_name, court, date, time,
            user_id, openid, user_name, phone, status,
            card_id, card_name, card_type,
            coach_id, coach_name, source, remark, amount, pay_order_id
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'pending_pay', NULL, '', '', NULL, '', 'user', ?, 0, ?)`,
          [
            venueId,
            event.venueName || '',
            court,
            date,
            time,
            userIdVal,
            openid,
            event.userName || '',
            event.phone || '',
            remark,
            payOrderDbId
          ]
        )
        bookingId = Number(insBk.insertId)
        await conn.query('UPDATE pay_orders SET booking_id=? WHERE id=?', [bookingId, payOrderDbId])
        await conn.commit()
      } catch (e) {
        try { await conn.rollback() } catch (e2) {}
        throw e
      }
    } finally {
      await releaseSlotLock(conn, slotLock)
      conn.release()
    }

    const privateKey = normalizePem(mch.keyPem)
    const wxBodyObj = {
      appid: APPID,
      mchid: mch.mchid,
      description: desc.slice(0, 127),
      out_trade_no: no,
      notify_url: NOTIFY_URL,
      amount: { total: amountFen, currency: 'CNY' },
      payer: { openid: openid }
    }
    const wxBody = JSON.stringify(wxBodyObj)
    const urlPath = '/v3/pay/transactions/jsapi'
    const authorization = authHeader(mch.mchid, mch.serial, privateKey, 'POST', urlPath, wxBody)
    const wxRes = await requestJson(
      'POST',
      'api.mch.weixin.qq.com',
      urlPath,
      {
        Accept: 'application/json',
        'Content-Type': 'application/json',
        Authorization: authorization
      },
      wxBody
    )

    if (!wxRes.json || !wxRes.json.prepay_id) {
      const msg = (wxRes.json && (wxRes.json.message || wxRes.json.detail && wxRes.json.detail.message)) || '微信下单失败'
      console.error('jsapi fail', wxRes.status, wxRes.raw)
      try {
        await pool.query(`UPDATE pay_orders SET status='failed', updated_at=NOW() WHERE out_trade_no=?`, [no])
        if (bookingId) {
          await pool.query(
            `UPDATE bookings SET status='cancelled', remark=CONCAT(IFNULL(remark,''),' [微信下单失败]'), updated_at=NOW()
              WHERE id=? AND status='pending_pay'`,
            [bookingId]
          )
        }
      } catch (e) {}
      return { ok: false, msg: msg, fnVer: PAY_FN_VER }
    }

    const prepayId = wxRes.json.prepay_id
    await pool.query(`UPDATE pay_orders SET prepay_id=?, updated_at=NOW() WHERE out_trade_no=?`, [prepayId, no])

    const timeStamp = String(Math.floor(Date.now() / 1000))
    const nonceStr = crypto.randomBytes(16).toString('hex')
    const pkg = 'prepay_id=' + prepayId
    const paySign = jsapiPaySign(APPID, timeStamp, nonceStr, pkg, privateKey)

    return {
      ok: true,
      outTradeNo: no,
      bookingId: bookingId ? String(bookingId) : '',
      fnVer: PAY_FN_VER,
      payParams: {
        timeStamp,
        nonceStr,
        package: pkg,
        signType: 'RSA',
        paySign
      }
    }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '支付异常', fnVer: PAY_FN_VER }
  }
}
