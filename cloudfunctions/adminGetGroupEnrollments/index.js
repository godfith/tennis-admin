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
    let body = {}
    if (event && event.body) {
      if (typeof event.body === 'string') {
        try {
          body = JSON.parse(event.body || '{}')
        } catch (e) {
          body = {}
        }
      } else {
        body = event.body
      }
    } else if (event) {
      body = event
    }

    // 兼容 query
    const qs = (event && event.queryStringParameters) || {}
    const groupClassId =
      body.groupClassId ||
      qs.groupClassId ||
      event.groupClassId ||
      ''

    if (!groupClassId) {
      return { ok: false, msg: '缺少团课ID' }
    }

    const [rows] = await pool.query(
      `SELECT * FROM bookings
       WHERE group_class_id = ? AND status = 'booked'
       ORDER BY id ASC`,
      [groupClassId]
    )

    const list = (rows || []).map((r) => ({
      _id: String(r.id),
      userId: r.user_id ? String(r.user_id) : '',
      userName: r.user_name || '',
      phone: r.phone || '',
      openid: r.openid || '',
      cardId: r.card_id ? String(r.card_id) : '',
      cardName: r.card_name || '',
      status: r.status,
      createdAt: r.created_at
    }))
    return { ok: true, list }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '查询失败' }
  }
}