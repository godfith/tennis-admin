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

const FN_VER = 'getCardTpl-20260929a'

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

exports.main = async (event) => {
  try {
    parseEvent(event)
    const [rows] = await pool.query('SELECT * FROM card_templates ORDER BY id DESC')
    const list = (rows || []).map((r) => {
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
        description: r.description || ''
      }
    })
    return { ok: true, list, fnVer: FN_VER }
  } catch (e) {
    return { ok: false, msg: e.message || '加载失败', list: [], fnVer: FN_VER }
  }
}
