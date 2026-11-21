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
      const validWeekdays = weekdays.map(Number).filter((w) => w >= 1 && w <= 7)
      const courtSet = new Set()
      const cleanItems = []
      for (const it of items) {
        const court = String(it.court || '').trim()
        const timeSlot = String(it.timeSlot || '').trim()
        const price = Number(it.price) || 0
        if (!court || !timeSlot) continue
        courtSet.add(court)
        cleanItems.push({ court, timeSlot, price })
      }
      if (!cleanItems.length) {
        await conn.rollback()
        return { ok: false, msg: '没有有效价格数据' }
      }

      // 只删除本次要覆盖的「当前场馆 + 指定星期 + 指定场地」的旧价格，再插入新价格。
      // 其他场馆、未选中的场地、未选中的星期完全不受影响。
      for (const weekday of validWeekdays) {
        const courts = Array.from(courtSet)
        if (courts.length) {
          await conn.query(
            `DELETE FROM court_prices WHERE venue_id=? AND weekday=? AND court IN (${courts.map(() => '?').join(',')})`,
            [venueId, weekday, ...courts]
          )
        }
        for (const it of cleanItems) {
          await conn.query(
            `INSERT INTO court_prices (venue_id, court, weekday, time_slot, price)
             VALUES (?, ?, ?, ?, ?)`,
            [venueId, it.court, weekday, it.timeSlot, it.price]
          )
        }
      }
      await conn.commit()
      return { ok: true, fnVer: 'saveCourtPrices-20261121a' }
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
