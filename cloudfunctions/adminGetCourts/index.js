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
    const venueId = (body && body.venueId) || ''
    if (!venueId) return { ok: false, msg: '缺少场馆' }

    const [rows] = await pool.query(
      'SELECT * FROM courts WHERE venue_id = ? ORDER BY sort ASC, id ASC',
      [venueId]
    )
    const list = (rows || []).map((r) => ({
      _id: String(r.id),
      venueId: r.venue_id,
      name: r.name,
      type: r.type || '',
      sort: r.sort || 0,
      status: r.status || 'open',
      remark: r.remark || ''
    }))
    return { ok: true, list }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '查询失败' }
  }
}