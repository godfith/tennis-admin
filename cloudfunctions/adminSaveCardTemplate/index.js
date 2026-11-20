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
  dateStrings: true,
  timezone: '+08:00'
})

const FN_VER = 'saveCardTpl-20261120a'

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


let mallListedColumn = null
async function hasMallListedColumn() {
  if (mallListedColumn != null) return mallListedColumn
  try {
    const [rows] = await pool.query("SHOW COLUMNS FROM card_templates LIKE 'mall_listed'")
    mallListedColumn = !!(rows && rows[0])
  } catch (e) {
    mallListedColumn = false
  }
  return mallListedColumn
}

async function persistMallListed(id, listed, currentRule) {
  const flag = listed === true || listed === 1 || listed === '1'
  if (await hasMallListedColumn()) {
    await pool.query('UPDATE card_templates SET mall_listed=?, updated_at=NOW() WHERE id=?', [flag ? 1 : 0, id])
    return
  }
  let rule = currentRule
  if (typeof rule === 'string') {
    try { rule = JSON.parse(rule) } catch (e) { rule = {} }
  }
  rule = mall.setMallListedOnRule(rule, flag)
  await pool.query('UPDATE card_templates SET time_rule=?, updated_at=NOW() WHERE id=?', [JSON.stringify(rule), id])
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

function mapRow(r) {
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
    mallListed: mall.isMallListed(r, { defaultByName: true }),
    status: r.status,
    description: r.description || '',
    sortOrder: Number(r.sort_order) || 0
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

async function hasSortOrderColumn() {
  try {
    await pool.query('SELECT sort_order FROM card_templates LIMIT 1')
    return true
  } catch (e) {
    return false
  }
}

async function loadOrdered() {
  try {
    const [rows] = await pool.query('SELECT id, sort_order FROM card_templates ORDER BY sort_order ASC, id ASC')
    return rows || []
  } catch (e) {
    const [rows] = await pool.query('SELECT id FROM card_templates ORDER BY id DESC')
    return (rows || []).map((r) => ({ id: r.id, sort_order: 0 }))
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
    }

    if (action === 'move') {
      if (!id) return { ok: false, msg: '缺少模板ID', fnVer: FN_VER }
      const dir = body.direction === 'down' ? 1 : -1
      await ensureSortOrder()
      if (!(await hasSortOrderColumn())) return { ok: false, msg: '还没有排序字段，请先在库里执行 ADD_card_templates_sort_order.sql', fnVer: FN_VER }
      const rows = await loadOrdered()
      const idx = rows.findIndex((r) => Number(r.id) === id)
      if (idx < 0) return { ok: false, msg: '模板不存在', fnVer: FN_VER }
      const next = idx + dir
      if (next < 0 || next >= rows.length) return { ok: true, fnVer: FN_VER }
      const tmp = rows[idx]
      rows[idx] = rows[next]
      rows[next] = tmp
      for (let i = 0; i < rows.length; i++) {
        await pool.query('UPDATE card_templates SET sort_order=?, updated_at=NOW() WHERE id=?', [i + 1, rows[i].id])
      }
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'reorder') {
      const ids = (body.ids || []).map(Number).filter(Boolean)
      if (ids.length < 2) return { ok: false, msg: '排序数据不完整', fnVer: FN_VER }
      if (!(await hasSortOrderColumn())) {
        return { ok: false, msg: '还没有排序字段，请先在库里执行 ADD_card_templates_sort_order.sql', fnVer: FN_VER }
      }
      // Only rewrite sort_order for the submitted ids, keeping relative positions of others.
      const [all] = await pool.query('SELECT id, sort_order FROM card_templates ORDER BY sort_order ASC, id ASC')
      const rows = all || []
      const incoming = ids.filter((id) => rows.some((r) => Number(r.id) === id))
      if (incoming.length < 2) return { ok: false, msg: '排序数据不完整', fnVer: FN_VER }
      const pos = incoming.map((id) => rows.findIndex((r) => Number(r.id) === id)).filter((i) => i >= 0).sort((a, b) => a - b)
      if (pos.length !== incoming.length) return { ok: false, msg: '排序数据不完整', fnVer: FN_VER }
      const next = rows.slice()
      incoming.forEach((id, i) => {
        next[pos[i]] = { id, sort_order: rows[pos[i]].sort_order }
      })
      for (let i = 0; i < next.length; i++) {
        const so = i + 1
        if (Number(next[i].sort_order) !== so || Number(next[i].id) !== Number(rows[i] && rows[i].id)) {
          await pool.query('UPDATE card_templates SET sort_order=?, updated_at=NOW() WHERE id=?', [so, next[i].id])
        }
      }
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'add') {
      if (!data.name || !data.type) return { ok: false, msg: '请填写名称和类型', fnVer: FN_VER }
      await ensureSortOrder()
      const params = [
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
      if (await hasSortOrderColumn()) {
        let sortOrder
        if (data.sortOrder != null && data.sortOrder !== '') {
          sortOrder = Number(data.sortOrder) || 0
        } else {
          const [m] = await pool.query('SELECT IFNULL(MAX(sort_order), 0) AS m FROM card_templates')
          sortOrder = (Number(m[0] && m[0].m) || 0) + 1
        }
        const [res] = await pool.query(
          `INSERT INTO card_templates
            (name, type, price, total_times, duration_days, time_rule, status, description, remark, sort_order)
           VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
          params.concat([sortOrder])
        )
        if (data.mallListed != null || data.mall_listed != null) {
          await persistMallListed(res.insertId, data.mallListed != null ? data.mallListed : data.mall_listed, data.timeRule)
        }
        return { ok: true, id: String(res.insertId), fnVer: FN_VER }
      }
      const [res] = await pool.query(
        `INSERT INTO card_templates
          (name, type, price, total_times, duration_days, time_rule, status, description, remark)
         VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
        params
      )
      if (data.mallListed != null || data.mall_listed != null) {
        await persistMallListed(res.insertId, data.mallListed != null ? data.mallListed : data.mall_listed, data.timeRule)
      }
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
      if ((data.sortOrder != null || data.sort_order != null) && (await hasSortOrderColumn())) {
        fields.push('sort_order=?')
        params.push(Number(data.sortOrder != null ? data.sortOrder : data.sort_order) || 0)
      }
      const wantMall = data.mallListed != null || data.mall_listed != null
      const mallFlag = data.mallListed != null ? data.mallListed : data.mall_listed
      if (wantMall && (await hasMallListedColumn())) {
        fields.push('mall_listed=?')
        params.push((mallFlag === true || mallFlag === 1 || mallFlag === '1') ? 1 : 0)
      }
      if (!fields.length && !wantMall) return { ok: false, msg: '没有要改的字段', fnVer: FN_VER }
      if (!fields.length && wantMall) {
        await persistMallListed(id, mallFlag, data.timeRule)
        return { ok: true, synced: 0, fnVer: FN_VER }
      }
      fields.push('updated_at=NOW()')
      params.push(id)
      await pool.query(`UPDATE card_templates SET ${fields.join(', ')} WHERE id=?`, params)
      if (wantMall && !(await hasMallListedColumn())) {
        await persistMallListed(id, mallFlag, data.timeRule)
      }
      let synced = 0
      if (body.syncIssued && data.timeRule) {
        const [issued] = await pool.query(
          `SELECT id, time_rule FROM member_cards WHERE template_id=? AND IFNULL(status,'') NOT IN ('deleted','refunded')`,
          [id]
        )
        const next = packRule(data.timeRule, data.maxHoursPerDay)
        for (const c of issued || []) {
          let cr = c.time_rule
          if (typeof cr === 'string') { try { cr = JSON.parse(cr) } catch (e) { cr = {} } }
          if (cr && cr.customized) continue
          await pool.query('UPDATE member_cards SET time_rule=?, updated_at=NOW() WHERE id=?', [next, c.id])
          synced++
        }
      }
      return { ok: true, synced, fnVer: FN_VER }
    }

    if (action === 'delete') {
      if (!id) return { ok: false, msg: '缺少模板ID', fnVer: FN_VER }
      if (body.affectIssued) {
        await pool.query(
          `UPDATE member_cards SET status='disabled', updated_at=NOW()
            WHERE template_id=? AND IFNULL(status,'') NOT IN ('deleted','refunded')`,
          [id]
        )
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
