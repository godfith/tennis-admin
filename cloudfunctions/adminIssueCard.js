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
      venueId,
      venueName,
      issuerName
    } = body || {}

    if (!templateId || !userId) {
      return { ok: false, msg: '参数不完整' }
    }
    if (!venueId) {
      return { ok: false, msg: '请选择发卡场馆' }
    }
    if (!issuerName) {
      return { ok: false, msg: '请填写发卡人' }
    }

    const [tplRows] = await pool.query(
      'SELECT * FROM card_templates WHERE id = ? LIMIT 1',
      [templateId]
    )
    const tpl = tplRows && tplRows[0]
    if (!tpl) return { ok: false, msg: '卡模板不存在' }

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
    let from = validFrom || null
    let to = validTo || null
    if (body.activateMode === 'first_use') {
      from = null
      to = null
    } else if ((!from || !to) && Number(body.durationDays || tpl.duration_days) > 0 && body.activateMode !== 'first_use') {
      const days = Number(body.durationDays || tpl.duration_days)
      const now = new Date()
      const p = (n) => (n < 10 ? '0' + n : '' + n)
      const ymd = (d) => d.getFullYear() + '-' + p(d.getMonth() + 1) + '-' + p(d.getDate())
      if (!from) from = ymd(now)
      if (!to) {
        const end = new Date(now)
        end.setDate(end.getDate() + days)
        to = ymd(end)
      }
    }
    if ((!from || !to) && Array.isArray(ruleObj.dateRanges) && ruleObj.dateRanges.length) {
      const starts = ruleObj.dateRanges.map((x) => x.start).filter(Boolean).sort()
      const ends = ruleObj.dateRanges.map((x) => x.end).filter(Boolean).sort()
      if (!from && starts[0]) from = starts[0]
      if (!to && ends.length) to = ends[ends.length - 1]
    }
    const payPrice = Number(price) || 0

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
        remark || '',
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
          '发卡 ' + (tpl.name || '') + (payPrice ? ' 收款' + payPrice + '元' : ''),
          venueId || '',
          venueName || ''
        ]
      )
    } catch (e) {}

    return { ok: true, id: String(res.insertId) }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '发卡失败' }
  }
}
