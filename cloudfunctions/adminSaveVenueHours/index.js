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

function normSlot(s) {
  const m = String(s || '').trim().match(/^(\d{1,2}):(\d{2})\s*-\s*(\d{1,2}):(\d{2})$/)
  if (!m) return ''
  const a = Number(m[1])
  const b = Number(m[3])
  if (a < 0 || a > 23 || b < 0 || b > 23) return ''
  const pad = (n) => (n < 10 ? '0' + n : '' + n)
  return pad(a) + ':' + m[2] + '-' + pad(b) + ':' + m[4]
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
  if (!venueId) return { ok: false, msg: '缺少场馆' }

  let weekdays = Array.isArray(e.weekdays) ? e.weekdays.map(Number).filter((w) => w >= 1 && w <= 7) : []
  if (!weekdays.length && e.weekday) weekdays = [Number(e.weekday)].filter((w) => w >= 1 && w <= 7)
  if (!weekdays.length) return { ok: false, msg: '请选择要保存的星期' }

  const slots = Array.from(new Set((Array.isArray(e.slots) ? e.slots : []).map(normSlot).filter(Boolean)))
    .sort()
  if (!slots.length) return { ok: false, msg: '请至少保留一个开放时段' }

  try {
    await ensureTable()
    const conn = await pool.getConnection()
    try {
      await conn.beginTransaction()
      await conn.query(
        `DELETE FROM venue_hours WHERE venue_id = ? AND weekday IN (${weekdays.map(() => '?').join(',')})`,
        [venueId, ...weekdays]
      )
      const values = []
      weekdays.forEach((w) => {
        slots.forEach((t) => values.push([venueId, w, t]))
      })
      await conn.query(
        'INSERT INTO venue_hours (venue_id, weekday, time_slot) VALUES ?',
        [values]
      )
      await conn.commit()
    } catch (err) {
      await conn.rollback()
      throw err
    } finally {
      conn.release()
    }
    try {
      await pool.query(
        `INSERT INTO activity_logs
          (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
         VALUES (?, ?, ?, ?, ?, ?, ?, NOW())`,
        [
          'hours_save',
          '',
          e.operatorName || '管理员',
          '',
          '改开放时段 星期' + weekdays.join(',') + ' ' + slots.join('、'),
          venueId,
          e.venueName || ''
        ]
      )
    } catch (e2) {}
    return { ok: true, fnVer: 'venueHours-20260914a', venueId, weekdays, slots }
  } catch (err) {
    return { ok: false, msg: err.message || '保存失败', fnVer: 'venueHours-20260911a' }
  }
}
