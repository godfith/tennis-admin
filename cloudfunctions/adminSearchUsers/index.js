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
    const keyword = ((body && body.keyword) || '').trim()
    if (!keyword) return { ok: true, list: [] }

    const k = `%${keyword}%`
    const [rows] = await pool.query(
      `SELECT * FROM users
       WHERE nick_name LIKE ? OR phone LIKE ? OR user_id LIKE ?
       ORDER BY id DESC LIMIT 30`,
      [k, k, k]
    )
    const list = (rows || []).map((r) => ({
      _id: String(r.id),
      userId: r.user_id || String(r.id),
      nickName: r.nick_name || '',
      phone: r.phone || '',
      _openid: r.openid || '',
      openid: r.openid || ''
    }))
    return { ok: true, list }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '搜索失败' }
  }
}