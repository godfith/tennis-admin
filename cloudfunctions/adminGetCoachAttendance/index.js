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

function fmtDate(v) {
  if (!v) return ''
  if (typeof v === 'string') return v.slice(0, 10)
  if (v instanceof Date) {
    const y = v.getFullYear()
    const m = String(v.getMonth() + 1).padStart(2, '0')
    const d = String(v.getDate()).padStart(2, '0')
    return `${y}-${m}-${d}`
  }
  return String(v).slice(0, 10)
}

function isSlotFinished(dateStr, timeStr, now) {
  const date = fmtDate(dateStr)
  if (!date || !timeStr) return false
  const parts = String(timeStr).split('-')
  const end = (parts[1] || parts[0] || '').trim()
  if (!end) return false
  const endAt = new Date(`${date.replace(/-/g, '/')} ${end}:00`)
  if (Number.isNaN(endAt.getTime())) return false
  return now.getTime() >= endAt.getTime()
}

exports.main = async (event) => {
  try {
    let body = event
    if (event.body) {
      body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
    }
    const {
      venueId = '',
      startDate = '',
      endDate = '',
      coachId = '',
      courseType = '',
      attendStatus = ''
    } = body || {}

    const where = ['b.coach_id IS NOT NULL']
    const params = []

    if (venueId) {
      where.push('b.venue_id = ?')
      params.push(venueId)
    }
    if (startDate) {
      where.push('b.date >= ?')
      params.push(startDate)
    }
    if (endDate) {
      where.push('b.date <= ?')
      params.push(endDate)
    }
    if (coachId) {
      where.push('b.coach_id = ?')
      params.push(coachId)
    }
    if (courseType === 'private') {
      where.push('(b.group_class_id IS NULL OR b.group_class_id = 0)')
    } else if (courseType === 'group') {
      where.push('b.group_class_id IS NOT NULL AND b.group_class_id <> 0')
    }

    const sql = `
      SELECT
        b.id, b.date, b.time, b.court, b.venue_id, b.venue_name,
        b.coach_id, b.coach_name, b.user_name, b.phone, b.status,
        b.group_class_id, gc.name AS group_name
      FROM bookings b
      LEFT JOIN group_classes gc ON gc.id = b.group_class_id
      WHERE ${where.join(' AND ')}
      ORDER BY b.date DESC, b.time ASC, b.id DESC
      LIMIT 3000
    `

    const [rows] = await pool.query(sql, params)
    const now = new Date()

    // 先算每条状态（取消不计；未取消且已过结束时间 = 已完成 1h）
    const all = (rows || []).map((r) => {
      const isGroup = !!(r.group_class_id)
      const courseName = isGroup
        ? (r.group_name ? `团课·${r.group_name}` : '团课')
        : '一对一私教'

      let attendStatusVal = 'pending'
      let statusText = '待上课'
      if (r.status === 'cancelled') {
        attendStatusVal = 'cancelled'
        statusText = '已取消'
      } else if (isSlotFinished(r.date, r.time, now)) {
        attendStatusVal = 'completed'
        statusText = '已完成'
      }

      return {
        id: String(r.id),
        date: fmtDate(r.date),
        time: r.time || '',
        hours: attendStatusVal === 'completed' ? 1 : 0,
        court: r.court || '',
        venueId: r.venue_id || '',
        venueName: r.venue_name || '',
        coachId: r.coach_id ? String(r.coach_id) : '',
        coachName: r.coach_name || '',
        userName: r.user_name || '',
        phone: r.phone || '',
        courseType: isGroup ? 'group' : 'private',
        courseName,
        attendStatus: attendStatusVal,
        statusText
      }
    })

    // 按教练汇总累计出勤（发工资依据，不受明细状态筛选影响）
    const map = {}
    for (const r of all) {
      const key = r.coachId || r.coachName || 'unknown'
      if (!map[key]) {
        map[key] = {
          coachId: r.coachId,
          coachName: r.coachName || '未知教练',
          completedHours: 0,
          completedCount: 0,
          pendingCount: 0,
          cancelledCount: 0
        }
      }
      if (r.attendStatus === 'completed') {
        map[key].completedHours += 1
        map[key].completedCount += 1
      } else if (r.attendStatus === 'pending') {
        map[key].pendingCount += 1
      } else if (r.attendStatus === 'cancelled') {
        map[key].cancelledCount += 1
      }
    }
    const coachStats = Object.values(map).sort(
      (a, b) => b.completedHours - a.completedHours
    )
    const totalByCoach = {}
    coachStats.forEach((c) => {
      totalByCoach[c.coachId || c.coachName] = c.completedHours
    })

    let list = all.map((r) => ({
      ...r,
      coachTotalHours: totalByCoach[r.coachId || r.coachName] || 0
    }))

    if (attendStatus) {
      list = list.filter((x) => x.attendStatus === attendStatus)
    }

    const stats = {
      total: list.length,
      completedHours: all.filter((x) => x.attendStatus === 'completed').length,
      pending: all.filter((x) => x.attendStatus === 'pending').length,
      cancelled: all.filter((x) => x.attendStatus === 'cancelled').length
    }

    return { ok: true, list, stats, coachStats }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '查询失败' }
  }
}