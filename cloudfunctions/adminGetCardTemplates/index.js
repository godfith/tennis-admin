const mysql = require('mysql2/promise')
const mall = require('./cardMall')

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

const FN_VER = 'getCardTpl-20261120a'

function parseEvent(event) {
  let body = event || {}
  if (body.body) {
    try {
      const inner = typeof body.body === 'string' ? JSON.parse(body.body) : body.body
      body = Object.assign({}, body, inner)
    } catch (e) {}
  }
  return body
}

function mapRow(r) {
  let timeRule = r.time_rule
  if (typeof timeRule === 'string') {
    try { timeRule = JSON.parse(timeRule) } catch (e) { timeRule = { mode: 'unlimited' } }
  }
  if (!timeRule || typeof timeRule !== 'object') timeRule = { mode: 'unlimited' }
  const maxHoursPerDay = Number(timeRule.maxHoursPerDay) || 0
  timeRule.maxHoursPerDay = maxHoursPerDay
  return {
    _id: String(r.id),
    name: r.name,
    type: r.type,
    price: Number(r.price) || 0,
    totalTimes: r.total_times,
    durationDays: r.duration_days,
    timeRule,
    maxHoursPerDay,
    status: r.status || 'active',
    description: r.description || '',
    sortOrder: Number(r.sort_order) || 0,
    mallListed: mall.isMallListed(r, { defaultByName: true })
  }
}

async function ensureSortOrder() {
  try {
    await pool.query('ALTER TABLE card_templates ADD COLUMN sort_order INT NOT NULL DEFAULT 0')
  } catch (e) {}
  try {
    // 只在全部还是默认 0 时回填，避免把新模板排到最前的 0 或已有顺序改掉
    await pool.query(
      `UPDATE card_templates
          SET sort_order = (SELECT mx FROM (SELECT MAX(id) AS mx FROM card_templates) s) - id + 1
        WHERE (SELECT cnt FROM (SELECT COUNT(*) AS cnt FROM card_templates WHERE IFNULL(sort_order, 0) <> 0) t) = 0`
    )
  } catch (e) {}
}

exports.main = async (event) => {
  try {
    parseEvent(event)
    await ensureSortOrder()
    let rows
    try {
      const [r] = await pool.query('SELECT * FROM card_templates ORDER BY sort_order ASC, id ASC')
      rows = r
    } catch (e) {
      const [r] = await pool.query('SELECT * FROM card_templates ORDER BY id DESC')
      rows = r
    }
    const list = (rows || []).map(mapRow)
    return { ok: true, list, fnVer: FN_VER }
  } catch (e) {
    return { ok: false, msg: e.message || '加载失败', list: [], fnVer: FN_VER }
  }
}
