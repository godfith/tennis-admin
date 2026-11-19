const mysql = require('mysql2/promise')

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


function parseRuleObj(v) {
  if (!v) return null
  if (typeof v === 'object') return v
  try { return JSON.parse(v) } catch (e) { return null }
}
function ymdNowLocal() {
  try {
    return new Intl.DateTimeFormat('en-CA', {
      timeZone: 'Asia/Shanghai',
      year: 'numeric',
      month: '2-digit',
      day: '2-digit'
    }).format(new Date())
  } catch (e) {
    const d = new Date(Date.now() + 8 * 3600 * 1000)
    return d.toISOString().slice(0, 10)
  }
}
function normYmd(v) {
  if (!v) return ''
  const m = String(v).match(/^(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : ''
}
function addDaysYmd(ymd, days) {
  const base = normYmd(ymd) || ymdNowLocal()
  const d = new Date(base.replace(/-/g, '/') + ' 00:00:00')
  d.setDate(d.getDate() + Number(days || 0))
  const p = (n) => (n < 10 ? '0' + n : '' + n)
  return d.getFullYear() + '-' + p(d.getMonth() + 1) + '-' + p(d.getDate())
}
function appendRemarkTag(remark, tag) {
  const s = String(remark || '')
  if (s.indexOf(tag) >= 0) return s
  return (s ? s.replace(/\s+$/, '') + ' ' : '') + tag
}
// Existing convention: validTo = start + durationDays (e.g. Nov 17 + 30 = Dec 17).
function templateDefaultIssueDates(tpl, opts) {
  const rule = parseRuleObj(tpl && (tpl.time_rule || tpl.timeRule)) || {}
  const opt = opts || {}
  const mode = opt.activateMode || rule.activateMode || 'now'
  const daysRaw = opt.durationDays != null && opt.durationDays !== ''
    ? Number(opt.durationDays)
    : (Number(tpl && (tpl.duration_days != null ? tpl.duration_days : tpl.durationDays)) || Number(rule.durationDays) || 0)
  const days = Number.isFinite(daysRaw) ? daysRaw : 0
  const today = opt.today || ymdNowLocal()
  if (mode === 'first_use') return { from: '', to: '', mode, days }
  if (rule.mode === 'dates' && Array.isArray(rule.dateRanges) && rule.dateRanges.length) {
    const starts = rule.dateRanges.map((x) => x && x.start).filter(Boolean).sort()
    const ends = rule.dateRanges.map((x) => x && x.end).filter(Boolean).sort()
    return { from: starts[0] || today, to: ends.length ? ends[ends.length - 1] : '', mode: 'now', days }
  }
  if (days > 0) return { from: today, to: addDaysYmd(today, days), mode, days }
  return { from: '', to: '', mode, days: 0 }
}
function resolveIssueDates(tpl, clientFrom, clientTo, opts) {
  const def = templateDefaultIssueDates(tpl, opts)
  const mode = (opts && opts.activateMode) || def.mode || 'now'
  if (mode === 'first_use') {
    return { from: null, to: null, datesEdited: false, def }
  }
  const from = normYmd(clientFrom)
  const to = normYmd(clientTo)
  const omitted = !from && !to
  if (omitted) {
    return { from: def.from || null, to: def.to || null, datesEdited: false, def }
  }
  const edited = from !== (def.from || '') || to !== (def.to || '')
  return { from: from || null, to: to || null, datesEdited: edited, def }
}
function templateVenueIds(tpl) {
  const rule = parseRuleObj(tpl && (tpl.time_rule || tpl.timeRule)) || {}
  return (Array.isArray(rule.venueIds) ? rule.venueIds : []).map((x) => String(x)).filter(Boolean)
}
function datesEditedFlag(card, tpl) {
  const remark = String((card && card.remark) || '')
  if (/\[已改有效期\]/.test(remark)) return true
  if (!tpl) return false
  const rule = parseRuleObj(tpl.time_rule || tpl.timeRule) || {}
  const mode = rule.activateMode || 'now'
  if (mode === 'first_use') return false
  const days = Number(tpl.duration_days != null ? tpl.duration_days : (tpl.durationDays || rule.durationDays) || 0)
  const from = normYmd(card.valid_from || card.validFrom)
  const to = normYmd(card.valid_to || card.validTo)
  if (rule.mode === 'dates' && Array.isArray(rule.dateRanges) && rule.dateRanges.length) {
    const starts = rule.dateRanges.map((x) => x && x.start).filter(Boolean).sort()
    const ends = rule.dateRanges.map((x) => x && x.end).filter(Boolean).sort()
    return from !== (starts[0] || '') || to !== (ends[ends.length - 1] || '')
  }
  if (days > 0) {
    if (!from) return true
    return to !== addDaysYmd(from, days)
  }
  return !!to
}

const FN_VER = 'issueCard-20261117b'

async function loadVenueNames(ids) {
  const list = (ids || []).map(String).filter(Boolean)
  if (!list.length) return {}
  const ph = list.map(() => '?').join(',')
  const map = {}
  try {
    const [rows] = await pool.query(
      `SELECT venue_id, id, name FROM venues WHERE venue_id IN (${ph}) OR id IN (${ph})`,
      list.concat(list)
    )
    ;(rows || []).forEach((r) => {
      const name = r.name || ''
      if (r.venue_id) map[String(r.venue_id)] = name
      if (r.id != null) map[String(r.id)] = name
    })
  } catch (e) {}
  return map
}

async function templateIssueVenueError(tpl, venueId) {
  const ids = templateVenueIds(tpl)
  if (!ids.length) return ''
  if (ids.indexOf(String(venueId || '')) >= 0) return ''
  const namesMap = await loadVenueNames(ids)
  const names = ids.map((id) => namesMap[id] || '').filter(Boolean)
  const label = names.length ? names.join('、') : '指定'
  return '该卡券仅限' + label + '店发放'
}

exports.main = async (event) => {
  try {
    let body = event
    if (event.body) {
      body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
    }
    const {
      userId,
      openid,
      userName,
      templateId,
      totalTimes,
      validFrom,
      validTo,
      remark,
      price,
      payMeituan,
      payDouyin,
      payOffline,
      venueId,
      venueName,
      issuerName
    } = body || {}

    if (!templateId || !userId) {
      return { ok: false, msg: '参数不完整', fnVer: FN_VER }
    }
    if (!venueId) {
      return { ok: false, msg: '请选择发卡场馆', fnVer: FN_VER }
    }
    if (!issuerName) {
      return { ok: false, msg: '请填写发卡人', fnVer: FN_VER }
    }
    if (body.useBalance) {
      return { ok: false, msg: '余额只能订场，不能买卡' }
    }
    try {
      const [admins] = await pool.query(
        'SELECT role, venue_id FROM admins WHERE name=? OR username=? LIMIT 1',
        [issuerName, issuerName]
      )
      const admin = admins && admins[0]
      if (admin && admin.venue_id && !['admin', 'super', 'superadmin', '超级管理员'].includes(String(admin.role || ''))) {
        if (String(admin.venue_id) !== String(venueId)) {
          return { ok: false, msg: '店长只能给自己管理的门店发卡' }
        }
      }
    } catch (e) {}

    const [tplRows] = await pool.query(
      'SELECT * FROM card_templates WHERE id = ? LIMIT 1',
      [templateId]
    )
    const tpl = tplRows && tplRows[0]
    if (!tpl) return { ok: false, msg: '卡模板不存在', fnVer: FN_VER }

    const venueErr = await templateIssueVenueError(tpl, venueId)
    if (venueErr) return { ok: false, msg: venueErr, fnVer: FN_VER }

    const times = totalTimes || tpl.total_times || 0
    let ruleObj = tpl.time_rule
    if (typeof ruleObj === 'string') {
      try { ruleObj = JSON.parse(ruleObj) } catch (e) { ruleObj = {} }
    }
    if (!ruleObj || typeof ruleObj !== 'object') ruleObj = {}
    if (Array.isArray(body.allowedVenueIds)) {
      ruleObj.venueIds = body.allowedVenueIds
    }
    if (body.activateMode) ruleObj.activateMode = body.activateMode
    if (body.durationDays != null) ruleObj.durationDays = Number(body.durationDays) || 0
    let timeRule = JSON.stringify(ruleObj)
    const resolved = resolveIssueDates(tpl, validFrom, validTo, {
      activateMode: body.activateMode || ruleObj.activateMode || 'now',
      durationDays: body.durationDays != null ? body.durationDays : (tpl.duration_days || ruleObj.durationDays)
    })
    let from = resolved.from || null
    let to = resolved.to || null
    const payPrice = Number(price) || 0
    const mt = Number(payMeituan) || 0
    const dy = Number(payDouyin) || 0
    const off = Number(payOffline) || 0
    const parts = []
    if (mt > 0) parts.push('美团' + mt)
    if (dy > 0) parts.push('抖音' + dy)
    if (off > 0) parts.push('线下' + off)
    const sourceText = parts.length ? ' [' + parts.join('+') + ']' : ''
    let remarkText = remark || ''
    if (resolved.datesEdited) remarkText = appendRemarkTag(remarkText, '[已改有效期]')
    const tplPrice = Number(tpl.price) || 0
    const mismatch = tplPrice > 0 && Math.abs(payPrice - tplPrice) > 0.01

    const [res] = await pool.query(
      `INSERT INTO member_cards (
        user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type,
        total_times, remaining_times, valid_from, valid_to, time_rule,
        status, source, remark, issuer_name, price
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'active', 'admin_give', ?, ?, ?)`,
      [
        userId,
        openid || '',
        userName || '',
        venueId,
        venueName || '',
        templateId,
        tpl.name,
        tpl.type,
        times,
        times,
        from,
        to,
        timeRule || null,
        remarkText + sourceText,
        issuerName,
        payPrice
      ]
    )

    try {
      await pool.query(
        `UPDATE users SET venue_id=?, venue_name=?, updated_at=NOW()
          WHERE id=? AND (venue_id IS NULL OR venue_id='')`,
        [venueId, venueName || '', userId]
      )
    } catch (e) {}

    try {
      await pool.query(
        `INSERT INTO finance_ledger
          (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
           operator_name, card_id, remark)
         VALUES (CURDATE(), 'issue_card', ?, ?, ?, ?, ?, ?, ?, ?)`,
        [
          payPrice,
          venueId,
          venueName || '',
          userId,
          userName || '',
          issuerName,
          res.insertId,
          (tpl.name || '会员卡') + ' 发卡'
        ]
      )
    } catch (e) {}

    let userPhone = ''
    try {
      const [ur] = await pool.query('SELECT phone FROM users WHERE id=? LIMIT 1', [userId])
      userPhone = (ur && ur[0] && ur[0].phone) || ''
    } catch (e) {}

    try {
      await pool.query(
        `INSERT INTO activity_logs
          (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
         VALUES (?, ?, ?, ?, ?, ?, ?, NOW())`,
        [
          'issue_card',
          userName || '',
          issuerName,
          userPhone,
          '发卡 ' + (tpl.name || '') + (payPrice ? ' 收款' + payPrice + '元' : '') + sourceText + (mismatch ? ' [金额异常:模板' + tplPrice + ']' : ''),
          venueId || '',
          venueName || ''
        ]
      )
    } catch (e) {}

    if (tpl.type === 'stored' || String(tpl.name || '').indexOf('储值') >= 0) {
      await pool.query('UPDATE users SET balance=IFNULL(balance,0)+?, updated_at=NOW() WHERE id=?', [payPrice, userId])
    }

    return { ok: true, id: String(res.insertId), datesEdited: !!resolved.datesEdited, fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '发卡失败', fnVer: FN_VER }
  }
}
