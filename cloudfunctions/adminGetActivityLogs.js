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

const FN_VER = 'activity-20261002a'

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
                 LEFT JOIN users u ON (
                   (l.phone <> '' AND u.phone = l.phone)
                   OR (IFNULL(l.user_name,'') <> '' AND u.nick_name = l.user_name)
                 )
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
    let list = (rows || []).map((r) => {
      const detail = r.detail || ''
      const parsedCard = r.card_name || parseCardName(detail)
      const parsedAmt = r.amount != null && r.amount !== '' ? money(r.amount) : parseAmount(detail)
      return {
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
      }
    })
    if (cardName) {
      const q = cardName.toLowerCase()
      list = list.filter((r) => String(r.cardName || '').toLowerCase().indexOf(q) >= 0)
    }

    if (!type || type === 'issue_card' || type === 'refund_card' || type === 'import_card') {
      try {
        const where = ['1=1']
        const p = []
        if (venueId) { where.push('c.venue_id=?'); p.push(venueId) }
        if (startDate) { where.push('c.created_at>=?'); p.push(startDate + ' 00:00:00') }
        if (endDate) { where.push('c.created_at < DATE_ADD(?, INTERVAL 1 DAY)'); p.push(endDate) }
        const [cards] = await pool.query(
          `SELECT c.id, c.card_name, c.user_name, c.issuer_name, c.price, c.venue_id, c.venue_name,
                  c.remark, c.status, DATE_FORMAT(c.created_at, '%Y-%m-%d %H:%i:%s') AS created_at,
                  IFNULL(u.phone,'') AS phone, c.user_id
             FROM member_cards c
             LEFT JOIN users u ON u.id=c.user_id
            WHERE ${where.join(' AND ')}
            ORDER BY c.id DESC
            LIMIT 800`,
          p
        )
        const seen = new Set(list.map((r) => String(r.cardName || '') + '|' + String(r.timeText || '').slice(0, 16) + '|' + String(r.phone || '')))
        ;(cards || []).forEach((c) => {
          const imported = String(c.issuer_name || '') === '数据迁入'
          const key = String(c.card_name || '') + '|' + String(c.created_at || '').slice(0, 16) + '|' + String(c.phone || '')
          if (seen.has(key)) return
          if (type === 'issue_card' && imported) return
          if (type === 'import_card' && !imported) return
          if (!type || type === 'issue_card' || type === 'import_card') {
            list.push({
              id: 'card-' + c.id,
              type: imported ? 'import_card' : 'issue_card',
              typeLabel: imported ? '迁入' : '发卡',
              userName: c.user_name || '',
              userAccount: c.user_name || '',
              operatorName: c.issuer_name || '',
              phone: c.phone || '',
              cardName: c.card_name || '',
              amount: imported ? 0 : money(c.price),
              detail: imported ? '数据迁入，不计入营业额' : ('发卡 ' + (c.card_name || '')),
              venueId: c.venue_id || '',
              venueName: c.venue_name || '',
              timeText: c.created_at || ''
            })
          }
        })
        list.sort((a, b) => String(b.timeText || '').localeCompare(String(a.timeText || '')))
      } catch (e) {}
    }

    return { ok: true, fnVer: FN_VER, list }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '加载动态失败', fnVer: FN_VER }
  }
}
