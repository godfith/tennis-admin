const mysql = require('mysql2/promise')

const pool = mysql.createPool({
  host: 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: 26462,
  user: 'root',
  password: 'Admin123.',
  database: 'goat_prod',
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
    const venueId = body.venueId || ''
    const weekday = Number(body.weekday) || 0
    if (!venueId) return { ok: false, msg: '缺少场馆' }

    let sql = 'SELECT * FROM court_prices WHERE venue_id=?'
    const params = [venueId]
    if (weekday >= 1 && weekday <= 7) {
      sql += ' AND weekday=?'
      params.push(weekday)
    }
    const [rows] = await pool.query(sql, params)
    const list = (rows || []).map((r) => ({
      _id: String(r.id),
      venueId: r.venue_id,
      court: r.court,
      weekday: r.weekday,
      timeSlot: r.time_slot,
      price: Number(r.price) || 0
    }))
    return { ok: true, list }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '查询失败' }
  }
}