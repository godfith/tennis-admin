const mysql = require('mysql2/promise')
const courtTypeRule = require('./courtTypeRule')
const cardActivateHelper = require('./cardActivateHelper')
const coachPerm = require('./coachPerm')
const coachBind = require('./coachBind')
let __cloud = null
function getCloud() {
  if (__cloud) return __cloud
  try {
    __cloud = require('wx-server-sdk')
    __cloud.init({ env: __cloud.DYNAMIC_CURRENT_ENV })
  } catch (e) {
    __cloud = null
  }
  return __cloud
}
async function refundCourtPayViaPay(payload) {
  const cloud = getCloud()
  if (!cloud || !cloud.callFunction) {
    return { ok: false, msg: '退款服务不可用（请安装/配置 wx-server-sdk，或在 pay 云函数手动退款）' }
  }
  try {
    const res = await cloud.callFunction({
      name: 'pay',
      data: Object.assign({ action: 'refundCourtPay' }, payload || {})
    })
    return (res && res.result) || { ok: false, msg: '退款无响应' }
  } catch (e) {
    return { ok: false, msg: (e && e.message) || '退款调用失败' }
  }
}

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


function sourceText(data) {
  const mt = money(data && data.payMeituan)
  const dy = money(data && data.payDouyin)
  const off = money(data && data.payOffline)
  const parts = []
  if (mt > 0) parts.push('美团' + mt)
  if (dy > 0) parts.push('抖音' + dy)
  if (off > 0) parts.push('线下' + off)
  return parts.length ? ' [' + parts.join('+') + ']' : ''
}

function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
}

async function deductStoredCards(conn, userId, amount) {
  let left = Number(amount) || 0
  if (!userId || left <= 0) return 0
  const [rows] = await conn.query(
    `SELECT id, IFNULL(price,0) AS price, IFNULL(remaining_times,0) AS remaining_times
       FROM member_cards
      WHERE user_id=? AND IFNULL(status,'')='active'
        AND (type='stored' OR card_name LIKE '%储值%')
      ORDER BY id`,
    [userId]
  )
  let used = 0
  for (const c of rows || []) {
    if (left <= 0) break
    const have = Number(c.price) || Number(c.remaining_times) || 0
    if (have <= 0) continue
    const use = Math.min(have, left)
    const next = +(have - use).toFixed(2)
    await conn.query(
      `UPDATE member_cards SET price=?, remaining_times=?, status=?, updated_at=NOW() WHERE id=?`,
      [next, Math.round(next), next <= 0 ? 'used_up' : 'active', c.id]
    )
    left = +(left - use).toFixed(2)
    used = +(used + use).toFixed(2)
  }
  return used
}

async function storedCardBalance(conn, userId) {
  if (!userId) return 0
  const [rows] = await conn.query(
    `SELECT IFNULL(price,0) AS price, IFNULL(remaining_times,0) AS remaining_times
       FROM member_cards
      WHERE user_id=? AND IFNULL(status,'')='active'
        AND (type='stored' OR card_name LIKE '%储值%')`,
    [userId]
  )
  let sum = 0
  for (const c of rows || []) {
    sum += Number(c.price) || Number(c.remaining_times) || 0
  }
  return money(sum)
}

function todayYmd() {
  try {
    return new Intl.DateTimeFormat('en-CA', {
      timeZone: 'Asia/Shanghai',
      year: 'numeric',
      month: '2-digit',
      day: '2-digit'
    }).format(new Date())
  } catch (e) {
    const d = new Date(Date.now() + 8 * 3600 * 1000)
    return d.toISOString().slice(0, 10)
  }
}
function fmtDate(v) {
  if (!v) return ''
  if (typeof v === 'string') {
    const m = v.match(/^(\d{4}-\d{2}-\d{2})/)
    return m ? m[1] : String(v).slice(0, 10)
  }
  if (v instanceof Date && !Number.isNaN(v.getTime())) {
    return (
      v.getFullYear() +
      '-' +
      String(v.getMonth() + 1).padStart(2, '0') +
      '-' +
      String(v.getDate()).padStart(2, '0')
    )
  }
  return String(v).slice(0, 10)
}


async function maybeRevertFirstUseActivation(conn, card) {
  if (!card) return false
  const t = String(card.type || '')
  if (t !== 'time' && t !== 'times' && t !== 'coach' && t !== 'group') return false
  const st = String(card.status || '')
  if (st === 'deleted' || st === 'refunded') return false
  const rule = cardActivateHelper.parseRule(card.time_rule)
  const from = fmtDate(card.valid_from)
  if (rule.activateMode !== 'first_use' || !from) return false
  const [cntRows] = await conn.query(
    `SELECT COUNT(*) AS cnt FROM bookings WHERE card_id=? AND status='booked'`,
    [card.id]
  )
  const bookedCount = Number(cntRows[0] && cntRows[0].cnt) || 0
  if (!cardActivateHelper.shouldRevertActivation({ activateMode: rule.activateMode, validFrom: from, bookedCount })) return false
  await conn.query(
    `UPDATE member_cards SET valid_from=NULL, valid_to=NULL, updated_at=NOW() WHERE id=?`,
    [card.id]
  )
  return true
}

function fmtDateCn(v) {
  const s = fmtDate(v)
  if (!s || s.length < 10) return ''
  const [y, m, d] = s.split('-')
  return y + '年' + Number(m) + '月' + Number(d) + '日'
}

function parseTimeRule(v) {
  if (!v) return null
  if (typeof v === 'object') return v
  try {
    return JSON.parse(v)
  } catch (e) {
    return null
  }
}

function weekdayMon1(dateStr) {
  const s = fmtDate(dateStr)
  if (!s) return 0
  const d = new Date(s.replace(/-/g, '/'))
  if (Number.isNaN(d.getTime())) return 0
  const w = d.getDay()
  return w === 0 ? 7 : w
}

function daysBetween(from, to) {
  if (!from || !to) return 1
  const a = new Date(fmtDate(from).replace(/-/g, '/'))
  const b = new Date(fmtDate(to).replace(/-/g, '/'))
  if (Number.isNaN(a.getTime()) || Number.isNaN(b.getTime())) return 1
  const diff = Math.floor((b - a) / 86400000) + 1
  return diff > 0 ? diff : 1
}

function cardUnit(card) {
  if (!card) return 0
  const price = money(card.price)
  if (
    (card.type === 'times' || card.type === 'coach' || card.type === 'group') &&
    Number(card.total_times) > 0
  ) {
    return money(price / Number(card.total_times))
  }
  if (card.type === 'time' && price > 0) {
    return money(price / daysBetween(card.valid_from, card.valid_to))
  }
  return 0
}

async function resolveUserId(conn, userIdVal, openidVal) {
  if (userIdVal && Number.isFinite(Number(userIdVal))) return Number(userIdVal)
  if (!openidVal) return null
  try {
    const [rows] = await conn.query('SELECT id FROM users WHERE openid=? LIMIT 1', [openidVal])
    if (rows[0] && rows[0].id) return Number(rows[0].id)
  } catch (e) {}
  return null
}


function expandHourSlots(timeStr) {
  const s = String(timeStr || '').trim()
  const m = s.match(/^(\d{1,2}):(\d{2})\s*-\s*(\d{1,2}):(\d{2})$/)
  if (!m) return s ? [s] : []
  const pad2 = (n) => (n < 10 ? '0' : '') + n
  const h1 = Number(m[1]), n1 = Number(m[2]), h2 = Number(m[3]), n2 = Number(m[4])
  if (![h1, n1, h2, n2].every((x) => Number.isFinite(x)) || n1 > 59 || n2 > 59 || h1 > 23 || h2 > 24) {
    return [s]
  }
  const start = h1 * 60 + n1
  const end = h2 * 60 + n2
  if (end <= start) return [s]
  if ((end - start) % 60 !== 0) return [s]
  const slots = []
  for (let t = start; t < end; t += 60) {
    const a = t
    const b = t + 60
    slots.push(pad2(Math.floor(a / 60)) + ':' + pad2(a % 60) + '-' + pad2(Math.floor(b / 60)) + ':' + pad2(b % 60))
  }
  return slots.length ? slots : [s]
}

function timesOverlap(a, b) {
  const sa = new Set(expandHourSlots(a))
  return expandHourSlots(b).some((t) => sa.has(t))
}

function pickOverlapping(rows, timeStr) {
  return (rows || []).filter((r) => timesOverlap(r.time, timeStr))
}

async function getHourPrice(conn, venueId, court, dateStr, timeStr) {
  const wd = weekdayMon1(dateStr)
  if (!venueId || !court || !wd || !timeStr) return 0
  try {
    const raw = String(court || '').trim()
    const n = typeof normCourt === 'function' ? normCourt(raw) : raw.replace(/场$/u, '')
    const [rows] = await conn.query(
      `SELECT price FROM court_prices
        WHERE venue_id=? AND weekday=? AND time_slot=?
          AND (court=? OR court=? OR court=CONCAT(?,'场'))
        LIMIT 1`,
      [venueId, wd, timeStr, raw, n, n]
    )
    return money(rows[0] && rows[0].price)
  } catch (e) {
    return 0
  }
}

async function getSlotPrice(conn, venueId, court, dateStr, timeStr) {
  const slots = expandHourSlots(timeStr)
  const hours = slots.length ? slots : [String(timeStr || '').trim()]
  if (!hours[0]) return 0
  let total = 0
  for (const t of hours) {
    const p = await getHourPrice(conn, venueId, court, dateStr, t)
    if (!(p > 0)) return 0
    total += p
  }
  return money(total)
}


function nowHmShanghai() {
  try {
    const parts = new Intl.DateTimeFormat('en-GB', {
      timeZone: 'Asia/Shanghai',
      hour: '2-digit',
      minute: '2-digit',
      hourCycle: 'h23'
    }).formatToParts(new Date())
    const get = (t) => {
      const p = parts.find((x) => x.type === t)
      return p ? p.value : ''
    }
    const h = Number(get('hour'))
    const m = Number(get('minute'))
    if (!Number.isFinite(h) || !Number.isFinite(m)) throw new Error('bad time')
    const pad2 = (n) => (n < 10 ? '0' : '') + n
    return pad2(h) + ':' + pad2(m)
  } catch (e) {
    const d = new Date(Date.now() + 8 * 3600 * 1000)
    const pad2 = (n) => (n < 10 ? '0' : '') + n
    return pad2(d.getUTCHours()) + ':' + pad2(d.getUTCMinutes())
  }
}

function slotEndHm(timeStr) {
  const hours = expandHourSlots(timeStr)
  const last = hours.length ? hours[hours.length - 1] : String(timeStr || '').trim()
  const end = String(last).split('-')[1] || ''
  const m = String(end).trim().match(/^(\d{1,2}):(\d{2})$/)
  if (!m) return ''
  const h = Number(m[1])
  const n = Number(m[2])
  if (!Number.isFinite(h) || !Number.isFinite(n) || n > 59) return ''
  const pad2 = (x) => (x < 10 ? '0' : '') + x
  return pad2(h) + ':' + pad2(n)
}

async function hoursOpenInVenue(conn, venueId, dateStr, timeStr) {
  const wd = weekdayMon1(dateStr)
  const slots = expandHourSlots(timeStr)
  const hours = slots.length ? slots : [String(timeStr || '').trim()]
  if (!venueId || !wd || !hours[0]) return false
  try {
    const [cntRows] = await conn.query(
      'SELECT COUNT(*) AS cnt FROM venue_hours WHERE venue_id=?',
      [venueId]
    )
    if (!cntRows[0] || Number(cntRows[0].cnt) <= 0) return false
    const [rows] = await conn.query(
      'SELECT time_slot FROM venue_hours WHERE venue_id=? AND weekday=?',
      [venueId, wd]
    )
    const open = new Set((rows || []).map((r) => String(r.time_slot || '').trim()))
    return hours.every((t) => open.has(String(t).trim()))
  } catch (e) {
    return false
  }
}

async function rejectInvalidBookingSlot(conn, opts) {
  const dateYmd = opts.dateYmd
  const timeStr = opts.timeStr
  if (!opts.skipPast) {
    const today = todayYmd()
    if (dateYmd < today) return { ok: false, msg: '不能预约过去的日期' }
    if (dateYmd === today) {
      const endHm = slotEndHm(timeStr)
      const nowHm = nowHmShanghai()
      if (endHm && nowHm && nowHm >= endHm) return { ok: false, msg: '该时段已过' }
    }
  }
  const open = await hoursOpenInVenue(conn, opts.venueId, dateYmd, timeStr)
  if (!open) return { ok: false, msg: '该时段不在营业时间内' }
  // 外场是内部虚拟场，不标价；用教练卡排课也不需要场地价格
  if (opts.requirePrice && !isOutdoorSharedCourt(opts.court)) {
    const slotPrice = await getSlotPrice(conn, opts.venueId, opts.court, dateYmd, timeStr)
    if (!(slotPrice > 0)) return { ok: false, msg: '该时段暂未标价，无法预约' }
  }
  return { ok: true }
}

function isSlotPast(dateYmd, timeStr) {
  const today = todayYmd()
  if (!dateYmd || dateYmd < today) return true
  if (dateYmd > today) return false
  const endHm = slotEndHm(timeStr)
  const nowHm = nowHmShanghai()
  return !!(endHm && nowHm && nowHm >= endHm)
}

function memberCardRejectMsg(card) {
  if (!card) return '会员卡不可用'
  const today = todayYmd()
  const to = fmtDate(card.valid_to)
  if (card.status === 'expired' || (card.status !== 'active' && to && today > to)) {
    return '这张卡已过期'
  }
  const usesTimes = card.type === 'times' || card.type === 'coach' || card.type === 'group'
  if (card.status === 'used_up' || (usesTimes && Number(card.remaining_times) <= 0)) {
    return '会员卡次数已用完'
  }
  if (card.status !== 'active') return '会员卡不可用'
  return ''
}



async function resolvePhone(conn, phone, userId, userName) {
  if (phone && /^1\d{10}$/.test(String(phone))) return String(phone)
  try {
    if (userId) {
      const [rows] = await conn.query('SELECT phone FROM users WHERE id=? LIMIT 1', [userId])
      if (rows[0] && rows[0].phone) return String(rows[0].phone)
    }
    if (userName) {
      const [rows] = await conn.query('SELECT phone FROM users WHERE nick_name=? AND phone IS NOT NULL AND phone<>\'\' LIMIT 1', [userName])
      if (rows[0] && rows[0].phone) return String(rows[0].phone)
    }
  } catch (e) {}
  return phone || ''
}

async function writeLog(conn, row) {
  try {
    await conn.query(
      `INSERT INTO activity_logs
        (type, user_name, operator_name, phone, detail, venue_id, venue_name, amount, card_name, created_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())`,
      [
        row.type || '',
        row.userName || '',
        row.operatorName || '',
        row.phone || '',
        row.detail || '',
        row.venueId || '',
        row.venueName || '',
        row.amount || 0,
        row.cardName || ''
      ]
    )
  } catch (e) {}
}

