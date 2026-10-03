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
  dateStrings: true
})

const FN_VER = 'getBookings-20260928b'

function parseEvent(event) {
  let body = event || {}
  if (body && body.body) {
    try {
      const inner = typeof body.body === 'string' ? JSON.parse(body.body) : body.body
      body = Object.assign({}, body, inner)
    } catch (e) {}
  }
  return body
}

function fmtDate(v) {
  if (!v) return ''
  const s = String(v)
  const m = s.match(/^(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : s.slice(0, 10)
}

function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
}

function mapRow(r) {
  return {
    _id: String(r.id),
    id: String(r.id),
    orderNo: r.order_no || '',
    venueId: r.venue_id || '',
    venueName: r.venue_name || '',
    court: r.court || '',
    date: fmtDate(r.date),
    time: r.time || '',
    userId: r.user_id,
    memberId: r.user_id,
    openid: r.openid || '',
    userName: r.user_name || '',
    phone: r.user_phone || r.phone || '',
    status: r.status || 'booked',
    cardId: r.card_id ? String(r.card_id) : '',
    cardName: r.card_name || '',
    cardType: r.card_type || '',
    cardRemaining: r.card_remaining != null ? Number(r.card_remaining) : (r.remaining_times != null ? Number(r.remaining_times) : null),
    cardTotal: r.card_total != null ? Number(r.card_total) : (r.total_times != null ? Number(r.total_times) : null),
    coachId: r.coach_id ? String(r.coach_id) : '',
    coachName: r.coach_name || '',
    amount: money(r.amount),
    remark: r.remark || '',
    source: r.source || '',
    operatorName: r.operator_name || ''
  }
}

exports.main = async (event) => {
  const body = parseEvent(event)
  const venueId = body.venueId || (body.data && body.data.venueId) || ''
  const date = fmtDate(body.date || (body.data && body.data.date) || '')
  if (!venueId || !date) return { ok: false, msg: '缺少场馆或日期', fnVer: FN_VER, list: [] }
  try {
    const [rows] = await pool.query(
      `SELECT b.id, b.order_no, b.venue_id, b.venue_name, b.court, b.date, b.time,
              b.user_id, b.openid, b.user_name, b.phone, b.status,
              IFNULL(NULLIF(u.phone,''), b.phone) AS user_phone,
              b.card_id, b.card_name, b.card_type, b.coach_id, b.coach_name,
              b.amount, b.remark, b.source, b.operator_name,
              c.remaining_times AS card_remaining, c.total_times AS card_total
         FROM bookings b
         LEFT JOIN users u ON u.id = b.user_id
         LEFT JOIN member_cards c ON c.id = b.card_id
        WHERE b.venue_id=? AND b.date=? AND b.status IN ('booked','locked')
        ORDER BY b.time, b.court`,
      [venueId, date]
    )
    return { ok: true, list: (rows || []).map(mapRow), fnVer: FN_VER }
  } catch (e) {
    try {
      const [rows] = await pool.query(
        `SELECT b.*, c.remaining_times AS card_remaining, c.total_times AS card_total
           FROM bookings b LEFT JOIN member_cards c ON c.id = b.card_id
          WHERE b.venue_id=? AND b.date=? AND b.status IN ('booked','locked') ORDER BY b.time, b.court`,
        [venueId, date]
      )
      return { ok: true, list: (rows || []).map(mapRow), fnVer: FN_VER, warn: e.message }
    } catch (e2) {
      return { ok: false, msg: e2.message || '查询失败', fnVer: FN_VER, list: [] }
    }
  }
}
