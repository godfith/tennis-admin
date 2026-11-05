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
    const weekdays = Array.isArray(body.weekdays) ? body.weekdays : []
    const items = Array.isArray(body.items) ? body.items : []
    if (!venueId) return { ok: false, msg: '缺少场馆' }
    if (!weekdays.length) return { ok: false, msg: '请选择星期' }
    if (!items.length) return { ok: false, msg: '没有价格数据' }

    const conn = await pool.getConnection()
    try {
      await conn.beginTransaction()
      for (const wd of weekdays) {
        const weekday = Number(wd)
        if (weekday < 1 || weekday > 7) continue
        for (const it of items) {
          const court = String(it.court || '').trim()
          const timeSlot = String(it.timeSlot || '').trim()
          const price = Number(it.price) || 0
          if (!court || !timeSlot) continue
          await conn.query(
            `INSERT INTO court_prices (venue_id, court, weekday, time_slot, price)
             VALUES (?, ?, ?, ?, ?)
             ON DUPLICATE KEY UPDATE price=VALUES(price), updated_at=NOW()`,
            [venueId, court, weekday, timeSlot, price]
          )
        }
      }
      await conn.commit()
      return { ok: true }
    } catch (e) {
      try { await conn.rollback() } catch (e2) { }
      throw e
    } finally {
      conn.release()
    }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '保存失败' }
  }
}