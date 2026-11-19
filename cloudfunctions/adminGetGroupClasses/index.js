const mysql = require('mysql2/promise')
const { autoCancelDueGroupClasses, fmtDate } = require('./groupClassAutoCancel')
const { loadSettings, mapClassExtra } = require('./groupClassSettings')


const FN_VER = 'getGroupClasses-20261119b'

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



function mapRow(r, settings, now) {
  const extra = mapClassExtra(r, settings, now)
  return Object.assign({
    _id: String(r.id),
    venueId: r.venue_id,
    venueName: r.venue_name || '',
    name: r.name,
    date: fmtDate(r.date),
    time: r.time,
    court: r.court,
    coachId: r.coach_id ? String(r.coach_id) : '',
    coachName: r.coach_name || '',
    coachAvatar: r.coach_avatar || '',
    capacity: r.capacity || 6,
    enrolled: r.enrolled || 0,
    status: r.status || 'open',
    remark: r.remark || '',
    minEnrollment: r.min_enrollment != null ? Number(r.min_enrollment) : 0,
    cancelBeforeHours: r.cancel_before_hours != null ? Number(r.cancel_before_hours) : 2,
    autoCancelExempt: Number(r.auto_cancel_exempt) === 1 ? 1 : 0
  }, extra)
}

exports.main = async (event) => {
  try {
    let body = event
    if (event && event.body) {
      body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
    }
    body = body || {}
    if (body.action === 'ver' || body.action === '__ver__') {
      return { ok: true, fnVer: FN_VER }
    }
    const { venueId, date } = body

    try {
      await autoCancelDueGroupClasses(pool, { operatorName: '系统' })
    } catch (e) {
      console.warn('lazy auto-cancel skip:', e && e.message)
    }

    const settings = await loadSettings(pool)
    const now = new Date()

    let sql = `SELECT g.*, v.name AS venue_name, c.avatar AS coach_avatar
         FROM group_classes g
         LEFT JOIN venues v ON CAST(v.id AS CHAR) = CAST(g.venue_id AS CHAR)
         LEFT JOIN coaches c ON c.id = g.coach_id
        WHERE 1=1`
    const params = []
    if (venueId) {
      sql += ' AND g.venue_id = ?'
      params.push(venueId)
    }
    if (date) {
      sql += ' AND g.date = ?'
      params.push(date)
    }
    const classType = body.classType || body.class_type || body.type || ''
    if (classType === 'self' || classType === 'fixed') {
      if (classType === 'self') {
        sql += " AND LOWER(IFNULL(g.class_type,'')) IN ('self','self_organized','self-organized','自组','自组团课')"
      } else {
        sql += " AND (g.class_type IS NULL OR g.class_type='' OR LOWER(g.class_type) IN ('fixed','固定','固定团课'))"
      }
    }
    sql += ' ORDER BY g.date ASC, g.time ASC, g.id ASC'

    const [rows] = await pool.query(sql, params)
    const list = (rows || []).map((r) => mapRow(r, settings, now))
    return { ok: true, list, settings, fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    // If class_type column is missing, retry without type filter
    const msg = e.message || '查询失败'
    if (String(msg).indexOf('Unknown column') >= 0) {
      try {
        let body = event
        if (event && event.body) body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
        body = body || {}
        const { venueId, date } = body
        let sql = `SELECT g.*, v.name AS venue_name, c.avatar AS coach_avatar
             FROM group_classes g
             LEFT JOIN venues v ON CAST(v.id AS CHAR) = CAST(g.venue_id AS CHAR)
             LEFT JOIN coaches c ON c.id = g.coach_id
            WHERE 1=1`
        const params = []
        if (venueId) { sql += ' AND g.venue_id = ?'; params.push(venueId) }
        if (date) { sql += ' AND g.date = ?'; params.push(date) }
        sql += ' ORDER BY g.date ASC, g.time ASC, g.id ASC'
        const [rows] = await pool.query(sql, params)
        const { loadSettings, mapClassExtra } = require('./groupClassSettings')
        const { fmtDate } = require('./groupClassAutoCancel')
        const settings = await loadSettings(pool)
        const now = new Date()
        const list = (rows || []).map((r) => mapRow(r, settings, now))
        return { ok: true, list, settings, fnVer: FN_VER, missingColumns: true }
      } catch (e2) {
        return { ok: false, msg: e2.message || msg, fnVer: FN_VER }
      }
    }
    return { ok: false, msg, fnVer: FN_VER }
  }
}
