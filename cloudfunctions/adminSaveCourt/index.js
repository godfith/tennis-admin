const mysql = require('mysql2/promise')

const pool = mysql.createPool({
  host: process.env.DB_HOST || 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: Number(process.env.DB_PORT || 26462),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'goat_prod',
  waitForConnections: true,
  connectionLimit: 5,
  connectTimeout: 10000
})

const FN_VER = 'saveCourt-20261119a'
const MISSING_PURE_MSG = '场地其他信息已保存。还没有「纯网球、没有发球机」字段，请先在数据库执行 PREVIEW_courts_pure_tennis_20261119.sql 后再勾选。'

function isOutdoorSharedCourt(courtName) {
  return String(courtName || '').trim() === '外场'
}

function customerVisibleValue(data) {
  if (data && isOutdoorSharedCourt(data.name)) return 0
  if (!data) return 1
  if (data.customerVisible === 0 || data.customerVisible === '0' || data.customerVisible === false) return 0
  if (data.customer_visible === 0 || data.customer_visible === '0' || data.customer_visible === false) return 0
  return 1
}

function truthyFlag(v) {
  return v === true || v === 1 || v === '1'
}

function pureTennisValue(data) {
  if (!data) return 0
  if (String(data.type || '') === '匹克球') return 0
  if (truthyFlag(data.pureTennis) || truthyFlag(data.pure_tennis)) return 1
  return 0
}

async function courtColumns() {
  try {
    const [rows] = await pool.query('SHOW COLUMNS FROM courts')
    return new Set((rows || []).map((r) => r.Field))
  } catch (e) {
    return new Set(['id', 'venue_id', 'name', 'type', 'sort', 'status', 'remark'])
  }
}

async function assertUniqueOutdoorCourt(venueId, name, excludeId) {
  if (!isOutdoorSharedCourt(name) || !venueId) return
  const [rows] = await pool.query(
    'SELECT id FROM courts WHERE venue_id=? AND name=? LIMIT 2',
    [venueId, '外场']
  )
  const hit = (rows || []).find((r) => String(r.id) !== String(excludeId || ''))
  if (hit) {
    const err = new Error('该场馆已经有外场，不用重复添加')
    throw err
  }
}

async function copyOutdoorPrices(venueId) {
  if (!venueId) return
  await pool.query(
    `INSERT INTO court_prices (venue_id, court, weekday, time_slot, price)
     SELECT p.venue_id, '外场', p.weekday, p.time_slot, p.price
       FROM court_prices p
       JOIN (
         SELECT name
           FROM courts
          WHERE venue_id=?
            AND name <> '外场'
            AND (name IN ('1号场', '1号') OR type = '网球' OR name REGEXP '^[0-9]+号场$')
          ORDER BY (name IN ('1号场', '1号')) DESC, sort ASC, id ASC
          LIMIT 1
       ) src
         ON p.venue_id=? AND p.court = src.name
      WHERE NOT EXISTS (
        SELECT 1 FROM court_prices x
         WHERE x.venue_id=? AND x.court='外场' AND x.weekday=p.weekday AND x.time_slot=p.time_slot
      )`,
    [venueId, venueId, venueId]
  )
}

async function writeLog(row) {
  try {
    await pool.query(
      `INSERT INTO activity_logs (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, NOW())`,
      [
        row.type || 'court_save',
        row.userName || '',
        row.operatorName || '',
        '',
        String(row.detail || '').slice(0, 500),
        row.venueId || '',
        row.venueName || ''
      ]
    )
  } catch (e) {}
}

function operatorName(body, data) {
  return String((body && body.operatorName) || (data && data.operatorName) || '').trim()
}

