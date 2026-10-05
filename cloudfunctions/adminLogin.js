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

const FN_VER = 'adminLogin-20260926a'

function parseEvent(event) {
  if (event && event.body) {
    try {
      const body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
      return Object.assign({}, event, body)
    } catch (e) {}
  }
  return event || {}
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const username = String(body.username || '').trim()
    const password = String(body.password || '').trim()
    if (!username || !password) return { ok: false, msg: '请输入账号和密码', fnVer: FN_VER }

    let rows
    try {
      const [r] = await pool.query(
        'SELECT id, username, password, name, role, venue_id, venue_name, status, permissions FROM admins WHERE username=? LIMIT 1',
        [username]
      )
      rows = r
    } catch (e) {
      const [r] = await pool.query(
        'SELECT id, username, password, name, role, venue_id, venue_name, status FROM admins WHERE username=? LIMIT 1',
        [username]
      )
      rows = r
    }
    const u = rows[0]
    if (!u || String(u.password || '').trim() !== password) {
      return { ok: false, msg: '账号或密码错误', fnVer: FN_VER }
    }
    if (u.status && u.status !== 'active') {
      return { ok: false, msg: '账号已停用', fnVer: FN_VER }
    }

    return {
      ok: true,
      fnVer: FN_VER,
      admin: {
        id: u.id,
        _id: String(u.id),
        username: u.username,
        name: u.name || u.username,
        role: u.role || 'front',
        venueId: u.venue_id || '',
        venue_id: u.venue_id || '',
        venueName: u.venue_name || '',
        venue_name: u.venue_name || '',
        permissions: (() => { try { return JSON.parse(u.permissions || '[]') } catch (e) { return [] } })()
      }
    }
  } catch (e) {
    return { ok: false, msg: e.message || '登录失败', fnVer: FN_VER }
  }
}
