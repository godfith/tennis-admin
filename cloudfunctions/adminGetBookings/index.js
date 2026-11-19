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
  dateStrings: true
})

const FN_VER = 'getBookings-20261119a'
const EXPORT_MAX = 20000
const EXPORT_MAX_DAYS = 366

function parseEvent(event) {
  let body = event || {}
  if (body && body.body) {
    try {
      const inner = typeof body.body === 'string' ? JSON.parse(body.body) : body.body
      body = Object.assign({}, body, inner)
    } catch (e) {}
  }
  return body
}

function fmtDate(v) {
  if (!v) return ''
  const s = String(v)
  const m = s.match(/^(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : s.slice(0, 10)
}

function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
}

function isOutdoorSharedCourt(courtName) {
  return String(courtName || '').trim() === '外场'
}

function payMethodText(r) {
  if (r.card_name || r.card_id) return '会员卡'
  const src = String(r.source || '')
  if (src === 'user') return money(r.amount) > 0 ? '小程序支付' : '小程序'
  if (money(r.amount) > 0) return '现金'
  return '未收款'
}

function sportText(remark) {
  const s = String(remark || '')
  if (s.indexOf('匹克') >= 0 || s.indexOf('丁克') >= 0) return '匹克球'
  return '网球'
}

function isBackfill(remark) {
  return String(remark || '').indexOf('补录') >= 0
}

function statusLabel(status, userName) {
  if (status === 'locked' || String(userName || '') === '锁场') return '锁场'
  if (status === 'cancelled') return '已取消'
  if (status === 'pending_pay') return '待支付'
  if (status === 'done' || status === 'completed') return '已完成'
  return '已预约'
}

function mapRow(r) {
  const remark = r.remark || ''
  return {
    _id: String(r.id),
    id: String(r.id),
    orderNo: r.order_no || '',
    venueId: r.venue_id || '',
    venueName: r.venue_name || '',
    court: r.court || '',
    date: fmtDate(r.date),
    time: r.time || '',
    userId: r.user_id,
    memberId: r.user_id,
    openid: r.openid || '',
    userName: r.user_name || '',
    phone: r.user_phone || r.phone || '',
    status: r.status || 'booked',
    statusLabel: statusLabel(r.status, r.user_name),
    cardId: r.card_id ? String(r.card_id) : '',
    cardName: r.card_name || '',
    cardType: r.card_type || '',
    cardRemaining: r.card_remaining != null ? Number(r.card_remaining) : (r.remaining_times != null ? Number(r.remaining_times) : null),
    cardTotal: r.card_total != null ? Number(r.card_total) : (r.total_times != null ? Number(r.total_times) : null),
    coachId: r.coach_id ? String(r.coach_id) : '',
    coachName: r.coach_name || '',
    amount: money(r.amount),
    cardPrice: r.card_price != null ? money(r.card_price) : null,
    remark: remark,
    source: r.source || '',
    operatorName: r.operator_name || '',
    payMethod: payMethodText(r),
    sport: sportText(remark),
    backfill: isBackfill(remark)
  }
}

function daysBetween(from, to) {
  const a = new Date(from + 'T00:00:00')
  const b = new Date(to + 'T00:00:00')
  if (isNaN(a.getTime()) || isNaN(b.getTime())) return 0
  return Math.round((b - a) / 86400000) + 1
}

function parseStatusList(body) {
  let raw = body.statusList || body.statuses || body.status || ''
  if (Array.isArray(raw)) raw = raw.join(',')
  const list = String(raw || '').split(/[,|]/).map((s) => s.trim()).filter(Boolean)
  return list
}

exports.main = async (event) => {
  const body = parseEvent(event)
  const action = body.action || (body.data && body.data.action) || ''
  const isExport = action === 'export' || body.export === true || !!body.dateFrom
  const venueId = body.venueId || (body.data && body.data.venueId) || ''
  if (!venueId) return { ok: false, msg: '缺少场馆', fnVer: FN_VER, list: [] }

  if (!isExport) {
    const date = fmtDate(body.date || (body.data && body.data.date) || '')
    if (!date) return { ok: false, msg: '缺少场馆或日期', fnVer: FN_VER, list: [] }
    try {
      const [rows] = await pool.query(
        `SELECT b.id, b.venue_id, b.venue_name, b.court, b.date, b.time,
                b.user_id, b.openid, b.user_name, b.phone, b.status,
                IFNULL(NULLIF(u.phone,''), b.phone) AS user_phone,
                b.card_id, b.card_name, b.card_type, b.coach_id, b.coach_name,
                b.amount, b.remark, b.source, b.operator_name,
                c.remaining_times AS card_remaining, c.total_times AS card_total, c.price AS card_price
           FROM bookings b
           LEFT JOIN users u ON u.id = b.user_id
           LEFT JOIN member_cards c ON c.id = b.card_id
          WHERE b.venue_id=? AND b.date=? AND b.status IN ('booked','locked')
          ORDER BY b.time, b.court`,
        [venueId, date]
      )
      return { ok: true, list: (rows || []).map(mapRow), fnVer: FN_VER }
    } catch (e) {
      try {
        const [rows] = await pool.query(
          `SELECT b.*, c.remaining_times AS card_remaining, c.total_times AS card_total, c.price AS card_price
             FROM bookings b LEFT JOIN member_cards c ON c.id = b.card_id
            WHERE b.venue_id=? AND b.date=? AND b.status IN ('booked','locked') ORDER BY b.time, b.court`,
          [venueId, date]
        )
        return { ok: true, list: (rows || []).map(mapRow), fnVer: FN_VER, warn: e.message }
      } catch (e2) {
        return { ok: false, msg: e2.message || '查询失败', fnVer: FN_VER, list: [] }
      }
    }
  }

  const dateFrom = fmtDate(body.dateFrom || body.startDate || body.date || '')
  const dateTo = fmtDate(body.dateTo || body.endDate || body.date || '')
  if (!dateFrom || !dateTo) return { ok: false, msg: '请选择开始和结束日期', fnVer: FN_VER, list: [] }
  if (dateFrom > dateTo) return { ok: false, msg: '开始日期不能晚于结束日期', fnVer: FN_VER, list: [] }
  if (daysBetween(dateFrom, dateTo) > EXPORT_MAX_DAYS) {
    return { ok: false, msg: '一次最多导出 ' + EXPORT_MAX_DAYS + ' 天', fnVer: FN_VER, list: [] }
  }

  let statuses = parseStatusList(body)
  if (!statuses.length) statuses = ['booked', 'locked']
  const keyword = String(body.keyword || '').trim()
  const includeOutdoor = body.includeOutdoor === true
  const limit = Math.min(EXPORT_MAX, Math.max(1, Number(body.pageSize) || EXPORT_MAX))

  const params = [venueId, dateFrom, dateTo]
  let where = 'b.venue_id=? AND b.date>=? AND b.date<=?'
  where += ' AND b.status IN (' + statuses.map(() => '?').join(',') + ')'
  params.push.apply(params, statuses)
  if (!includeOutdoor) {
    where += " AND IFNULL(b.court,'') <> '外场'"
  }
  if (keyword) {
    const like = '%' + keyword + '%'
    where += ` AND (
      CONVERT(IFNULL(b.user_name,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
      OR CONVERT(IFNULL(b.phone,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
      OR CONVERT(IFNULL(u.phone,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
      OR CONVERT(IFNULL(b.court,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
      OR CONVERT(IFNULL(b.card_name,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
      OR CONVERT(IFNULL(b.remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
    )`
    params.push(like, like, like, like, like, like)
  }

  try {
    const [countRows] = await pool.query(
      `SELECT COUNT(*) AS total
         FROM bookings b
         LEFT JOIN users u ON u.id = b.user_id
        WHERE ${where}`,
      params
    )
    const total = Number(countRows[0] && countRows[0].total) || 0
    const [rows] = await pool.query(
      `SELECT b.id, b.venue_id, b.venue_name, b.court, b.date, b.time,
              b.user_id, b.openid, b.user_name, b.phone, b.status,
              IFNULL(NULLIF(u.phone,''), b.phone) AS user_phone,
              b.card_id, b.card_name, b.card_type, b.coach_id, b.coach_name,
              b.amount, b.remark, b.source, b.operator_name,
              c.remaining_times AS card_remaining, c.total_times AS card_total, c.price AS card_price
         FROM bookings b
         LEFT JOIN users u ON u.id = b.user_id
         LEFT JOIN member_cards c ON c.id = b.card_id
        WHERE ${where}
        ORDER BY b.date, b.time, b.court
        LIMIT ?`,
      params.concat([limit])
    )
    return {
      ok: true,
      list: (rows || []).map(mapRow),
      total,
      truncated: total > (rows || []).length,
      fnVer: FN_VER
    }
  } catch (e) {
    return { ok: false, msg: e.message || '导出失败', fnVer: FN_VER, list: [] }
  }
}