exports.main = async (event) => {
  try {
    let body = event
    if (event.body) {
      body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
    }
    const { action, id, data } = body || {}
    if (!action) return { ok: false, msg: '缺少 action', fnVer: FN_VER }
    const visible = customerVisibleValue(data)
    const pureTennis = pureTennisValue(data)
    const cols = await courtColumns()
    const hasVisible = cols.has('customer_visible')
    const hasPure = cols.has('pure_tennis')
    const op = operatorName(body, data)

    if (action === 'add') {
      const courtName = String((data && data.name) || '').trim()
      await assertUniqueOutdoorCourt(data.venueId, courtName, null)
      const fields = ['venue_id', 'name', 'type', 'sort', 'status', 'remark']
      const values = [
        data.venueId,
        courtName || data.name,
        data.type || '',
        data.sort || 0,
        data.status || 'open',
        data.remark || ''
      ]
      if (hasVisible) {
        fields.push('customer_visible')
        values.push(visible)
      }
      if (hasPure) {
        fields.push('pure_tennis')
        values.push(pureTennis)
      }
      const [res] = await pool.query(
        `INSERT INTO courts (${fields.join(', ')}) VALUES (${fields.map(() => '?').join(', ')})`,
        values
      )
      if (isOutdoorSharedCourt(courtName)) {
        try { await copyOutdoorPrices(data.venueId) } catch (e2) { console.error('copyOutdoorPrices', e2) }
      }
      await writeLog({
        type: 'court_save',
        operatorName: op,
        detail: '新增场地 ' + (courtName || data.name || '') + (data.type ? '（' + data.type + '）' : '') + (pureTennis ? ' · 纯网球无发球机' : ''),
        venueId: data.venueId || '',
        venueName: data.venueName || ''
      })
      if (pureTennis && !hasPure) {
        return { ok: true, id: String(res.insertId), fnVer: FN_VER, msg: MISSING_PURE_MSG }
      }
      const extra = !hasVisible ? '还没有客人可见字段，请先执行 ADD_courts_customer_visible.sql' : ''
      return { ok: true, id: String(res.insertId), fnVer: FN_VER, msg: extra || undefined }
    }

    if (action === 'update') {
      const courtName = String((data && data.name) || '').trim()
      await assertUniqueOutdoorCourt(data && data.venueId, courtName, id)
      const sets = ['name=?', 'type=?', 'sort=?', 'status=?', 'remark=?']
      const values = [
        courtName || data.name,
        data.type || '',
        data.sort || 0,
        data.status || 'open',
        data.remark || ''
      ]
      if (hasVisible) {
        sets.push('customer_visible=?')
        values.push(visible)
      }
      if (hasPure) {
        sets.push('pure_tennis=?')
        values.push(pureTennis)
      }
      values.push(id)
      await pool.query(`UPDATE courts SET ${sets.join(', ')} WHERE id=?`, values)
      if (isOutdoorSharedCourt(courtName)) {
        try { await copyOutdoorPrices(data.venueId) } catch (e2) { console.error('copyOutdoorPrices', e2) }
      }
      await writeLog({
        type: 'court_save',
        operatorName: op,
        detail: '编辑场地 ' + (courtName || data.name || '') + (data.type ? '（' + data.type + '）' : '') + (pureTennis ? ' · 纯网球无发球机' : ''),
        venueId: (data && data.venueId) || '',
        venueName: (data && data.venueName) || ''
      })
      if (pureTennis && !hasPure) {
        return { ok: true, fnVer: FN_VER, msg: MISSING_PURE_MSG }
      }
      const extra = !hasVisible ? '还没有客人可见字段，请先执行 ADD_courts_customer_visible.sql' : ''
      return { ok: true, fnVer: FN_VER, msg: extra || undefined }
    }

    if (action === 'toggle') {
      let row = null
      try {
        const [rows] = await pool.query('SELECT * FROM courts WHERE id=? LIMIT 1', [id])
        row = rows && rows[0]
      } catch (e) {}
      await pool.query(`UPDATE courts SET status=? WHERE id=?`, [data.status, id])
      await writeLog({
        type: 'court_toggle',
        operatorName: op,
        detail: ((data && data.status) === 'open' ? '开放场地 ' : '关闭场地 ') + ((row && row.name) || ('#' + id)),
        venueId: (row && row.venue_id) || (data && data.venueId) || '',
        venueName: (data && data.venueName) || ''
      })
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'delete') {
      let row = null
      try {
        const [rows] = await pool.query('SELECT * FROM courts WHERE id=? LIMIT 1', [id])
        row = rows && rows[0]
      } catch (e) {}
      await pool.query(`DELETE FROM courts WHERE id=?`, [id])
      await writeLog({
        type: 'court_delete',
        operatorName: op,
        detail: '删除场地 ' + ((row && row.name) || ('#' + id)),
        venueId: (row && row.venue_id) || '',
        venueName: ''
      })
      return { ok: true, fnVer: FN_VER }
    }

    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '操作失败', fnVer: FN_VER }
  }
}
