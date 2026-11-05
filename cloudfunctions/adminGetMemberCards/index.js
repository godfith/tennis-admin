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

const FN_VER = 'getMemberCards-20260928a'

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

function fmtYmd(v) {
  if (!v) return ''
  const s = String(v)
  const m = s.match(/^(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : s.slice(0, 10)
}

function parseRule(raw) {
  if (!raw) return null
  if (typeof raw === 'object') return raw
  try { return JSON.parse(raw) } catch (e) { return null }
}

function mapCard(c) {
  const rule = parseRule(c.time_rule)
  const rulesEdited = !!(c.rules_edited || (rule && rule.customized) || /\[已改规则\]/.test(String(c.remark || '')))
  return {
    _id: String(c.id),
    cardName: c.card_name || '',
    type: c.type,
    status: c.status,
    remainingTimes: c.remaining_times,
    totalTimes: c.total_times,
    validFrom: fmtYmd(c.valid_from),
    validTo: fmtYmd(c.valid_to),
    price: c.price != null ? Number(c.price) : null,
    venueId: c.venue_id || '',
    venueName: c.venue_name || '',
    issuerName: c.issuer_name || '',
    templateId: c.template_id ? String(c.template_id) : '',
    timeRule: rule,
    remark: c.remark || '',
    rulesEdited
  }
}

exports.main = async (event) => {
  const body = parseEvent(event)
  const userId = body.userId || body.memberId || ''
  const openid = body.openid || ''
  if (!userId && !openid) return { ok: false, msg: '缺少用户', list: [], fnVer: FN_VER }
  try {
    let rows
    if (userId && /^\d+$/.test(String(userId))) {
      const [r] = await pool.query(
        `SELECT * FROM member_cards WHERE user_id=? AND IFNULL(status,'')<>'deleted' ORDER BY id DESC LIMIT 80`,
        [userId]
      )
      rows = r
    } else {
      const [r] = await pool.query(
        `SELECT * FROM member_cards WHERE openid=? AND IFNULL(status,'')<>'deleted' ORDER BY id DESC LIMIT 80`,
        [openid || userId]
      )
      rows = r
    }
    return { ok: true, list: (rows || []).map(mapCard), fnVer: FN_VER }
  } catch (e) {
    return { ok: false, msg: e.message || '查询失败', list: [], fnVer: FN_VER }
  }
}
