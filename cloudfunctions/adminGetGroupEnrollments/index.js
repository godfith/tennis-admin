const mysql = require('mysql2/promise')
const { autoCancelDueGroupClasses } = require('./groupClassAutoCancel')

const FN_VER = 'getGroupEnrollments-20261112c'

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

    const qs = (event && event.queryStringParameters) || {}
    const groupClassId =
      body.groupClassId ||
      qs.groupClassId ||
      event.groupClassId ||
      ''

    if (!groupClassId) {
      return { ok: false, msg: '缺少团课ID', fnVer: FN_VER }
    }

    try {
      await autoCancelDueGroupClasses(pool, { operatorName: '系统' })
    } catch (e) {
      console.warn('lazy auto-cancel skip:', e && e.message)
    }

    const [rows] = await pool.query(
      `SELECT b.*,
              IFNULL(NULLIF(u.venue_name, ''), uv.name) AS user_venue_name,
              IFNULL(u.venue_id, '') AS user_venue_id,
              IFNULL(NULLIF(c.venue_name, ''), cv.name) AS card_venue_name,
              IFNULL(c.venue_id, '') AS card_venue_id
         FROM bookings b
         LEFT JOIN users u ON u.id = b.user_id
         LEFT JOIN venues uv ON CAST(uv.id AS CHAR) = CAST(u.venue_id AS CHAR)
         LEFT JOIN member_cards c ON c.id = b.card_id
         LEFT JOIN venues cv ON CAST(cv.id AS CHAR) = CAST(c.venue_id AS CHAR)
        WHERE b.group_class_id = ? AND b.status = 'booked'
        ORDER BY b.id ASC`,
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
      createdAt: r.created_at,
      userVenueId: r.user_venue_id || '',
      userVenueName: r.user_venue_name || '',
      cardVenueId: r.card_venue_id || '',
      cardVenueName: r.card_venue_name || ''
    }))
    return { ok: true, list, fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '查询失败', fnVer: FN_VER }
  }
}
