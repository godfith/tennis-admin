const mysql = require('mysql2/promise')
function loadExpireDueCards() {
  try {
    var mod = require('./expireDueCards')
    if (typeof mod === 'function') return mod
    if (mod && typeof mod.expireDueCards === 'function') return mod.expireDueCards
  } catch (e) {}
  return async function () { return { ok: true, affected: 0, skipped: true } }
}
const expireDueCards = loadExpireDueCards()


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

const FN_VER = 'getMemberCards-20261120a'

function parseRuleObj(v) {
  if (!v) return null
  if (typeof v === 'object') return v
  try { return JSON.parse(v) } catch (e) { return null }
}
function normYmd(v) {
  if (!v) return ''
  const m = String(v).match(/^(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : ''
}
function addDaysYmd(ymd, days) {
  const base = normYmd(ymd)
  if (!base) return ''
  const d = new Date(base.replace(/-/g, '/') + ' 00:00:00')
  d.setDate(d.getDate() + Number(days || 0))
  const p = (n) => (n < 10 ? '0' + n : '' + n)
  return d.getFullYear() + '-' + p(d.getMonth() + 1) + '-' + p(d.getDate())
}
function datesEditedFlag(card, tpl) {
  const remark = String((card && card.remark) || '')
  if (/\[已改有效期\]/.test(remark)) return true
  if (!tpl) return false
  const rule = parseRuleObj(tpl.time_rule || tpl.timeRule) || {}
  const mode = rule.activateMode || 'now'
  if (mode === 'first_use') return false
  const days = Number(tpl.duration_days != null ? tpl.duration_days : (tpl.durationDays || rule.durationDays) || 0)
  const from = normYmd(card.valid_from || card.validFrom)
  const to = normYmd(card.valid_to || card.validTo)
  if (rule.mode === 'dates' && Array.isArray(rule.dateRanges) && rule.dateRanges.length) {
    const starts = rule.dateRanges.map((x) => x && x.start).filter(Boolean).sort()
    const ends = rule.dateRanges.map((x) => x && x.end).filter(Boolean).sort()
    return from !== (starts[0] || '') || to !== (ends[ends.length - 1] || '')
  }
  if (days > 0) {
    if (!from) return true
    return to !== addDaysYmd(from, days)
  }
  return !!to
}
async function loadTplMap(poolOrConn, cards) {
  const ids = []
  const seen = {}
  ;(cards || []).forEach((c) => {
    const id = c.template_id || c.templateId
    if (id == null || id === '') return
    const k = String(id)
    if (seen[k]) return
    seen[k] = true
    ids.push(id)
  })
  const map = {}
  if (!ids.length) return map
  const ph = ids.map(() => '?').join(',')
  try {
    const [rows] = await poolOrConn.query(`SELECT * FROM card_templates WHERE id IN (${ph})`, ids)
    ;(rows || []).forEach((r) => { map[String(r.id)] = r })
  } catch (e) {}
  return map
}


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
    rulesEdited,
    payOrderId: (function () {
      if (c.pay_order_id) return String(c.pay_order_id)
      var m = String(c.remark || '').match(/\[pay_order:(\d+)\]/)
      return m ? m[1] : ''
    })(),
    paidAmount: c.paid_amount != null && c.paid_amount !== '' ? Number(c.paid_amount) : (c.price != null ? Number(c.price) : null)
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
      try { await expireDueCards(pool, { userId }) } catch (e) {}
      const [r] = await pool.query(
        `SELECT * FROM member_cards WHERE user_id=? AND IFNULL(status,'')<>'deleted' ORDER BY id DESC LIMIT 80`,
        [userId]
      )
      rows = r
    } else {
      try { await expireDueCards(pool, { openid: openid || userId }) } catch (e) {}
      const [r] = await pool.query(
        `SELECT * FROM member_cards WHERE openid=? AND IFNULL(status,'')<>'deleted' ORDER BY id DESC LIMIT 80`,
        [openid || userId]
      )
      rows = r
    }
    const tplMap = await loadTplMap(pool, rows)
    return { ok: true, list: (rows || []).map((c) => {
      const mapped = mapCard(c)
      mapped.datesEdited = datesEditedFlag(c, tplMap[String(c.template_id || '')])
      return mapped
    }), fnVer: FN_VER }
  } catch (e) {
    return { ok: false, msg: e.message || '查询失败', list: [], fnVer: FN_VER }
  }
}
