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

const FN_VER = 'opLogs-20261119a'

const LABELS = {
  booking_add: '订场',
  订场: '订场',
  booking_cancel: '取消预约',
  booking_convert: '改用卡',
  group_enroll: '团课报名',
  issue_card: '发卡',
  refund_card: '退卡',
  extend_card: '延期',
  card_extend: '延期',
  card_edit: '改卡',
  card_delete: '删卡',
  gift_card: '体验发放',
  gift_add: '体验加次',
  trial_class: '报体验课',
  hours_save: '改开放时间',
  wallet_adjust: '调整余额',
  court_save: '改场地',
  court_toggle: '开关场地',
  court_delete: '删场地',
  save_lock_rule: '新增锁场规则',
  update_lock_rule: '编辑锁场规则',
  delete_lock_rule: '删除锁场规则',
  batch_lock: '批量锁场',
  batch_unlock: '批量解锁'
}

const STAFF_WRITE_TYPES = [
  'issue_card', 'refund_card', 'extend_card', 'card_extend', 'card_edit', 'card_delete',
  'gift_card', 'gift_add', 'trial_class', 'hours_save', 'wallet_adjust',
  'court_save', 'court_toggle', 'court_delete',
  'save_lock_rule', 'update_lock_rule', 'delete_lock_rule', 'batch_lock', 'batch_unlock',
  'booking_convert'
]

const BOOKING_TYPES = ['booking_add', 'booking_cancel', 'group_enroll', '订场']

const EXCLUDE_TYPES = ['register', 'pay', 'import_card']

const GUEST_OPS = ['', '微信支付', '系统', '微信', '小程序', '用户', '迁入', '数据迁入', '系统迁入']

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

function roleKindOf(body) {
  const r = String((body && (body.roleKind || body.role)) || '').trim().toLowerCase()
  if (['admin', 'super', 'superadmin', '超级管理员', '管理员'].includes(r)) return 'admin'
  if (['partner', '联营', '联营人'].includes(r)) return 'partner'
  if (['manager', '店长'].includes(r)) return 'manager'
  if (['front', 'staff', '前台', '店员'].includes(r)) return 'front'
  if (['service', '客服'].includes(r)) return 'service'
  return r || ''
}

function uniqIds(list) {
  const out = []
  const seen = new Set()
  ;(list || []).forEach((v) => {
    const s = String(v || '').trim()
    if (!s || seen.has(s)) return
    seen.add(s)
    out.push(s)
  })
  return out
}

function isGuestOperator(name) {
  const s = String(name || '').trim()
  if (!s) return true
  if (GUEST_OPS.indexOf(s) >= 0) return true
  if (s.indexOf('数据迁入') >= 0 || s.indexOf('系统迁入') >= 0) return true
  if (s === '微信支付') return true
  return false
}

function isStaffOperator(name, adminNames) {
  const s = String(name || '').trim()
  if (!s) return false
  if (adminNames.has(s.toLowerCase())) return true
  if (isGuestOperator(s)) return false
  return false
}

