const mysql = require('mysql2/promise')

const pool = mysql.createPool({
  host: 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: 26462,
  user: 'root',
  password: 'Admin123.',
  database: 'goat_prod',
  waitForConnections: true,
  connectionLimit: 5,
  connectTimeout: 10000
})

const FN_VER = 'saveCourt-20261116b'

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

exports.main = async (event) => {
  try {
    let body = event
    if (event.body) {
      body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
    }
    const { action, id, data } = body || {}
    if (!action) return { ok: false, msg: '缺少 action', fnVer: FN_VER }
    const visible = customerVisibleValue(data)

    if (action === 'add') {
      const courtName = String((data && data.name) || '').trim()
      await assertUniqueOutdoorCourt(data.venueId, courtName, null)
      try {
        const [res] = await pool.query(
          `INSERT INTO courts (venue_id, name, type, sort, status, remark, customer_visible)
           VALUES (?, ?, ?, ?, ?, ?, ?)`,
          [
            data.venueId,
            courtName || data.name,
            data.type || '',
            data.sort || 0,
            data.status || 'open',
            data.remark || '',
            visible
          ]
        )
        if (isOutdoorSharedCourt(courtName)) {
          try { await copyOutdoorPrices(data.venueId) } catch (e2) { console.error('copyOutdoorPrices', e2) }
        }
        return { ok: true, id: String(res.insertId), fnVer: FN_VER }
      } catch (e) {
        if (!String(e.message || '').includes('customer_visible')) throw e
        const [res] = await pool.query(
          `INSERT INTO courts (venue_id, name, type, sort, status, remark)
           VALUES (?, ?, ?, ?, ?, ?)`,
          [
            data.venueId,
            courtName || data.name,
            data.type || '',
            data.sort || 0,
            data.status || 'open',
            data.remark || ''
          ]
        )
        if (isOutdoorSharedCourt(courtName)) {
          try { await copyOutdoorPrices(data.venueId) } catch (e2) { console.error('copyOutdoorPrices', e2) }
        }
        return { ok: true, id: String(res.insertId), fnVer: FN_VER, msg: '还没有客人可见字段，请先执行 ADD_courts_customer_visible.sql' }
      }
    }

    if (action === 'update') {
      const courtName = String((data && data.name) || '').trim()
      await assertUniqueOutdoorCourt(data && data.venueId, courtName, id)
      try {
        await pool.query(
          `UPDATE courts SET name=?, type=?, sort=?, status=?, remark=?, customer_visible=? WHERE id=?`,
          [
            courtName || data.name,
            data.type || '',
            data.sort || 0,
            data.status || 'open',
            data.remark || '',
            visible,
            id
          ]
        )
        if (isOutdoorSharedCourt(courtName)) {
          try { await copyOutdoorPrices(data.venueId) } catch (e2) { console.error('copyOutdoorPrices', e2) }
        }
        return { ok: true, fnVer: FN_VER }
      } catch (e) {
        if (!String(e.message || '').includes('customer_visible')) throw e
        await pool.query(
          `UPDATE courts SET name=?, type=?, sort=?, status=?, remark=? WHERE id=?`,
          [
            courtName || data.name,
            data.type || '',
            data.sort || 0,
            data.status || 'open',
            data.remark || '',
            id
          ]
        )
        if (isOutdoorSharedCourt(courtName)) {
          try { await copyOutdoorPrices(data.venueId) } catch (e2) { console.error('copyOutdoorPrices', e2) }
        }
        return { ok: true, fnVer: FN_VER, msg: '还没有客人可见字段，请先执行 ADD_courts_customer_visible.sql' }
      }
    }

    if (action === 'toggle') {
      await pool.query(`UPDATE courts SET status=? WHERE id=?`, [data.status, id])
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'delete') {
      await pool.query(`DELETE FROM courts WHERE id=?`, [id])
      return { ok: true, fnVer: FN_VER }
    }

    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '操作失败', fnVer: FN_VER }
  }
}
