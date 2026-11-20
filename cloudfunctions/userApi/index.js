const mysql = require('mysql2/promise')
const { autoCancelDueGroupClasses, isPastClass } = require('./groupClassAutoCancel')
const { expireDueCards } = require('./expireDueCards')
const courtTypeRule = require('./courtTypeRule')
const cardActivateHelper = require('./cardActivateHelper')
const settingsLib = require('./groupClassSettings')
const { loadNextFixedVenue } = require('./nextFixedVenue')
const venueBookingRule = require('./venueBookingRule')
const coachActions = require('./coachActions')
const mall = require('./cardMall')
const cardRefund = require('./cardRefund')
const bannerLink = require('./bannerLink')
const adminRole = require('./adminRole')
let cloud = null
try {
  cloud = require('wx-server-sdk')
  cloud.init({ env: cloud.DYNAMIC_CURRENT_ENV })
} catch (e) {}
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
async function refundCourtPayViaPay(payload) {
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

async function refundCardPayViaPay(payload) {
  if (!cloud || !cloud.callFunction) {
    return { ok: false, msg: '退款服务不可用，请稍后重试' }
  }
  try {
    const res = await cloud.callFunction({
      name: 'pay',
      data: Object.assign({ action: 'refundCardPay', skipLedger: true }, payload || {})
    })
    return (res && res.result) || { ok: false, msg: '退款无响应' }
  } catch (e) {
    return { ok: false, msg: (e && e.message) || '退款调用失败' }
  }
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
  // Asia/Shanghai YYYY-MM-DD
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
  if (!v) return ''
  if (typeof v === 'string' && /^\d{4}-\d{2}-\d{2}/.test(v)) {
    const [y, m, d] = v.slice(0, 10).split('-')
    return `${y}年${Number(m)}月${Number(d)}日`
  }
  const d = v instanceof Date ? v : new Date(v)
  if (Number.isNaN(d.getTime())) return String(v).slice(0, 10)
  return `${d.getFullYear()}年${d.getMonth() + 1}月${d.getDate()}日`
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

function groupTimeRuleRejectMsg(card, dateYmd, timeSlot) {
  if (!card || !dateYmd) return ''
  const from = String(card.valid_from || '').slice(0, 10)
  const to = String(card.valid_to || '').slice(0, 10)
  if (from && dateYmd < from) return '这张卡还没到生效日期'
  if (to && dateYmd > to) return '所选日期超出这张卡的有效期'
  const timeRule = parseTimeRule(card.time_rule)
  if (!timeRule) return ''
  const mode = timeRule.mode || ''
  const ranges = Array.isArray(timeRule.dateRanges) ? timeRule.dateRanges : []
  const isDates = mode === 'dates' || (!mode && ranges.length)
  if (isDates && ranges.length) {
    const okDate = ranges.some((rg) => {
      const s = (rg && (rg.start || (rg.range && rg.range[0]))) || ''
      const e = (rg && (rg.end || (rg.range && rg.range[1]))) || ''
      return s && e && dateYmd >= s && dateYmd <= e
    })
    if (!okDate) return '当天不在这张卡的可用日期内'
  }
  if (mode === 'rules' && Array.isArray(timeRule.rules) && timeRule.rules.length) {
    const d = new Date(String(dateYmd).replace(/-/g, '/'))
    if (Number.isNaN(d.getTime())) return ''
    let weekday = d.getDay()
    if (weekday === 0) weekday = 7
    const slotStart = String(timeSlot || '').split('-')[0]
    let matched = false
    for (const r of timeRule.rules) {
      const days = (r.weekdays || []).map((n) => Number(n))
      if (days.indexOf(weekday) < 0) continue
      const slots = r.timeSlots || []
      if (!slots.length || r.unlimited) {
        matched = true
        break
      }
      for (const s of slots) {
        if (s && s.start && s.end && slotStart && slotStart >= s.start && slotStart < s.end) {
          matched = true
          break
        }
      }
      if (matched) break
    }
    if (!matched) return '当前日期/时段不在这张卡的可用范围内'
  }
  return ''
}
function parseSeats(body) {
  if (!body) return { ok: true, seats: 1 }
  if (body.seats == null && body.qty == null && body.count == null) return { ok: true, seats: 1 }
  const raw = body.seats != null ? body.seats : (body.qty != null ? body.qty : body.count)
  const n = Math.floor(Number(raw))
  if (!Number.isFinite(n) || n < 1) return { ok: false, msg: '报名人数至少为1' }
  return { ok: true, seats: n }
}
function parseEvent(event) {
  if (event && event.body) {
    try {
      const body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
      return Object.assign({}, event, body)
    } catch (e) {
      return event
    }
  }
  return event || {}
}
async function writeLog(connOrPool, row) {
  try {
    await connOrPool.query(
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
        row.amount != null ? money(row.amount) : 0,
        row.cardName || ''
      ]
    )
  } catch (e) {
    console.warn('activity_logs write skip:', e.message)
  }
}
function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
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
  if ((card.type === 'times' || card.type === 'coach' || card.type === 'group') && Number(card.total_times) > 0 && price > 0) {
    return money(price / Number(card.total_times))
  }
  if (card.type === 'time' && price > 0) {
    return money(price / daysBetween(card.valid_from, card.valid_to))
  }
  return 0
}
async function resolveUserId(conn, userIdVal, openidVal, phoneVal) {
  if (userIdVal && Number.isFinite(Number(userIdVal))) return Number(userIdVal)
  const phone = String(phoneVal || '').replace(/\D/g, '').slice(-11)
  if (phone) {
    try {
      const [rows] = await conn.query('SELECT id FROM users WHERE phone=? LIMIT 1', [phone])
      if (rows[0] && rows[0].id) return Number(rows[0].id)
    } catch (e) {}
  }
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
  if (opts.requirePrice) {
    const slotPrice = await getSlotPrice(conn, opts.venueId, opts.court, dateYmd, timeStr)
    if (!(slotPrice > 0)) return { ok: false, msg: '该时段暂未标价，无法预约' }
  }
  return { ok: true }
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


async function writeLedger(conn, row) {
  try {
    await conn.query(
      `INSERT INTO finance_ledger
        (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
         operator_name, card_id, booking_id, pay_order_id, remark)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [
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
    )
  } catch (e) {
    console.warn('finance_ledger write skip:', e.message)
  }
}

function isOutdoorSharedCourt(courtName) {
  return String(courtName || '').trim() === '外场'
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



async function isCourtCustomerVisible(conn, venueId, court) {
  const raw = String(court || '').trim()
  if (isOutdoorSharedCourt(raw)) return false
  if (!venueId || !raw) return true
  try {
    const n = normCourt(raw)
    const [rows] = await conn.query(
      `SELECT name, IFNULL(customer_visible, 1) AS v FROM courts
        WHERE venue_id=? AND (name=? OR name=? OR TRIM(TRAILING '场' FROM name)=?)
        ORDER BY (name=?) DESC, id ASC
        LIMIT 1`,
      [venueId, raw, n + '场', n, raw]
    )
    if (!rows || !rows[0]) return true
    if (isOutdoorSharedCourt(rows[0].name)) return false
    return Number(rows[0].v) !== 0
  } catch (e) {
    return !isOutdoorSharedCourt(raw)
  }
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
      operatorName || intent.operator_name || '用户',
      remark
    ]
  )
  await conn.query('DELETE FROM lock_intents WHERE id=?', [intent.id])
  return { relocked: true }
}

async function writeCancelFinanceLedgers(conn, b, refundCardId, operatorName) {
  const bizDate = fmtDate(b.date) || fmtDate(new Date())
  const op = operatorName || '用户'
  const remark = '取消 ' + (b.court || '') + ' ' + (b.time || '')
  const cashAmt = money(b.amount)
  let cardUseAmt = 0
  let cardUseCardId = refundCardId || b.card_id || null
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

  if (cardUseAmt > 0) {
    await writeLedger(conn, Object.assign({}, base, {
      type: 'card_use_cancel',
      amount: -cardUseAmt,
      cardId: cardUseCardId || null
    }))
  }
  if (issueAmt > 0) {
    await writeLedger(conn, Object.assign({}, base, {
      type: 'court_refund',
      amount: -issueAmt,
      cardId: issueCardId || cardUseCardId || null,
      remark: '取消退发卡款 ' + issueAmt + ' · ' + remark
    }))
  }
  // 若微信支付已写 court_refund，则不再重复冲现金
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
    await writeLedger(conn, Object.assign({}, base, {
      type: 'court_cancel',
      amount: -cashAmt,
      cardId: null
    }))
  }
}

const FN_VER = 'userApi-20261120d'
const HOUR_FALLBACK = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00', '21:00-22:00'
]

exports.main = async (rawEvent) => {
  try {
    const event = parseEvent(rawEvent)
    const action = event.action || ''
    if (action === 'ver' || action === '__ver__') {
      return { ok: true, fnVer: FN_VER }
    }
    let openid = event.openid || ''
    try {
      if (cloud && cloud.getWXContext) {
        const wxContext = cloud.getWXContext()
        if (wxContext && wxContext.OPENID) openid = wxContext.OPENID
      }
    } catch (e) {}

    if (action === 'getActivities') {
      try {
        const start = event.startDate || ''
        const end = event.endDate || ''
        const actSettings = await settingsLib.loadSettings(pool)
        const actNow = new Date()
        let sql = "SELECT id, title, type, DATE_FORMAT(date, '%Y-%m-%d') AS date, time, venue_id, venue_name AS venue, status FROM activities WHERE status='active'"
        const params = []
        if (start) { sql += ' AND date >= ?'; params.push(start) }
        if (end) { sql += ' AND date <= ?'; params.push(end) }
        sql += ' ORDER BY date, id'
        let rows = []
        try {
          const [r] = await pool.query(sql, params)
          rows = r || []
        } catch (e) {
          rows = []
        }

        let classes = []
        try {
          let gsql = `SELECT g.*, v.name AS venue_name
                        FROM group_classes g
                        LEFT JOIN venues v ON CAST(v.id AS CHAR) = CAST(g.venue_id AS CHAR)
                       WHERE 1=1`
          const gp = []
          if (start) { gsql += ' AND g.date >= ?'; gp.push(start) }
          if (end) { gsql += ' AND g.date <= ?'; gp.push(end) }
          gsql += ' ORDER BY g.date, g.time, g.id'
          const [gr] = await pool.query(gsql, gp)
          classes = gr || []
        } catch (e) {
          classes = []
        }

        const used = {}
        function matchClass(a) {
          const ad = fmtDate(a.date)
          const at = String(a.time || '').trim()
          const aVenueId = String(a.venue_id || a.venueId || '').trim()
          const aVenue = String(a.venue || a.venue_name || '').trim()
          for (const g of classes) {
            if (fmtDate(g.date) !== ad) continue
            if (String(g.time || '').trim() !== at) continue
            const gVenueId = String(g.venue_id || '').trim()
            const gVenue = String(g.venue_name || '').trim()
            const idOk = aVenueId && gVenueId && aVenueId === gVenueId
            const nameOk = aVenue && gVenue && aVenue === gVenue
            if (idOk || nameOk || (!aVenueId && !aVenue)) {
              return g
            }
          }
          return null
        }

        const list = []
        for (const a of rows) {
          const item = {
            id: a.id != null ? String(a.id) : '',
            title: a.title,
            type: a.type,
            date: fmtDate(a.date),
            time: a.time,
            venue: a.venue || '',
            venueId: a.venue_id || '',
            status: a.status || 'active',
            groupClassId: ''
          }
          if (String(a.type || '') === '团课') {
            const g = matchClass(a)
            if (g) {
              item.groupClassId = String(g.id)
              item.status = g.status || item.status
              item.venue = item.venue || g.venue_name || ''
              item.venueId = item.venueId || g.venue_id || ''
              const extraA = settingsLib.mapClassExtra(g, actSettings, actNow)
              item.classType = extraA.classType
              item.classTypeLabel = extraA.classTypeLabel
              item.theme = extraA.theme
              item.enrollOpen = extraA.enrollOpen
              item.enrollClosedReason = extraA.enrollClosedReason
              used[String(g.id)] = true
            }
          }
          list.push(item)
        }
        for (const g of classes) {
          if (used[String(g.id)]) continue
          if (!settingsLib.isVisibleCalendarClass(g)) continue
          const extraG = settingsLib.mapClassExtra(g, actSettings, actNow)
          list.push({
            id: 'gc-' + g.id,
            title: g.name,
            type: '团课',
            date: fmtDate(g.date),
            time: g.time,
            venue: g.venue_name || '',
            venueId: g.venue_id || '',
            venueShort: settingsLib.venueShortName(g.venue_name, g.venue_id),
            status: g.status || 'open',
            groupClassId: String(g.id),
            classType: extraG.classType,
            classTypeLabel: extraG.classTypeLabel,
            theme: extraG.theme,
            courseContentId: extraG.courseContentId,
            courseContentName: extraG.courseContentName,
            coachName: g.coach_name || '',
            enrolled: Number(g.enrolled) || 0,
            capacity: Number(g.capacity) || 0,
            enrollOpen: extraG.enrollOpen,
            enrollClosedReason: extraG.enrollClosedReason
          })
        }
        // drop cancelled group activities copied from activities table
        const visible = list.filter(function (a) {
          if (a.type === '团课' || a.groupClassId) {
            return settingsLib.isVisibleCalendarClass(a)
          }
          return true
        })
        visible.sort(function (a, b) {
          if (a.date !== b.date) return String(a.date).localeCompare(String(b.date))
          return String(a.time || '').localeCompare(String(b.time || ''))
        })
        const today = settingsLib.todayYmd(actNow)
        let hasUpcomingGroupClass = visible.some(function (a) {
          return (a.type === '团课' || a.groupClassId) && String(a.date || '') >= today
        })
        if (!hasUpcomingGroupClass) {
          try {
            const [up] = await pool.query(
              `SELECT id, status, date FROM group_classes
                WHERE date >= ?
                ORDER BY date ASC, id ASC
                LIMIT 40`,
              [today]
            )
            hasUpcomingGroupClass = (up || []).some((row) => settingsLib.isVisibleCalendarClass(row))
          } catch (e) {}
        }
        const calendar = settingsLib.buildCalendarDays(classes, actSettings)
        return { ok: true, list: visible, hasUpcomingGroupClass, calendar, fnVer: FN_VER }
      } catch (e) {
        return { ok: true, list: [], fnVer: FN_VER }
      }
    }
    if (action === 'getBanners') {
      try {
        const [rows] = await pool.query("SELECT image, title, link FROM banners WHERE status='active' ORDER BY sort_order, id")
        const list = (rows || []).map((r) => {
          let link = bannerLink.normalizeBannerLink(r.link || '')
          if (!link) link = bannerLink.defaultLinkForBanner(r) || ''
          const nav = bannerLink.bannerNavType(link)
          return {
            image: r.image,
            title: r.title || '',
            link: nav.path,
            navMode: nav.mode
          }
        })
        return { ok: true, list, fnVer: FN_VER }
      } catch (e) {
        return { ok: true, list: [] }
      }
    }
    if (action === 'getVenues') {
      try {
        const [rows] = await pool.query(
          `SELECT * FROM venues WHERE status='active' ORDER BY sort ASC, id ASC`
        )
        const includeShell = venueBookingRule.includeShellRequested(event)
        let list = (rows || []).map((r) => {
          const flags = venueBookingRule.mapVenueFlags(r)
          return {
            _id: r.id,
            venueId: r.id,
            name: r.name,
            address: r.address || '',
            status: r.status,
            sort: r.sort || 0,
            bookingEnabled: flags.bookingEnabled,
            isShell: flags.isShell
          }
        })
        if (!includeShell) {
          list = list.filter((v) => v.bookingEnabled !== 0 && v.isShell !== 1)
        }
        return { ok: true, list, fnVer: FN_VER }
      } catch (e) {
        console.error('getVenues', e)
        return { ok: false, list: [], msg: e.message || '读取场馆失败', fnVer: FN_VER }
      }
    }
    if (action === 'getCourts') {
      const venueId = event.venueId || ''
      if (!venueId) return { ok: false, msg: '缺少场馆' }
      const bookableCourts = await venueBookingRule.rejectIfNotCustomerBookable(pool, venueId)
      if (!bookableCourts.ok) return { ok: false, msg: bookableCourts.msg, list: [], fnVer: FN_VER }
      const baseWhere = `venue_id=? AND IFNULL(status,'open') NOT IN ('disabled','closed','停用')`
      let rows
      try {
        const [r] = await pool.query(
          `SELECT * FROM courts WHERE ${baseWhere} AND name <> '外场' AND IFNULL(customer_visible, 1) <> 0 ORDER BY sort ASC, id ASC`,
          [venueId]
        )
        rows = r
      } catch (e) {
        const [r] = await pool.query(
          `SELECT * FROM courts WHERE ${baseWhere} AND name <> '外场' ORDER BY sort ASC, id ASC`,
          [venueId]
        )
        rows = r
      }
      const list = (rows || []).filter((r) => !isOutdoorSharedCourt(r.name)).map((r) => ({
        _id: String(r.id),
        venueId: r.venue_id,
        name: r.name,
        type: r.type || '',
        status: r.status,
        pureTennis: r.pure_tennis === 1 || r.pure_tennis === '1' || r.pureTennis === 1 || r.pureTennis === true ? 1 : 0
      }))
      return { ok: true, list, fnVer: FN_VER }
    }
    if (action === 'getSchedule') {
      const { venueId, date } = event
      if (!venueId || !date) return { ok: false, msg: '参数不完整' }
      const bookableSched = await venueBookingRule.rejectIfNotCustomerBookable(pool, venueId)
      if (!bookableSched.ok) return { ok: false, msg: bookableSched.msg, bookings: [], groupClasses: [], fnVer: FN_VER }
      const [books] = await pool.query(
        `SELECT * FROM bookings WHERE venue_id=? AND date=?`,
        [venueId, date]
      )
      const [groups] = await pool.query(
        `SELECT * FROM group_classes WHERE venue_id=? AND date=?`,
        [venueId, date]
      )
      const bookings = (books || []).filter((r) => !isOutdoorSharedCourt(r.court)).map((r) => ({
        _id: String(r.id),
        court: r.court,
        time: r.time,
        status: r.status,
        remark: r.remark || '',
        coachId: r.coach_id ? String(r.coach_id) : '',
        groupClassId: r.group_class_id ? String(r.group_class_id) : ''
      }))
      const groupClasses = (groups || []).filter((r) => !isOutdoorSharedCourt(r.court)).map((r) => ({
        _id: String(r.id),
        court: r.court,
        time: r.time,
        status: r.status,
        name: r.name,
        coachId: r.coach_id ? String(r.coach_id) : '',
        enrolled: r.enrolled || 0,
        capacity: r.capacity || 0
      }))
      return { ok: true, bookings, groupClasses }
    }
    if (action === 'createBooking') {
      const data = event.data || {}
      if (!data.venueId || !data.court || !data.date || !data.time) {
        return { ok: false, msg: '参数不完整' }
      }
      const bookableBook = await venueBookingRule.rejectIfNotCustomerBookable(pool, data.venueId)
      if (!bookableBook.ok) return { ok: false, msg: bookableBook.msg, fnVer: FN_VER }
      const conn = await pool.getConnection()
      try {
        const dateYmd = fmtDate(data.date) || data.date
        const courtNorm = normCourt(data.court)
        const courtName = await resolveCourtName(conn, data.venueId, data.court)
        if (!(await isCourtCustomerVisible(conn, data.venueId, courtName || data.court))) {
          return { ok: false, msg: '该场地不对客人开放', fnVer: FN_VER }
        }
        const slotGuard = await rejectInvalidBookingSlot(conn, {
          venueId: data.venueId,
          court: courtName,
          dateYmd,
          timeStr: data.time,
          requirePrice: true,
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
        let userIdVal = null
        if (data.userId != null && String(data.userId).trim() !== '') {
          const s = String(data.userId).trim()
          if (/^\d+$/.test(s)) userIdVal = Number(s)
        }
        userIdVal = await resolveUserId(conn, userIdVal, openid || data.openid || '', data.phone || event.phone || '')
        let coachIdVal = null
        if (data.coachId != null && /^\d+$/.test(String(data.coachId))) {
          coachIdVal = Number(data.coachId)
        }
        const [gcAll] = await conn.query(
          `SELECT id, time FROM group_classes
           WHERE venue_id=? AND date=? AND (court=? OR court=CONCAT(?,'场')) AND status='open'`,
          [data.venueId, dateYmd, courtNorm, courtNorm]
        )
        const gc = pickOverlapping(gcAll, data.time)
        if (gc.length) {
          await conn.rollback()
          return { ok: false, msg: '该时段为团课，无法普通预约' }
        }
        const tradeNoEarly = data.outTradeNo || data.payOrderNo || ''
        const [busyAll] = await conn.query(
          `SELECT id, status, pay_order_id, time FROM bookings
           WHERE venue_id=? AND date=? AND (court=? OR court=CONCAT(?,'场')) AND status IN ('booked','locked','pending_pay')`,
          [data.venueId, dateYmd, courtNorm, courtNorm]
        )
        const busy = pickOverlapping(busyAll, data.time)
        if (busy.length) {
          if (busy[0].status === 'pending_pay' && tradeNoEarly) {
            try {
              const [poOwn] = await conn.query(
                'SELECT id, status, booking_id FROM pay_orders WHERE out_trade_no=? LIMIT 1',
                [tradeNoEarly]
              )
              if (poOwn[0] && (Number(poOwn[0].booking_id) === Number(busy[0].id) || Number(poOwn[0].id) === Number(busy[0].pay_order_id))) {
                if (poOwn[0].status === 'paid') {
                  const [poFull] = await conn.query('SELECT amount_fen FROM pay_orders WHERE id=? LIMIT 1', [poOwn[0].id])
                  const amt = Math.round(Number(poFull[0] && poFull[0].amount_fen) || 0) / 100
                  await conn.query(
                    `UPDATE bookings SET status='booked', amount=?, pay_order_id=?, updated_at=NOW() WHERE id=? AND status='pending_pay'`,
                    [amt, poOwn[0].id, busy[0].id]
                  )
                  await conn.query('UPDATE pay_orders SET booking_id=? WHERE id=?', [busy[0].id, poOwn[0].id])
                  await conn.commit()
                  return { ok: true, id: String(busy[0].id), fnVer: FN_VER, fulfilled: true }
                }
                await conn.commit()
                return { ok: true, id: String(busy[0].id), pendingPay: true, fnVer: FN_VER }
              }
            } catch (e) {}
          }
          await conn.rollback()
          const locked = busy[0].status === 'locked'
          const paying = busy[0].status === 'pending_pay'
          return { ok: false, msg: locked ? '该时段已锁场' : paying ? '该时段正在支付中' : '该时段已被预约', fnVer: FN_VER }
        }
        if (coachIdVal) {
          const [coachBusyAll] = await conn.query(
            `SELECT id, time FROM bookings
             WHERE venue_id=? AND date=? AND coach_id=? AND status IN ('booked','locked','pending_pay')`,
            [data.venueId, dateYmd, coachIdVal]
          )
          const coachBusy = pickOverlapping(coachBusyAll, data.time)
          if (coachBusy.length) {
            await conn.rollback()
            return { ok: false, msg: '该教练此时段已被预约' }
          }
          const [coachGroupAll] = await conn.query(
            `SELECT id, time FROM group_classes
             WHERE venue_id=? AND date=? AND coach_id=? AND status='open'`,
            [data.venueId, dateYmd, coachIdVal]
          )
          const coachGroup = pickOverlapping(coachGroupAll, data.time)
          if (coachGroup.length) {
            await conn.rollback()
            return { ok: false, msg: '该教练此时段有团课' }
          }
        }
        let cardIdVal = null
        let cardName = data.cardName || ''
        let cardType = data.cardType || ''
        let remainingAfter = null
        if (data.cardId) {
          const [cards] = await conn.query(
            'SELECT * FROM member_cards WHERE id=? FOR UPDATE',
            [data.cardId]
          )
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
          if (coachIdVal && card.type !== 'coach') {
            await conn.rollback()
            return { ok: false, msg: '约教练只能使用教练卡' }
          }
          if (card.type === 'coach' && !coachIdVal) {
            await conn.rollback()
            return { ok: false, msg: '教练卡必须选择教练' }
          }
          if (userIdVal && card.user_id && Number(card.user_id) !== userIdVal) {
            await conn.rollback()
            return { ok: false, msg: '不能使用他人会员卡' }
          }
          const validFrom = fmtDate(card.valid_from)
          const validTo = fmtDate(card.valid_to)
          if (validFrom && dateYmd < validFrom) {
            await conn.rollback()
            return { ok: false, msg: '这张卡还没到生效日期' }
          }
          if (validTo && dateYmd > validTo) {
            // 仅拒绝本次订场日；只有「今天」已过 valid_to 才整卡标 expired
            const today = todayYmd()
            if (today > validTo) {
              await conn.query(`UPDATE member_cards SET status='expired', updated_at=NOW() WHERE id=?`, [card.id])
            }
            await conn.rollback()
            return { ok: false, msg: today > validTo ? '这张卡已过期' : '所选日期超出这张卡的有效期' }
          }
          const timeRule = parseTimeRule(card.time_rule)
          const dayCap = Number(timeRule && timeRule.maxHoursPerDay) || 0
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
            const add = slotHours(data.time)
            if (used + add > dayCap + 0.001) {
              await conn.rollback()
              return { ok: false, msg: `该卡每天最多可约 ${dayCap} 小时，今日已约 ${used} 小时` }
            }
          }
          if (card.type === 'time') {
            const timeRule = parseTimeRule(card.time_rule)
            if (timeRule && timeRule.mode === 'dates') {
              const okDate = (timeRule.dateRanges || []).some((rg) => rg.start && rg.end && dateYmd >= rg.start && dateYmd <= rg.end)
              if (!okDate) {
                await conn.rollback()
                return { ok: false, msg: '当天不在这张节假日卡的可用日期内' }
              }
            }
            if (timeRule && timeRule.mode === 'rules' && Array.isArray(timeRule.rules)) {
              const d = new Date(String(dateYmd).replace(/-/g, '/'))
              let weekday = d.getDay()
              if (weekday === 0) weekday = 7
              const slotStart = String(data.time || '').split('-')[0]
              let matched = null
              for (const r of timeRule.rules) {
                const days = (r.weekdays || []).map((n) => Number(n))
                if (days.indexOf(weekday) < 0) continue
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
                  `SELECT COUNT(*) AS cnt FROM bookings
                   WHERE card_id=? AND date=? AND status='booked'`,
                  [card.id, dateYmd]
                )
                const used = Number(usedRows[0] && usedRows[0].cnt) || 0
                if (used + 1 > maxH) {
                  await conn.rollback()
                  return {
                    ok: false,
                    msg: `时间卡今日最多可约 ${maxH} 小时，已约 ${used} 小时`
                  }
                }
              }
            }
          }
          {
            const courtInfo = await loadCourtInfo(conn, data.venueId, courtName || data.court)
            const sportHint = { sport: data.sport || event.sport || '', remark: data.remark || '' }
            if (!courtTypeRule.cardAllowsCourt(card, courtInfo, sportHint)) {
              await conn.rollback()
              return { ok: false, msg: courtTypeRule.courtTypeRejectMsg(card, courtInfo) || '这张卡不能用于当前场地', fnVer: FN_VER }
            }
          }
          if (card.type === 'times' || card.type === 'coach') {
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
            const [afterRows] = await conn.query(
              'SELECT remaining_times FROM member_cards WHERE id=? LIMIT 1',
              [card.id]
            )
            remainingAfter = Number(afterRows[0] && afterRows[0].remaining_times) || 0
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
        }
        const userName = data.userName || ''
        const venueName = data.venueName || ''
        const slotPrice = await getSlotPrice(conn, data.venueId, courtName, dateYmd, data.time)
        let bookAmount = slotPrice
        let ledgerType = 'court_book'
        let ledgerAmt = slotPrice
        const payWay = String(data.payWay || event.payWay || '')
        if (payWay === 'balance' && !cardIdVal) {
          if (!userIdVal) {
            await conn.rollback()
            return { ok: false, msg: '请先登录后再用余额支付', fnVer: FN_VER }
          }
          const need = money(slotPrice)
          if (need <= 0) {
            await conn.rollback()
            return { ok: false, msg: '该时段没有标价，无法用余额支付', fnVer: FN_VER }
          }
          const [uw] = await conn.query(
            'SELECT IFNULL(balance,0) AS balance FROM users WHERE id=? FOR UPDATE',
            [userIdVal]
          )
          const bal = money(uw[0] && uw[0].balance)
          const storedBal = await storedCardBalance(conn, userIdVal)
          const spendable = money(bal + storedBal)
          if (spendable + 1e-9 < need) {
            await conn.rollback()
            return { ok: false, msg: '余额不足（当前 ¥' + spendable.toFixed(2) + '）', fnVer: FN_VER }
          }
          const fromWallet = money(Math.min(bal, need))
          const fromStored = money(need - fromWallet)
          if (fromWallet > 0) {
            await conn.query('UPDATE users SET balance=?, updated_at=NOW() WHERE id=?', [
              money(bal - fromWallet),
              userIdVal
            ])
          }
          if (fromStored > 0) await deductStoredCards(conn, userIdVal, fromStored)
          ledgerType = 'wallet_pay'
          ledgerAmt = need
          bookAmount = need
        }
        if (cardIdVal) {
          const [cardNow] = await conn.query('SELECT * FROM member_cards WHERE id=? LIMIT 1', [cardIdVal])
          ledgerType = 'card_use'
          ledgerAmt = cardUnit(cardNow[0])
          bookAmount = 0
        }
        let payOrderId = null
        const tradeNo = data.outTradeNo || data.payOrderNo || ''
        if (tradeNo) {
          try {
            const [po] = await conn.query(
              'SELECT id FROM pay_orders WHERE out_trade_no=? LIMIT 1',
              [tradeNo]
            )
            if (po[0] && po[0].id) payOrderId = Number(po[0].id)
          } catch (e) {}
        } else if (data.payOrderId && Number(data.payOrderId) > 0) {
          payOrderId = Number(data.payOrderId)
        }
        if (!cardIdVal && !payOrderId && payWay !== 'balance') {
          await conn.rollback()
          return {
            ok: false,
            msg: slotPrice > 0 ? '请先完成支付或选择会员卡' : '该时段暂未标价，无法预约',
            fnVer: FN_VER
          }
        }
        const [res] = await conn.query(
          `INSERT INTO bookings (
            venue_id, venue_name, court, date, time,
            user_id, openid, user_name, phone, status,
            card_id, card_name, card_type,
            coach_id, coach_name, source, remark, amount, pay_order_id
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'booked', ?, ?, ?, ?, ?, 'user', ?, IFNULL(NULLIF(?, ''), 0), ?)`,
          [
            data.venueId,
            venueName,
            courtName,
            dateYmd,
            data.time,
            userIdVal,
            openid || '',
            userName,
            data.phone || '',
            cardIdVal,
            cardName,
            cardType,
            coachIdVal,
            data.coachName || '',
            data.orderNo || data.outTradeNo || data.payOrderNo || 'GT' + Date.now(),
            (data.sport === 'pickleball' ? '匹克球 ' : '') + (data.remark || ''),
            money(bookAmount),
            payOrderId
          ]
        )
        if (payOrderId) {
          try {
            await conn.query('UPDATE pay_orders SET booking_id=? WHERE id=?', [
              res.insertId,
              payOrderId
            ])
          } catch (e) {}
        }
        await writeLedger(conn, {
          bizDate: dateYmd,
          type: ledgerType,
          amount: money(ledgerAmt),
          venueId: data.venueId,
          venueName,
          userId: userIdVal,
          userName,
          operatorName: userName || '用户',
          cardId: cardIdVal,
          bookingId: res.insertId,
          payOrderId,
          remark: [data.court, data.time, cardName ? '卡券:' + cardName : ''].filter(Boolean).join(' ')
        })
        let detail = `预约 ${data.court} ${fmtDateCn(dateYmd)} ${data.time}`
        if (data.coachName) detail += ` · 教练${data.coachName}`
        if (cardName) detail += ` · ${cardName}`
        await writeLog(conn, {
          type: 'booking_add',
          userName,
          operatorName: userName || '用户',
          phone: data.phone || '',
          detail,
          venueId: data.venueId,
          venueName,
          amount: money(ledgerAmt),
          cardName: cardName || ''
        })
        await conn.commit()
        return { ok: true, id: String(res.insertId), cardRemaining: remainingAfter, fnVer: FN_VER }
        } finally {
          await releaseSlotLock(conn, slotLock)
        }
      } catch (e) {
        try {
          await conn.rollback()
        } catch (e2) {}
        throw e
      } finally {
        conn.release()
      }
    }
    if (action === 'getMyBookings') {
      const rawUserId = event.userId || ''
      const page = Math.max(1, Number(event.page) || 1)
      const pageSize = Math.min(50, Number(event.pageSize) || 10)
      const offset = (page - 1) * pageSize
      const upcomingOnly = !!(event.upcomingOnly)
      let where = ''
      const params = []
      const uid =
        rawUserId && /^\d+$/.test(String(rawUserId).trim())
          ? Number(String(rawUserId).trim())
          : null
      if (uid != null && openid) {
        where = '(user_id = ? OR openid = ?)'
        params.push(uid, openid)
      } else if (uid != null) {
        where = 'user_id = ?'
        params.push(uid)
      } else if (openid) {
        where = 'openid = ?'
        params.push(openid)
      } else {
        return { ok: false, msg: '缺少用户标识' }
      }
      // 本人 pending_pay 可见（待支付确认）；锁场不展示
      where += ` AND IFNULL(status,'') <> 'locked'`
      if (upcomingOnly) {
        where += ` AND IFNULL(status,'') NOT IN ('cancelled','locked')
          AND date IS NOT NULL
          AND date <= DATE_ADD(CURDATE(), INTERVAL 3 DAY)
          AND (
            date > CURDATE()
            OR (
              date = CURDATE()
              AND STR_TO_DATE(SUBSTRING_INDEX(IFNULL(time,''), '-', 1), '%H:%i')
                >= STR_TO_DATE(DATE_FORMAT(NOW(), '%H:%i'), '%H:%i')
            )
          )`
      }
      const whereB = where
        .replace(/\bstatus\b/g, 'b.status')
        .replace(/\buser_id\b/g, 'b.user_id')
        .replace(/\bopenid\b/g, 'b.openid')
        .replace(/\bdate\b/g, 'b.date')
        .replace(/\btime\b/g, 'b.time')
      const [[{ c }]] = await pool.query(
        `SELECT COUNT(*) AS c FROM bookings b WHERE ${whereB}`,
        params
      )
      const orderSql = upcomingOnly
        ? 'ORDER BY b.date ASC, b.time ASC, b.id ASC'
        : 'ORDER BY b.id DESC'
      const [rows] = await pool.query(
        `SELECT b.*, p.out_trade_no AS pay_out_trade_no, p.status AS pay_status
           FROM bookings b
           LEFT JOIN pay_orders p ON p.id = b.pay_order_id
          WHERE ${whereB} ${orderSql} LIMIT ? OFFSET ?`,
        [...params, pageSize, offset]
      )
      const list = (rows || []).map((r) => ({
        _id: String(r.id),
        court: r.court,
        date: fmtDate(r.date),
        time: r.time,
        status: r.status,
        statusLabel:
          r.status === 'pending_pay'
            ? '待支付确认'
            : r.status === 'booked'
              ? '已预约'
              : r.status === 'cancelled'
                ? '已取消'
                : r.status || '',
        venueId: r.venue_id,
        venueName: r.venue_name || '',
        coachName: r.coach_name || '',
        cardName: r.card_name || '',
        amount: Number(r.amount) || 0,
        payOrderId: r.pay_order_id ? String(r.pay_order_id) : '',
        outTradeNo: r.pay_out_trade_no || '',
        payStatus: r.pay_status || ''
      }))
      return { ok: true, list, total: c || 0, fnVer: FN_VER }
    }
    if (action === 'cancelBooking') {
      const id = event.id
      if (!id) return { ok: false, msg: '缺少 id' }
      const conn = await pool.getConnection()
      try {
        await conn.beginTransaction()
        const [rows] = await conn.query(
          'SELECT * FROM bookings WHERE id=? FOR UPDATE',
          [id]
        )
        const b = rows[0]
        if (!b) {
          await conn.rollback()
          return { ok: false, msg: '预约不存在' }
        }
        if (b.status === 'cancelled') {
          await conn.rollback()
          return { ok: false, msg: '已取消' }
        }
        if (b.status === 'pending_pay') {
          await conn.rollback()
          return {
            ok: false,
            msg: '订单仍在支付确认中，请稍后再试或取消支付',
            pendingPay: true,
            fnVer: FN_VER
          }
        }
        if (openid && b.openid && b.openid !== openid) {
          await conn.rollback()
          return { ok: false, msg: '无权取消' }
        }
        // 微信支付订场：先退款（幂等），失败则整单不取消
        let payOrder = null
        if (b.pay_order_id) {
          const [pos] = await conn.query('SELECT * FROM pay_orders WHERE id=? LIMIT 1', [b.pay_order_id])
          payOrder = pos[0] || null
        }
        if (payOrder && (payOrder.status === 'paid' || payOrder.status === 'refunded')) {
          if (payOrder.status === 'paid') {
            await conn.commit()
            const refundRes = await refundCourtPayViaPay({
              payOrderId: payOrder.id,
              outTradeNo: payOrder.out_trade_no,
              bookingId: b.id,
              reason: '用户取消订场退款'
            })
            if (!refundRes || !refundRes.ok) {
              return {
                ok: false,
                msg: (refundRes && refundRes.msg) || '微信退款失败，预约未取消，请稍后重试或联系门店',
                needRefund: true,
                fnVer: FN_VER
              }
            }
            await conn.beginTransaction()
            const [rows2] = await conn.query('SELECT * FROM bookings WHERE id=? FOR UPDATE', [id])
            const b2 = rows2[0]
            if (!b2) {
              await conn.rollback()
              return { ok: false, msg: '预约不存在', fnVer: FN_VER }
            }
            if (b2.status === 'cancelled') {
              await conn.commit()
              return { ok: true, already: true, refunded: true, fnVer: FN_VER }
            }
            // continue with b2
            Object.assign(b, b2)
          }
        }
        await conn.query(
          `UPDATE bookings SET status='cancelled', updated_at=NOW() WHERE id=?`,
          [id]
        )
        if (b.card_id) {
          const [cards] = await conn.query(
            'SELECT * FROM member_cards WHERE id=? FOR UPDATE',
            [b.card_id]
          )
          const card = cards[0]
          if (
            card &&
            (card.type === 'times' || card.type === 'coach' || card.type === 'group')
          ) {
            const left = (card.remaining_times || 0) + 1
            await conn.query(
              `UPDATE member_cards SET remaining_times=?, status='active', updated_at=NOW() WHERE id=?`,
              [left, card.id]
            )
          }
          if (card) await maybeRevertFirstUseActivation(conn, card)
        }
        if (b.group_class_id) {
          await conn.query(
            `UPDATE group_classes SET enrolled = GREATEST(enrolled - 1, 0) WHERE id=?`,
            [b.group_class_id]
          )
        }
        await writeCancelFinanceLedgers(
          conn,
          b,
          b.card_id || null,
          b.user_name || '用户'
        )
        const detail = `取消预约 ${b.court || ''} ${fmtDateCn(b.date)} ${b.time || ''}`
        await writeLog(conn, {
          type: 'booking_cancel',
          userName: b.user_name || '',
          operatorName: b.user_name || '用户',
          phone: b.phone || '',
          detail,
          venueId: b.venue_id || '',
          venueName: b.venue_name || ''
        })
        let relocked = false
        try {
          const rr = await applyLockIntentAfterCancel(conn, b, b.user_name || '用户')
          relocked = !!(rr && rr.relocked)
        } catch (e) {
          console.warn('relock after cancel fail', e && e.message)
        }
        await conn.commit()
        return { ok: true, relocked, fnVer: FN_VER }
      } catch (e) {
        try {
          await conn.rollback()
        } catch (e2) {}
        throw e
      } finally {
        conn.release()
      }
    }
    if (action === 'getCoaches') {
      const venueId = event.venueId || ''
      if (!venueId) return { ok: false, msg: '缺少场馆' }
      const [rows] = await pool.query(
        `SELECT * FROM coaches WHERE venue_id=? ORDER BY sort ASC, id ASC`,
        [venueId]
      )
      const list = (rows || []).map((r) => ({
        _id: String(r.id),
        venueId: r.venue_id,
        name: r.name,
        title: r.title || '',
        phone: r.phone || '',
        status: r.status || 'active',
        remark: r.remark || '',
        desc: r.remark || '',
        avatar: r.avatar || '',
        tags: []
      }))
      return { ok: true, list }
    }
    if (action === 'getCoachDetail') {
      const id = event.id
      if (!id) return { ok: false, msg: '缺少教练ID' }
      const [rows] = await pool.query('SELECT * FROM coaches WHERE id=? LIMIT 1', [id])
      const r = rows[0]
      if (!r) return { ok: false, msg: '教练不存在' }
      return {
        ok: true,
        coach: {
          _id: String(r.id),
          venueId: r.venue_id,
          name: r.name,
          title: r.title || '',
          phone: r.phone || '',
          status: r.status || 'active',
          remark: r.remark || '',
          desc: r.remark || '',
          avatar: r.avatar || '',
          tags: []
        }
      }
    }
    if (action === 'getWallet' || action === 'getProfile') {
      const phone = String(event.phone || '').replace(/\D/g, '').slice(-11)
      const uid = event.userId && /^\d+$/.test(String(event.userId)) ? Number(event.userId) : null
      let row = null
      if (phone) {
        const [rs] = await pool.query(
          'SELECT id, nick_name, phone, IFNULL(balance,0) AS balance, IFNULL(points,0) AS points FROM users WHERE phone=? LIMIT 1',
          [phone]
        )
        row = rs[0] || null
      }
      if (!row && uid) {
        const [rs] = await pool.query(
          'SELECT id, nick_name, phone, IFNULL(balance,0) AS balance, IFNULL(points,0) AS points FROM users WHERE id=? LIMIT 1',
          [uid]
        )
        row = rs[0] || null
      }
      if (!row && openid) {
        const [rs] = await pool.query(
          'SELECT id, nick_name, phone, IFNULL(balance,0) AS balance, IFNULL(points,0) AS points FROM users WHERE openid=? LIMIT 1',
          [openid]
        )
        row = rs[0] || null
      }
      if (!row) return { ok: false, msg: '未找到用户', balance: 0, points: 0, fnVer: FN_VER }
      const storedBal = await storedCardBalance(pool, row.id)
      const walletBal = money(row.balance)
      return {
        ok: true,
        fnVer: FN_VER,
        userId: String(row.id),
        nickName: row.nick_name || '',
        phone: row.phone || '',
        balance: money(walletBal + storedBal),
        walletBalance: walletBal,
        storedBalance: storedBal,
        points: Number(row.points) || 0
      }
    }
    if (action === 'getMyCards') {
      const userId = event.userId || ''
      const phone = String(event.phone || '').replace(/\D/g, '')
      let rows = []
      const ownerIds = []
      const seenOwner = {}
      const addOwner = (id) => {
        const n = Number(id)
        if (!Number.isFinite(n) || n <= 0 || seenOwner[n]) return
        seenOwner[n] = true
        ownerIds.push(n)
      }
      if (phone) {
        const [users] = await pool.query(
          'SELECT id FROM users WHERE phone=? LIMIT 1',
          [phone.slice(-11)]
        )
        if (users[0]) addOwner(users[0].id)
      }
      const rawUid = String(userId || '').trim()
      if (rawUid && /^\d+$/.test(rawUid)) addOwner(rawUid)
      if (rawUid) {
        const [byCode] = await pool.query(
          'SELECT id FROM users WHERE user_id=? LIMIT 1',
          [rawUid]
        )
        if (byCode[0]) addOwner(byCode[0].id)
      }
      if (openid) {
        const [byOpenid] = await pool.query(
          'SELECT id FROM users WHERE openid=? LIMIT 1',
          [openid]
        )
        if (byOpenid[0]) addOwner(byOpenid[0].id)
      }
      if (ownerIds.length) {
        for (const oid of ownerIds) {
          try { await expireDueCards(pool, { userId: oid }) } catch (e) {}
        }
        const placeholders = ownerIds.map(() => '?').join(',')
        const [r] = await pool.query(
          `SELECT * FROM member_cards WHERE user_id IN (${placeholders}) AND IFNULL(status,'')<>'deleted' ORDER BY id DESC LIMIT 50`,
          ownerIds
        )
        rows = r || []
      }
      if (rows.length === 0 && openid) {
        try { await expireDueCards(pool, { openid }) } catch (e) {}
        const [r2] = await pool.query(
          `SELECT * FROM member_cards WHERE openid=? AND IFNULL(status,'')<>'deleted' ORDER BY id DESC LIMIT 50`,
          [openid]
        )
        rows = r2 || []
      }
      const list = rows.map((r) => {
        let timeRule = r.time_rule
        if (typeof timeRule === 'string') {
          try { timeRule = JSON.parse(timeRule) } catch (e) { timeRule = null }
        }
        if (!timeRule || typeof timeRule !== 'object') timeRule = null
        return {
        _id: String(r.id),
        cardName: r.card_name || '',
        type: r.type,
        totalTimes: r.total_times || 0,
        remainingTimes: r.remaining_times || 0,
        validFrom: fmtDate(r.valid_from),
        validTo: fmtDate(r.valid_to),
        status: r.status || 'active',
        venueId: r.venue_id || '',
        venueName: r.venue_name || '',
        timeRule: timeRule || {},
        courtTypes: timeRule && Array.isArray(timeRule.courtTypes) ? timeRule.courtTypes : undefined,
        templateId: r.template_id ? String(r.template_id) : '',
        payOrderId: mall.parsePayOrderIdFromCard(r) ? String(mall.parsePayOrderIdFromCard(r)) : '',
        paidAmount: mall.paidAmountOfCard(r),
        canRequestRefund: mall.hasPayOrder(r) && !['refunded', 'deleted'].includes(String(r.status || '').toLowerCase()),
        refundStatus: r.refund_status || ''
      }
      }).filter((c) => {
        // 小程序持卡页不展示停用/已退卡；过期、已用完仍返回。后台看全部卡走 admin 接口，不受影响。
        const s = String(c.status || '').toLowerCase()
        return s !== 'disabled' && s !== 'refunded'
      })
      try {
        const ids = list.map((c) => c._id).filter(Boolean)
        if (ids.length) {
          const [reqs] = await pool.query(
            `SELECT card_id, status FROM card_refund_requests
              WHERE card_id IN (${ids.map(() => '?').join(',')})
                AND status IN ('pending','refunding','confirmed')
              ORDER BY id DESC`,
            ids
          )
          const latest = {}
          ;(reqs || []).forEach((r) => {
            const id = String(r.card_id)
            if (!latest[id]) latest[id] = r.status
          })
          list.forEach((c) => {
            if (latest[c._id]) c.refundStatus = latest[c._id]
          })
        }
      } catch (e) {}
      return { ok: true, list, fnVer: FN_VER }
    }
    if (action === 'getGroupClasses') {
      const venueId = event.venueId || ''
      const date = event.date || ''
      const classId = event.classId || event.groupClassId || ''
      const hidePast = event.hidePast !== false && event.includePast !== true
      try {
        await autoCancelDueGroupClasses(pool, { operatorName: '系统' })
      } catch (e) {
        console.warn('lazy auto-cancel skip:', e && e.message)
      }
      let sql = `SELECT g.*, v.name AS venue_name, c.avatar AS coach_avatar
                   FROM group_classes g
                   LEFT JOIN venues v ON CAST(v.id AS CHAR) = CAST(g.venue_id AS CHAR)
                   LEFT JOIN coaches c ON c.id = g.coach_id
                  WHERE 1=1`
      const params = []
      if (venueId) {
        sql += ' AND g.venue_id=?'
        params.push(venueId)
      }
      if (date) {
        sql += ' AND g.date=?'
        params.push(date)
      }
      sql += ' ORDER BY g.date ASC, g.time ASC, g.id ASC'
      const [rows] = await pool.query(sql, params)
      const nowMs = Date.now()
      const gcSettings = await settingsLib.loadSettings(pool)
      const gcNow = new Date()
      function mapG(r, past) {
        const extra = settingsLib.mapClassExtra(r, gcSettings, gcNow)
        return Object.assign({
          _id: String(r.id),
          venueId: r.venue_id,
          venueName: r.venue_name || '',
          name: r.name,
          date: fmtDate(r.date),
          time: r.time,
          court: r.court,
          coachId: r.coach_id ? String(r.coach_id) : '',
          coachName: r.coach_name || '',
          coachAvatar: r.coach_avatar || '',
          capacity: r.capacity || 6,
          enrolled: r.enrolled || 0,
          status: r.status || 'open',
          remark: r.remark || '',
          minEnrollment: r.min_enrollment != null ? Number(r.min_enrollment) : 0,
          cancelBeforeHours: r.cancel_before_hours != null ? Number(r.cancel_before_hours) : 2,
          past: !!past
        }, extra)
      }
      let list = (rows || []).map((r) => mapG(r, isPastClass(r, nowMs)))
      if (hidePast) {
        list = list.filter((g) => !g.past)
      }
      if (classId) {
        const has = list.some((g) => String(g._id) === String(classId))
        if (!has) {
          const [one] = await pool.query(
            `SELECT g.*, v.name AS venue_name, c.avatar AS coach_avatar
               FROM group_classes g
               LEFT JOIN venues v ON CAST(v.id AS CHAR) = CAST(g.venue_id AS CHAR)
               LEFT JOIN coaches c ON c.id = g.coach_id
              WHERE g.id=? LIMIT 1`,
            [classId]
          )
          if (one && one[0]) {
            const past = isPastClass(one[0], nowMs)
            list.unshift(mapG(one[0], past))
          }
        }
      }
      return { ok: true, list, settings: gcSettings, fnVer: FN_VER }
    }
    if (action === 'updateCoachProfile') {
      const id = event.id
      const name = String(event.name || '').trim()
      const remark = String(event.remark || '').trim()
      const avatar = String(event.avatar || '').trim()
      if (!id) return { ok: false, msg: '缺少教练ID' }
      if (!name) return { ok: false, msg: '请填写姓名' }
      await pool.query(`UPDATE coaches SET name=?, remark=?, avatar=? WHERE id=?`, [
        name,
        remark,
        avatar,
        id
      ])
      return { ok: true }
    }
    if (action === 'getCoachWorkbench') {
      const phone = String(event.phone || '').replace(/\D/g, '')
      let coach = null
      if (phone) {
        const [rows] = await pool.query(
          `SELECT * FROM coaches WHERE phone=? ORDER BY id ASC LIMIT 1`,
          [phone]
        )
        coach = rows[0] || null
      }
      if (!coach && openid) {
        const [users] = await pool.query(`SELECT * FROM users WHERE openid=? LIMIT 1`, [
          openid
        ])
        const u = users[0]
        if (u && u.role === 'coach' && u.nick_name) {
          const [rows2] = await pool.query(
            `SELECT * FROM coaches WHERE name=? ORDER BY id ASC LIMIT 1`,
            [u.nick_name]
          )
          coach = rows2[0] || null
        }
      }
      if (!coach) return { ok: true, coach: null, list: [], fnVer: FN_VER }
      const list = await coachActions.enhanceWorkbench(pool, event, coach, fmtDate)
      let gcSettings = null
      let nextFixed = { venueId: '', venueName: '', lastVenueId: '', lastDate: '', lastTime: '' }
      try {
        gcSettings = await settingsLib.loadSettings(pool)
        nextFixed = await loadNextFixedVenue(pool, gcSettings)
      } catch (e) {}
      return {
        ok: true,
        fnVer: FN_VER,
        coach: {
          _id: String(coach.id),
          name: coach.name,
          title: '教练',
          phone: coach.phone || '',
          remark: coach.remark || '',
          desc: coach.remark || '',
          avatar: coach.avatar || ''
        },
        list,
        settings: gcSettings,
        nextFixedVenue: nextFixed
      }
    }
    if (action === 'coachSaveGroupClass') {
      return await coachActions.handleSaveGroupClass(pool, event, fmtDate, FN_VER)
    }
    if (action === 'coachLockOutdoor') {
      return await coachActions.handleLockOutdoor(pool, event, fmtDate, FN_VER)
    }
    if (action === 'getBookingDetail') {
      const id = event.id
      if (!id) return { ok: false, msg: '缺少 id' }
      const [rows] = await pool.query('SELECT * FROM bookings WHERE id=? LIMIT 1', [id])
      const r = rows[0]
      if (!r) return { ok: false, msg: '预约不存在' }
      if (openid && r.openid && r.openid !== openid) {
        return { ok: false, msg: '无权查看' }
      }
      return {
        ok: true,
        booking: {
          _id: String(r.id),
          orderNo: r.remark || String(r.id),
          court: r.court,
          date: fmtDate(r.date),
          time: r.time,
          status: r.status,
          coachName: r.coach_name || '',
          venueName: r.venue_name || '',
          createdAt: r.created_at
        }
      }
    }
    if (action === 'enrollGroupClass') {
      const { groupClassId, userId, userName, phone, cardId } = event
      const seatParsed = parseSeats(event)
      if (!seatParsed.ok) return { ok: false, msg: seatParsed.msg, fnVer: FN_VER }
      const seats = seatParsed.seats
      if (!groupClassId || !cardId) {
        return { ok: false, msg: '参数不完整' }
      }
      try {
        await autoCancelDueGroupClasses(pool, { operatorName: '系统' })
      } catch (e) {
        console.warn('lazy auto-cancel skip:', e && e.message)
      }
      const conn = await pool.getConnection()
      try {
        await conn.beginTransaction()
        const [gcRows] = await conn.query(
          'SELECT * FROM group_classes WHERE id=? FOR UPDATE',
          [groupClassId]
        )
        const gc = gcRows[0]
        if (!gc) {
          await conn.rollback()
          return { ok: false, msg: '团课不存在' }
        }
        if (gc.status === 'cancelled') {
          await conn.rollback()
          return { ok: false, msg: '团课已取消', fnVer: FN_VER }
        }
        if (gc.status !== 'open') {
          await conn.rollback()
          return { ok: false, msg: '团课未开放', fnVer: FN_VER }
        }
        const cap = Number(gc.capacity) || 0
        const enrolledNow = Number(gc.enrolled) || 0
        const capLeft = cap > 0 ? cap - enrolledNow : 0
        if (cap > 0 && capLeft <= 0) {
          await conn.rollback()
          return { ok: false, msg: '名额已满', fnVer: FN_VER }
        }
        if (cap > 0 && seats > capLeft) {
          await conn.rollback()
          return { ok: false, msg: '剩余名额不足，还可报' + capLeft + '人', fnVer: FN_VER }
        }
        const enrollSettings = await settingsLib.loadSettings(conn)
        const enrollGate = settingsLib.userEnrollGate(gc, enrollSettings, new Date())
        if (!enrollGate.enrollOpen) {
          await conn.rollback()
          return { ok: false, msg: enrollGate.reason || '当前不可报名', fnVer: FN_VER }
        }
        let enrollUserId = null
        if (userId != null && /^\d+$/.test(String(userId).trim())) enrollUserId = Number(userId)
        enrollUserId = await resolveUserId(conn, enrollUserId, openid)
        let alreadySeats = 0
        if (enrollUserId || openid) {
          const [mine] = await conn.query(
            `SELECT id FROM bookings
             WHERE group_class_id=? AND status='booked'
               AND (
                 (? IS NOT NULL AND user_id=?)
                 OR (? <> '' AND openid=?)
               )`,
            [groupClassId, enrollUserId, enrollUserId, openid || '', openid || '']
          )
          alreadySeats = (mine || []).length
        }
        const [cRows] = await conn.query(
          `SELECT * FROM member_cards WHERE id=? AND type='group' AND status='active' FOR UPDATE`,
          [cardId]
        )
        const card = cRows[0]
        const remain = Number(card && card.remaining_times) || 0
        if (!card || remain <= 0) {
          await conn.rollback()
          return { ok: false, msg: '团课卡不可用' }
        }
        if (remain < seats) {
          await conn.rollback()
          return { ok: false, msg: seats > 1 ? ('剩余次数不足，无法再扣' + seats + '节') : '卡次数不足', fnVer: FN_VER }
        }
        const dateYmd = fmtDate(gc.date)
        const ruleMsg = groupTimeRuleRejectMsg(card, dateYmd, gc.time)
        if (ruleMsg) {
          await conn.rollback()
          return { ok: false, msg: ruleMsg, fnVer: FN_VER }
        }
        const content = settingsLib.resolveClassCourseContent(gc, enrollSettings)
        const bind = settingsLib.cardAllowedForCourseContent(card, content)
        if (!bind.ok) {
          await conn.rollback()
          return { ok: false, msg: bind.msg, fnVer: FN_VER }
        }
        const enrollAmt = cardUnit(card)
        const [dec] = await conn.query(
          `UPDATE member_cards
              SET remaining_times = remaining_times - ?,
                  status = IF(remaining_times <= 0, 'used_up', 'active'),
                  updated_at = NOW()
            WHERE id=? AND IFNULL(remaining_times,0) >= ? AND status='active'`,
          [seats, card.id, seats]
        )
        if (!dec || Number(dec.affectedRows) !== 1) {
          await conn.rollback()
          return { ok: false, msg: '卡次数不足', fnVer: FN_VER }
        }
        const [afterRows] = await conn.query(
          'SELECT remaining_times FROM member_cards WHERE id=? LIMIT 1',
          [card.id]
        )
        const left = Number(afterRows[0] && afterRows[0].remaining_times) || 0
        const [capUpd] = await conn.query(
          `UPDATE group_classes SET enrolled = enrolled + ?
            WHERE id=? AND (? = 0 OR enrolled + ? <= capacity)`,
          [seats, groupClassId, cap, seats]
        )
        if (!capUpd || Number(capUpd.affectedRows) !== 1) {
          await conn.rollback()
          return { ok: false, msg: '名额已满', fnVer: FN_VER }
        }
        let lastId = null
        for (let i = 0; i < seats; i++) {
          const [enrollRes] = await conn.query(
            `INSERT INTO bookings (
              venue_id, court, date, time, user_id, openid, user_name, phone,
              status, card_id, card_name, card_type, coach_id, coach_name,
              group_class_id, source, amount
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, 'booked', ?, ?, 'group', ?, ?, ?, 'user', ?)`,
            [
              gc.venue_id,
              gc.court,
              gc.date,
              gc.time,
              enrollUserId,
              openid,
              userName || '',
              phone || '',
              card.id,
              card.card_name,
              gc.coach_id,
              gc.coach_name,
              groupClassId,
              Number(enrollAmt) || 0
            ]
          )
          lastId = enrollRes.insertId
          await writeLedger(conn, {
            bizDate: dateYmd,
            type: 'card_use',
            amount: enrollAmt,
            venueId: gc.venue_id || '',
            venueName: '',
            userId: enrollUserId,
            userName: userName || '',
            operatorName: userName || '用户',
            cardId: card.id,
            bookingId: enrollRes.insertId,
            remark: '团课 ' + (gc.name || '') + ' ' + (gc.time || '') + (seats > 1 ? ' 第' + (i + 1) + '/' + seats + '名额' : '')
          })
          const detail = `团课报名 ${gc.name || ''} ${fmtDateCn(gc.date)} ${gc.time || ''} · ${gc.court || ''}` + (seats > 1 ? ` · 第${i + 1}/${seats}名额` : '')
          await writeLog(conn, {
            type: 'group_enroll',
            userName: userName || '',
            operatorName: userName || '用户',
            phone: phone || '',
            detail,
            venueId: gc.venue_id || '',
            venueName: '',
            amount: money(enrollAmt),
            cardName: (card && card.card_name) || ''
          })
        }
        await conn.commit()
        return {
          ok: true,
          seats,
          deducted: seats,
          mySeats: alreadySeats + seats,
          cardRemaining: left,
          id: lastId != null ? String(lastId) : '',
          fnVer: FN_VER
        }
      } catch (e) {
        try {
          await conn.rollback()
        } catch (e2) {}
        throw e
      } finally {
        conn.release()
      }
    }
    if (action === 'getVenueHours') {
      const venueId = event.venueId || ''
      const weekday = Number(event.weekday) || 0
      if (!venueId) return { ok: false, msg: '缺少场馆', slots: HOUR_FALLBACK.slice(), fnVer: FN_VER }
      const bookableHours = await venueBookingRule.rejectIfNotCustomerBookable(pool, venueId)
      if (!bookableHours.ok) return { ok: false, msg: bookableHours.msg, slots: [], fnVer: FN_VER }
      try {
        let sql = 'SELECT weekday, time_slot AS timeSlot FROM venue_hours WHERE venue_id=?'
        const params = [venueId]
        if (weekday >= 1 && weekday <= 7) {
          sql += ' AND weekday=?'
          params.push(weekday)
        }
        sql += ' ORDER BY weekday, time_slot'
        const [rows] = await pool.query(sql, params)
        const byWeekday = { 1: [], 2: [], 3: [], 4: [], 5: [], 6: [], 7: [] }
        ;(rows || []).forEach((r) => {
          if (byWeekday[r.weekday]) byWeekday[r.weekday].push(r.timeSlot)
        })
        const slots = weekday >= 1 && weekday <= 7
          ? (byWeekday[weekday].length ? byWeekday[weekday] : HOUR_FALLBACK.slice())
          : Array.from(new Set((rows || []).map((r) => r.timeSlot))).sort()
        return {
          ok: true,
          slots: slots.length ? slots : HOUR_FALLBACK.slice(),
          byWeekday,
          configured: (rows || []).length > 0,
          fnVer: FN_VER
        }
      } catch (e) {
        return { ok: true, slots: HOUR_FALLBACK.slice(), byWeekday: {}, configured: false, msg: e.message, fnVer: FN_VER }
      }
    }
    if (action === 'getCourtPrices') {
      const venueId = event.venueId || ''
      const weekday = Number(event.weekday) || 0
      if (!venueId) return { ok: false, msg: '缺少场馆' }
      const bookablePrices = await venueBookingRule.rejectIfNotCustomerBookable(pool, venueId)
      if (!bookablePrices.ok) return { ok: false, msg: bookablePrices.msg, fnVer: FN_VER }
      let sql = 'SELECT * FROM court_prices WHERE venue_id=?'
      const params = [venueId]
      if (weekday >= 1 && weekday <= 7) {
        sql += ' AND weekday=?'
        params.push(weekday)
      }
      const [rows] = await pool.query(sql, params)
      let hidden = new Set()
      try {
        const [hc] = await pool.query(
          `SELECT name FROM courts WHERE venue_id=? AND IFNULL(customer_visible, 1) = 0`,
          [venueId]
        )
        hidden = new Set((hc || []).map((r) => String(r.name || '').trim()).filter(Boolean))
      } catch (e) {}
      hidden.add('外场')
      const list = (rows || []).filter((r) => !isOutdoorSharedCourt(r.court) && !hidden.has(String(r.court || '').trim())).map((r) => ({
        court: r.court,
        timeSlot: r.time_slot,
        weekday: r.weekday,
        price: Number(r.price) || 0
      }))
      return { ok: true, list, fnVer: FN_VER }
    }
    if (action === 'getMyEvaluations') {
      const userId = event.userId || ''
      if (!userId) return { ok: false, msg: '缺少用户' }
      const [rows] = await pool.query(
        'SELECT * FROM student_evaluations WHERE user_id=? ORDER BY created_at DESC LIMIT 20',
        [userId]
      )
      return { ok: true, list: rows || [] }
    }
    if (action === 'getNotice') {
      const venueId = event.venueId || ''
      try {
        let sql = "SELECT id, title, content FROM notice_templates WHERE status='active'"
        const params = []
        if (venueId) {
          sql += ' AND (venue_id=? OR venue_id=\'\')'
          params.push(venueId)
        }
        sql += ' ORDER BY (venue_id=?) DESC, id DESC LIMIT 1'
        params.push(venueId || '')
        const [rows] = await pool.query(sql, params)
        return { ok: true, notice: rows[0] || null, fnVer: FN_VER }
      } catch (e) {
        return { ok: true, notice: null, fnVer: FN_VER }
      }
    }
    if (action === 'coachBookPrivate' || action === 'coachSaveBooking' || action === 'bookPrivateLesson') {
      return { ok: false, msg: '教练不能代约私教课或为他人预约', fnVer: FN_VER }
    }

    if (action === 'getMallProducts') {
      try {
        const [rows] = await pool.query(
          `SELECT * FROM card_templates WHERE type='group' AND IFNULL(status,'active') IN ('active','启用','') ORDER BY id ASC`
        )
        const list = (rows || []).filter((r) => mall.isMallListed(r)).map((r) => ({
          id: String(r.id),
          templateId: String(r.id),
          name: r.name,
          desc: r.description || '',
          detail: r.description || r.remark || '',
          price: mall.templatePriceYuan(r),
          totalTimes: Number(r.total_times) || 0,
          type: r.type,
          status: r.status || 'active'
        }))
        return { ok: true, list, fnVer: FN_VER }
      } catch (e) {
        return { ok: false, msg: e.message || '商城商品读取失败', list: [], fnVer: FN_VER }
      }
    }

    if (action === 'getGroupClassCalendar') {
      const start = event.startDate || event.start || ''
      const end = event.endDate || event.end || ''
      try {
        try { await autoCancelDueGroupClasses(pool, { operatorName: '系统' }) } catch (e) {}
        const settings = await settingsLib.loadSettings(pool)
        let sql = `SELECT g.*, v.name AS venue_name
                     FROM group_classes g
                     LEFT JOIN venues v ON CAST(v.id AS CHAR) = CAST(g.venue_id AS CHAR)
                    WHERE 1=1`
        const params = []
        if (start) { sql += ' AND g.date >= ?'; params.push(start) }
        if (end) { sql += ' AND g.date <= ?'; params.push(end) }
        sql += ' ORDER BY g.date, g.time, g.id'
        let classes = []
        try {
          const [gr] = await pool.query(sql, params)
          classes = gr || []
        } catch (e) {
          classes = []
        }
        const calendar = settingsLib.buildCalendarDays(classes, settings)
        const today = settingsLib.todayYmd(new Date())
        const hasUpcomingGroupClass = Object.keys(calendar.days || {}).some((d) => d >= today)
        return { ok: true, calendar, hasUpcomingGroupClass, settings, fnVer: FN_VER }
      } catch (e) {
        return { ok: true, calendar: { days: {}, hasUpcoming: false, rotationVenueIds: [] }, hasUpcomingGroupClass: false, fnVer: FN_VER }
      }
    }

    if (action === 'requestCardRefund') {
      const cardId = event.cardId || event.id
      if (!cardId) return { ok: false, msg: '缺少卡号', fnVer: FN_VER }
      let userId = null
      if (event.userId != null && /^\d+$/.test(String(event.userId).trim())) userId = Number(event.userId)
      userId = await resolveUserId(pool, userId, openid, event.phone)
      const [rows] = await pool.query('SELECT * FROM member_cards WHERE id=? LIMIT 1', [cardId])
      const card = rows[0]
      if (!card) return { ok: false, msg: '会员卡不存在', fnVer: FN_VER }
      if (card.status === 'deleted') return { ok: false, msg: '这张卡已经删了', fnVer: FN_VER }
      if (card.status === 'refunded') return { ok: false, msg: '已退卡', fnVer: FN_VER }
      const ownerOk = (userId && Number(card.user_id) === Number(userId)) ||
        (openid && card.openid && String(card.openid) === String(openid))
      if (!ownerOk) return { ok: false, msg: '只能申请退自己的卡', fnVer: FN_VER }
      if (!mall.hasPayOrder(card)) {
        return { ok: false, msg: '这张卡不是线上微信支付购买，请到前台办理退卡', fnVer: FN_VER }
      }
      const payOrderId = mall.parsePayOrderIdFromCard(card)
      const statusBefore = card.status
      try {
        const [exist] = await pool.query(
          `SELECT id, status FROM card_refund_requests
            WHERE card_id=? AND status IN ('pending','refunding') ORDER BY id DESC LIMIT 1`,
          [cardId]
        )
        if (exist && exist[0]) {
          return {
            ok: true,
            already: true,
            requestId: String(exist[0].id),
            cardStatus: statusBefore,
            msg: '已提交退款申请，请等待管理员确认',
            fnVer: FN_VER
          }
        }
        const [ins] = await pool.query(
          `INSERT INTO card_refund_requests
            (card_id, user_id, openid, pay_order_id, status, remaining_times, total_times,
             paid_amount, reason, requested_at, created_at, updated_at)
           VALUES (?, ?, ?, ?, 'pending', ?, ?, ?, ?, NOW(), NOW(), NOW())`,
          [
            card.id,
            userId,
            openid || card.openid || '',
            payOrderId || null,
            Number(card.remaining_times) || 0,
            Number(card.total_times) || 0,
            mall.paidAmountOfCard(card),
            String(event.reason || '用户申请退款').slice(0, 255)
          ]
        )
        const [after] = await pool.query('SELECT status FROM member_cards WHERE id=? LIMIT 1', [card.id])
        return {
          ok: true,
          requestId: String(ins.insertId),
          cardStatus: (after[0] && after[0].status) || statusBefore,
          msg: '已提交退款申请，前台报备后由管理员确认才会退回微信',
          fnVer: FN_VER
        }
      } catch (e) {
        const msg = String((e && e.message) || '')
        if (msg.indexOf('card_refund_requests') >= 0 || msg.indexOf("doesn't exist") >= 0) {
          return { ok: false, msg: '退款申请功能尚未开通，请先执行预览/应用 SQL 创建申请表', fnVer: FN_VER }
        }
        return { ok: false, msg: e.message || '提交失败', fnVer: FN_VER }
      }
    }

    if (action === 'getMyRefundRequests') {
      try {
        let userId = null
        if (event.userId != null && /^\d+$/.test(String(event.userId).trim())) userId = Number(event.userId)
        userId = await resolveUserId(pool, userId, openid, event.phone)
        const [rows] = await pool.query(
          `SELECT * FROM card_refund_requests
            WHERE (user_id=? OR (? <> '' AND openid=?))
            ORDER BY id DESC LIMIT 50`,
          [userId || 0, openid || '', openid || '']
        )
        return { ok: true, list: rows || [], fnVer: FN_VER }
      } catch (e) {
        return { ok: true, list: [], fnVer: FN_VER }
      }
    }

    return { ok: false, msg: '未知 action', fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '服务异常' }
  }
}
