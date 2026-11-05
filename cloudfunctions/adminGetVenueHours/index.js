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

const FALLBACK = [
  '08:00-09:00',
  '09:00-10:00',
  '10:00-11:00',
  '11:00-12:00',
  '14:00-15:00',
  '15:00-16:00',
  '16:00-17:00',
  '17:00-18:00',
  '18:00-19:00',
  '19:00-20:00',
  '20:00-21:00'
]

function parseEvent(event) {
  if (event && event.body) {
    try {
      const body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
      return Object.assign({}, event, body)
    } catch (e) {
      return event
    }
  }
  return event || {}
}

async function ensureTable() {
  await pool.query(`
    CREATE TABLE IF NOT EXISTS venue_hours (
      id bigint NOT NULL AUTO_INCREMENT,
      venue_id varchar(64) NOT NULL,
      weekday tinyint NOT NULL,
      time_slot varchar(32) NOT NULL,
      updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
      PRIMARY KEY (id),
      UNIQUE KEY uk_vwt (venue_id, weekday, time_slot)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `)
}

exports.main = async (event) => {
  const e = parseEvent(event)
  const venueId = String(e.venueId || '').trim()
  const weekday = e.weekday != null ? Number(e.weekday) : 0
  try {
    await ensureTable()
    let sql = 'SELECT venue_id AS venueId, weekday, time_slot AS timeSlot FROM venue_hours WHERE 1=1'
    const args = []
    if (venueId) {
      sql += ' AND venue_id = ?'
      args.push(venueId)
    }
    if (weekday >= 1 && weekday <= 7) {
      sql += ' AND weekday = ?'
      args.push(weekday)
    }
    sql += ' ORDER BY weekday, time_slot'
    const [rows] = await pool.query(sql, args)
    const byWeekday = { 1: [], 2: [], 3: [], 4: [], 5: [], 6: [], 7: [] }
    rows.forEach((r) => {
      if (byWeekday[r.weekday]) byWeekday[r.weekday].push(r.timeSlot)
    })
    const slots = weekday >= 1 && weekday <= 7
      ? (byWeekday[weekday].length ? byWeekday[weekday] : FALLBACK.slice())
      : Array.from(new Set(rows.map((r) => r.timeSlot))).sort()
    return {
      ok: true,
      fnVer: 'venueHours-20260911a',
      list: rows,
      byWeekday,
      slots: slots.length ? slots : FALLBACK.slice(),
      fallback: FALLBACK,
      configured: rows.length > 0
    }
  } catch (err) {
    return {
      ok: true,
      fnVer: 'venueHours-20260911a',
      list: [],
      byWeekday: {},
      slots: FALLBACK.slice(),
      fallback: FALLBACK,
      configured: false,
      msg: err.message
    }
  }
}
