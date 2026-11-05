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
    const { action, id, data } = body || {}
    if (!action) return { ok: false, msg: '缺少 action' }

    if (action === 'add') {
      const [res] = await pool.query(
        `INSERT INTO staff (venue_id, name, phone, role, specialty, sort, status, remark)
         VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
        [
          data.venueId,
          data.name,
          data.phone || '',
          data.role,
          data.specialty || '',
          data.sort || 0,
          data.status || 'active',
          data.remark || ''
        ]
      )
      const staffId = res.insertId

      if (data.role === 'coach') {
        await pool.query(
          `INSERT INTO coaches (venue_id, staff_id, name, phone, specialty, sort, status, remark)
           VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
          [
            data.venueId,
            staffId,
            data.name,
            data.phone || '',
            data.specialty || '',
            data.sort || 0,
            data.status || 'active',
            data.remark || ''
          ]
        )
      }
      return { ok: true, id: String(staffId) }
    }

    if (action === 'update') {
      await pool.query(
        `UPDATE staff SET name=?, phone=?, role=?, specialty=?, sort=?, status=?, remark=?
         WHERE id=?`,
        [
          data.name,
          data.phone || '',
          data.role,
          data.specialty || '',
          data.sort || 0,
          data.status || 'active',
          data.remark || '',
          id
        ]
      )
      return { ok: true }
    }

    if (action === 'toggle') {
      await pool.query(`UPDATE staff SET status=? WHERE id=?`, [data.status, id])
      return { ok: true }
    }

    if (action === 'delete') {
      await pool.query(`DELETE FROM staff WHERE id=?`, [id])
      await pool.query(`DELETE FROM coaches WHERE staff_id=?`, [id])
      return { ok: true }
    }

    return { ok: false, msg: '未知操作' }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '操作失败' }
  }
}