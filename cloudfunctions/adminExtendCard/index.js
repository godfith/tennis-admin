const mysql = require('mysql2/promise')

const pool = mysql.createPool({
  host: process.env.DB_HOST || 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: Number(process.env.DB_PORT || 26462),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || 'Admin123.',
  database: process.env.DB_NAME || 'goat_prod',
  waitForConnections: true,
  connectionLimit: 5,
  connectTimeout: 10000
})

function parseEvent(event) {
  if (event && event.body) {
    try {
      return typeof event.body === 'string' ? JSON.parse(event.body) : event.body
    } catch (e) {
      return event
    }
  }
  return event || {}
}

function fmtDate(v) {
  if (!v) return null
  if (typeof v === 'string') return v.slice(0, 10)
  if (v instanceof Date) {
    const y = v.getFullYear()
    const m = String(v.getMonth() + 1).padStart(2, '0')
    const d = String(v.getDate()).padStart(2, '0')
    return `${y}-${m}-${d}`
  }
  return String(v).slice(0, 10)
}

function addDays(ymd, days) {
  const base = ymd && /^\d{4}-\d{2}-\d{2}/.test(String(ymd))
    ? String(ymd).slice(0, 10)
    : new Date().toISOString().slice(0, 10)
  const d = new Date(base.replace(/-/g, '/') + ' 00:00:00')
  d.setDate(d.getDate() + Number(days || 0))
  const y = d.getFullYear()
  const m = String(d.getMonth() + 1).padStart(2, '0')
  const day = String(d.getDate()).padStart(2, '0')
  return `${y}-${m}-${day}`
}

function roleKind(role) {
  const r = String(role || '').toLowerCase()
  if (['admin', 'super', 'superadmin', '超级管理员', '管理员'].includes(r)) return 'admin'
  if (['manager', '店长'].includes(r)) return 'manager'
  return 'other'
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const cardId = body.cardId
    const days = Number(body.days)
    const adminId = body.adminId || ''
    const operatorName = body.operatorName || '管理员'
    if (!cardId) return { ok: false, msg: '缺少卡号' }
    if (!days || Number.isNaN(days)) return { ok: false, msg: '请填写非 0 天数' }

    let role = body.role || ''
    if (adminId && /^\d+$/.test(String(adminId))) {
      const [admins] = await pool.query('SELECT * FROM admins WHERE id=? LIMIT 1', [Number(adminId)])
      if (admins[0]) role = admins[0].role || role
    }
    const kind = roleKind(role)
    if (kind === 'other') return { ok: false, msg: '当前账号无延期权限' }
    if (kind === 'manager' && (days < -120 || days > 120)) {
      return { ok: false, msg: '店长只能调整 ±120 天以内' }
    }

    const [rows] = await pool.query('SELECT * FROM member_cards WHERE id=? LIMIT 1', [cardId])
    const card = rows[0]
    if (!card) return { ok: false, msg: '会员卡不存在' }
    if (card.status === 'refunded') return { ok: false, msg: '已退卡不能延期' }

    const oldTo = fmtDate(card.valid_to)
    const newTo = addDays(oldTo, days)
    let nextStatus = card.status
    const today = new Date().toISOString().slice(0, 10)
    if (card.status === 'expired' && newTo >= today) nextStatus = 'active'
    if (newTo < today && card.status === 'active' && days < 0) nextStatus = 'expired'

    await pool.query(
      'UPDATE member_cards SET valid_to=?, status=?, updated_at=NOW() WHERE id=?',
      [newTo, nextStatus, cardId]
    )
    return { ok: true, validTo: newTo, status: nextStatus }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '延期失败' }
  }
}