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

async function checkConflict(data, excludeId) {
  // 场地：已有普通预约
  const [bCourt] = await pool.query(
    `SELECT id FROM bookings
     WHERE venue_id=? AND date=? AND time=? AND court=? AND status='booked'
     LIMIT 1`,
    [data.venueId, data.date, data.time, data.court]
  )
  if (bCourt.length) return '该时段场地已有预约，无法排团课'

  // 教练：已有普通预约
  if (data.coachId) {
    const [bCoach] = await pool.query(
      `SELECT id FROM bookings
       WHERE venue_id=? AND date=? AND time=? AND coach_id=? AND status='booked'
       LIMIT 1`,
      [data.venueId, data.date, data.time, data.coachId]
    )
    if (bCoach.length) return '该时段教练已有预约，无法排团课'
  }

  // 场地：已有其它团课
  let sql = `SELECT id FROM group_classes
    WHERE venue_id=? AND date=? AND time=? AND court=? AND status!='cancelled'`
  const params = [data.venueId, data.date, data.time, data.court]
  if (excludeId) {
    sql += ' AND id<>?'
    params.push(excludeId)
  }
  sql += ' LIMIT 1'
  const [gCourt] = await pool.query(sql, params)
  if (gCourt.length) return '该时段场地已有团课'

  // 教练：已有其它团课
  if (data.coachId) {
    let sql2 = `SELECT id FROM group_classes
      WHERE venue_id=? AND date=? AND time=? AND coach_id=? AND status!='cancelled'`
    const p2 = [data.venueId, data.date, data.time, data.coachId]
    if (excludeId) {
      sql2 += ' AND id<>?'
      p2.push(excludeId)
    }
    sql2 += ' LIMIT 1'
    const [gCoach] = await pool.query(sql2, p2)
    if (gCoach.length) return '该时段教练已有团课'
  }

  return null
}

exports.main = async (event) => {
  try {
    let body = event
    if (event.body) {
      body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
    }
    const { action, id, data } = body || {}
    if (!action) return { ok: false, msg: '缺少 action' }

    if (action === 'add') {
      const err = await checkConflict(data, null)
      if (err) return { ok: false, msg: err }

      const [res] = await pool.query(
        `INSERT INTO group_classes
          (venue_id, name, date, time, court, coach_id, coach_name, capacity, enrolled, status, remark)
         VALUES (?, ?, ?, ?, ?, ?, ?, ?, 0, ?, ?)`,
        [
          data.venueId,
          data.name,
          data.date,
          data.time,
          data.court,
          data.coachId || null,
          data.coachName || '',
          data.capacity || 6,
          data.status || 'open',
          data.remark || ''
        ]
      )
      return { ok: true, id: String(res.insertId) }
    }

    if (action === 'update') {
      const err = await checkConflict(data, id)
      if (err) return { ok: false, msg: err }

      await pool.query(
        `UPDATE group_classes SET
          name=?, date=?, time=?, court=?, coach_id=?, coach_name=?,
          capacity=?, status=?, remark=?
         WHERE id=?`,
        [
          data.name,
          data.date,
          data.time,
          data.court,
          data.coachId || null,
          data.coachName || '',
          data.capacity || 6,
          data.status || 'open',
          data.remark || '',
          id
        ]
      )
      return { ok: true }
    }

    if (action === 'toggle') {
      await pool.query(
        `UPDATE group_classes SET status=? WHERE id=?`,
        [data.status, id]
      )
      return { ok: true }
    }

    if (action === 'delete') {
      await pool.query(`DELETE FROM group_classes WHERE id=?`, [id])
      return { ok: true }
    }

    return { ok: false, msg: '未知操作' }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '操作失败' }
  }
}