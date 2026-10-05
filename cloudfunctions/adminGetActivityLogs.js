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

const FN_VER = 'activity-20261005a'

const LABELS = {
  register: '用户注册',
  booking_add: '订场',
  booking_cancel: '取消预约',
  booking_convert: '改用卡',
  group_enroll: '团课报名',
  issue_card: '发卡',
  refund_card: '退卡',
  extend_card: '延期',
  gift_card: '体验发放',
  gift_add: '体验加次',
  trial_class: '报体验课',
  pay: '微信支付',
  card_extend: '延期',
  card_delete: '删卡',
  hours_save: '改开放时间'
}

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

function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
}

function parseAmount(detail) {
  const s = String(detail || '')
  const m = s.match(/(-?\d+(?:\.\d+)?)\s*元/)
  if (m) return money(m[1])
  const m2 = s.match(/收款\s*(-?\d+(?:\.\d+)?)/)
  if (m2) return money(m2[1])
  return null
}

function parseCardName(detail) {
  const s = String(detail || '')
  let m = s.match(/卡券-([^，,；;\n]+)/)
  if (m) return ('卡券-' + m[1]).trim()
  m = s.match(/发卡\s+(.+?)(?:\s+收款|$)/)
  if (m) return m[1].trim()
  m = s.match(/给「(.+?)」/)
  if (m) return m[1].trim()
  m = s.match(/改用卡\s+(.+)$/)
  if (m) return m[1].trim()
  return ''
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const venueId = body.venueId || ''
    const type = body.type || ''
    const keyword = String(body.keyword || '').trim()
    const operator = String(body.operator || '').trim()
    const userName = String(body.userName || '').trim()
    const phone = String(body.phone || '').trim()
    const cardName = String(body.cardName || '').trim()
    const startDate = body.startDate || ''
    const endDate = body.endDate || ''
    const limit = Math.min(800, Math.max(20, Number(body.limit) || 300))

    let cols = []
    try {
      const [crows] = await pool.query('SHOW COLUMNS FROM activity_logs')
      cols = (crows || []).map((r) => r.Field)
    } catch (e) {
      cols = ['id', 'type', 'user_name', 'operator_name', 'phone', 'detail', 'venue_id', 'venue_name', 'created_at']
    }
    const has = (name) => cols.indexOf(name) >= 0
    const selectBits = [
      'l.id',
      'l.type',
      'l.user_name',
      'l.operator_name',
      'IFNULL(NULLIF(l.phone,\'\'), u.phone) AS phone',
      'l.detail',
      'l.venue_id',
      'l.venue_name',
      "DATE_FORMAT(l.created_at, '%Y-%m-%d %H:%i:%s') AS created_at"
    ]
    if (has('amount')) selectBits.push('l.amount')
    if (has('card_name')) selectBits.push('l.card_name')
    if (has('user_id')) selectBits.push('l.user_id')

    let sql = `SELECT ${selectBits.join(', ')}
                 FROM activity_logs l
                 LEFT JOIN users u ON ${has('user_id') ? 'u.id = l.user_id' : '1=0'}
                WHERE 1=1`
    const params = []
    if (venueId) {
      sql += ' AND l.venue_id=?'
      params.push(venueId)
    }
    if (type) {
      sql += ' AND l.type=?'
      params.push(type)
    }
    if (startDate) {
      sql += ' AND l.created_at >= ?'
      params.push(startDate + ' 00:00:00')
    }
    if (endDate) {
      sql += ' AND l.created_at < DATE_ADD(?, INTERVAL 1 DAY)'
      params.push(endDate)
    }
    if (operator) {
      sql += ' AND l.operator_name LIKE ?'
      params.push('%' + operator + '%')
    }
    if (userName) {
      sql += ' AND l.user_name LIKE ?'
      params.push('%' + userName + '%')
    }
    if (phone) {
      sql += ' AND IFNULL(NULLIF(l.phone,\'\'), u.phone) LIKE ?'
      params.push('%' + phone + '%')
    }
    if (keyword) {
      sql += ' AND (l.user_name LIKE ? OR l.operator_name LIKE ? OR IFNULL(NULLIF(l.phone,\'\'), u.phone) LIKE ? OR l.detail LIKE ?)'
      const like = '%' + keyword + '%'
      params.push(like, like, like, like)
    }
    sql += ' ORDER BY l.id DESC LIMIT ' + limit

    const [rows] = await pool.query(sql, params)
    const seenId = new Set()
    let list = []
    ;(rows || []).forEach((r) => {
      if (seenId.has(String(r.id))) return
      seenId.add(String(r.id))
      const detail = r.detail || ''
      const parsedCard = r.card_name || parseCardName(detail)
      const parsedAmt = r.amount != null && r.amount !== '' ? money(r.amount) : parseAmount(detail)
      list.push({
        id: String(r.id),
        type: r.type,
        typeLabel: LABELS[r.type] || r.type,
        userName: r.user_name || '',
        userAccount: r.user_name || '',
        operatorName: r.operator_name || '',
        phone: r.phone || '',
        cardName: parsedCard || '',
        amount: parsedAmt,
        detail,
        venueId: r.venue_id || '',
        venueName: r.venue_name || '',
        timeText: r.created_at || ''
      })
    })
    if (cardName) {
      const q = cardName.toLowerCase()
      list = list.filter((r) => String(r.cardName || '').toLowerCase().indexOf(q) >= 0)
    }

    return { ok: true, fnVer: FN_VER, list }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '加载动态失败', fnVer: FN_VER }
  }
}
