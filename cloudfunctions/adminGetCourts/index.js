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

const FN_VER = 'getCourts-20261119a'

exports.main = async (event) => {
  try {
    let body = event
    if (event.body) {
      body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
    }
    const venueId = (body && body.venueId) || ''
    if (!venueId) return { ok: false, msg: '缺少场馆', fnVer: FN_VER }

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
      remark: r.remark || '',
      customerVisible: r.customer_visible === 0 || r.customer_visible === '0' ? 0 : 1,
      pureTennis: r.pure_tennis === 1 || r.pure_tennis === '1' ? 1 : 0
    }))
    return { ok: true, list, fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '查询失败', fnVer: FN_VER }
  }
}
