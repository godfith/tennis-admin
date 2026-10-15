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

const FN_VER = 'activities-20261015b'

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

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const action = body.action || 'list'

    if (action === 'list') {
      let sql = 'SELECT id, title, type, date, time, venue_id, venue_name, status FROM activities WHERE 1=1'
      const params = []
      if (body.startDate) { sql += ' AND date >= ?'; params.push(body.startDate) }
      if (body.endDate) { sql += ' AND date <= ?'; params.push(body.endDate) }
      sql += ' ORDER BY date, id'
      const [rows] = await pool.query(sql, params)
      return { ok: true, fnVer: FN_VER, list: rows }
    }
    if (action === 'save') {
      const { id, title, type, date, time, venueId, venueName, status } = body
      if (!title || !date) return { ok: false, msg: '请填标题和日期', fnVer: FN_VER }
      if (id) {
        await pool.query('UPDATE activities SET title=?, type=?, date=?, time=?, venue_id=?, venue_name=?, status=?, updated_at=NOW() WHERE id=?',
          [title, type || '活动', date, time || '', venueId || '', venueName || '', status || 'active', id])
      } else {
        await pool.query('INSERT INTO activities (title, type, date, time, venue_id, venue_name, status, created_at) VALUES (?, ?, ?, ?, ?, ?, ?, NOW())',
          [title, type || '活动', date, time || '', venueId || '', venueName || '', status || 'active'])
      }
      return { ok: true, fnVer: FN_VER }
    }
    if (action === 'delete') {
      if (!body.id) return { ok: false, msg: '缺少ID', fnVer: FN_VER }
      await pool.query('DELETE FROM activities WHERE id=?', [body.id])
      return { ok: true, fnVer: FN_VER }
    }
    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    return { ok: false, msg: e.message || '服务异常', fnVer: FN_VER }
  }
}
