const mysql = require('mysql2/promise')

const pool = mysql.createPool({
  host: process.env.DB_HOST || 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: Number(process.env.DB_PORT || 26462),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'goat_prod',
  waitForConnections: true,
  connectionLimit: 5,
  connectTimeout: 10000,
  dateStrings: true,
  timezone: '+08:00'
})

const FN_VER = 'dashboard-20261029a'

function parseEvent(event) {
  if (event && event.body) {
    try {
      return Object.assign({}, event, typeof event.body === 'string' ? JSON.parse(event.body) : event.body)
    } catch (e) {
      return event
    }
  }
  return event || {}
}

function money(v) {
  const n = Number(v)
  return Number.isFinite(n) ? Math.round(n * 100) / 100 : 0
}

function isImportedIssuer(name) {
  const s = String(name || '')
  return s.indexOf('数据迁入') >= 0 || s.indexOf('系统迁入') >= 0 || s === '迁入'
}

function unusedRefund(c) {
  if (c.refund_amount != null && c.refund_amount !== '') return money(c.refund_amount)
  const price = money(c.price)
  const total = Number(c.total_times) || 0
  const left = Number(c.remaining_times) || 0
  if (total > 0) return money((price * left) / total)
  return price
}

function weekStart(ymd) {
  const d = new Date(ymd + 'T00:00:00+08:00')
  const day = d.getDay() || 7
  d.setDate(d.getDate() - day + 1)
  const y = d.getFullYear()
  const m = String(d.getMonth() + 1).padStart(2, '0')
  const dd = String(d.getDate()).padStart(2, '0')
  return y + '-' + m + '-' + dd
}

function monthStart(ymd) {
  return String(ymd).slice(0, 7) + '-01'
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const venueId = body.venueId || ''
    const date = body.date || new Date().toISOString().slice(0, 10)
    const ws = weekStart(date)
    const ms = monthStart(date)

    const venueSql = venueId ? ' AND venue_id=?' : ''
    const vparams = venueId ? [venueId] : []

    const q = async (sql, params) => {
      const [rows] = await pool.query(sql, params)
      return rows
    }

    const todayBookings = (await q(
      `SELECT COUNT(*) AS n FROM bookings WHERE status='booked' AND date=? ${venueSql}`,
      [date].concat(vparams)
    ))[0].n

    const todayCardBookings = (await q(
      `SELECT COUNT(*) AS n FROM bookings WHERE status='booked' AND date=? AND card_id IS NOT NULL AND card_id<>0 ${venueSql}`,
      [date].concat(vparams)
    ))[0].n

    const todayGroup = (await q(
      `SELECT COUNT(*) AS n FROM bookings WHERE status='booked' AND date=? AND group_class_id IS NOT NULL AND group_class_id<>0 ${venueSql}`,
      [date].concat(vparams)
    ))[0].n

    const weekBookings = (await q(
      `SELECT COUNT(*) AS n FROM bookings WHERE status='booked' AND date>=? AND date<=? ${venueSql}`,
      [ws, date].concat(vparams)
    ))[0].n

    const courtCount = (await q(
      `SELECT COUNT(*) AS n FROM courts WHERE 1=1 ${venueSql}`,
      vparams
    ))[0].n

    const coachCount = (await q(
      `SELECT COUNT(*) AS n FROM coaches WHERE 1=1 ${venueId ? ' AND venue_id=?' : ''}`,
      vparams
    ))[0].n

    const userCount = (await q(
      venueId ? 'SELECT COUNT(*) AS n FROM users WHERE venue_id=?' : 'SELECT COUNT(*) AS n FROM users',
      venueId ? [venueId] : []
    ))[0].n

    const activeCardCount = (await q(
      `SELECT COUNT(*) AS n FROM member_cards WHERE status='active' ${venueSql}`,
      vparams
    ))[0].n

    // 营收与财报同一口径：非迁入发卡 + 订场实收（bookings.amount>0，含微信和现金）− 退卡
    async function revenue(from, to) {
      let issue = 0
      let court = 0
      let refund = 0
      try {
        const cards = await q(
          `SELECT price, issuer_name FROM member_cards
            WHERE created_at >= ? AND created_at < DATE_ADD(?, INTERVAL 1 DAY)
              AND IFNULL(status,'') <> 'deleted' ${venueSql}`,
          [from + ' 00:00:00', to].concat(vparams)
        )
        cards.forEach((c) => {
          if (isImportedIssuer(c.issuer_name)) return
          issue += money(c.price)
        })
      } catch (e) {}
      try {
        const books = await q(
          `SELECT COALESCE(SUM(amount),0) AS n FROM bookings
            WHERE date>=? AND date<=? AND status NOT IN ('cancelled','locked')
              AND IFNULL(amount,0) > 0
              AND (card_id IS NULL OR card_id=0) ${venueSql}`,
          [from, to].concat(vparams)
        )
        court = money(books[0] && books[0].n)
      } catch (e) {}
      try {
        const refs = await q(
          `SELECT price, total_times, remaining_times, refund_amount, issuer_name
             FROM member_cards
            WHERE status='refunded'
              AND IFNULL(refunded_at, updated_at) >= ? AND IFNULL(refunded_at, updated_at) < DATE_ADD(?, INTERVAL 1 DAY)
              ${venueSql}`,
          [from + ' 00:00:00', to].concat(vparams)
        )
        refs.forEach((c) => {
          if (isImportedIssuer(c.issuer_name)) return
          refund += unusedRefund(c)
        })
      } catch (e) {}
      return money(issue + court - refund)
    }

    const todayRevenue = await revenue(date, date)
    const monthRevenue = await revenue(ms, date)

    const todayList = (await q(
      `SELECT id, time, court, user_name, phone, card_name, card_id, coach_name, remark, amount, group_class_id
         FROM bookings WHERE status='booked' AND date=? ${venueSql}
         ORDER BY time ASC, id ASC LIMIT 80`,
      [date].concat(vparams)
    )).map((b) => ({
      _id: String(b.id),
      time: b.time || '',
      court: b.court || '',
      userName: b.user_name || '',
      phone: b.phone || '',
      cardName: b.card_name || '',
      coachName: b.coach_name || '',
      remark: b.remark || '',
      amount: money(b.amount),
      isGroup: !!b.group_class_id
    }))

    let recentLogs = []
    try {
      recentLogs = (await q(
        `SELECT id, type, user_name, operator_name, phone, detail, venue_name, created_at
           FROM activity_logs WHERE 1=1 ${venueSql}
           ORDER BY id DESC LIMIT 12`,
        vparams
      )).map((r) => ({
        _id: String(r.id),
        type: r.type,
        userName: r.user_name,
        operatorName: r.operator_name,
        detail: r.detail,
        venueName: r.venue_name,
        timeText: r.created_at
      }))
    } catch (e) {}

    return {
      ok: true,
      fnVer: FN_VER,
      todayBookings: Number(todayBookings) || 0,
      todayCardBookings: Number(todayCardBookings) || 0,
      todayGroup: Number(todayGroup) || 0,
      weekBookings: Number(weekBookings) || 0,
      courtCount: Number(courtCount) || 0,
      coachCount: Number(coachCount) || 0,
      userCount: Number(userCount) || 0,
      activeCardCount: Number(activeCardCount) || 0,
      todayRevenue,
      monthRevenue,
      todayList,
      recentLogs
    }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '看板失败', fnVer: FN_VER }
  }
}