async function writeLedger(conn, row) {
  const params = [
    row.bizDate,
    row.type,
    money(row.amount),
    row.venueId || '',
    row.venueName || '',
    row.userId || null,
    row.userName || '',
    row.operatorName || '',
    row.cardId || null,
    row.bookingId || null,
    row.payOrderId || null,
    row.remark || ''
  ]
  try {
    await conn.query(
      `INSERT INTO finance_ledger
        (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
         operator_name, card_id, booking_id, pay_order_id, remark)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      params
    )
    return ''
  } catch (e) {
    const msg = e && e.message ? e.message : String(e)
    console.error('finance_ledger write fail', msg)
    return msg
  }
}


function isOutdoorSharedCourt(courtName) {
  return String(courtName || '').trim() === '外场'
}

function shortVenueName(name, id) {
  const s = String(name || '')
  const m = s.match(/[（(]([^）)]+)[）)]/)
  if (m) return m[1].replace(/店$/, '')
  return s || String(id || '')
}

async function resolveCoachAliases(conn, coachIdVal) {
  const id = Number(coachIdVal)
  if (!id) return { ids: [], name: '', phone: '', staffId: '' }
  const [rows] = await conn.query(
    'SELECT id, name, phone, staff_id FROM coaches WHERE id=? LIMIT 1',
    [id]
  )
  const me = rows && rows[0]
  if (!me) return { ids: [id], name: '', phone: '', staffId: '' }
  let sibs = [me]
  if (me.staff_id) {
    const [rows2] = await conn.query(
      'SELECT id, name, phone, staff_id FROM coaches WHERE staff_id=?',
      [me.staff_id]
    )
    if (rows2 && rows2.length) sibs = rows2
  } else if (me.phone && String(me.phone).trim()) {
    const [rows2] = await conn.query(
      'SELECT id, name, phone, staff_id FROM coaches WHERE phone=?',
      [String(me.phone).trim()]
    )
    if (rows2 && rows2.length) sibs = rows2
  }
  const ids = Array.from(new Set(sibs.map((r) => Number(r.id)).filter(Boolean)))
  return { ids: ids.length ? ids : [id], name: me.name || '', phone: me.phone || '', staffId: me.staff_id ? String(me.staff_id) : '' }
}

async function findCoachTimeConflict(conn, coachIdVal, dateYmd, timeStr, excludeBookingId) {
  if (!coachIdVal) return null
  const aliases = await resolveCoachAliases(conn, coachIdVal)
  const ids = aliases.ids
  if (!ids.length) return null
  const ph = ids.map(() => '?').join(',')
  const bookParams = [dateYmd, ...ids]
  let bookSql = `SELECT id, time, venue_id, venue_name, court FROM bookings
      WHERE date=? AND coach_id IN (${ph}) AND status='booked'`
  if (excludeBookingId) {
    bookSql += ' AND id<>?'
    bookParams.push(excludeBookingId)
  }
  const [coachBusyAll] = await conn.query(bookSql, bookParams)
  const coachBusy = pickOverlapping(coachBusyAll, timeStr)
  if (coachBusy.length) {
    const hit = coachBusy[0]
    const place = shortVenueName(hit.venue_name, hit.venue_id)
    const court = hit.court ? ' ' + hit.court : ''
    return '该教练此时段已在' + (place || '其他门店') + court + '排课'
  }
  const [coachGroupAll] = await conn.query(
    `SELECT g.id, g.time, g.venue_id, v.name AS venue_name, g.court, g.name
       FROM group_classes g
       LEFT JOIN venues v ON v.id = g.venue_id
      WHERE g.date=? AND g.coach_id IN (${ph}) AND g.status='open'`,
    [dateYmd, ...ids]
  )
  const coachGroup = pickOverlapping(coachGroupAll, timeStr)
  if (coachGroup.length) {
    const hit = coachGroup[0]
    const place = shortVenueName(hit.venue_name, hit.venue_id)
    return '该教练此时段已在' + (place || '其他门店') + '有团课'
  }
  return null
}


function normCourt(c) {
  return String(c || '').trim().replace(/^发球机/u, '').replace(/场$/u, '')
}

async function resolveCourtName(conn, venueId, court) {
  const raw = String(court || '').trim()
  if (!raw) return ''
  const n = normCourt(raw)
  try {
    const [rows] = await conn.query(
      `SELECT name FROM courts
        WHERE venue_id=? AND IFNULL(status,'open') NOT IN ('disabled','closed','停用')
          AND (name=? OR name=? OR TRIM(TRAILING '场' FROM name)=?)
        ORDER BY (name=?) DESC, (name=?) DESC, id ASC LIMIT 1`,
      [venueId, raw, n + '场', n, raw, n + '场']
    )
    if (rows && rows[0] && rows[0].name) return String(rows[0].name)
  } catch (e) {}
  return raw
}

async function loadCourtInfo(conn, venueId, court) {
  const raw = String(court || '').trim()
  if (!raw) return { name: '', type: '', pureTennis: 0 }
  const n = normCourt(raw)
  const params = [venueId, raw, n + '场', n, raw, n + '场']
  const where = `venue_id=? AND (name=? OR name=? OR TRIM(TRAILING '场' FROM name)=?)
        ORDER BY (name=?) DESC, (name=?) DESC, id ASC LIMIT 1`
  try {
    const [rows] = await conn.query(
      `SELECT name, type, IFNULL(pure_tennis, 0) AS pure_tennis FROM courts
        WHERE ${where}`,
      params
    )
    if (rows && rows[0]) {
      return {
        name: String(rows[0].name || raw),
        type: String(rows[0].type || ''),
        pureTennis: Number(rows[0].pure_tennis) ? 1 : 0
      }
    }
  } catch (e) {
    try {
      const [rows] = await conn.query(
        `SELECT name, type FROM courts WHERE ${where}`,
        params
      )
      if (rows && rows[0]) {
        return { name: String(rows[0].name || raw), type: String(rows[0].type || ''), pureTennis: 0 }
      }
    } catch (e2) {}
  }
  return { name: raw, type: '', pureTennis: 0 }
}


function slotLockName(venueId, dateYmd, time, court) {
  const raw = 'book:' + String(venueId || '') + ':' + String(dateYmd || '') + ':' + String(time || '') + ':' + normCourt(court)
  if (raw.length <= 64) return raw
  const crypto = require('crypto')
  return 'book:' + crypto.createHash('sha1').update(raw).digest('hex')
}

async function acquireSlotLock(conn, venueId, dateYmd, time, court) {
  const slots = expandHourSlots(time)
  const times = slots.length ? slots : [time]
  const names = []
  try {
    for (const t of times) {
      const name = slotLockName(venueId, dateYmd, t, court)
      const [rows] = await conn.query('SELECT GET_LOCK(?, 10) AS ok', [name])
      if (!rows[0] || Number(rows[0].ok) !== 1) {
        const err = new Error('系统繁忙，请稍后重试')
        err.code = 'SLOT_LOCK'
        throw err
      }
      names.push(name)
    }
  } catch (e) {
    for (const n of names) {
      try { await conn.query('SELECT RELEASE_LOCK(?)', [n]) } catch (_) {}
    }
    throw e
  }
  return names
}

async function releaseSlotLock(conn, name) {
  const list = Array.isArray(name) ? name : (name ? [name] : [])
  for (const n of list) {
    try {
      await conn.query('SELECT RELEASE_LOCK(?)', [n])
    } catch (e) {}
  }
}


async function ensureLockIntentsTable(conn) {
  await conn.query(`
    CREATE TABLE IF NOT EXISTS lock_intents (
      id BIGINT PRIMARY KEY AUTO_INCREMENT,
      venue_id VARCHAR(64) NOT NULL,
      venue_name VARCHAR(128) NOT NULL DEFAULT '',
      court VARCHAR(64) NOT NULL,
      date DATE NOT NULL,
      time VARCHAR(32) NOT NULL,
      operator_name VARCHAR(64) NOT NULL DEFAULT '',
      remark VARCHAR(255) NOT NULL DEFAULT '',
      booking_id BIGINT NULL,
      created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
      UNIQUE KEY uk_lock_intent_slot (venue_id, date, time, court)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `)
}

async function upsertLockIntent(conn, row) {
  await ensureLockIntentsTable(conn)
  const hasCol = await hasLockRuleIdColumn(conn, 'lock_intents')
  const ruleId = row.lockRuleId || null
  if (hasCol) {
    await conn.query(
      `INSERT INTO lock_intents
        (venue_id, venue_name, court, date, time, operator_name, remark, booking_id, lock_rule_id)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
       ON DUPLICATE KEY UPDATE
         venue_name=VALUES(venue_name),
         operator_name=VALUES(operator_name),
         remark=VALUES(remark),
         booking_id=VALUES(booking_id),
         lock_rule_id=COALESCE(VALUES(lock_rule_id), lock_intents.lock_rule_id),
         created_at=NOW()`,
      [
        row.venueId || '',
        row.venueName || '',
        row.court || '',
        row.date,
        row.time || '',
        row.operatorName || '',
        String(row.remark || '').slice(0, 255),
        row.bookingId || null,
        ruleId
      ]
    )
    return
  }
  await conn.query(
    `INSERT INTO lock_intents
      (venue_id, venue_name, court, date, time, operator_name, remark, booking_id)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?)
     ON DUPLICATE KEY UPDATE
       venue_name=VALUES(venue_name),
       operator_name=VALUES(operator_name),
       remark=VALUES(remark),
       booking_id=VALUES(booking_id),
       created_at=NOW()`,
    [
      row.venueId || '',
      row.venueName || '',
      row.court || '',
      row.date,
      row.time || '',
      row.operatorName || '',
      String(row.remark || '').slice(0, 255),
      row.bookingId || null
    ]
  )
}

function isLockRow(b) {
  if (!b) return false
  if (b.status === 'locked') return true
  if (b.source === 'lock' || b.source === 'court_lock') return true
  const name = String(b.user_name || '')
  const remark = String(b.remark || '')
  return name === '锁场' || remark.startsWith('[锁场]')
}

async function findLockIntent(conn, venueId, dateYmd, time, court) {
  await ensureLockIntentsTable(conn)
  const courtNorm = normCourt(court)
  const [rows] = await conn.query(
    `SELECT * FROM lock_intents
      WHERE venue_id=? AND date=? AND time=?
        AND (court=? OR court=? OR court=CONCAT(?,'场') OR TRIM(TRAILING '场' FROM court)=?)
      LIMIT 1`,
    [venueId, dateYmd, time, court || '', courtNorm, courtNorm, courtNorm]
  )
  return rows && rows[0] ? rows[0] : null
}

async function applyLockIntentAfterCancel(conn, b, operatorName) {
  if (!b || isLockRow(b)) return { relocked: false }
  const dateYmd = fmtDate(b.date) || b.date
  const time = b.time || ''
  const venueId = b.venue_id || ''
  if (!venueId || !dateYmd || !time) return { relocked: false }
  const intent = await findLockIntent(conn, venueId, dateYmd, time, b.court)
  if (!intent) return { relocked: false }
  const courtNorm = normCourt(b.court || intent.court)
  const courtName = await resolveCourtName(conn, venueId, b.court || intent.court)
  const [busy] = await conn.query(
    `SELECT id, status FROM bookings
      WHERE venue_id=? AND date=? AND time=?
        AND (court=? OR court=CONCAT(?,'场'))
        AND status IN ('booked','locked','pending_pay')
      LIMIT 1`,
    [venueId, dateYmd, time, courtNorm, courtNorm]
  )
  if (busy && busy.length) {
    await conn.query('DELETE FROM lock_intents WHERE id=?', [intent.id])
    return { relocked: false, busy: true }
  }
  const remark = intent.remark || '[锁场] 批量锁场·取消后自动锁'
  const hasBookCol = await hasLockRuleIdColumn(conn, 'bookings')
  const relockRuleId = Number(intent.lock_rule_id || 0) || parseRuleIdFromRemark(remark) || null
  if (hasBookCol) {
    await conn.query(
      `INSERT INTO bookings (
        venue_id, venue_name, court, date, time,
        user_id, openid, user_name, phone, status,
        source, operator_name, remark, amount, lock_rule_id
      ) VALUES (?, ?, ?, ?, ?, NULL, '', '锁场', '', 'locked', 'lock', ?, ?, 0, ?)`,
      [
        venueId,
        intent.venue_name || b.venue_name || '',
        courtName,
        dateYmd,
        time,
        operatorName || intent.operator_name || '管理员',
        remark,
        relockRuleId
      ]
    )
  } else {
    await conn.query(
      `INSERT INTO bookings (
        venue_id, venue_name, court, date, time,
        user_id, openid, user_name, phone, status,
        source, operator_name, remark, amount
      ) VALUES (?, ?, ?, ?, ?, NULL, '', '锁场', '', 'locked', 'lock', ?, ?, 0)`,
      [
        venueId,
        intent.venue_name || b.venue_name || '',
        courtName,
        dateYmd,
        time,
        operatorName || intent.operator_name || '管理员',
        remark
      ]
    )
  }
  await conn.query('DELETE FROM lock_intents WHERE id=?', [intent.id])
  await writeLog(conn, {
    type: 'lock',
    userName: '锁场',
    operatorName: operatorName || intent.operator_name || '管理员',
    detail: '取消后自动锁场 ' + (courtNorm || '') + ' ' + dateYmd + ' ' + time,
    venueId,
    venueName: intent.venue_name || b.venue_name || ''
  })
  return { relocked: true }
}

async function writeCancelFinanceLedgers(conn, b, refundCardId, operatorName) {
  const bizDate = fmtDate(b.date) || fmtDate(new Date())
  const op = operatorName || '管理员'
  const remark = '取消 ' + (b.court || '') + ' ' + (b.time || '')
  const cashAmt = money(b.amount)
  let cardUseAmt = 0
  let cardUseCardId = refundCardId || null
  let issueAmt = 0
  let issueCardId = null
  try {
    const [cu] = await conn.query(
      `SELECT amount, card_id FROM finance_ledger
        WHERE booking_id=? AND type='card_use' AND amount>0
        ORDER BY id DESC LIMIT 1`,
      [b.id]
    )
    if (cu[0]) {
      cardUseAmt = money(cu[0].amount)
      if (cu[0].card_id) cardUseCardId = cu[0].card_id
    }
  } catch (e) {}
  try {
    const [iss] = await conn.query(
      `SELECT amount, card_id FROM finance_ledger
        WHERE booking_id=? AND type='issue_card' AND amount>0
        ORDER BY id DESC LIMIT 1`,
      [b.id]
    )
    if (iss[0]) {
      issueAmt = money(iss[0].amount)
      issueCardId = iss[0].card_id || null
    }
  } catch (e) {}

  let ledgerError = ''
  const base = {
    bizDate,
    venueId: b.venue_id || '',
    venueName: b.venue_name || '',
    userId: b.user_id || null,
    userName: b.user_name || '',
    operatorName: op,
    bookingId: b.id,
    remark
  }

  if (cardUseAmt > 0 || cardUseCardId) {
    const rev = cardUseAmt > 0 ? cardUseAmt : 0
    if (rev > 0) {
      const err = await writeLedger(conn, Object.assign({}, base, {
        type: 'card_use_cancel',
        amount: -rev,
        cardId: cardUseCardId || null
      }))
      if (err) ledgerError = err
    }
  }

  if (issueAmt > 0) {
    const err = await writeLedger(conn, Object.assign({}, base, {
      type: 'court_refund',
      amount: -issueAmt,
      cardId: issueCardId || cardUseCardId || null,
      remark: '取消退发卡款 ' + issueAmt + ' · ' + remark
    }))
    if (err) ledgerError = err
  }

  let skipCash = false
  try {
    if (b.pay_order_id) {
      const [rf] = await conn.query(
        `SELECT id FROM finance_ledger WHERE pay_order_id=? AND type='court_refund' LIMIT 1`,
        [b.pay_order_id]
      )
      if (rf[0]) skipCash = true
    }
  } catch (e) {}
  if (cashAmt > 0 && !skipCash) {
    const err = await writeLedger(conn, Object.assign({}, base, {
      type: 'court_cancel',
      amount: -cashAmt,
      cardId: null,
      remark
    }))
    if (err) ledgerError = err
  }

  // 无卡也无现金且上面都没写时，保持旧行为写一条 0 冲账避免静默
  if (!cardUseAmt && !issueAmt && !cashAmt && !cardUseCardId) {
    const err = await writeLedger(conn, Object.assign({}, base, {
      type: 'court_cancel',
      amount: 0,
      cardId: null
    }))
    if (err) ledgerError = err
  } else if (!cardUseAmt && !issueAmt && !cashAmt && cardUseCardId) {
    const err = await writeLedger(conn, Object.assign({}, base, {
      type: 'card_use_cancel',
      amount: 0,
      cardId: cardUseCardId
    }))
    if (err) ledgerError = err
  }

  return ledgerError
}



// ---- batch lock/unlock helpers 20261116 ----
const BATCH_ROW_CAP = 8000
const BATCH_DETAILS_CAP = 100
const LOCK_BOOKING_SQL =
  "(status='locked' OR source IN ('lock','court_lock') OR user_name='锁场') AND status <> 'cancelled'"

function batchPad2(n) {
  n = Number(n)
  return (n < 10 ? '0' : '') + n
}

function parseYmd(s) {
  const m = String(s || '').trim().match(/^(\d{4})-(\d{2})-(\d{2})$/)
  if (!m) return null
  const y = Number(m[1])
  const mo = Number(m[2])
  const d = Number(m[3])
  const dt = new Date(y, mo - 1, d)
  if (dt.getFullYear() !== y || dt.getMonth() !== mo - 1 || dt.getDate() !== d) return null
  return { y: y, m: mo, d: d }
}

function formatYmd(y, m, d) {
  return String(y) + '-' + batchPad2(m) + '-' + batchPad2(d)
}

function enumerateDates(dateStart, dateEnd) {
  const a = parseYmd(fmtDate(dateStart) || String(dateStart || '').slice(0, 10))
  const b = parseYmd(fmtDate(dateEnd) || String(dateEnd || '').slice(0, 10))
  if (!a || !b) return []
  const cur = new Date(a.y, a.m - 1, a.d)
  const end = new Date(b.y, b.m - 1, b.d)
  if (cur > end) return []
  const dates = []
  while (cur <= end) {
    dates.push(formatYmd(cur.getFullYear(), cur.getMonth() + 1, cur.getDate()))
    cur.setDate(cur.getDate() + 1)
    if (dates.length > 4000) break
  }
  return dates
}

function uniqueYmds(list) {
  const out = []
  const seen = new Set()
  for (const x of list || []) {
    const s = fmtDate(x)
    if (!parseYmd(s) || seen.has(s)) continue
    seen.add(s)
    out.push(s)
  }
  return out
}

function normalizeDateList(data) {
  data = data || {}
  if (Array.isArray(data.dates) && data.dates.length) {
    return uniqueYmds(data.dates)
  }
  const start = data.dateStart || data.date || ''
  const end = data.dateEnd || data.dateStart || data.date || ''
  if (start && end) return enumerateDates(start, end)
  if (start) return enumerateDates(start, start)
  return []
}

function dateSpan(dates) {
  const list = (dates || []).slice().filter(Boolean).sort()
  if (!list.length) return { dateStart: '', dateEnd: '' }
  return { dateStart: list[0], dateEnd: list[list.length - 1] }
}

function uniqueCourts(list) {
  const out = []
  const seen = new Set()
  for (const c of list || []) {
    const raw = String(c || '').trim()
    const n = normCourt(raw)
    if (!n || seen.has(n)) continue
    seen.add(n)
    out.push(raw)
  }
  return out
}

function uniqueTimes(list) {
  const out = []
  const seen = new Set()
  for (const t of list || []) {
    const v = String(t || '').trim()
    if (!v || seen.has(v)) continue
    seen.add(v)
    out.push(v)
  }
  return out
}

function isLockBookingRow(b) {
  if (!b) return false
  if (String(b.status || '') === 'cancelled') return false
  if (String(b.status || '') === 'locked') return true
  const src = String(b.source || '')
  if (src === 'lock' || src === 'court_lock') return true
  if (String(b.user_name || '') === '锁场') return true
  return false
}

function slotInvalidReason(dateYmd, timeStr, opts) {
  opts = opts || {}
  const today = opts.todayYmd || ''
  if (today && dateYmd < today) return '不能预约过去的日期'
  if (today && dateYmd === today) {
    const endHm = slotEndHm(timeStr)
    const nowHm = opts.nowHm || ''
    if (endHm && nowHm && nowHm >= endHm) return '该时段已过'
  }
  if (!opts.hasHours) return '该时段不在营业时间内'
  const wd = weekdayMon1(dateYmd)
  const slots = expandHourSlots(timeStr)
  const hours = slots.length ? slots : [String(timeStr || '').trim()]
  const open = (opts.hoursByWeekday && opts.hoursByWeekday.get(wd)) || new Set()
  if (!hours.every((t) => open.has(String(t).trim()))) return '该时段不在营业时间内'
  return ''
}

function indexRowsByDateCourt(rows) {
  const map = new Map()
  for (const r of rows || []) {
    const k = normCourt(r.court) + '|' + fmtDate(r.date)
    if (!map.has(k)) map.set(k, [])
    map.get(k).push(r)
  }
  return map
}

function parseRuleIdFromRemark(remark) {
  const m = String(remark || '').match(/^\[锁场\]\[R(\d+)\]/)
  return m ? Number(m[1]) : 0
}

function bookingBelongsToLockRule(b, ruleId) {
  const id = Number(ruleId || 0)
  if (!b || !id) return false
  if (Number(b.lock_rule_id || 0) === id) return true
  return parseRuleIdFromRemark(b.remark) === id
}

function classifyLockSlot(slot, ctx) {
  ctx = ctx || {}
  const invalid = slotInvalidReason(slot.date, slot.time, ctx)
  if (invalid) return { kind: 'skipInvalid', msg: invalid }
  const k = normCourt(slot.court) + '|' + fmtDate(slot.date)
  const gcRows = (ctx.gcIndex && ctx.gcIndex.get(k)) || []
  if (pickOverlapping(gcRows, slot.time).length) {
    return { kind: 'skipGroup', msg: '该时段为团课，不能锁场' }
  }
  const busy = pickOverlapping((ctx.busyIndex && ctx.busyIndex.get(k)) || [], slot.time)
  if (busy.length) {
    if (busy.some((b) => String(b.status || '') === 'locked' || isLockBookingRow(b))) {
      const ownId = Number(ctx.ownRuleId || 0)
      if (ownId && busy.some((b) => bookingBelongsToLockRule(b, ownId))) {
        return { kind: 'keep', msg: '已由本规则锁定' }
      }
      return { kind: 'skipLocked', msg: '该时段已锁场' }
    }
    return { kind: 'pending', msg: '已预约，取消后自动锁场', bookingId: busy[0].id }
  }
  return { kind: 'lock', msg: '锁定' }
}

function classifyLockGrid(slots, ctx) {
  const counts = { lock: 0, skipLocked: 0, pending: 0, skipGroup: 0, skipInvalid: 0 }
  const items = []
  for (const slot of slots || []) {
    const r = classifyLockSlot(slot, ctx)
    if (counts[r.kind] == null) counts[r.kind] = 0
    counts[r.kind]++
    items.push({
      court: slot.court,
      date: slot.date,
      time: slot.time,
      kind: r.kind,
      msg: r.msg,
      bookingId: r.bookingId
    })
  }
  return { counts, items }
}

function capBatchDetails(items, cap) {
  cap = cap || BATCH_DETAILS_CAP
  const list = items || []
  const interesting = list.filter((x) => x.kind && x.kind !== 'lock')
  const locks = list.filter((x) => x.kind === 'lock')
  return interesting.concat(locks).slice(0, cap).map((x) => ({
    court: x.court,
    date: x.date,
    time: x.time,
    kind: x.kind,
    msg: x.msg
  }))
}

function expandSlotGrid(courts, dates, times) {
  const slots = []
  for (const court of courts || []) {
    for (const date of dates || []) {
      for (const time of times || []) {
        slots.push({ court: court, date: date, time: time })
      }
    }
  }
  return slots
}

function pushCourtMatch(courts, params) {
  const norms = []
  const seen = new Set()
  for (const c of courts || []) {
    const n = normCourt(c)
    if (!n || seen.has(n)) continue
    seen.add(n)
    norms.push(n)
  }
  if (!norms.length) return '1=1'
  const parts = []
  for (const n of norms) {
    parts.push(
      "(court=? OR court=? OR court=CONCAT(?,'场') OR TRIM(TRAILING '场' FROM court)=? OR TRIM(TRAILING '场' FROM TRIM(LEADING '发球机' FROM court))=?) "
    )
    params.push(n, n + '场', n, n, n)
  }
  return '(' + parts.join(' OR ') + ')'
}

function pushTimeMatch(times, params) {
  const list = uniqueTimes(times)
  if (!list.length) return '1=1'
  params.push.apply(params, list)
  return 'time IN (' + list.map(function () { return '?' }).join(',') + ')'
}

function buildLockScopeSql(opts) {
  opts = opts || {}
  const params = []
  const where = ['venue_id=?', 'date>=?', 'date<=?', LOCK_BOOKING_SQL]
  params.push(opts.venueId, opts.dateStart, opts.dateEnd)
  where.push(pushCourtMatch(opts.courts, params))
  where.push(pushTimeMatch(opts.times, params))
  return { where: where.join(' AND '), params }
}

function buildIntentScopeSql(opts) {
  opts = opts || {}
  const params = []
  const where = ['venue_id=?', 'date>=?', 'date<=?']
  params.push(opts.venueId, opts.dateStart, opts.dateEnd)
  where.push(pushCourtMatch(opts.courts, params))
  where.push(pushTimeMatch(opts.times, params))
  return { where: where.join(' AND '), params }
}

function chunkAry(arr, n) {
  const size = Math.max(1, Number(n) || 1)
  const out = []
  const list = arr || []
  for (let i = 0; i < list.length; i += size) out.push(list.slice(i, i + size))
  return out
}

function isDupKeyError(e) {
  return !!(e && (e.code === 'ER_DUP_ENTRY' || Number(e.errno) === 1062))
}

async function loadVenueHoursContext(conn, venueId) {
  const [cntRows] = await conn.query('SELECT COUNT(*) AS cnt FROM venue_hours WHERE venue_id=?', [venueId])
  const hasHours = !!(cntRows[0] && Number(cntRows[0].cnt) > 0)
  const hoursByWeekday = new Map()
  if (hasHours) {
    const [hourRows] = await conn.query('SELECT weekday, time_slot FROM venue_hours WHERE venue_id=?', [venueId])
    for (const r of hourRows || []) {
      const wd = Number(r.weekday)
      if (!hoursByWeekday.has(wd)) hoursByWeekday.set(wd, new Set())
      hoursByWeekday.get(wd).add(String(r.time_slot || '').trim())
    }
  }
  return { hasHours: hasHours, hoursByWeekday: hoursByWeekday }
}

async function insertLockBookings(conn, rows) {
  const inserted = []
  const conflicts = []
  const failed = []
  const hasCol = await hasLockRuleIdColumn(conn, 'bookings')
  const colSql = hasCol
    ? `venue_id, venue_name, court, date, time,
            user_id, openid, user_name, phone, status,
            source, operator_name, remark, amount, lock_rule_id`
    : `venue_id, venue_name, court, date, time,
            user_id, openid, user_name, phone, status,
            source, operator_name, remark, amount`
  const onePh = hasCol
    ? "(?, ?, ?, ?, ?, NULL, '', '锁场', '', 'locked', 'lock', ?, ?, 0, ?)"
    : "(?, ?, ?, ?, ?, NULL, '', '锁场', '', 'locked', 'lock', ?, ?, 0)"
  function pushParams(params, row) {
    params.push(row.venueId, row.venueName, row.courtName, row.date, row.time, row.operatorName, row.remark)
    if (hasCol) params.push(row.lockRuleId || null)
  }
  async function one(row) {
    try {
      const params = []
      pushParams(params, row)
      await conn.query(
        `INSERT INTO bookings (
            ${colSql}
          ) VALUES ` + onePh,
        params
      )
      inserted.push(row)
    } catch (e) {
      if (isDupKeyError(e)) conflicts.push(row)
      else failed.push(Object.assign({}, row, { msg: (e && e.message) || '锁场失败' }))
    }
  }
  async function many(chunk) {
    if (!chunk.length) return
    if (chunk.length === 1) {
      await one(chunk[0])
      return
    }
    const ph = chunk.map(function () { return onePh }).join(',')
    const params = []
    for (let i = 0; i < chunk.length; i++) pushParams(params, chunk[i])
    try {
      await conn.query(
        `INSERT INTO bookings (
            ${colSql}
          ) VALUES ${ph}`,
        params
      )
      for (let i = 0; i < chunk.length; i++) inserted.push(chunk[i])
    } catch (e) {
      const mid = Math.ceil(chunk.length / 2)
      await many(chunk.slice(0, mid))
      await many(chunk.slice(mid))
    }
  }
  const parts = chunkAry(rows, 80)
  for (let i = 0; i < parts.length; i++) {
    await many(parts[i])
  }
  return { inserted: inserted, conflicts: conflicts, failed: failed }
}

async function batchUpsertLockIntents(conn, rows) {
  await ensureLockIntentsTable(conn)
  const hasCol = await hasLockRuleIdColumn(conn, 'lock_intents')
  const parts = chunkAry(rows, 80)
  for (let i = 0; i < parts.length; i++) {
    const chunk = parts[i]
    const ph = chunk.map(function () {
      return hasCol ? '(?, ?, ?, ?, ?, ?, ?, ?, ?)' : '(?, ?, ?, ?, ?, ?, ?, ?)'
    }).join(',')
    const params = []
    for (let j = 0; j < chunk.length; j++) {
      const row = chunk[j]
      params.push(
        row.venueId || '',
        row.venueName || '',
        row.court || '',
        row.date,
        row.time || '',
        row.operatorName || '',
        String(row.remark || '').slice(0, 255),
        row.bookingId || null
      )
      if (hasCol) params.push(row.lockRuleId || null)
    }
    const colSql = hasCol
      ? 'venue_id, venue_name, court, date, time, operator_name, remark, booking_id, lock_rule_id'
      : 'venue_id, venue_name, court, date, time, operator_name, remark, booking_id'
    const updSql = hasCol
      ? `venue_name=VALUES(venue_name),
         operator_name=VALUES(operator_name),
         remark=VALUES(remark),
         booking_id=VALUES(booking_id),
         lock_rule_id=COALESCE(VALUES(lock_rule_id), lock_intents.lock_rule_id),
         created_at=NOW()`
      : `venue_name=VALUES(venue_name),
         operator_name=VALUES(operator_name),
         remark=VALUES(remark),
         booking_id=VALUES(booking_id),
         created_at=NOW()`
    await conn.query(
      `INSERT INTO lock_intents
        (${colSql})
       VALUES ${ph}
       ON DUPLICATE KEY UPDATE
         ${updSql}`,
      params
    )
  }
}

async function handleBatchUnlock(conn, data) {
  data = data || {}
  const venueId = String(data.venueId || '').trim()
  if (!venueId) return { ok: false, msg: '缺少场馆', fnVer: FN_VER }
  const dateStartRaw = fmtDate(data.dateStart || data.date || '') || String(data.dateStart || data.date || '').slice(0, 10)
  const dateEndRaw = fmtDate(data.dateEnd || data.dateStart || data.date || '') || String(data.dateEnd || data.dateStart || data.date || '').slice(0, 10)
  let dates = []
  if (Array.isArray(data.dates) && data.dates.length && !data.dateStart && !data.dateEnd) {
    dates = uniqueYmds(data.dates)
  } else {
    dates = enumerateDates(dateStartRaw, dateEndRaw)
  }
  if (!dates.length) return { ok: false, msg: '请选择日期范围', fnVer: FN_VER }
  const span = dateSpan(dates)
  const dateStart = data.dateStart ? (fmtDate(data.dateStart) || dateStartRaw) : span.dateStart
  const dateEnd = data.dateEnd ? (fmtDate(data.dateEnd) || dateEndRaw) : (data.dateStart ? dateStart : span.dateEnd)
  const rangeDates = enumerateDates(dateStart, dateEnd)
  if (!rangeDates.length) return { ok: false, msg: '请选择日期范围', fnVer: FN_VER }
  const courts = uniqueCourts(data.courts)
  const times = uniqueTimes(data.times)
  const operatorName = data.operatorName || '管理员'
  const dryRun = !!data.dryRun
  const venueName = data.venueName || ''

  try {
    await assertOwnVenue(conn, operatorName, venueId)
  } catch (e) {
    return { ok: false, msg: e.message || '只能锁自己管理的场馆', fnVer: FN_VER }
  }

  const scope = { venueId: venueId, dateStart: dateStart, dateEnd: dateEnd, courts: courts, times: times }
  const bookSql = buildLockScopeSql(scope)
  const intentSql = buildIntentScopeSql(scope)
  await ensureLockIntentsTable(conn)

  if (dryRun) {
    const [bRows] = await conn.query('SELECT COUNT(*) AS cnt FROM bookings WHERE ' + bookSql.where, bookSql.params)
    const unlockN = Number(bRows[0] && bRows[0].cnt) || 0
    let intentN = 0
    try {
      const [iRows] = await conn.query('SELECT COUNT(*) AS cnt FROM lock_intents WHERE ' + intentSql.where, intentSql.params)
      intentN = Number(iRows[0] && iRows[0].cnt) || 0
    } catch (e) {
      intentN = 0
    }
    if (unlockN > BATCH_ROW_CAP) {
      return {
        ok: false,
        msg: '匹配的锁场超过' + BATCH_ROW_CAP + '条，请缩小日期、场地或时段后再试',
        fnVer: FN_VER,
        dryRun: true,
        unlock: unlockN,
        intents: intentN
      }
    }
    return {
      ok: true,
      fnVer: FN_VER,
      dryRun: true,
      unlock: unlockN,
      intents: intentN,
      dates: rangeDates,
      courts: courts,
      times: times
    }
  }

  await conn.beginTransaction()
  try {
    const [rows] = await conn.query(
      'SELECT id, status, source, user_name FROM bookings WHERE ' + bookSql.where + ' FOR UPDATE',
      bookSql.params
    )
    const lockRows = (rows || []).filter(isLockBookingRow)
    if (lockRows.length > BATCH_ROW_CAP) {
      await conn.rollback()
      return {
        ok: false,
        msg: '匹配的锁场超过' + BATCH_ROW_CAP + '条，请缩小日期、场地或时段后再试',
        fnVer: FN_VER
      }
    }
    let unlocked = 0
    const ids = lockRows.map(function (r) { return r.id })
    const idParts = chunkAry(ids, 500)
    for (let i = 0; i < idParts.length; i++) {
      const part = idParts[i]
      const [upd] = await conn.query(
        'UPDATE bookings SET status=\'cancelled\', cancelled_by_admin=1, operator_name=?, updated_at=NOW() WHERE id IN (' +
          part.map(function () { return '?' }).join(',') +
          ') AND ' + LOCK_BOOKING_SQL,
        [operatorName].concat(part)
      )
      unlocked += Number(upd && upd.affectedRows) || 0
    }
    let intentsCleared = 0
    const [del] = await conn.query('DELETE FROM lock_intents WHERE ' + intentSql.where, intentSql.params)
    intentsCleared = Number(del && del.affectedRows) || 0

    await writeLog(conn, {
      type: 'batch_unlock',
      userName: '锁场',
      operatorName: operatorName,
      detail:
        '批量解锁 ' + (venueName || venueId) + ' ' + dateStart + '~' + dateEnd +
        ' 解锁' + unlocked + '条 清除自动锁' + intentsCleared + '条' +
        (courts.length ? ' 场地' + courts.length : ' 全部场地') +
        (times.length ? ' 时段' + times.length : ' 全部时段'),
      venueId: venueId,
      venueName: venueName
    })
    await conn.commit()
    return {
      ok: true,
      fnVer: FN_VER,
      unlocked: unlocked,
      intentsCleared: intentsCleared,
      dates: rangeDates,
      courts: courts,
      times: times
    }
  } catch (e) {
    try { await conn.rollback() } catch (e2) {}
    return { ok: false, msg: (e && e.message) || '批量解锁失败', fnVer: FN_VER }
  }
}

async function handleBatchLock(conn, data) {
  data = data || {}
  const venueId = String(data.venueId || '').trim()
  const courts = uniqueCourts(data.courts)
  const times = uniqueTimes(data.times)
  const dates = normalizeDateList(data)
  if (!venueId) return { ok: false, msg: '缺少场馆', fnVer: FN_VER }
  if (!courts.length) return { ok: false, msg: '请选择场地', fnVer: FN_VER }
  if (!times.length) return { ok: false, msg: '请选择时段', fnVer: FN_VER }
  if (!dates.length) return { ok: false, msg: '请选择日期范围', fnVer: FN_VER }
  const operatorName = data.operatorName || '管理员'
  const venueName = data.venueName || ''
  const remark = String(data.remark || '[锁场] 批量锁场').slice(0, 255)
  const dryRun = !!data.dryRun

  try {
    await assertOwnVenue(conn, operatorName, venueId)
  } catch (e) {
    return { ok: false, msg: e.message || '只能锁自己管理的场馆', fnVer: FN_VER }
  }

  const slots = expandSlotGrid(courts, dates, times)
  if (slots.length > BATCH_ROW_CAP) {
    return {
      ok: false,
      msg: '选择范围过大（超过' + BATCH_ROW_CAP + '个时段），请缩小日期、场地或时段后再试',
      fnVer: FN_VER
    }
  }

  const courtNameByInput = new Map()
  for (let i = 0; i < courts.length; i++) {
    const c = courts[i]
    courtNameByInput.set(c, await resolveCourtName(conn, venueId, c))
  }
  const resolvedSlots = slots.map(function (s) {
    return { court: courtNameByInput.get(s.court) || s.court, date: s.date, time: s.time }
  })

  const hoursCtx = await loadVenueHoursContext(conn, venueId)
  const span = dateSpan(dates)
  const dateStart = span.dateStart
  const dateEnd = span.dateEnd

  async function loadBusyAndGc(forUpdate) {
    const lockSql = forUpdate ? ' FOR UPDATE' : ''
    const [busyAll] = await conn.query(
      'SELECT id, court, date, time, status, source, user_name FROM bookings WHERE venue_id=? AND date>=? AND date<=? AND status IN (\'booked\',\'locked\',\'pending_pay\')' + lockSql,
      [venueId, dateStart, dateEnd]
    )
    const [gcAll] = await conn.query(
      'SELECT id, court, date, time FROM group_classes WHERE venue_id=? AND date>=? AND date<=? AND status=\'open\'',
      [venueId, dateStart, dateEnd]
    )
    return {
      busyIndex: indexRowsByDateCourt(busyAll),
      gcIndex: indexRowsByDateCourt(gcAll)
    }
  }

  function planFrom(index) {
    return classifyLockGrid(resolvedSlots, {
      todayYmd: todayYmd(),
      nowHm: nowHmShanghai(),
      hasHours: hoursCtx.hasHours,
      hoursByWeekday: hoursCtx.hoursByWeekday,
      busyIndex: index.busyIndex,
      gcIndex: index.gcIndex
    })
  }

  if (dryRun) {
    const plan = planFrom(await loadBusyAndGc(false))
    return Object.assign({
      ok: true,
      fnVer: FN_VER,
      dryRun: true,
      details: capBatchDetails(plan.items),
      dates: dates,
      courts: courts,
      times: times
    }, plan.counts)
  }

  let rangeLock = null
  try {
    const name = ('batchslot:' + String(venueId)).slice(0, 64)
    const [lk] = await conn.query('SELECT GET_LOCK(?, 20) AS ok', [name])
    if (!lk[0] || Number(lk[0].ok) !== 1) {
      return { ok: false, msg: '系统繁忙，请稍后重试', fnVer: FN_VER }
    }
    rangeLock = name
    await conn.beginTransaction()
    const plan = planFrom(await loadBusyAndGc(true))
    const lockRuleId = data.lockRuleId || null
    const lockRows = plan.items.filter(function (x) { return x.kind === 'lock' }).map(function (x) {
      return {
        venueId: venueId,
        venueName: venueName,
        courtName: x.court,
        date: x.date,
        time: x.time,
        operatorName: operatorName,
        remark: remark,
        lockRuleId: lockRuleId
      }
    })
    const intentRows = plan.items.filter(function (x) { return x.kind === 'pending' }).map(function (x) {
      return {
        venueId: venueId,
        venueName: venueName,
        court: x.court,
        date: x.date,
        time: x.time,
        operatorName: operatorName,
        remark: remark,
        bookingId: x.bookingId || null,
        lockRuleId: lockRuleId
      }
    })
    const ins = await insertLockBookings(conn, lockRows)
    if (intentRows.length) await batchUpsertLockIntents(conn, intentRows)
    const lockN = ins.inserted.length
    const skipConflict = ins.conflicts.length
    const fail = ins.failed.length
    if (skipConflict || fail) {
      const mark = new Set()
      ins.conflicts.forEach(function (r) { mark.add(r.courtName + '|' + r.date + '|' + r.time) })
      const failMap = new Map()
      ins.failed.forEach(function (r) { failMap.set(r.courtName + '|' + r.date + '|' + r.time, r.msg) })
      plan.items.forEach(function (it) {
        const k = it.court + '|' + it.date + '|' + it.time
        if (mark.has(k) && it.kind === 'lock') {
          it.kind = 'skipLocked'
          it.msg = '该时段已被占用，已跳过'
        }
        if (failMap.has(k) && it.kind === 'lock') {
          it.kind = 'fail'
          it.msg = failMap.get(k) || '锁场失败'
        }
      })
    }
    await writeLog(conn, {
      type: 'batch_lock',
      userName: '锁场',
      operatorName: operatorName,
      detail:
        '批量锁场 ' + (venueName || venueId) + ' ' + dateStart + '~' + dateEnd +
        ' 锁定' + lockN +
        ' 已锁跳过' + plan.counts.skipLocked +
        ' 预约改自动锁' + plan.counts.pending +
        ' 团课跳过' + plan.counts.skipGroup +
        ' 无效跳过' + plan.counts.skipInvalid +
        (skipConflict ? ' 冲突跳过' + skipConflict : '') +
        (fail ? ' 失败' + fail : ''),
      venueId: venueId,
      venueName: venueName
    })
    await conn.commit()
    return {
      ok: true,
      fnVer: FN_VER,
      lock: lockN,
      skipLocked: plan.counts.skipLocked + skipConflict,
      pending: plan.counts.pending,
      skipGroup: plan.counts.skipGroup,
      skipInvalid: plan.counts.skipInvalid,
      skipConflict: skipConflict,
      fail: fail,
      details: capBatchDetails(plan.items),
      dates: dates,
      courts: courts,
      times: times
    }
  } catch (e) {
    try { await conn.rollback() } catch (e2) {}
    return { ok: false, msg: (e && e.message) || '批量锁场失败', fnVer: FN_VER }
  } finally {
    if (rangeLock) {
      try { await conn.query('SELECT RELEASE_LOCK(?)', [rangeLock]) } catch (e) {}
    }
  }
}


// ---- end batch lock/unlock helpers 20261116 ----


// ---- lock rules 20261119b ----
const MISSING_LOCK_RULE_COL_MSG =
  '尚未创建锁场规则字段，请先在数据库执行 PREVIEW_court_lock_rules_20261119.sql 后再使用锁场规则'

const _lockRuleIdColPresent = Object.create(null)

async function hasLockRuleIdColumn(conn, tableName) {
  const key = String(tableName || '')
  if (_lockRuleIdColPresent[key] === true) return true
  try {
    const [rows] = await conn.query(
      `SELECT 1 AS ok
         FROM information_schema.COLUMNS
        WHERE TABLE_SCHEMA = DATABASE()
          AND TABLE_NAME=? AND COLUMN_NAME='lock_rule_id'
        LIMIT 1`,
      [key]
    )
    if (rows && rows[0]) {
      _lockRuleIdColPresent[key] = true
      return true
    }
  } catch (e) {}
  return false
}

async function ensureCourtLockRulesTable(conn) {
  await conn.query(`
    CREATE TABLE IF NOT EXISTS court_lock_rules (
      id INT NOT NULL AUTO_INCREMENT,
      title VARCHAR(128) NOT NULL DEFAULT '',
      venue_id VARCHAR(64) NOT NULL,
      venue_name VARCHAR(128) NOT NULL DEFAULT '',
      courts TEXT NOT NULL,
      date_start DATE NOT NULL,
      date_end DATE NOT NULL,
      weekdays VARCHAR(64) NOT NULL DEFAULT '[1,2,3,4,5,6,7]',
      time_start VARCHAR(8) NOT NULL DEFAULT '00:00',
      time_end VARCHAR(8) NOT NULL DEFAULT '00:00',
      status VARCHAR(16) NOT NULL DEFAULT 'active',
      operator_name VARCHAR(64) NOT NULL DEFAULT '',
      created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
      updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
      PRIMARY KEY (id),
      KEY idx_lock_rules_venue_status (venue_id, status),
      KEY idx_lock_rules_dates (date_start, date_end)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `)
}

function lockRuleRemark(ruleId, title) {
  const t = String(title || '锁场').trim() || '锁场'
  return ('[锁场][R' + Number(ruleId) + '] ' + t).slice(0, 255)
}

function lockRuleRemarkLike(ruleId) {
  return '[锁场][R' + Number(ruleId) + ']%'
}

function parseHm(s) {
  const m = String(s || '').trim().match(/^(\d{1,2}):(\d{2})$/)
  if (!m) return null
  const h = Number(m[1])
  const n = Number(m[2])
  if (!Number.isFinite(h) || !Number.isFinite(n) || h > 24 || n > 59) return null
  if (h === 24 && n !== 0) return null
  return { h: h, n: n, min: h * 60 + n, text: batchPad2(h) + ':' + batchPad2(n) }
}

function normHmText(s, fallback) {
  const p = parseHm(s)
  return p ? p.text : (fallback || '00:00')
}

function isAllDayRange(timeStart, timeEnd) {
  const a = parseHm(timeStart)
  const b = parseHm(timeEnd)
  return !!(a && b && a.min === 0 && b.min === 0)
}

function slotStartHm(timeStr) {
  const s = String(timeStr || '').trim()
  const m = s.match(/^(\d{1,2}):(\d{2})\s*[-~～]/)
  if (!m) return ''
  return batchPad2(Number(m[1])) + ':' + batchPad2(Number(m[2]))
}

function slotInTimeRange(timeStr, timeStart, timeEnd) {
  if (isAllDayRange(timeStart, timeEnd)) return true
  const start = parseHm(timeStart)
  const end = parseHm(timeEnd)
  const slotStart = parseHm(slotStartHm(timeStr))
  if (!start || !end || !slotStart) return false
  return slotStart.min >= start.min && slotStart.min < end.min
}

function parseWeekdays(v) {
  let list = v
  if (typeof v === 'string') {
    try {
      list = JSON.parse(v)
    } catch (e) {
      list = String(v).split(/[,，]/)
    }
  }
  const out = []
  const seen = new Set()
  for (const x of list || []) {
    const n = Number(x)
    if (n >= 1 && n <= 7 && !seen.has(n)) {
      seen.add(n)
      out.push(n)
    }
  }
  out.sort(function (a, b) { return a - b })
  return out
}

function parseRuleCourts(v) {
  let list = v
  if (typeof v === 'string') {
    try {
      const j = JSON.parse(v)
      if (Array.isArray(j)) list = j
      else list = String(v).split(/[,，]/)
    } catch (e) {
      list = String(v).split(/[,，]/)
    }
  }
  return uniqueCourts(list).filter(function (c) { return !isOutdoorSharedCourt(c) })
}

function slotKey(court, date, time) {
  return normCourt(court) + '|' + (fmtDate(date) || '') + '|' + String(time || '').trim()
}

function expandRuleSlotGrid(rule, hoursCtx) {
  const courts = parseRuleCourts(rule.courts)
  const weekdays = parseWeekdays(rule.weekdays)
  const timeStart = rule.time_start || rule.timeStart || '00:00'
  const timeEnd = rule.time_end || rule.timeEnd || '00:00'
  const dateStart = rule.date_start || rule.dateStart
  const dateEnd = rule.date_end || rule.dateEnd
  const dates = enumerateDates(dateStart, dateEnd).filter(function (d) {
    return weekdays.indexOf(weekdayMon1(d)) >= 0
  })
  const allDay = isAllDayRange(timeStart, timeEnd)
  const slots = []
  const timeSet = new Set()
  for (let i = 0; i < dates.length; i++) {
    const date = dates[i]
    const wd = weekdayMon1(date)
    let open = []
    if (hoursCtx && hoursCtx.hasHours) {
      const set = hoursCtx.hoursByWeekday.get(wd)
      open = set ? Array.from(set) : []
    }
    open.sort()
    for (let c = 0; c < courts.length; c++) {
      for (let t = 0; t < open.length; t++) {
        const time = open[t]
        if (!allDay && !slotInTimeRange(time, timeStart, timeEnd)) continue
        slots.push({ court: courts[c], date: date, time: time })
        timeSet.add(time)
      }
    }
  }
  return {
    courts: courts,
    dates: dates,
    times: Array.from(timeSet).sort(),
    slots: slots
  }
}

function ruleDisplayStatus(row, today) {
  const start = fmtDate(row.date_start)
  const end = fmtDate(row.date_end)
  if (end && today > end) return 'expired'
  if (start && today < start) return 'upcoming'
  return 'active'
}

function serializeLockRule(row, today) {
  const weekdays = parseWeekdays(row.weekdays)
  const courts = parseRuleCourts(row.courts)
  const timeStart = normHmText(row.time_start, '00:00')
  const timeEnd = normHmText(row.time_end, '00:00')
  return {
    id: Number(row.id),
    title: row.title || '锁场',
    venueId: row.venue_id || '',
    venueName: row.venue_name || '',
    courts: courts,
    dateStart: fmtDate(row.date_start),
    dateEnd: fmtDate(row.date_end),
    weekdays: weekdays,
    timeStart: timeStart,
    timeEnd: timeEnd,
    allDay: isAllDayRange(timeStart, timeEnd),
    status: row.status || 'active',
    displayStatus: ruleDisplayStatus(row, today || todayYmd()),
    operatorName: row.operator_name || '',
    createdAt: row.created_at,
    updatedAt: row.updated_at
  }
}

function mapLockRowOut(r, hasCol) {
  const ruleId = hasCol ? (Number(r.lock_rule_id || 0) || parseRuleIdFromRemark(r.remark) || null) : (parseRuleIdFromRemark(r.remark) || null)
  return {
    id: String(r.id),
    venueId: r.venue_id || '',
    venueName: r.venue_name || '',
    court: r.court || '',
    date: fmtDate(r.date),
    time: r.time || '',
    operatorName: r.operator_name || '',
    remark: r.remark || '',
    status: r.status || '',
    lockRuleId: ruleId || null,
    timeText: r.created_at
  }
}

async function cancelLockBookingsByIds(conn, ids, operatorName) {
  let unlocked = 0
  const idParts = chunkAry(ids, 500)
  for (let i = 0; i < idParts.length; i++) {
    const part = idParts[i]
    if (!part.length) continue
    const [upd] = await conn.query(
      'UPDATE bookings SET status=\'cancelled\', cancelled_by_admin=1, operator_name=?, updated_at=NOW() WHERE id IN (' +
        part.map(function () { return '?' }).join(',') +
        ') AND ' + LOCK_BOOKING_SQL,
      [operatorName].concat(part)
    )
    unlocked += Number(upd && upd.affectedRows) || 0
  }
  return unlocked
}

async function loadRuleLockBookings(conn, ruleId, forUpdate) {
  const id = Number(ruleId)
  if (!id) return []
  const hasCol = await hasLockRuleIdColumn(conn, 'bookings')
  const tag = lockRuleRemarkLike(id)
  const cols = hasCol
    ? 'id, venue_id, venue_name, court, date, time, status, source, user_name, remark, operator_name, lock_rule_id'
    : 'id, venue_id, venue_name, court, date, time, status, source, user_name, remark, operator_name'
  const where = hasCol
    ? '(' + LOCK_BOOKING_SQL + ') AND (lock_rule_id=? OR remark LIKE ?)'
    : '(' + LOCK_BOOKING_SQL + ') AND remark LIKE ?'
  const params = hasCol ? [id, tag] : [tag]
  const [rows] = await conn.query(
    'SELECT ' + cols + ' FROM bookings WHERE ' + where + (forUpdate ? ' FOR UPDATE' : ''),
    params
  )
  return (rows || []).filter(isLockBookingRow)
}

async function loadRuleLockIntents(conn, ruleId) {
  const id = Number(ruleId)
  if (!id) return []
  await ensureLockIntentsTable(conn)
  const hasCol = await hasLockRuleIdColumn(conn, 'lock_intents')
  const tag = lockRuleRemarkLike(id)
  const where = hasCol ? '(lock_rule_id=? OR remark LIKE ?)' : 'remark LIKE ?'
  const params = hasCol ? [id, tag] : [tag]
  try {
    const [rows] = await conn.query('SELECT * FROM lock_intents WHERE ' + where, params)
    return rows || []
  } catch (e) {
    return []
  }
}

async function deleteLockIntentsByIds(conn, ids) {
  let n = 0
  const parts = chunkAry(ids, 500)
  for (let i = 0; i < parts.length; i++) {
    const part = parts[i]
    if (!part.length) continue
    const [del] = await conn.query(
      'DELETE FROM lock_intents WHERE id IN (' + part.map(function () { return '?' }).join(',') + ')',
      part
    )
    n += Number(del && del.affectedRows) || 0
  }
  return n
}

function normalizeLockRuleInput(data) {
  data = data || {}
  const venueId = String(data.venueId || '').trim()
  const venueName = String(data.venueName || '').trim()
  const title = (String(data.title || '').trim() || '锁场').slice(0, 128)
  const courts = parseRuleCourts(data.courts)
  let weekdays = parseWeekdays(data.weekdays)
  if (!weekdays.length) weekdays = [1, 2, 3, 4, 5, 6, 7]
  const dateStart = fmtDate(data.dateStart || data.date_start || '') || String(data.dateStart || '').slice(0, 10)
  const dateEnd = fmtDate(data.dateEnd || data.date_end || data.dateStart || '') || String(data.dateEnd || data.dateStart || '').slice(0, 10)
  const timeStart = normHmText(data.timeStart || data.time_start, '00:00')
  const timeEnd = normHmText(data.timeEnd || data.time_end, '00:00')
  return {
    id: Number(data.id || data.ruleId || 0) || 0,
    title: title,
    venueId: venueId,
    venueName: venueName,
    courts: courts,
    weekdays: weekdays,
    dateStart: dateStart,
    dateEnd: dateEnd,
    timeStart: timeStart,
    timeEnd: timeEnd,
    operatorName: data.operatorName || '管理员',
    dryRun: !!data.dryRun
  }
}

function validateLockRuleInput(input) {
  if (!input.venueId) return '缺少场馆'
  if (!input.courts.length) return '请选择场地'
  if (!parseYmd(input.dateStart) || !parseYmd(input.dateEnd)) return '请选择日期范围'
  if (input.dateStart > input.dateEnd) return '开始日期不能晚于结束日期'
  if (!input.weekdays.length) return '请选择停用星期'
  const a = parseHm(input.timeStart)
  const b = parseHm(input.timeEnd)
  if (!a || !b) return '时段格式不正确'
  if (!isAllDayRange(input.timeStart, input.timeEnd) && !(b.min > a.min)) {
    return '结束时间需晚于开始时间；全天请填 00:00~00:00'
  }
  return ''
}

async function listOrphanLockRows(conn, venueId) {
  const hasCol = await hasLockRuleIdColumn(conn, 'bookings')
  const extra = hasCol ? ', lock_rule_id' : ''
  const where = [
    'venue_id=?',
    "(source='lock' OR status='locked' OR user_name='锁场')",
    "status <> 'cancelled'"
  ]
  const params = [venueId]
  if (hasCol) {
    where.push('(lock_rule_id IS NULL OR lock_rule_id=0)')
  }
  where.push("remark NOT LIKE '[锁场][R%'")
  const [rows] = await conn.query(
    'SELECT id, venue_id, venue_name, court, date, time, operator_name, remark, status, created_at' + extra +
      ' FROM bookings WHERE ' + where.join(' AND ') +
      ' ORDER BY date DESC, time DESC, id DESC LIMIT 300',
    params
  )
  return (rows || [])
    .filter(function (r) { return !isOutdoorSharedCourt(r.court) && isLockBookingRow(r) && !parseRuleIdFromRemark(r.remark) })
    .map(function (r) { return mapLockRowOut(r, hasCol) })
}

async function handleListLockRules(conn, data) {
  data = data || {}
  const operatorName = data.operatorName || '管理员'
  const venueId = String(data.venueId || '').trim()
  if (!venueId) return { ok: false, msg: '缺少场馆', fnVer: FN_VER, list: [], orphanLocks: [] }
  try {
    await assertOwnVenue(conn, operatorName, venueId)
  } catch (e) {
    return { ok: false, msg: e.message || '只能锁自己管理的场馆', fnVer: FN_VER, list: [], orphanLocks: [] }
  }
  await ensureCourtLockRulesTable(conn)
  const [rows] = await conn.query(
    "SELECT * FROM court_lock_rules WHERE status<>'deleted' AND venue_id=? ORDER BY created_at DESC, id DESC",
    [venueId]
  )
  const today = todayYmd()
  const list = (rows || []).map(function (r) { return serializeLockRule(r, today) })
  const orphanLocks = await listOrphanLockRows(conn, venueId)
  return { ok: true, fnVer: FN_VER, list: list, orphanLocks: orphanLocks }
}

async function handleSaveLockRule(conn, data) {
  const input = normalizeLockRuleInput(data)
  const err = validateLockRuleInput(input)
  if (err) return { ok: false, msg: err, fnVer: FN_VER }
  if (!(await hasLockRuleIdColumn(conn, 'bookings'))) {
    return { ok: false, msg: MISSING_LOCK_RULE_COL_MSG, fnVer: FN_VER }
  }
  try {
    await assertOwnVenue(conn, input.operatorName, input.venueId)
  } catch (e) {
    return { ok: false, msg: e.message || '只能锁自己管理的场馆', fnVer: FN_VER }
  }

  await ensureCourtLockRulesTable(conn)
  await ensureLockIntentsTable(conn)

  let existing = null
  if (input.id) {
    const [rows] = await conn.query('SELECT * FROM court_lock_rules WHERE id=? LIMIT 1', [input.id])
    existing = rows && rows[0] ? rows[0] : null
    if (!existing || existing.status === 'deleted') {
      return { ok: false, msg: '规则不存在或已删除', fnVer: FN_VER }
    }
    if (existing.venue_id && existing.venue_id !== input.venueId) {
      try {
        await assertOwnVenue(conn, input.operatorName, existing.venue_id)
      } catch (e) {
        return { ok: false, msg: e.message || '只能锁自己管理的场馆', fnVer: FN_VER }
      }
    }
  }

  const hoursCtx = await loadVenueHoursContext(conn, input.venueId)
  if (!hoursCtx.hasHours) {
    return { ok: false, msg: '该场馆未配置营业时间，无法按规则锁场', fnVer: FN_VER }
  }
  const grid = expandRuleSlotGrid({
    courts: input.courts,
    weekdays: input.weekdays,
    date_start: input.dateStart,
    date_end: input.dateEnd,
    time_start: input.timeStart,
    time_end: input.timeEnd
  }, hoursCtx)
  if (!grid.slots.length) {
    return { ok: false, msg: '所选星期和时段内没有可锁的营业时段，请调整日期、星期或时段', fnVer: FN_VER }
  }
  if (grid.slots.length > BATCH_ROW_CAP) {
    return {
      ok: false,
      msg: '选择范围过大（超过' + BATCH_ROW_CAP + '个时段），请缩小日期、场地、星期或时段后再试',
      fnVer: FN_VER,
      slotCount: grid.slots.length
    }
  }

  const courtNameByInput = new Map()
  for (let i = 0; i < grid.courts.length; i++) {
    const c = grid.courts[i]
    courtNameByInput.set(c, await resolveCourtName(conn, input.venueId, c))
  }
  const resolvedSlots = grid.slots.map(function (s) {
    return { court: courtNameByInput.get(s.court) || s.court, date: s.date, time: s.time }
  })
  const newKeySet = new Set(resolvedSlots.map(function (s) {
    return slotKey(s.court, s.date, s.time)
  }))

  async function loadBusyAndGc(forUpdate) {
    const lockSql = forUpdate ? ' FOR UPDATE' : ''
    const hasCol = await hasLockRuleIdColumn(conn, 'bookings')
    const extra = hasCol ? ', lock_rule_id' : ''
    const [busyAll] = await conn.query(
      'SELECT id, court, date, time, status, source, user_name, remark' + extra +
        ' FROM bookings WHERE venue_id=? AND date>=? AND date<=? AND status IN (\'booked\',\'locked\',\'pending_pay\')' + lockSql,
      [input.venueId, input.dateStart, input.dateEnd]
    )
    const [gcAll] = await conn.query(
      'SELECT id, court, date, time FROM group_classes WHERE venue_id=? AND date>=? AND date<=? AND status=\'open\'',
      [input.venueId, input.dateStart, input.dateEnd]
    )
    return {
      busyIndex: indexRowsByDateCourt(busyAll),
      gcIndex: indexRowsByDateCourt(gcAll)
    }
  }

  function planFrom(index, ruleId) {
    return classifyLockGrid(resolvedSlots, {
      todayYmd: todayYmd(),
      nowHm: nowHmShanghai(),
      hasHours: hoursCtx.hasHours,
      hoursByWeekday: hoursCtx.hoursByWeekday,
      busyIndex: index.busyIndex,
      gcIndex: index.gcIndex,
      ownRuleId: ruleId || 0
    })
  }

  let existingLocks = []
  let existingIntents = []
  if (existing) {
    existingLocks = await loadRuleLockBookings(conn, existing.id, false)
    existingIntents = await loadRuleLockIntents(conn, existing.id)
  }
  const unlockRows = existingLocks.filter(function (r) {
    return !newKeySet.has(slotKey(r.court, r.date, r.time))
  })
  const clearIntents = existingIntents.filter(function (r) {
    return !newKeySet.has(slotKey(r.court, r.date, r.time))
  })

  if (input.dryRun) {
    const plan = planFrom(await loadBusyAndGc(false), existing ? existing.id : 0)
    return Object.assign({
      ok: true,
      fnVer: FN_VER,
      dryRun: true,
      id: existing ? Number(existing.id) : 0,
      details: capBatchDetails(plan.items),
      unlocked: unlockRows.length,
      intentsCleared: clearIntents.length,
      dates: grid.dates,
      courts: grid.courts,
      times: grid.times
    }, plan.counts)
  }

  let rangeLock = null
  try {
    const name = ('batchslot:' + String(input.venueId)).slice(0, 64)
    const [lk] = await conn.query('SELECT GET_LOCK(?, 20) AS ok', [name])
    if (!lk[0] || Number(lk[0].ok) !== 1) {
      return { ok: false, msg: '系统繁忙，请稍后重试', fnVer: FN_VER }
    }
    rangeLock = name
    await conn.beginTransaction()

    let ruleId = existing ? Number(existing.id) : 0
    const courtsJson = JSON.stringify(input.courts)
    const weekdaysJson = JSON.stringify(input.weekdays)
    if (!existing) {
      const [insRule] = await conn.query(
        `INSERT INTO court_lock_rules
          (title, venue_id, venue_name, courts, date_start, date_end, weekdays, time_start, time_end, status, operator_name)
         VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'active', ?)`,
        [
          input.title,
          input.venueId,
          input.venueName,
          courtsJson,
          input.dateStart,
          input.dateEnd,
          weekdaysJson,
          input.timeStart,
          input.timeEnd,
          input.operatorName
        ]
      )
      ruleId = Number(insRule.insertId)
    } else {
      await conn.query(
        `UPDATE court_lock_rules
            SET title=?, venue_id=?, venue_name=?, courts=?, date_start=?, date_end=?,
                weekdays=?, time_start=?, time_end=?, operator_name=?, updated_at=NOW()
          WHERE id=? AND status<>'deleted'`,
        [
          input.title,
          input.venueId,
          input.venueName,
          courtsJson,
          input.dateStart,
          input.dateEnd,
          weekdaysJson,
          input.timeStart,
          input.timeEnd,
          input.operatorName,
          ruleId
        ]
      )
      existingLocks = await loadRuleLockBookings(conn, ruleId, true)
      existingIntents = await loadRuleLockIntents(conn, ruleId)
    }

    const unlockNow = existingLocks.filter(function (r) {
      return !newKeySet.has(slotKey(r.court, r.date, r.time))
    })
    const keepLocks = existingLocks.filter(function (r) {
      return newKeySet.has(slotKey(r.court, r.date, r.time))
    })
    const clearNow = existingIntents.filter(function (r) {
      return !newKeySet.has(slotKey(r.court, r.date, r.time))
    })
    const keepIntents = existingIntents.filter(function (r) {
      return newKeySet.has(slotKey(r.court, r.date, r.time))
    })

    const unlocked = await cancelLockBookingsByIds(
      conn,
      unlockNow.map(function (r) { return r.id }),
      input.operatorName
    )
    const intentsCleared = await deleteLockIntentsByIds(
      conn,
      clearNow.map(function (r) { return r.id })
    )

    const remark = lockRuleRemark(ruleId, input.title)
    if (keepLocks.length) {
      const ids = keepLocks.map(function (r) { return r.id })
      const parts = chunkAry(ids, 500)
      for (let i = 0; i < parts.length; i++) {
        const part = parts[i]
        await conn.query(
          'UPDATE bookings SET remark=?, operator_name=?, lock_rule_id=?, updated_at=NOW() WHERE id IN (' +
            part.map(function () { return '?' }).join(',') +
            ') AND ' + LOCK_BOOKING_SQL,
          [remark, input.operatorName, ruleId].concat(part)
        )
      }
    }
    if (keepIntents.length) {
      const hasIntentCol = await hasLockRuleIdColumn(conn, 'lock_intents')
      const ids = keepIntents.map(function (r) { return r.id })
      const parts = chunkAry(ids, 500)
      for (let i = 0; i < parts.length; i++) {
        const part = parts[i]
        const setCol = hasIntentCol ? 'remark=?, operator_name=?, lock_rule_id=?' : 'remark=?, operator_name=?'
        const params = hasIntentCol
          ? [remark, input.operatorName, ruleId].concat(part)
          : [remark, input.operatorName].concat(part)
        await conn.query(
          'UPDATE lock_intents SET ' + setCol + ' WHERE id IN (' +
            part.map(function () { return '?' }).join(',') + ')',
          params
        )
      }
    }

    const plan = planFrom(await loadBusyAndGc(true), ruleId)
    const lockRows = plan.items.filter(function (x) { return x.kind === 'lock' }).map(function (x) {
      return {
        venueId: input.venueId,
        venueName: input.venueName,
        courtName: x.court,
        date: x.date,
        time: x.time,
        operatorName: input.operatorName,
        remark: remark,
        lockRuleId: ruleId
      }
    })
    const intentRows = plan.items.filter(function (x) { return x.kind === 'pending' }).map(function (x) {
      return {
        venueId: input.venueId,
        venueName: input.venueName,
        court: x.court,
        date: x.date,
        time: x.time,
        operatorName: input.operatorName,
        remark: remark,
        bookingId: x.bookingId || null,
        lockRuleId: ruleId
      }
    })
    const ins = await insertLockBookings(conn, lockRows)
    if (intentRows.length) await batchUpsertLockIntents(conn, intentRows)
    const lockN = ins.inserted.length
    const skipConflict = ins.conflicts.length
    const fail = ins.failed.length
    if (skipConflict || fail) {
      const mark = new Set()
      ins.conflicts.forEach(function (r) { mark.add(r.courtName + '|' + r.date + '|' + r.time) })
      const failMap = new Map()
      ins.failed.forEach(function (r) { failMap.set(r.courtName + '|' + r.date + '|' + r.time, r.msg) })
      plan.items.forEach(function (it) {
        const k = it.court + '|' + it.date + '|' + it.time
        if (mark.has(k) && it.kind === 'lock') {
          it.kind = 'skipLocked'
          it.msg = '该时段已被占用，已跳过'
        }
        if (failMap.has(k) && it.kind === 'lock') {
          it.kind = 'fail'
          it.msg = failMap.get(k) || '锁场失败'
        }
      })
    }

    await writeLog(conn, {
      type: existing ? 'update_lock_rule' : 'save_lock_rule',
      userName: '锁场',
      operatorName: input.operatorName,
      detail:
        (existing ? '编辑锁场规则#' : '新增锁场规则#') + ruleId + ' ' + input.title +
        ' ' + (input.venueName || input.venueId) + ' ' + input.dateStart + '~' + input.dateEnd +
        ' 锁定' + lockN +
        ' 保留' + (plan.counts.keep || 0) +
        ' 已锁跳过' + ((plan.counts.skipLocked || 0) + skipConflict) +
        ' 预约改自动锁' + (plan.counts.pending || 0) +
        ' 团课跳过' + (plan.counts.skipGroup || 0) +
        ' 无效跳过' + (plan.counts.skipInvalid || 0) +
        ' 解除不再覆盖' + unlocked +
        ' 清除自动锁' + intentsCleared +
        (fail ? ' 失败' + fail : ''),
      venueId: input.venueId,
      venueName: input.venueName
    })
    await conn.commit()
    return {
      ok: true,
      fnVer: FN_VER,
      id: ruleId,
      lock: lockN,
      keep: plan.counts.keep || 0,
      skipLocked: (plan.counts.skipLocked || 0) + skipConflict,
      pending: plan.counts.pending || 0,
      skipGroup: plan.counts.skipGroup || 0,
      skipInvalid: plan.counts.skipInvalid || 0,
      skipConflict: skipConflict,
      fail: fail,
      unlocked: unlocked,
      intentsCleared: intentsCleared,
      details: capBatchDetails(plan.items),
      dates: grid.dates,
      courts: grid.courts,
      times: grid.times
    }
  } catch (e) {
    try { await conn.rollback() } catch (e2) {}
    return { ok: false, msg: (e && e.message) || '保存锁场规则失败', fnVer: FN_VER }
  } finally {
    if (rangeLock) {
      try { await conn.query('SELECT RELEASE_LOCK(?)', [rangeLock]) } catch (e) {}
    }
  }
}

async function handleDeleteLockRule(conn, data) {
  data = data || {}
  const ruleId = Number(data.id || data.ruleId || 0)
  const operatorName = data.operatorName || '管理员'
  const dryRun = !!data.dryRun
  if (!ruleId) return { ok: false, msg: '缺少规则', fnVer: FN_VER }
  if (!(await hasLockRuleIdColumn(conn, 'bookings'))) {
    return { ok: false, msg: MISSING_LOCK_RULE_COL_MSG, fnVer: FN_VER }
  }
  await ensureCourtLockRulesTable(conn)
  const [rows] = await conn.query('SELECT * FROM court_lock_rules WHERE id=? LIMIT 1', [ruleId])
  const rule = rows && rows[0] ? rows[0] : null
  if (!rule || rule.status === 'deleted') {
    return { ok: false, msg: '规则不存在或已删除', fnVer: FN_VER }
  }
  try {
    await assertOwnVenue(conn, operatorName, rule.venue_id)
  } catch (e) {
    return { ok: false, msg: e.message || '只能锁自己管理的场馆', fnVer: FN_VER }
  }

  const locks = await loadRuleLockBookings(conn, ruleId, false)
  const intents = await loadRuleLockIntents(conn, ruleId)
  if (dryRun) {
    return {
      ok: true,
      fnVer: FN_VER,
      dryRun: true,
      id: ruleId,
      unlock: locks.length,
      intents: intents.length
    }
  }

  await conn.beginTransaction()
  try {
    const lockedRows = await loadRuleLockBookings(conn, ruleId, true)
    const intentRows = await loadRuleLockIntents(conn, ruleId)
    const unlocked = await cancelLockBookingsByIds(
      conn,
      lockedRows.map(function (r) { return r.id }),
      operatorName
    )
    const intentsCleared = await deleteLockIntentsByIds(
      conn,
      intentRows.map(function (r) { return r.id })
    )
    await conn.query(
      "UPDATE court_lock_rules SET status='deleted', operator_name=?, updated_at=NOW() WHERE id=? AND status<>'deleted'",
      [operatorName, ruleId]
    )
    await writeLog(conn, {
      type: 'delete_lock_rule',
      userName: '锁场',
      operatorName: operatorName,
      detail:
        '删除锁场规则#' + ruleId + ' ' + (rule.title || '') +
        ' ' + (rule.venue_name || rule.venue_id || '') +
        ' 解锁' + unlocked + '条 清除自动锁' + intentsCleared + '条',
      venueId: rule.venue_id || '',
      venueName: rule.venue_name || ''
    })
    await conn.commit()
    return {
      ok: true,
      fnVer: FN_VER,
      id: ruleId,
      unlocked: unlocked,
      intentsCleared: intentsCleared
    }
  } catch (e) {
    try { await conn.rollback() } catch (e2) {}
    return { ok: false, msg: (e && e.message) || '删除锁场规则失败', fnVer: FN_VER }
  }
}

// ---- end lock rules 20261119b ----

const FN_VER = 'saveBooking-20261120a'

function parseRuleObj(v) {
  if (!v) return null
  if (typeof v === 'object') return v
  try { return JSON.parse(v) } catch (e) { return null }
}
function ymdNowLocal() {
  try {
    return new Intl.DateTimeFormat('en-CA', {
      timeZone: 'Asia/Shanghai',
      year: 'numeric',
      month: '2-digit',
      day: '2-digit'
    }).format(new Date())
  } catch (e) {
    const d = new Date(Date.now() + 8 * 3600 * 1000)
    return d.toISOString().slice(0, 10)
  }
}
function normYmd(v) {
  if (!v) return ''
  const m = String(v).match(/^(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : ''
}
function addDaysYmd(ymd, days) {
  const base = normYmd(ymd) || ymdNowLocal()
  const d = new Date(base.replace(/-/g, '/') + ' 00:00:00')
  d.setDate(d.getDate() + Number(days || 0))
  const p = (n) => (n < 10 ? '0' + n : '' + n)
  return d.getFullYear() + '-' + p(d.getMonth() + 1) + '-' + p(d.getDate())
}
function appendRemarkTag(remark, tag) {
  const s = String(remark || '')
  if (s.indexOf(tag) >= 0) return s
  return (s ? s.replace(/\s+$/, '') + ' ' : '') + tag
}
// Existing convention: validTo = start + durationDays (e.g. Nov 17 + 30 = Dec 17).
function templateDefaultIssueDates(tpl, opts) {
  const rule = parseRuleObj(tpl && (tpl.time_rule || tpl.timeRule)) || {}
  const opt = opts || {}
  const mode = opt.activateMode || rule.activateMode || 'now'
  const daysRaw = opt.durationDays != null && opt.durationDays !== ''
    ? Number(opt.durationDays)
    : (Number(tpl && (tpl.duration_days != null ? tpl.duration_days : tpl.durationDays)) || Number(rule.durationDays) || 0)
  const days = Number.isFinite(daysRaw) ? daysRaw : 0
  const today = opt.today || ymdNowLocal()
  if (mode === 'first_use') return { from: '', to: '', mode, days }
  if (rule.mode === 'dates' && Array.isArray(rule.dateRanges) && rule.dateRanges.length) {
    const starts = rule.dateRanges.map((x) => x && x.start).filter(Boolean).sort()
    const ends = rule.dateRanges.map((x) => x && x.end).filter(Boolean).sort()
    return { from: starts[0] || today, to: ends.length ? ends[ends.length - 1] : '', mode: 'now', days }
  }
  if (days > 0) return { from: today, to: addDaysYmd(today, days), mode, days }
  return { from: '', to: '', mode, days: 0 }
}
function resolveIssueDates(tpl, clientFrom, clientTo, opts) {
  const def = templateDefaultIssueDates(tpl, opts)
  const mode = (opts && opts.activateMode) || def.mode || 'now'
  if (mode === 'first_use') {
    return { from: null, to: null, datesEdited: false, def }
  }
  const from = normYmd(clientFrom)
  const to = normYmd(clientTo)
  const omitted = !from && !to
  if (omitted) {
    return { from: def.from || null, to: def.to || null, datesEdited: false, def }
  }
  const edited = from !== (def.from || '') || to !== (def.to || '')
  return { from: from || null, to: to || null, datesEdited: edited, def }
}
function templateVenueIds(tpl) {
  const rule = parseRuleObj(tpl && (tpl.time_rule || tpl.timeRule)) || {}
  return (Array.isArray(rule.venueIds) ? rule.venueIds : []).map((x) => String(x)).filter(Boolean)
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

async function loadVenueNames(conn, ids) {
  const list = (ids || []).map(String).filter(Boolean)
  if (!list.length) return {}
  const ph = list.map(() => '?').join(',')
  const map = {}
  try {
    const [rows] = await conn.query(
      `SELECT venue_id, id, name FROM venues WHERE venue_id IN (${ph}) OR id IN (${ph})`,
      list.concat(list)
    )
    ;(rows || []).forEach((r) => {
      const name = r.name || ''
      if (r.venue_id) map[String(r.venue_id)] = name
      if (r.id != null) map[String(r.id)] = name
    })
  } catch (e) {}
  return map
}
async function templateIssueVenueError(conn, tpl, venueId) {
  const ids = templateVenueIds(tpl)
  if (!ids.length) return ''
  if (ids.indexOf(String(venueId || '')) >= 0) return ''
  const namesMap = await loadVenueNames(conn, ids)
  const names = ids.map((id) => namesMap[id] || '').filter(Boolean)
  const label = names.length ? names.join('、') : '指定'
  return '该卡券仅限' + label + '店发放'
}
async function prepareIssueCardDates(conn, tpl, venueId, clientFrom, clientTo, opts, remark) {
  const venueErr = await templateIssueVenueError(conn, tpl, venueId)
  if (venueErr) return { error: venueErr }
  const resolved = resolveIssueDates(tpl, clientFrom, clientTo, opts || {})
  let nextRemark = remark || ''
  if (resolved.datesEdited) nextRemark = appendRemarkTag(nextRemark, '[已改有效期]')
  return {
    from: resolved.from || null,
    to: resolved.to || null,
    remark: nextRemark,
    datesEdited: !!resolved.datesEdited
  }
}



async function assertOwnVenue(conn, operatorName, venueId) {
  const name = String(operatorName || '').trim()
  if (!name || !venueId) return
  let rows = []
  try {
    const [r] = await conn.query(
      'SELECT role, venue_id FROM admins WHERE name=? OR username=? LIMIT 1',
      [name, name]
    )
    rows = r || []
  } catch (e) {
    return
  }
  if (!rows.length) return
  const role = String(rows[0].role || '')
  const own = String(rows[0].venue_id || '')
  if (!own) return
  if (['admin', 'super', 'superadmin', '超级管理员'].includes(role)) return
  if (own !== venueId) {
    const err = new Error('只能锁自己管理的场馆')
    err.code = 'VENUE'
    throw err
  }
}


async function enforceCoachBookingPolicy(conn, body, action, data) {
  const ctx = await coachBind.resolveCoachOperator(conn, body, data || {})
  if (!ctx.isCoach) return { ok: true, ctx }
  if (action === 'add' || action === 'update') {
    const d = data || {}
    const looksLock = d.userName === '锁场' || d.source === 'lock'
    if (!looksLock) {
      const dec = coachPerm.decideCoachAddBooking({ operatorRole: ctx.role })
      if (!dec.ok) return { ok: false, msg: dec.msg, ctx }
    }
  }
  if (action === 'batchLock' || action === 'batchUnlock' || action === 'saveLockRule' || action === 'deleteLockRule') {
    const dec = coachPerm.decideCoachLock({ operatorRole: ctx.role, action, bound: ctx.bound, selfCoachId: ctx.selfCoachId, courtName: '外场' })
    if (!dec.ok) return { ok: false, msg: dec.msg, ctx }
  }
  if (action === 'lock') {
    const courtName = (data && (data.court || data.courtName)) || ''
    const dec = coachPerm.decideCoachLock({
      operatorRole: ctx.role,
      action: 'lock',
      bound: ctx.bound,
      selfCoachId: ctx.selfCoachId,
      courtName,
      coachId: data && data.coachId
    })
    if (!dec.ok) return { ok: false, msg: dec.msg, ctx }
    try { coachBind.assertCoachVenue(ctx, data && data.venueId) } catch (e) {
      return { ok: false, msg: e.message || '只能在自己可管理的门店锁外场', ctx }
    }
    return { ok: true, ctx, coachLock: true, coachId: dec.coachId, coachName: ctx.selfCoachName }
  }
  if (action === 'cancel') {
    return { ok: true, ctx, coachCancel: true }
  }
  return { ok: true, ctx }
}

exports.main = async (event) => {
  const conn = await pool.getConnection()
  try {
    const body = parseEvent(event)
    const { action, id, data } = body || {}
    if (action === 'ver' || action === '__ver__') {
      return { ok: true, fnVer: FN_VER }
    }
    if (!action) return { ok: false, msg: '缺少 action', fnVer: FN_VER }

    let coachPolicy = { ok: true, ctx: null }
    if (['add', 'update', 'lock', 'batchLock', 'batchUnlock', 'saveLockRule', 'deleteLockRule', 'cancel'].includes(action)) {
      coachPolicy = await enforceCoachBookingPolicy(conn, body, action, data)
      if (!coachPolicy.ok) return { ok: false, msg: coachPolicy.msg, fnVer: FN_VER }
    }

    if (action === 'cancel') {
      if (coachPolicy.ctx && coachPolicy.ctx.isCoach) {
        const [ownRows] = await conn.query('SELECT id, coach_id, source, status, user_name FROM bookings WHERE id=? LIMIT 1', [id])
        const row = ownRows && ownRows[0]
        const isOwnLock = row && (row.status === 'locked' || row.source === 'lock' || row.user_name === '锁场') && String(row.coach_id || '') === String(coachPolicy.ctx.selfCoachId || '')
        if (!isOwnLock) {
          return { ok: false, msg: '教练不能取消他人预约或私教课', fnVer: FN_VER }
        }
      }
      await conn.beginTransaction()
      const [rows] = await conn.query('SELECT * FROM bookings WHERE id=? FOR UPDATE', [id])
      const b = rows[0]
      if (!b) {
        await conn.rollback()
        return { ok: false, msg: '预约不存在' }
      }
      if (b.status === 'cancelled') {
        await conn.rollback()
        return { ok: true, msg: '已取消', already: true }
      }
      if (b.status === 'pending_pay') {
        await conn.rollback()
        return {
          ok: false,
          msg: '客人仍在支付中（pending_pay），请稍候或先在支付单里关闭',
          pendingPay: true,
          fnVer: FN_VER
        }
      }

      // 微信支付：先退款再取消；失败则不取消
      let payOrder = null
      if (b.pay_order_id) {
        const [pos] = await conn.query('SELECT * FROM pay_orders WHERE id=? LIMIT 1', [b.pay_order_id])
        payOrder = pos[0] || null
      }
      if (payOrder && payOrder.status === 'paid') {
        const opName = (data && data.operatorName) || '管理员'
        await conn.commit()
        const refundRes = await refundCourtPayViaPay({
          payOrderId: payOrder.id,
          outTradeNo: payOrder.out_trade_no,
          bookingId: b.id,
          reason: '门店取消订场退款·' + opName
        })
        if (!refundRes || !refundRes.ok) {
          return {
            ok: false,
            msg: (refundRes && refundRes.msg) || '微信退款失败，预约未取消',
            needRefund: true,
            fnVer: FN_VER
          }
        }
        await conn.beginTransaction()
        const [rows2] = await conn.query('SELECT * FROM bookings WHERE id=? FOR UPDATE', [id])
        if (!rows2[0]) {
          await conn.rollback()
          return { ok: false, msg: '预约不存在', fnVer: FN_VER }
        }
        if (rows2[0].status === 'cancelled') {
          await conn.commit()
          return { ok: true, already: true, refunded: true, fnVer: FN_VER }
        }
        Object.assign(b, rows2[0])
      }

      await conn.query(
        `UPDATE bookings SET status='cancelled', cancelled_by_admin=1,
          operator_name=?, updated_at=NOW() WHERE id=?`,
        [(data && data.operatorName) || '管理员', id]
      )

      let refundCardId = b.card_id || null
      if (!refundCardId) {
        try {
          const [led] = await conn.query(
            `SELECT card_id FROM finance_ledger
              WHERE booking_id=? AND card_id IS NOT NULL AND type IN ('card_use','issue_card')
              ORDER BY id DESC LIMIT 1`,
            [b.id]
          )
          if (led[0] && led[0].card_id) refundCardId = led[0].card_id
        } catch (e) {}
      }
      if (refundCardId) {
        const [cards] = await conn.query(
          'SELECT * FROM member_cards WHERE id=? FOR UPDATE',
          [refundCardId]
        )
        const card = cards[0]
        if (card && card.status !== 'deleted' && card.status !== 'refunded') {
          if (card.type === 'times' || card.type === 'coach' || card.type === 'group') {
            const left = (Number(card.remaining_times) || 0) + 1
            const total = Number(card.total_times) || left
            await conn.query(
              `UPDATE member_cards SET remaining_times=?, status='active', updated_at=NOW() WHERE id=?`,
              [Math.min(left, total), card.id]
            )
          }
          await maybeRevertFirstUseActivation(conn, card)
        }
      }

      if (b.group_class_id) {
        await conn.query(
          `UPDATE group_classes SET enrolled = GREATEST(enrolled - 1, 0) WHERE id=?`,
          [b.group_class_id]
        )
      }

      await writeLog(conn, {
        type: 'booking_cancel',
        userName: b.user_name || '',
        operatorName: (data && data.operatorName) || '管理员',
        phone: b.phone || '',
        detail: '取消预约 ' + (b.court || '') + ' ' + fmtDateCn(b.date) + ' ' + (b.time || ''),
        venueId: b.venue_id || '',
        venueName: b.venue_name || ''
      })

      try {
        const [bled] = await conn.query(
          "SELECT amount FROM finance_ledger WHERE booking_id=? AND type='balance_out' ORDER BY id DESC LIMIT 1",
          [b.id]
        )
        const back = money(bled[0] && bled[0].amount)
        if (back > 0 && b.user_id) {
          await conn.query('UPDATE users SET balance=IFNULL(balance,0)+?, updated_at=NOW() WHERE id=?', [back, b.user_id])
          await writeLedger(conn, {
            bizDate: fmtDate(b.date) || fmtDate(new Date()),
            type: 'balance_in',
            amount: back,
            venueId: b.venue_id || '',
            venueName: b.venue_name || '',
            userId: b.user_id,
            userName: b.user_name || '',
            operatorName: (data && data.operatorName) || '管理员',
            bookingId: b.id,
            remark: '取消订场退回余额'
          })
        }
      } catch (e) {}

      const ledgerError = await writeCancelFinanceLedgers(
        conn,
        b,
        refundCardId,
        (data && data.operatorName) || '管理员'
      )

      let relocked = false
      try {
        const rr = await applyLockIntentAfterCancel(
          conn,
          b,
          (data && data.operatorName) || '管理员'
        )
        relocked = !!(rr && rr.relocked)
      } catch (e) {
        console.error('relock after cancel fail', e && e.message)
      }

      await conn.commit()
      return { ok: true, ledgerError, relocked, fnVer: FN_VER }
    }

    if (action === 'add') {
      if (!data || !data.venueId || !data.court || !data.date || !data.time || !data.userName) {
        return { ok: false, msg: '参数不完整' }
      }
      // 防止锁场被写成普通预约
      const isLockIntent = data.userName === '锁场' || data.source === 'lock' || String(data.remark || '').startsWith('[锁场]')
      if (isLockIntent) {
        return { ok: false, msg: '锁场请使用 lock 动作，不能用普通预约', fnVer: FN_VER }
      }
      const dateYmd = fmtDate(data.date) || data.date
      const courtNorm = normCourt(data.court)
      const courtName = await resolveCourtName(conn, data.venueId, data.court)
      if (!data.backfill && isSlotPast(dateYmd, data.time)) {
        data.backfill = true
      }
      const slotGuard = await rejectInvalidBookingSlot(conn, {
        venueId: data.venueId,
        court: courtName,
        dateYmd,
        timeStr: data.time,
        requirePrice: true,
        skipPast: !!data.backfill,
      })
      if (!slotGuard.ok) return { ok: false, msg: slotGuard.msg, fnVer: FN_VER }
      let slotLock = null
      try {
      await conn.beginTransaction()
      try {
        slotLock = await acquireSlotLock(conn, data.venueId, dateYmd, data.time, courtNorm)
      } catch (e) {
        await conn.rollback()
        return { ok: false, msg: e.message || '系统繁忙，请稍后重试', fnVer: FN_VER }
      }

      const [gcAll] = await conn.query(
        `SELECT id, time FROM group_classes
          WHERE venue_id=? AND date=? AND (court=? OR court=CONCAT(?,'场')) AND status='open'`,
        [data.venueId, dateYmd, courtNorm, courtNorm]
      )
      const gc = pickOverlapping(gcAll, data.time)
      if (gc.length) {
        await conn.rollback()
        return { ok: false, msg: '该时段为团课，请从团课格子报名' }
      }

      const [busyAll] = await conn.query(
        `SELECT id, time FROM bookings
          WHERE venue_id=? AND date=? AND (court=? OR court=CONCAT(?,'场')) AND status IN ('booked','locked','pending_pay')`,
        [data.venueId, dateYmd, courtNorm, courtNorm]
      )
      const busy = pickOverlapping(busyAll, data.time)
      if (busy.length && !isOutdoorSharedCourt(courtName) && !isOutdoorSharedCourt(data.court)) {
        await conn.rollback()
        return { ok: false, msg: '该时段已被预约' }
      }

      let userIdVal = null
      if (data.memberId != null && /^\d+$/.test(String(data.memberId).trim())) {
        userIdVal = Number(String(data.memberId).trim())
      }
      userIdVal = await resolveUserId(conn, userIdVal, data.memberOpenid || data.openid || '')

      let coachIdVal = null
      if (data.coachId != null && /^\d+$/.test(String(data.coachId).trim())) {
        coachIdVal = Number(String(data.coachId).trim())
      }

      if (coachIdVal) {
        const conflict = await findCoachTimeConflict(conn, coachIdVal, dateYmd, data.time, null)
        if (conflict) {
          await conn.rollback()
          return { ok: false, msg: conflict, fnVer: FN_VER }
        }
      }

      if (data.issueTemplateId) {
        const [tplRows] = await conn.query('SELECT * FROM card_templates WHERE id=? LIMIT 1', [data.issueTemplateId])
        const tpl = tplRows[0]
        if (!tpl) {
          await conn.rollback()
          return { ok: false, msg: '发卡模板不存在', fnVer: FN_VER }
        }
        const times = Number(data.issueTotalTimes || tpl.total_times || 0)
        let timeRule = tpl.time_rule
        if (timeRule && typeof timeRule === 'object') timeRule = JSON.stringify(timeRule)
        const payPrice = money(data.issuePrice != null ? data.issuePrice : data.amount)
        const prepared = await prepareIssueCardDates(
          conn, tpl, data.venueId, data.issueValidFrom, data.issueValidTo,
          { activateMode: data.activateMode, durationDays: data.durationDays },
          data.remark || '订场同时发卡'
        )
        if (prepared.error) {
          await conn.rollback()
          return { ok: false, msg: prepared.error, fnVer: FN_VER }
        }
        const [issued] = await conn.query(
          `INSERT INTO member_cards (
            user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type,
            total_times, remaining_times, valid_from, valid_to, time_rule,
            status, source, remark, issuer_name, price
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'active', 'admin_give', ?, ?, ?)`,
          [
            userIdVal,
            data.memberOpenid || '',
            data.userName || '',
            data.venueId,
            data.venueName || '',
            tpl.id,
            tpl.name,
            tpl.type,
            times,
            times,
            prepared.from,
            prepared.to,
            timeRule || null,
            prepared.remark + sourceText(data),
            data.operatorName || '管理员',
            payPrice
          ]
        )
        if (!data.cardId && (data.useIssuedCard || data.useIssuedCard == null)) data.cardId = issued.insertId
        if (payPrice > 0) {
          await writeLedger(conn, {
            bizDate: dateYmd,
            type: 'issue_card',
            amount: payPrice,
            venueId: data.venueId,
            venueName: data.venueName || '',
            userId: userIdVal,
            userName: data.userName || '',
            operatorName: data.operatorName || '管理员',
            cardId: issued.insertId,
            remark: (tpl.name || '会员卡') + ' 订场发卡'
          })
        }

        await writeLog(conn, {
          type: 'issue_card',
          userName: data.userName || '',
          operatorName: data.operatorName || '管理员',
          phone: data.phone || '',
          detail: '发卡 ' + (tpl.name || '') + (payPrice ? ' 收款' + payPrice + '元' : '') + sourceText(data),
          venueId: data.venueId,
          venueName: data.venueName || '',
          amount: payPrice,
          cardName: tpl.name || ''
        })      }

      let cardIdVal = null
      let cardName = data.cardName || ''
      let cardType = data.cardType || ''
      let cardRemaining = null
      let bookCard = null

      if (data.cardId) {
        const [cards] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [
          data.cardId
        ])
        const card = cards[0]
        if (!card) {
          await conn.rollback()
          return { ok: false, msg: '会员卡不可用' }
        }
        {
          const cardMsg = memberCardRejectMsg(card)
          if (cardMsg) {
            await conn.rollback()
            return { ok: false, msg: cardMsg, fnVer: FN_VER }
          }
        }
        if (card.type === 'group') {
          await conn.rollback()
          return { ok: false, msg: '团课卡不能用于普通订场' }
        }
        if (card.type === 'coach' && !coachIdVal) {
          await conn.rollback()
          return { ok: false, msg: '教练卡必须选择教练' }
        }
        if (coachIdVal && card.type !== 'coach') {
          await conn.rollback()
          return { ok: false, msg: '约教练只能使用教练卡' }
        }
        if (card.time_rule || card.type === 'time') {
          const timeRule = parseTimeRule(card.time_rule)
          if (timeRule && timeRule.mode === 'rules' && Array.isArray(timeRule.rules)) {
            const wd = weekdayMon1(dateYmd)
            const slotStart = String(data.time || '').split('-')[0]
            let matched = null
            for (const r of timeRule.rules) {
              if (!(r.weekdays || []).includes(wd)) continue
              const slots = r.timeSlots || []
              if (!slots.length) {
                if (r.unlimited) {
                  matched = r
                  break
                }
                continue
              }
              for (const s of slots) {
                if (slotStart >= s.start && slotStart < s.end) {
                  matched = r
                  break
                }
              }
              if (matched) break
            }
            if (!matched) {
              await conn.rollback()
              return { ok: false, msg: '当前日期/时段不在时间卡可用范围内' }
            }
            const maxH = Number(matched.maxHours) || 0
            if (maxH > 0) {
              const [usedRows] = await conn.query(
                `SELECT COUNT(*) AS cnt FROM bookings WHERE card_id=? AND date=? AND status='booked'`,
                [card.id, dateYmd]
              )
              const used = Number(usedRows[0] && usedRows[0].cnt) || 0
              if (used + 1 > maxH) {
                await conn.rollback()
                return { ok: false, msg: `时间卡今日最多可约 ${maxH} 小时，已约 ${used} 小时` }
              }
            }
          }
        }
        {
          const tr = parseTimeRule(card.time_rule) || {}
          const allowVenues = Array.isArray(tr.venueIds) ? tr.venueIds.filter(Boolean) : []
          const bookVenue = data.venueId || body.venueId || ''
          if (allowVenues.length && bookVenue && !allowVenues.includes(bookVenue)) {
            await conn.rollback()
            return { ok: false, msg: '这张卡不能在当前门店使用' }
          }
          if (tr.mode === 'dates' || (Array.isArray(tr.dateRanges) && tr.dateRanges.length)) {
            const okDate = (tr.dateRanges || []).some((rg) => rg.start && rg.end && dateYmd >= rg.start && dateYmd <= rg.end)
            if (!okDate) {
              await conn.rollback()
              return { ok: false, msg: '当天不在这张节假日卡的可用日期内' }
            }
          }
          const from = fmtDate(card.valid_from)
          const to = fmtDate(card.valid_to)
          if (from && dateYmd < from) {
            await conn.rollback()
            return { ok: false, msg: '这张卡还没到生效日期' }
          }
          if (to && dateYmd > to) {
            // 仅拒绝本次；今天已过期才整卡标 expired
            const today = todayYmd()
            if (today > to) {
              await conn.query(`UPDATE member_cards SET status='expired', updated_at=NOW() WHERE id=?`, [card.id])
            }
            await conn.rollback()
            return { ok: false, msg: today > to ? '这张卡已过期' : '所选日期超出这张卡的有效期' }
          }
          const dayCap = Number(tr.maxHoursPerDay) || 0
          if (dayCap > 0) {
            const slotHours = (time) => {
              const parts = String(time || '').split('-')
              if (parts.length < 2) return 1
              const toMin = (s) => {
                const hm = String(s).split(':')
                return Number(hm[0]) * 60 + Number(hm[1] || 0)
              }
              const diff = (toMin(parts[1]) - toMin(parts[0])) / 60
              return diff > 0 ? diff : 1
            }
            const [usedRows] = await conn.query(
              `SELECT time FROM bookings WHERE card_id=? AND date=? AND status='booked'`,
              [card.id, dateYmd]
            )
            const used = (usedRows || []).reduce((s, r) => s + slotHours(r.time), 0)
            if (used + slotHours(data.time) > dayCap + 0.001) {
              await conn.rollback()
              return { ok: false, msg: `该卡每天最多可约 ${dayCap} 小时，今日已约 ${used} 小时` }
            }
          }
        }
        {
          const courtInfo = await loadCourtInfo(conn, data.venueId, courtName || data.court)
          const sportHint = { sport: data.sport || body.sport || '', remark: data.remark || body.remark || '' }
          if (!courtTypeRule.cardAllowsCourt(card, courtInfo, sportHint)) {
            await conn.rollback()
            return { ok: false, msg: courtTypeRule.courtTypeRejectMsg(card, courtInfo) || '这张卡不能用于当前场地', fnVer: FN_VER }
          }
        }
        if (card.type === 'times' || card.type === 'coach') {
          let activateSql = ''
          const activateParams = []
          let tr = card.time_rule
          if (typeof tr === 'string') { try { tr = JSON.parse(tr) } catch (e) { tr = {} } }
          if (tr && tr.activateMode === 'first_use' && !card.valid_from && Number(tr.durationDays || card.duration_days) > 0) {
            const end = new Date(dateYmd + 'T00:00:00')
            end.setDate(end.getDate() + Number(tr.durationDays))
            const p = (n) => (n < 10 ? '0' + n : '' + n)
            const to = end.getFullYear() + '-' + p(end.getMonth() + 1) + '-' + p(end.getDate())
            activateSql = ', valid_from=?, valid_to=?'
            activateParams.push(dateYmd, to)
          }
          const [dec] = await conn.query(
            `UPDATE member_cards
                SET remaining_times = remaining_times - 1,
                    status = IF(remaining_times <= 0, 'used_up', 'active')${activateSql},
                    updated_at = NOW()
              WHERE id=? AND IFNULL(remaining_times,0) > 0 AND status='active'`,
            activateParams.concat([card.id])
          )
          if (!dec || Number(dec.affectedRows) !== 1) {
            await conn.rollback()
            return { ok: false, msg: '卡次数不足', fnVer: FN_VER }
          }
          const [afterRows] = await conn.query(
            'SELECT remaining_times FROM member_cards WHERE id=? LIMIT 1',
            [card.id]
          )
          cardRemaining = Number(afterRows[0] && afterRows[0].remaining_times) || 0
        }
        if (card.type === 'time') {
          let tr = card.time_rule
          if (typeof tr === 'string') { try { tr = JSON.parse(tr) } catch (e) { tr = {} } }
          const days = Number(tr && tr.durationDays) || 0
          if (tr && tr.activateMode === 'first_use' && !card.valid_from && days > 0) {
            const end = new Date(dateYmd + 'T00:00:00')
            end.setDate(end.getDate() + days)
            const p = (n) => (n < 10 ? '0' + n : '' + n)
            const to = end.getFullYear() + '-' + p(end.getMonth() + 1) + '-' + p(end.getDate())
            await conn.query('UPDATE member_cards SET valid_from=?, valid_to=?, updated_at=NOW() WHERE id=?', [dateYmd, to, card.id])
          }
        }
        cardIdVal = card.id
        cardName = card.card_name || cardName
        cardType = card.type || cardType
        bookCard = card
      }

      const rawAmt = data.amount != null ? data.amount : (data.payAmount != null ? data.payAmount : body.amount)
      const hasTyped = rawAmt != null && rawAmt !== ''
      const typedCash = hasTyped ? money(rawAmt) : null
      const slotPrice = await getSlotPrice(conn, data.venueId, courtName, dateYmd, data.time)
      let bookAmount
      if (data.useIssuedCard || (data.issueTemplateId && cardIdVal && !data.cardId)) {
        bookAmount = 0
      } else if (hasTyped) {
        bookAmount = typedCash
      } else if (cardIdVal) {
        bookAmount = 0
      } else {
        bookAmount = slotPrice
      }
      let balanceUsed = 0
      if (data.useBalance && !cardIdVal) {
        if (!userIdVal) {
          await conn.rollback()
          return { ok: false, msg: '用余额订场要先选会员', fnVer: FN_VER }
        }
        const [us] = await conn.query('SELECT IFNULL(balance,0) AS balance FROM users WHERE id=? FOR UPDATE', [userIdVal])
        const bal = money(us[0] && us[0].balance)
        const storedBal = await storedCardBalance(conn, userIdVal)
        const spendable = money(bal + storedBal)
        const need = bookAmount > 0 ? bookAmount : slotPrice
        if (need <= 0) {
          await conn.rollback()
          return { ok: false, msg: '本场没有可扣的金额', fnVer: FN_VER }
        }
        if (spendable + 1e-9 < need) {
          await conn.rollback()
          return { ok: false, msg: '余额不足，还差' + money(need - spendable) + '元', fnVer: FN_VER }
        }
        const fromWallet = money(Math.min(bal, need))
        const fromStored = money(need - fromWallet)
        if (fromWallet > 0) {
          await conn.query('UPDATE users SET balance=IFNULL(balance,0)-?, updated_at=NOW() WHERE id=?', [fromWallet, userIdVal])
        }
        if (fromStored > 0) await deductStoredCards(conn, userIdVal, fromStored)
        balanceUsed = need
        bookAmount = 0
        data.remark = (data.remark || '') + ' [余额抵扣' + need + ']'
      }
      const cash = bookAmount

      const [res] = await conn.query(
        `INSERT INTO bookings (
          venue_id, venue_name, court, date, time,
          user_id, openid, user_name, phone, status,
          card_id, card_name, card_type, coach_id, coach_name,
          source, operator_name, remark, amount
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'booked', ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
        [
          data.venueId,
          data.venueName || '',
          courtName,
          dateYmd,
          data.time,
          userIdVal,
          data.memberOpenid || '',
          data.userName || '',
          await resolvePhone(conn, data.phone, userIdVal, ''),
          cardIdVal,
          cardName,
          cardType,
          coachIdVal,
          data.coachName || '',
          data.backfill ? 'backfill' : 'admin',
          data.operatorName || '管理员',
          (function () {
            const r = data.remark || data.orderNo || ''
            if (!data.backfill) return r
            return String(r).indexOf('[补录]') === 0 ? r : ('[补录] ' + r)
          })(),
          bookAmount
        ]
      )

      let detail = (data.backfill ? '补录 ' : '预约 ') + (data.court || '') + ' ' + fmtDateCn(dateYmd) + ' ' + (data.time || '')
      if (data.coachName) detail += ' · 教练' + data.coachName
      if (cardName) detail += ' · ' + cardName
      const phoneVal = await resolvePhone(conn, data.phone, userIdVal, data.userName)
      await writeLog(conn, {
        type: 'booking_add',
        userName: data.userName || '',
        operatorName: data.operatorName || '管理员',
        phone: phoneVal,
        detail,
        venueId: data.venueId,
        venueName: data.venueName || '',
        amount: cardIdVal ? cardUnit(bookCard) : bookAmount,
        cardName: cardName || ''
      })

      let ledgerError = null
      if (balanceUsed > 0) {
        ledgerError = await writeLedger(conn, {
          bizDate: dateYmd,
          type: 'balance_out',
          amount: balanceUsed,
          venueId: data.venueId,
          venueName: data.venueName || '',
          userId: userIdVal,
          userName: data.userName || '',
          operatorName: data.operatorName || '管理员',
          bookingId: res.insertId,
          remark: '余额订场 ' + (data.court || '') + ' ' + (data.time || '') + ' 不计营业额'
        })
      }
      if (cash > 0) {
        ledgerError = await writeLedger(conn, {
          bizDate: dateYmd,
          type: 'court_pay',
          amount: cash,
          venueId: data.venueId,
          venueName: data.venueName || '',
          userId: userIdVal,
          userName: data.userName || '',
          operatorName: data.operatorName || '管理员',
          cardId: cardIdVal,
          bookingId: res.insertId,
          remark: '订场实收现金 ' + (data.court || '') + ' ' + (data.time || '')
        })
      }
      if (cardIdVal) {
        const useErr = await writeLedger(conn, {
          bizDate: dateYmd,
          type: 'card_use',
          amount: cardUnit(bookCard),
          venueId: data.venueId,
          venueName: data.venueName || '',
          userId: userIdVal,
          userName: data.userName || '',
          operatorName: data.operatorName || '管理员',
          cardId: cardIdVal,
          bookingId: res.insertId,
          remark: (data.court || '') + ' ' + (data.time || '') + (cardName ? ' · ' + cardName : '')
        })
        if (useErr) ledgerError = useErr
      }

      await conn.commit()
      return {
        ok: true,
        id: String(res.insertId),
        amount: bookAmount,
        cardRemaining,
        ledgerError,
        fnVer: FN_VER
      }
      } finally {
        await releaseSlotLock(conn, slotLock)
      }
    }

    if (action === '_retired_fixCardCashDup') {
      const [rows] = await conn.query(
        `SELECT b.id, b.amount, b.card_id, c.price
           FROM bookings b
           JOIN member_cards c ON c.id = b.card_id
          WHERE b.status <> 'cancelled' AND b.card_id IS NOT NULL AND b.amount >= 1
            AND ABS(b.amount - c.price) < 0.02`
      )
      let n = 0
      const ids = []
      for (const r of rows) {
        await conn.query('UPDATE bookings SET amount=0 WHERE id=?', [r.id])
        await conn.query(
          `DELETE FROM finance_ledger WHERE booking_id=? AND type='court_pay' AND ABS(amount-?)<0.02`,
          [r.id, r.amount]
        )
        ids.push(r.id)
        n += 1
      }
      return { ok: true, fnVer: FN_VER, fixed: n, ids }
    }

    if (action === '_retired_repairUser6168') {
      await conn.beginTransaction()
      // 1. 删掉重复的第一笔 31.9 发卡，以及对应的退卡，净值不变
      await conn.query('DELETE FROM finance_ledger WHERE id IN (2097, 2101)')
      await conn.query("DELETE FROM activity_logs WHERE id IN (2275, 2280, 2281)")
      // 2. 34.9 那张卡挂到 15:00 发球机1号场
      await conn.query(
        `UPDATE bookings SET card_id=2196, card_name='闲时 1 小时发球机', card_type='times', amount=0 WHERE id=1386`
      )
      await conn.query(
        `UPDATE member_cards SET remaining_times=0, status='used_up' WHERE id=2196`
      )
      // 3. 补 34.9 和 46.9 的用卡流水（没有才补）
      const uses = [
        [2196, 34.9, 1386, '发球机1号场 15:00-16:00 · 闲时 1 小时发球机'],
        [2197, 46.9, 1389, '发球机1号场 20:00-21:00 · 全时段 1 小时发球机']
      ]
      for (const u of uses) {
        const [ex] = await conn.query(
          `SELECT id FROM finance_ledger WHERE type='card_use' AND card_id=? AND booking_id=? LIMIT 1`,
          [u[0], u[2]]
        )
        if (!ex.length) {
          await conn.query(
            `INSERT INTO finance_ledger
              (biz_date, type, amount, venue_id, venue_name, user_id, user_name, operator_name, card_id, booking_id, remark)
             VALUES ('2026-10-29','card_use',?,'venue_chenjiaci','GotGoat网球馆（陈家祠店）',12814,'13773716150_6168','管理员补扣',?,?,?)`,
            [u[1], u[0], u[2], u[3]]
          )
        }
      }
      await conn.commit()
      return { ok: true, fnVer: FN_VER, fixed: ['del 2097+2101', 'link 2196->1386', 'card_use 34.9/46.9'] }
    }

    if (action === '_retired_deleteLedger') {
      const ledgerId = data && data.ledgerId
      if (!ledgerId) return { ok: false, msg: '缺少流水', fnVer: FN_VER }
      const [rows] = await conn.query('SELECT * FROM finance_ledger WHERE id=? LIMIT 1', [ledgerId])
      const row = rows[0]
      if (!row) return { ok: false, msg: '流水不存在', fnVer: FN_VER }
      await conn.query('DELETE FROM finance_ledger WHERE id=?', [ledgerId])
      try {
        await conn.query(
          `DELETE FROM activity_logs
            WHERE type='issue_card' AND user_name=? AND amount=? AND DATE(created_at)=?
              AND detail LIKE '%闲时 1 小时发球机%'
            ORDER BY id ASC LIMIT 1`,
          [row.user_name || '', row.amount, row.biz_date]
        )
      } catch (e) {}
      return { ok: true, fnVer: FN_VER, deleted: ledgerId, amount: row.amount, remark: row.remark }
    }

    if (action === '_retired_repairUseCard') {
      const bookingId = data && data.bookingId
      const cardId = data && data.cardId
      if (!bookingId || !cardId) return { ok: false, msg: '缺少预约或卡', fnVer: FN_VER }
      await conn.beginTransaction()
      const [brows] = await conn.query('SELECT * FROM bookings WHERE id=? FOR UPDATE', [bookingId])
      const b = brows[0]
      if (!b) { await conn.rollback(); return { ok: false, msg: '预约不存在', fnVer: FN_VER } }
      const [crows] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [cardId])
      const card = crows[0]
      if (!card) { await conn.rollback(); return { ok: false, msg: '卡不存在', fnVer: FN_VER } }
      const left = Math.max(0, (Number(card.remaining_times) || 0) - 1)
      await conn.query(
        `UPDATE member_cards SET remaining_times=?, status=?, updated_at=NOW() WHERE id=?`,
        [left, left <= 0 ? 'used_up' : 'active', card.id]
      )
      await conn.query(
        `UPDATE bookings SET card_id=?, card_name=?, card_type=?, amount=0, updated_at=NOW() WHERE id=?`,
        [card.id, card.card_name || '', card.type || '', b.id]
      )
      const unit = (Number(card.total_times) > 0) ? money(money(card.price) / Number(card.total_times)) : money(card.price)
      await writeLedger(conn, {
        bizDate: fmtDate(b.date), type: 'card_use', amount: unit,
        venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
        operatorName: '管理员补扣', cardId: card.id, bookingId: b.id,
        remark: '补扣 ' + (card.card_name || '')
      })
      await writeLog(conn, {
        type: 'booking_add', userName: b.user_name, operatorName: '管理员补扣', phone: b.phone,
        detail: '补扣用卡 ' + (card.card_name || '') + ' ' + (b.court || '') + ' ' + (b.time || ''),
        venueId: b.venue_id, venueName: b.venue_name, amount: 0, cardName: card.card_name || ''
      })
      await conn.commit()
      return { ok: true, fnVer: FN_VER, bookingId: b.id, cardId: card.id, remaining: left }
    }

    if (action === 'update') {
      if (!id) return { ok: false, msg: '缺少预约ID', fnVer: FN_VER }
      await conn.beginTransaction()
      const [rows] = await conn.query('SELECT * FROM bookings WHERE id=? FOR UPDATE', [id])
      const b = rows[0]
      if (!b) {
        await conn.rollback()
        return { ok: false, msg: '预约不存在', fnVer: FN_VER }
      }
      if (b.status === 'cancelled' || b.status === 'done' || b.status === 'completed') {
        await conn.rollback()
        return { ok: false, msg: '已取消或已完成不能改', fnVer: FN_VER }
      }
      const startHm = String(b.time || '').split('-')[0] || '00:00'
      const startAt = new Date(String(fmtDate(b.date)).replace(/-/g, '/') + ' ' + startHm)
      const started = !Number.isNaN(startAt.getTime()) && startAt.getTime() <= Date.now()
      const courtNorm = normCourt((data && data.court) || b.court)
      const court = await resolveCourtName(conn, b.venue_id, (data && data.court) || b.court)
      const dateYmd = fmtDate((data && data.date) || b.date) || b.date
      const time = (data && data.time) || b.time
      const remark = data && data.remark != null ? data.remark : b.remark
      const amount = data && data.amount != null ? money(data.amount) : money(b.amount)
      const slotChanged = courtNorm !== normCourt(b.court) || String(dateYmd) !== String(fmtDate(b.date)) || time !== b.time
      let slotLock = null
      try {
      if (started && slotChanged) {
        await conn.rollback()
        return { ok: false, msg: '已开始的预约不能改场地和时段，可以改用卡和金额', fnVer: FN_VER }
      }
      if (slotChanged) {
        try {
          slotLock = await acquireSlotLock(conn, b.venue_id, dateYmd, time, courtNorm)
        } catch (e) {
          await conn.rollback()
          return { ok: false, msg: e.message || '系统繁忙，请稍后重试', fnVer: FN_VER }
        }
        const [busyAll] = await conn.query(
          `SELECT id, time FROM bookings WHERE venue_id=? AND date=? AND (court=? OR court=CONCAT(?,'场')) AND status IN ('booked','locked','pending_pay') AND id<>?`,
          [b.venue_id, dateYmd, courtNorm, courtNorm, id]
        )
        const busy = pickOverlapping(busyAll, time)
        if (busy.length && !isOutdoorSharedCourt(court) && !isOutdoorSharedCourt((data && data.court) || b.court)) {
          await conn.rollback()
          return { ok: false, msg: '目标时段已被占用', fnVer: FN_VER }
        }
      }
      let cardId = b.card_id
      let cardName = b.card_name
      let cardType = b.card_type
      if (data && Object.prototype.hasOwnProperty.call(data, 'cardId') && String(data.cardId || '') !== String(b.card_id || '')) {
        if (b.card_id) {
          const [oldRows] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [b.card_id])
          const old = oldRows[0]
          if (old && (old.type === 'times' || old.type === 'coach' || old.type === 'group')) {
            const left = (old.remaining_times || 0) + 1
            await conn.query(
              `UPDATE member_cards SET remaining_times=?, status='active', updated_at=NOW() WHERE id=?`,
              [left, old.id]
            )
          }
        }
        if (data.cardId) {
          const [newRows] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [data.cardId])
          const neu = newRows[0]
          if (!neu || (neu.status !== 'active' && neu.status !== 'disabled')) {
            await conn.rollback()
            return { ok: false, msg: '新卡不可用', fnVer: FN_VER }
          }
          if (neu.type === 'times' || neu.type === 'coach') {
            const [dec] = await conn.query(
              `UPDATE member_cards
                  SET remaining_times = remaining_times - 1,
                      status = IF(remaining_times <= 0, 'used_up', 'active'),
                      updated_at = NOW()
                WHERE id=? AND IFNULL(remaining_times,0) > 0 AND status='active'`,
              [neu.id]
            )
            if (!dec || Number(dec.affectedRows) !== 1) {
              await conn.rollback()
              return { ok: false, msg: '新卡次数不足', fnVer: FN_VER }
            }
          }
          cardId = neu.id
          cardName = neu.card_name
          cardType = neu.type
        } else {
          cardId = null
          cardName = ''
          cardType = ''
        }
      }
      let coachIdVal = b.coach_id || null
      let coachNameVal = b.coach_name || ''
      if (data && Object.prototype.hasOwnProperty.call(data, 'coachId')) {
        const raw = data.coachId
        coachIdVal = raw != null && String(raw).trim() !== '' && /^\d+$/.test(String(raw).trim()) ? Number(String(raw).trim()) : null
        coachNameVal = data.coachName || ''
      }
      const finalType = cardType || b.card_type
      if (finalType === 'coach' && !coachIdVal) {
        await conn.rollback()
        return { ok: false, msg: '教练卡请选择教练', fnVer: FN_VER }
      }
      if (finalType !== 'coach') {
        coachIdVal = coachIdVal
      }
      if (coachIdVal && (slotChanged || String(coachIdVal) !== String(b.coach_id || ''))) {
        const conflict = await findCoachTimeConflict(conn, coachIdVal, dateYmd, time, id)
        if (conflict) {
          await conn.rollback()
          return { ok: false, msg: conflict, fnVer: FN_VER }
        }
      }
      await conn.query(
        `UPDATE bookings SET court=?, date=?, time=?, remark=?, amount=?, card_id=?, card_name=?, card_type=?, coach_id=?, coach_name=?, operator_name=? WHERE id=?`,
        [court, dateYmd, time, remark || '', amount, cardId, cardName || '', cardType || '', coachIdVal, coachNameVal || '', (data && data.operatorName) || '管理员', id]
      )
      if (money(b.amount) !== amount) {
        await writeLedger(conn, {
          bizDate: dateYmd,
          type: 'court_adjust',
          amount: money(amount - money(b.amount)),
          venueId: b.venue_id || '',
          venueName: b.venue_name || '',
          userId: b.user_id || null,
          userName: b.user_name || '',
          operatorName: (data && data.operatorName) || '管理员',
          cardId: cardId,
          bookingId: b.id,
          remark: '改金额 ' + money(b.amount) + '→' + amount
        })
      }
      if (data && data.issueTemplateId) {
        const [tplRows] = await conn.query('SELECT * FROM card_templates WHERE id=? LIMIT 1', [data.issueTemplateId])
        const tpl = tplRows[0]
        if (!tpl) {
          await conn.rollback()
          return { ok: false, msg: '发卡模板不存在', fnVer: FN_VER }
        }
        if (tpl.type === 'coach' && !coachIdVal) {
          await conn.rollback()
          return { ok: false, msg: '教练卡请选择教练', fnVer: FN_VER }
        }
        const times = Number(tpl.total_times || 0)
        let timeRule = tpl.time_rule
        if (timeRule && typeof timeRule === 'object') timeRule = JSON.stringify(timeRule)
        const payPrice = money(data.issuePrice != null ? data.issuePrice : 0)
        const prepared = await prepareIssueCardDates(
          conn, tpl, b.venue_id, data.issueValidFrom, data.issueValidTo,
          { activateMode: data.activateMode, durationDays: data.durationDays },
          '详情同时发卡并扣一次'
        )
        if (prepared.error) {
          await conn.rollback()
          return { ok: false, msg: prepared.error, fnVer: FN_VER }
        }
        const [issued] = await conn.query(
          `INSERT INTO member_cards (
            user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type,
            total_times, remaining_times, valid_from, valid_to, time_rule,
            status, source, remark, issuer_name, price
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'active', 'admin_give', ?, ?, ?)`,
          [
            b.user_id, b.openid || '', b.user_name || '', b.venue_id, b.venue_name || '',
            tpl.id, tpl.name, tpl.type, times, Math.max(0, times - 1),
            prepared.from, prepared.to, timeRule || null, prepared.remark + sourceText(data),
            (data && data.operatorName) || '管理员', payPrice
          ]
        )
        cardId = issued.insertId
        cardName = tpl.name
        cardType = tpl.type
        if (payPrice > 0) {
          await writeLedger(conn, {
            bizDate: dateYmd, type: 'issue_card', amount: payPrice,
            venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
            operatorName: (data && data.operatorName) || '管理员', cardId: issued.insertId,
            bookingId: id, remark: (tpl.name || '') + ' 详情同时发卡'
          })
        }
        await conn.query(
          `UPDATE bookings SET card_id=?, card_name=?, card_type=?, coach_id=?, coach_name=? WHERE id=?`,
          [cardId, cardName || '', cardType || '', coachIdVal, coachNameVal || '', id]
        )
        await writeLog(conn, {
          type: 'issue_card', userName: b.user_name, operatorName: (data && data.operatorName) || '管理员',
          phone: b.phone, detail: '预约同时发卡 ' + (tpl.name || '') + (payPrice ? ' 收款' + payPrice + '元' : '') + sourceText(data),
          venueId: b.venue_id, venueName: b.venue_name
        })
      }
      await conn.commit()
      return { ok: true, fnVer: FN_VER }
      } finally {
        await releaseSlotLock(conn, slotLock)
      }
    }

    if (action === 'refund_cash_keep_card' || action === 'refund_card_keep_cash') {
      if (!id) return { ok: false, msg: '缺少预约ID', fnVer: FN_VER }
      await conn.beginTransaction()
      const [rows] = await conn.query('SELECT * FROM bookings WHERE id=? FOR UPDATE', [id])
      const b = rows[0]
      if (!b) { await conn.rollback(); return { ok: false, msg: '预约不存在', fnVer: FN_VER } }
      if (b.status === 'cancelled') { await conn.rollback(); return { ok: false, msg: '已取消不能改', fnVer: FN_VER } }
      const op = (data && data.operatorName) || '管理员'
      if (action === 'refund_cash_keep_card') {
        const amt = money(b.amount)
        if (amt <= 0) { await conn.rollback(); return { ok: false, msg: '这笔预约没有可退现金', fnVer: FN_VER } }
        if (!(data && data.issueTemplateId)) { await conn.rollback(); return { ok: false, msg: '请选择要发的卡', fnVer: FN_VER } }
        if (b.card_id) {
          const [oldRows] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [b.card_id])
          const old = oldRows[0]
          if (old && (old.type === 'times' || old.type === 'coach' || old.type === 'group')) {
            const left = Number(old.remaining_times || 0) + 1
            await conn.query(`UPDATE member_cards SET remaining_times=?, status='active', updated_at=NOW() WHERE id=?`, [left, old.id])
          }
        }
        const [tplRows] = await conn.query('SELECT * FROM card_templates WHERE id=? LIMIT 1', [data.issueTemplateId])
        const tpl = tplRows[0]
        if (!tpl) { await conn.rollback(); return { ok: false, msg: '发卡模板不存在', fnVer: FN_VER } }
        let coachIdVal = null
        if (data.coachId != null && /^\d+$/.test(String(data.coachId).trim())) coachIdVal = Number(String(data.coachId).trim())
        if (tpl.type === 'coach' && !coachIdVal) { await conn.rollback(); return { ok: false, msg: '教练卡请选择教练', fnVer: FN_VER } }
        const times = Number(tpl.total_times || 0)
        let remain = times
        if (tpl.type === 'times' || tpl.type === 'coach' || tpl.type === 'group') {
          remain = times - 1
          if (remain < 0) { await conn.rollback(); return { ok: false, msg: '该卡模板次数为 0，不能扣次', fnVer: FN_VER } }
        }
        let timeRule = tpl.time_rule
        if (timeRule && typeof timeRule === 'object') timeRule = JSON.stringify(timeRule)
        const issuePrice = money(data.issuePrice)
        const prepared = await prepareIssueCardDates(
          conn, tpl, b.venue_id, data.issueValidFrom, data.issueValidTo,
          { activateMode: data.activateMode, durationDays: data.durationDays },
          '只退款改发卡'
        )
        if (prepared.error) {
          await conn.rollback()
          return { ok: false, msg: prepared.error, fnVer: FN_VER }
        }
        const [issued] = await conn.query(
          `INSERT INTO member_cards (
            user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type,
            total_times, remaining_times, valid_from, valid_to, time_rule,
            status, source, remark, issuer_name, price
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'admin_give', ?, ?, ?)`,
          [
            b.user_id, b.openid || '', b.user_name || '', b.venue_id, b.venue_name || '',
            tpl.id, tpl.name, tpl.type, times, remain, prepared.from, prepared.to, timeRule || null,
            remain <= 0 ? 'used_up' : 'active', prepared.remark + sourceText(data), op, issuePrice
          ]
        )
        await conn.query(
          `UPDATE bookings SET amount=0, card_id=?, card_name=?, card_type=?, coach_id=?, coach_name=?, operator_name=?, updated_at=NOW() WHERE id=?`,
          [issued.insertId, tpl.name || '', tpl.type || '', coachIdVal, data.coachName || '', op, id]
        )
        await writeLedger(conn, {
          bizDate: fmtDate(b.date), type: 'court_refund', amount: -amt,
          venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
          operatorName: op, cardId: issued.insertId, bookingId: id, remark: '只退款 ' + amt + ' 改发卡'
        })
        if (issuePrice > 0) {
          await writeLedger(conn, {
            bizDate: fmtDate(b.date), type: 'issue_card', amount: issuePrice,
            venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
            operatorName: op, cardId: issued.insertId, bookingId: id, remark: '只退款并发 ' + (tpl.name || '')
          })
        }
        await writeLog(conn, {
          type: 'booking_convert', userName: b.user_name, operatorName: op, phone: b.phone,
          detail: '只退款' + amt + '元 发卡「' + (tpl.name || '') + '」' + issuePrice + '元 扣1次' + sourceText(data),
          venueId: b.venue_id, venueName: b.venue_name
        })
        await conn.commit()
        return { ok: true, fnVer: FN_VER }
      }
      if (!b.card_id) { await conn.rollback(); return { ok: false, msg: '这笔预约没有卡可退', fnVer: FN_VER } }
      const cashAmt = money(data && data.amount != null ? data.amount : b.amount)
      const [cards] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [b.card_id])
      const card = cards[0]
      if (card && (card.type === 'times' || card.type === 'coach' || card.type === 'group')) {
        const left = Number(card.remaining_times || 0) + 1
        await conn.query(`UPDATE member_cards SET remaining_times=?, status='active', updated_at=NOW() WHERE id=?`, [left, card.id])
      }
      const oldAmt = money(b.amount)
      await conn.query(
        `UPDATE bookings SET card_id=NULL, card_name='', card_type='', coach_id=NULL, coach_name='', amount=?, operator_name=?, updated_at=NOW() WHERE id=?`,
        [cashAmt, op, id]
      )
      await writeLedger(conn, {
        bizDate: fmtDate(b.date), type: 'card_use_cancel', amount: 0,
        venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
        operatorName: op, cardId: b.card_id, bookingId: id, remark: '只退卡 ' + (b.card_name || '')
      })
      const delta = money(cashAmt - oldAmt)
      if (delta !== 0) {
        await writeLedger(conn, {
          bizDate: fmtDate(b.date), type: delta > 0 ? 'court_pay' : 'court_refund', amount: delta,
          venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
          operatorName: op, cardId: null, bookingId: id, remark: '只退卡改收款 ' + oldAmt + '→' + cashAmt
        })
      }
      await writeLog(conn, {
        type: 'booking_convert', userName: b.user_name, operatorName: op, phone: b.phone,
        detail: '只退卡「' + (b.card_name || '') + '」 收款' + cashAmt + '元',
        venueId: b.venue_id, venueName: b.venue_name
      })
      await conn.commit()
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'convert_to_card' || action === 'convert_to_cash') {
      await conn.beginTransaction()
      const [rows] = await conn.query('SELECT * FROM bookings WHERE id=? FOR UPDATE', [id])
      const b = rows[0]
      if (!b) { await conn.rollback(); return { ok: false, msg: '预约不存在', fnVer: FN_VER } }
      if (b.status === 'cancelled') { await conn.rollback(); return { ok: false, msg: '已取消', fnVer: FN_VER } }
      const op = (data && data.operatorName) || '管理员'
      if (action === 'convert_to_cash') {
        if (!b.card_id) { await conn.rollback(); return { ok: false, msg: '这笔预约没有用卡', fnVer: FN_VER } }
        const [cards] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [b.card_id])
        const card = cards[0]
        if (card && (card.type === 'times' || card.type === 'coach' || card.type === 'group')) {
          const left = Number(card.remaining_times || 0) + 1
          await conn.query(`UPDATE member_cards SET remaining_times=?, status='active', updated_at=NOW() WHERE id=?`, [left, card.id])
        }
        await conn.query(`UPDATE bookings SET card_id=NULL, card_name='', card_type='', updated_at=NOW(), operator_name=? WHERE id=?`, [op, id])
        await writeLedger(conn, {
          bizDate: fmtDate(b.date), type: 'card_use_cancel', amount: 0,
          venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
          operatorName: op, cardId: b.card_id, bookingId: id, remark: '退卡留场 ' + (b.court || '') + ' ' + (b.time || '')
        })
        await writeLog(conn, { type: 'booking_convert', userName: b.user_name, operatorName: op, phone: b.phone, detail: '退卡留场 ' + (b.court || '') + ' ' + (b.time || ''), venueId: b.venue_id, venueName: b.venue_name })
        await conn.commit()
        return { ok: true, fnVer: FN_VER }
      }
      const cardIdVal = Number(data && data.cardId) || 0
      if (!cardIdVal) { await conn.rollback(); return { ok: false, msg: '请选择要消耗的卡', fnVer: FN_VER } }
      const [cards] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [cardIdVal])
      const card = cards[0]
      if (!card || card.status !== 'active') { await conn.rollback(); return { ok: false, msg: '卡不可用', fnVer: FN_VER } }
      if (card.type === 'coach' && !(data && data.coachId)) { await conn.rollback(); return { ok: false, msg: '教练卡请选择教练', fnVer: FN_VER } }
      let remain = null
      if (card.type === 'times' || card.type === 'coach' || card.type === 'group') {
        const [dec] = await conn.query(
          `UPDATE member_cards
              SET remaining_times = remaining_times - 1,
                  status = IF(remaining_times <= 0, 'used_up', 'active'),
                  updated_at = NOW()
            WHERE id=? AND IFNULL(remaining_times,0) > 0 AND status='active'`,
          [card.id]
        )
        if (!dec || Number(dec.affectedRows) !== 1) {
          await conn.rollback()
          return { ok: false, msg: '卡次数不足', fnVer: FN_VER }
        }
        const [afterRows] = await conn.query('SELECT remaining_times FROM member_cards WHERE id=? LIMIT 1', [card.id])
        remain = Number(afterRows[0] && afterRows[0].remaining_times) || 0
      }
      const refundAmt = money(b.amount)
      await conn.query(
        `UPDATE bookings SET card_id=?, card_name=?, card_type=?, coach_id=?, amount=0, operator_name=?, updated_at=NOW() WHERE id=?`,
        [cardIdVal, card.card_name || '', card.type || '', data.coachId || null, op, id]
      )
      if (refundAmt > 0) {
        await writeLedger(conn, {
          bizDate: fmtDate(b.date), type: 'court_refund', amount: -refundAmt,
          venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
          operatorName: op, cardId: cardIdVal, bookingId: id, remark: '退款改用卡 ' + (b.court || '')
        })
      }
      await writeLedger(conn, {
        bizDate: fmtDate(b.date), type: 'card_use', amount: 0,
        venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
        operatorName: op, cardId: cardIdVal, bookingId: id, remark: '改用卡 ' + (card.card_name || '')
      })
      await writeLog(conn, { type: 'booking_convert', userName: b.user_name, operatorName: op, phone: b.phone, detail: '退款改用卡 ' + (card.card_name || ''), venueId: b.venue_id, venueName: b.venue_name })
      await conn.commit()
      return { ok: true, remaining: remain, fnVer: FN_VER }
    }

    if (action === 'listLocks') {
      const venueId = (data && data.venueId) || body.venueId || ''
      if (!venueId) return { ok: false, msg: '缺少场馆', fnVer: FN_VER, list: [] }
      const hasCol = await hasLockRuleIdColumn(conn, 'bookings')
      const extra = hasCol ? ', lock_rule_id' : ''
      const [rows] = await conn.query(
        `SELECT id, venue_id, venue_name, court, date, time, operator_name, remark, status, created_at${extra}
           FROM bookings
          WHERE venue_id=? AND (source='lock' OR status='locked' OR user_name='锁场')
            AND status <> 'cancelled'
          ORDER BY date DESC, time DESC, id DESC
          LIMIT 300`,
        [venueId]
      )
      return {
        ok: true,
        fnVer: FN_VER,
        list: (rows || []).map((r) => mapLockRowOut(r, hasCol))
      }
    }

    if (action === 'lock') {
      if (!data || !data.venueId || !data.court || !data.date || !data.time) {
        return { ok: false, msg: '参数不完整', fnVer: FN_VER }
      }
      const isCoachOutdoorLock = !!(coachPolicy && coachPolicy.coachLock)
      if (!isCoachOutdoorLock) {
        try {
          await assertOwnVenue(conn, data.operatorName, data.venueId)
        } catch (e) {
          return { ok: false, msg: e.message || '只能锁自己管理的场馆', fnVer: FN_VER }
        }
      }
      const dateYmd = fmtDate(data.date) || data.date
      const courtNorm = normCourt(data.court)
      const courtName = await resolveCourtName(conn, data.venueId, data.court)
      const slotGuard = await rejectInvalidBookingSlot(conn, {
        venueId: data.venueId,
        court: courtName,
        dateYmd,
        timeStr: data.time,
        requirePrice: false,
      })
      if (!slotGuard.ok) return { ok: false, msg: slotGuard.msg, fnVer: FN_VER }
      let slotLock = null
      try {
      await conn.beginTransaction()
      try {
        slotLock = await acquireSlotLock(conn, data.venueId, dateYmd, data.time, courtNorm)
      } catch (e) {
        await conn.rollback()
        return { ok: false, msg: e.message || '系统繁忙，请稍后重试', fnVer: FN_VER }
      }
      const [gcAll] = await conn.query(
        `SELECT id, time FROM group_classes WHERE venue_id=? AND date=? AND (court=? OR court=CONCAT(?,'场')) AND status='open'`,
        [data.venueId, dateYmd, courtNorm, courtNorm]
      )
      const gc = pickOverlapping(gcAll, data.time)
      if (gc.length) {
        await conn.rollback()
        return { ok: false, msg: '该时段为团课，不能锁场', fnVer: FN_VER }
      }
      const [busyAll] = await conn.query(
        `SELECT id, status, time, source, user_name, coach_id FROM bookings WHERE venue_id=? AND date=? AND (court=? OR court=CONCAT(?,'场')) AND status IN ('booked','locked','pending_pay')`,
        [data.venueId, dateYmd, courtNorm, courtNorm]
      )
      const busy = pickOverlapping(busyAll, data.time)
      if (isCoachOutdoorLock) {
        const selfId = coachPolicy.coachId
        const conflict = await findCoachTimeConflict(conn, selfId, dateYmd, data.time, null)
        if (conflict) {
          await conn.rollback()
          return { ok: false, msg: conflict, fnVer: FN_VER }
        }
        const [ownLocked] = await conn.query(
          `SELECT id FROM bookings WHERE date=? AND coach_id=? AND status='locked' AND time=? LIMIT 1`,
          [dateYmd, selfId, data.time]
        )
        // time overlap may not equal exact time; also scan busy rows
        for (const row of busy) {
          const dec = coachPerm.outdoorLockBusyDecision({
            status: row.status,
            source: row.source,
            userName: row.user_name,
            coachId: row.coach_id
          }, selfId)
          if (dec.block) {
            await conn.rollback()
            return { ok: false, msg: dec.msg, fnVer: FN_VER }
          }
        }
        if (ownLocked && ownLocked.length) {
          await conn.rollback()
          return { ok: false, msg: '该时段已锁场', fnVer: FN_VER }
        }
      } else if (busy.length) {
        if (busy[0].status === 'locked') {
          await conn.rollback()
          return { ok: false, msg: '该时段已锁场', fnVer: FN_VER }
        }
        // 已预约：记 lock_intent，取消后自动锁场
        try {
          await upsertLockIntent(conn, {
            venueId: data.venueId,
            venueName: data.venueName || '',
            court: courtName,
            date: dateYmd,
            time: data.time,
            operatorName: data.operatorName || '管理员',
            remark: data.remark || '[锁场] 批量锁场',
            bookingId: busy[0].id
          })
          await conn.commit()
          return {
            ok: true,
            pending: true,
            msg: '已预约，取消后自动锁场',
            bookingId: String(busy[0].id),
            fnVer: FN_VER
          }
        } catch (e) {
          await conn.rollback()
          return { ok: false, msg: '记录锁场意图失败：' + (e.message || ''), fnVer: FN_VER }
        }
      }
      const remark = data.remark || '[锁场] 锁场'
      let res
      const lockCoachId = isCoachOutdoorLock ? (coachPolicy.coachId || null) : (data.coachId || null)
      const lockCoachName = isCoachOutdoorLock ? (coachPolicy.coachName || data.coachName || '') : (data.coachName || '')
      try {
        if (lockCoachId) {
          const [r] = await conn.query(
            `INSERT INTO bookings (
              venue_id, venue_name, court, date, time,
              user_id, openid, user_name, phone, status,
              source, operator_name, remark, amount, coach_id, coach_name
            ) VALUES (?, ?, ?, ?, ?, NULL, '', '锁场', '', 'locked', 'lock', ?, ?, 0, ?, ?)`,
            [data.venueId, data.venueName || '', courtName, dateYmd, data.time, data.operatorName || '管理员', remark, lockCoachId, lockCoachName]
          )
          res = r
        } else {
          const [r] = await conn.query(
            `INSERT INTO bookings (
              venue_id, venue_name, court, date, time,
              user_id, openid, user_name, phone, status,
              source, operator_name, remark, amount
            ) VALUES (?, ?, ?, ?, ?, NULL, '', '锁场', '', 'locked', 'lock', ?, ?, 0)`,
            [data.venueId, data.venueName || '', courtName, dateYmd, data.time, data.operatorName || '管理员', remark]
          )
          res = r
        }
      } catch (e) {
        await conn.rollback()
        return { ok: false, msg: '锁场失败：' + (e.message || '状态写不进去'), fnVer: FN_VER }
      }
      await writeLog(conn, {
        type: 'lock',
        userName: '锁场',
        operatorName: data.operatorName || '管理员',
        detail: '锁场 ' + (courtNorm || '') + ' ' + dateYmd + ' ' + (data.time || '') + (data.remark ? ' · ' + data.remark : ''),
        venueId: data.venueId,
        venueName: data.venueName || ''
      })
      await conn.commit()
      return { ok: true, id: String(res.insertId), status: 'locked', fnVer: FN_VER }
      } finally {
        await releaseSlotLock(conn, slotLock)
      }
    }

    if (action === 'batchUnlock') {
      return await handleBatchUnlock(conn, data || {})
    }
    if (action === 'batchLock') {
      return await handleBatchLock(conn, data || {})
    }
    if (action === 'listLockRules') {
      return await handleListLockRules(conn, data || {})
    }
    if (action === 'saveLockRule') {
      return await handleSaveLockRule(conn, data || {})
    }
    if (action === 'deleteLockRule') {
      return await handleDeleteLockRule(conn, data || {})
    }

    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    try {
      await conn.rollback()
    } catch (e2) {}
    console.error(e)
    return { ok: false, msg: e.message || '操作失败', fnVer: FN_VER }
  } finally {
    conn.release()
  }
}