function keepRow(r, adminNames) {
  const typ = String(r.type || '')
  const op = String(r.operator_name || '').trim()
  if (EXCLUDE_TYPES.indexOf(typ) >= 0) return false
  if (op.indexOf('数据迁入') >= 0 || op.indexOf('系统迁入') >= 0 || typ === 'import_card') return false
  if (STAFF_WRITE_TYPES.indexOf(typ) >= 0) return true
  if (BOOKING_TYPES.indexOf(typ) >= 0) {
    if (isStaffOperator(op, adminNames)) return true
    if (isGuestOperator(op)) return false
    if (op && op === String(r.user_name || '').trim() && !adminNames.has(op.toLowerCase())) return false
    // 操作人既不是会员本人，也不是空/微信支付：宁可留下，再用筛选收窄
    return !!op
  }
  if (isStaffOperator(op, adminNames)) return true
  if (op && !isGuestOperator(op)) return true
  return false
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const keyword = String(body.keyword || '').trim()
    const operator = String(body.operator || body.operatorName || '').trim()
    const type = String(body.type || '').trim()
    const startDate = body.startDate || ''
    const endDate = body.endDate || ''
    const limit = Math.min(3000, Math.max(20, Number(body.limit) || 1000))

    const kind = roleKindOf(body)
    const allowed = uniqIds(body.allowedVenueIds || body.venueIds || [])
    let venueIds = uniqIds([].concat(body.venueId ? [body.venueId] : []).concat(body.venueIds || []))
    if (kind && kind !== 'admin') {
      if (allowed.length) {
        if (!venueIds.length) venueIds = allowed.slice()
        else venueIds = venueIds.filter((id) => allowed.indexOf(id) >= 0)
        if (!venueIds.length) return { ok: true, list: [], operators: [], fnVer: FN_VER, msg: '当前账号没有可查看的场馆' }
      }
    }

    let adminNames = new Set()
    try {
      const [admins] = await pool.query('SELECT name, username FROM admins')
      ;(admins || []).forEach((a) => {
        if (a.name) adminNames.add(String(a.name).trim().toLowerCase())
        if (a.username) adminNames.add(String(a.username).trim().toLowerCase())
      })
    } catch (e) {
      adminNames = new Set()
    }

    let sql = `SELECT l.id, l.type, l.user_name, l.operator_name,
                       IFNULL(NULLIF(l.phone,''), u.phone) AS phone,
                       l.detail, l.venue_id, l.venue_name,
                       DATE_FORMAT(l.created_at, '%Y-%m-%d %H:%i:%s') AS created_at
                  FROM activity_logs l
                  LEFT JOIN users u ON u.phone <> '' AND u.phone = l.phone
                 WHERE 1=1`
    // users join by phone is best-effort; user_id may not exist on older activity_logs
    try {
      const [crows] = await pool.query("SHOW COLUMNS FROM activity_logs LIKE 'user_id'")
      if (crows && crows.length) {
        sql = `SELECT l.id, l.type, l.user_name, l.operator_name,
                       IFNULL(NULLIF(l.phone,''), u.phone) AS phone,
                       l.detail, l.venue_id, l.venue_name,
                       DATE_FORMAT(l.created_at, '%Y-%m-%d %H:%i:%s') AS created_at
                  FROM activity_logs l
                  LEFT JOIN users u ON u.id = l.user_id OR (IFNULL(l.user_id,0)=0 AND u.phone <> '' AND u.phone = l.phone)
                 WHERE 1=1`
      }
    } catch (e) {}

    const params = []
    if (venueIds.length === 1) {
      sql += ' AND l.venue_id=?'
      params.push(venueIds[0])
    } else if (venueIds.length > 1) {
      sql += ' AND l.venue_id IN (' + venueIds.map(() => '?').join(',') + ')'
      params.push.apply(params, venueIds)
    }
    if (type) {
      if (type === 'extend_card') {
        sql += " AND l.type IN ('extend_card','card_extend')"
      } else {
        sql += ' AND l.type=?'
        params.push(type)
      }
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
    if (keyword) {
      sql += ' AND (l.user_name LIKE ? OR l.operator_name LIKE ? OR IFNULL(l.phone,\'\') LIKE ? OR l.detail LIKE ?)'
      const like = '%' + keyword + '%'
      params.push(like, like, like, like)
    }
    sql += ' ORDER BY l.id DESC LIMIT ' + (limit * 2)

    const [rows] = await pool.query(sql, params)
    const list = []
    const seen = new Set()
    const operators = new Set()
    for (const r of (rows || [])) {
      if (list.length >= limit) break
      const id = String(r.id)
      if (seen.has(id)) continue
      if (!keepRow(r, adminNames)) continue
      seen.add(id)
      if (r.operator_name) operators.add(String(r.operator_name))
      list.push({
        id,
        type: r.type,
        typeLabel: LABELS[r.type] || r.type,
        operatorName: r.operator_name || '',
        userName: r.user_name || '',
        phone: r.phone || '',
        detail: r.detail || '',
        venueId: r.venue_id || '',
        venueName: r.venue_name || '',
        timeText: r.created_at || ''
      })
    }

    return {
      ok: true,
      fnVer: FN_VER,
      list,
      operators: Array.from(operators).sort()
    }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '加载操作日志失败', fnVer: FN_VER }
  }
}
