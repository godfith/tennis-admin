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
    const { venueId, date } = body || {}
    if (!venueId) return { ok: false, msg: '缺少场馆' }

    let sql = 'SELECT * FROM group_classes WHERE venue_id = ?'
    const params = [venueId]
    if (date) {
      sql += ' AND date = ?'
      params.push(date)
    }
    sql += ' ORDER BY date ASC, time ASC, id ASC'

    const [rows] = await pool.query(sql, params)
    const list = (rows || []).map((r) => ({
      _id: String(r.id),
      venueId: r.venue_id,
      name: r.name,
      date: r.date,
      time: r.time,
      court: r.court,
      coachId: r.coach_id ? String(r.coach_id) : '',
      coachName: r.coach_name || '',
      capacity: r.capacity || 6,
      enrolled: r.enrolled || 0,
      status: r.status || 'open',
      remark: r.remark || ''
    }))
    return { ok: true, list }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '查询失败' }
  }
}