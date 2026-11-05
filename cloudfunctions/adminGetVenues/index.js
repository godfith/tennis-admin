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
    const [rows] = await pool.query(
      'SELECT * FROM venues WHERE status = ? ORDER BY sort ASC, id ASC',
      ['active']
    )
    const list = (rows || []).map((r) => ({
      _id: r.id,
      venueId: r.id,
      name: r.name,
      status: r.status,
      sort: r.sort || 0,
      address: r.address || ''
    }))
    return { ok: true, list }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '查询场馆失败', list: [] }
  }
}