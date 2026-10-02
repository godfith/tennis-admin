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

const FN_VER = 'saveCardTpl-20260929a'

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

function packRule(v, maxHours) {
  let obj = v
  if (!obj && !(maxHours > 0)) return null
  if (typeof obj === 'string') {
    try { obj = JSON.parse(obj) } catch (e) { obj = { mode: 'unlimited' } }
  }
  if (!obj || typeof obj !== 'object') obj = { mode: 'unlimited' }
  const cap = Number(maxHours != null ? maxHours : obj.maxHoursPerDay) || 0
  obj.maxHoursPerDay = cap
  try {
    return JSON.stringify(obj)
  } catch (e) {
    return null
  }
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const action = body.action || 'add'
    const id = Number(body.id || (body.data && body.data.id) || 0)
    const data = body.data || {}

    if (action === 'batchRules') {
      const ids = (body.ids || []).map(Number).filter(Boolean)
      if (!ids.length) return { ok: false, msg: '请先勾选卡模板', fnVer: FN_VER }
      const cap = Number(body.maxHoursPerDay) || 0
      let templates = 0
      let cards = 0
      for (const id of ids) {
        const [rows] = await pool.query('SELECT time_rule FROM card_templates WHERE id=?', [id])
        if (!rows[0]) continue
        let rule = rows[0].time_rule
        if (typeof rule === 'string') { try { rule = JSON.parse(rule) } catch (e) { rule = {} } }
        if (!rule || typeof rule !== 'object') rule = { mode: 'unlimited' }
        rule.maxHoursPerDay = cap
        await pool.query('UPDATE card_templates SET time_rule=?, updated_at=NOW() WHERE id=?', [JSON.stringify(rule), id])
        templates++
        if (body.syncIssued) {
          const [issued] = await pool.query(
            `SELECT id, time_rule FROM member_cards WHERE template_id=? AND IFNULL(status,'') NOT IN ('deleted','refunded')`,
            [id]
          )
          for (const c of issued || []) {
            let cr = c.time_rule
            if (typeof cr === 'string') { try { cr = JSON.parse(cr) } catch (e) { cr = {} } }
            if (cr && cr.customized) continue
            if (!cr || typeof cr !== 'object') cr = { mode: 'unlimited' }
            cr.maxHoursPerDay = cap
            await pool.query('UPDATE member_cards SET time_rule=? WHERE id=?', [JSON.stringify(cr), c.id])
            cards++
          }
        }
      }
      return { ok: true, templates, cards, fnVer: FN_VER }
    }

    if (action === 'list' || action === 'get') {
      const [rows] = await pool.query('SELECT * FROM card_templates ORDER BY id DESC')
      const list = (rows || []).map((r) => {
        let timeRule = r.time_rule
        if (typeof timeRule === 'string') {
          try { timeRule = JSON.parse(timeRule) } catch (e) { timeRule = { mode: 'unlimited' } }
        }
        if (!timeRule || typeof timeRule !== 'object') timeRule = { mode: 'unlimited' }
        const maxHoursPerDay = Number(timeRule.maxHoursPerDay) || 0
        return {
          _id: String(r.id),
          name: r.name,
          type: r.type,
          price: r.price,
          totalTimes: r.total_times,
          durationDays: r.duration_days,
          timeRule: { ...timeRule, maxHoursPerDay },
          maxHoursPerDay,
          status: r.status,
          description: r.description || ''
        }
      })
      return { ok: true, list, fnVer: FN_VER }
    }

    if (action === 'add') {
      if (!data.name || !data.type) return { ok: false, msg: '请填写名称和类型', fnVer: FN_VER }
      const [res] = await pool.query(
        `INSERT INTO card_templates
          (name, type, price, total_times, duration_days, time_rule, status, description, remark)
         VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
        [
          data.name,
          data.type,
          Number(data.price) || 0,
          Number(data.totalTimes) || 0,
          Number(data.durationDays) || 0,
          packRule(data.timeRule, data.maxHoursPerDay),
          data.status || 'active',
          data.description || '',
          data.remark || ''
        ]
      )
      return { ok: true, id: String(res.insertId), fnVer: FN_VER }
    }

    if (action === 'update' || action === 'toggle') {
      if (!id) return { ok: false, msg: '缺少模板ID', fnVer: FN_VER }
      const fields = []
      const params = []
      if (data.name != null) { fields.push('name=?'); params.push(data.name) }
      if (data.type != null) { fields.push('type=?'); params.push(data.type) }
      if (data.price != null) { fields.push('price=?'); params.push(Number(data.price) || 0) }
      if (data.totalTimes != null) { fields.push('total_times=?'); params.push(Number(data.totalTimes) || 0) }
      if (data.durationDays != null) { fields.push('duration_days=?'); params.push(Number(data.durationDays) || 0) }
      if (data.timeRule !== undefined || data.maxHoursPerDay != null) {
        fields.push('time_rule=?')
        params.push(packRule(data.timeRule, data.maxHoursPerDay))
      }
      if (data.status != null) { fields.push('status=?'); params.push(data.status) }
      if (data.description != null) { fields.push('description=?'); params.push(data.description) }
      if (!fields.length) return { ok: false, msg: '没有要改的字段', fnVer: FN_VER }
      fields.push('updated_at=NOW()')
      params.push(id)
      await pool.query(`UPDATE card_templates SET ${fields.join(', ')} WHERE id=?`, params)
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'delete') {
      if (!id) return { ok: false, msg: '缺少模板ID', fnVer: FN_VER }
      let used = 0
      try {
        const [rows] = await pool.query(
          `SELECT COUNT(*) AS n FROM member_cards WHERE template_id=? AND status IN ('active','used_up')`,
          [id]
        )
        used = Number(rows[0] && rows[0].n) || 0
      } catch (e) {}
      if (used > 0) {
        await pool.query(`UPDATE card_templates SET status='disabled', updated_at=NOW() WHERE id=?`, [id])
        return { ok: false, msg: '已有会员持有这张模板卡，不能硬删，已改为停用', fnVer: FN_VER }
      }
      await pool.query('DELETE FROM card_templates WHERE id=?', [id])
      return { ok: true, fnVer: FN_VER }
    }

    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '保存失败', fnVer: FN_VER }
  }
}
