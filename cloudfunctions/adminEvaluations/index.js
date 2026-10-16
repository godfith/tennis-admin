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

const FN_VER = 'eval-20261016a'

const ACHIEVEMENTS = [
  { type: 'beginner', title: '初学者', minTotal: 0 },
  { type: 'intermediate', title: '进阶学员', minTotal: 400 },
  { type: 'advanced', title: '高级学员', minTotal: 560 },
  { type: 'expert', title: '精英学员', minTotal: 630 },
  { type: 'forehand_master', title: '正手大师', skill: 'forehand', min: 90 },
  { type: 'backhand_master', title: '反手大师', skill: 'backhand', min: 90 },
  { type: 'serve_master', title: '发球高手', skill: 'serve', min: 90 },
  { type: 'all_round', title: '全能选手', minEach: 70 }
]

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

async function checkAchievements(conn, userId, scores) {
  const total = scores.forehand + scores.backhand + scores.serve + scores.volley + scores.slice + scores.smash + scores.drop_shot
  const earned = []
  for (const a of ACHIEVEMENTS) {
    let ok = false
    if (a.minTotal != null && total >= a.minTotal) ok = true
    if (a.skill && scores[a.skill] >= a.min) ok = true
    if (a.minEach && Object.values(scores).every(v => v >= a.minEach)) ok = true
    if (ok) {
      try {
        await conn.query('INSERT IGNORE INTO achievements (user_id, type, title) VALUES (?, ?, ?)', [userId, a.type, a.title])
        earned.push(a.title)
      } catch (e) {}
    }
  }
  return earned
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const action = body.action || 'list'

    if (action === 'list') {
      const userId = body.userId || ''
      const limit = Math.min(100, Number(body.limit) || 50)
      let sql = `SELECT e.*, u.nick_name, u.avatar_url
                   FROM student_evaluations e
                   LEFT JOIN users u ON u.id = e.user_id`
      const params = []
      if (userId) { sql += ' WHERE e.user_id=?'; params.push(userId) }
      sql += ' ORDER BY e.created_at DESC LIMIT ?'
      params.push(limit)
      const [rows] = await pool.query(sql, params)
      return { ok: true, fnVer: FN_VER, list: rows }
    }

    if (action === 'ranking') {
      const venueId = body.venueId || ''
      let sql = `SELECT e.user_id, e.user_name, u.avatar_url, e.venue_id,
                        MAX(e.total) AS best_total,
                        MAX(e.forehand) AS best_forehand, MAX(e.backhand) AS best_backhand,
                        MAX(e.serve) AS best_serve, MAX(e.volley) AS best_volley,
                        MAX(e.slice) AS best_slice, MAX(e.smash) AS best_smash,
                        MAX(e.drop_shot) AS best_drop_shot
                   FROM student_evaluations e
                   LEFT JOIN users u ON u.id = e.user_id`
      const params = []
      if (venueId) { sql += ' WHERE e.venue_id=?'; params.push(venueId) }
      sql += ' GROUP BY e.user_id, e.user_name, u.avatar_url, e.venue_id ORDER BY best_total DESC LIMIT 100'
      const [rows] = await pool.query(sql, params)
      const ranked = (rows || []).map((r, i) => ({ ...r, rank: i + 1 }))
      return { ok: true, fnVer: FN_VER, list: ranked }
    }

    if (action === 'save') {
      const { id, userId, userName, avatar, coachId, coachName, venueId,
              forehand, backhand, serve, volley, slice, smash, dropShot, remark } = body
      if (!userId) return { ok: false, msg: '缺少学员', fnVer: FN_VER }
      const scores = {
        forehand: Math.min(100, Math.max(0, Number(forehand) || 0)),
        backhand: Math.min(100, Math.max(0, Number(backhand) || 0)),
        serve: Math.min(100, Math.max(0, Number(serve) || 0)),
        volley: Math.min(100, Math.max(0, Number(volley) || 0)),
        slice: Math.min(100, Math.max(0, Number(slice) || 0)),
        smash: Math.min(100, Math.max(0, Number(smash) || 0)),
        drop_shot: Math.min(100, Math.max(0, Number(dropShot) || 0))
      }
      const total = Object.values(scores).reduce((s, v) => s + v, 0)
      if (id) {
        await pool.query(
          `UPDATE student_evaluations SET
            forehand=?, backhand=?, serve=?, volley=?, slice=?, smash=?, drop_shot=?, total=?, remark=?, updated_at=NOW()
           WHERE id=?`,
          [scores.forehand, scores.backhand, scores.serve, scores.volley, scores.slice, scores.smash, scores.drop_shot, total, remark || '', id]
        )
        return { ok: true, fnVer: FN_VER, total }
      }
      const conn = await pool.getConnection()
      try {
        await conn.query(
          `INSERT INTO student_evaluations
            (user_id, user_name, avatar, coach_id, coach_name, venue_id,
             forehand, backhand, serve, volley, slice, smash, drop_shot, total, remark)
           VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
          [userId, userName || '', avatar || '', coachId || null, coachName || '', venueId || '',
           scores.forehand, scores.backhand, scores.serve, scores.volley, scores.slice, scores.smash, scores.drop_shot, total, remark || '']
        )
        const earned = await checkAchievements(conn, userId, scores)
        return { ok: true, fnVer: FN_VER, total, earned }
      } finally {
        conn.release()
      }
    }

    if (action === 'achievements') {
      const userId = body.userId || ''
      if (!userId) return { ok: false, msg: '缺少学员', fnVer: FN_VER }
      const [rows] = await pool.query('SELECT type, title, earned_at FROM achievements WHERE user_id=? ORDER BY earned_at DESC', [userId])
      return { ok: true, fnVer: FN_VER, list: rows }
    }

    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    return { ok: false, msg: e.message || '服务异常', fnVer: FN_VER }
  }
}
