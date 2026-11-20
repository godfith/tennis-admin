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

const FN_VER = 'outdoorSched-20261120b'

const FALLBACK_SLOTS = [
  '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00',
  '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00',
  '18:00-19:00', '19:00-20:00', '20:00-21:00', '21:00-22:00'
]

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

function fmtDate(v) {
  if (!v) return ''
  const s = String(v)
  const m = s.match(/^(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : s.slice(0, 10)
}

function isTestVenue(id) {
  const s = String(id || '').toLowerCase()
  return s.indexOf('e2e') >= 0 || s.indexOf('test') >= 0
}

function shortVenueName(name, id) {
  const s = String(name || '')
  const m = s.match(/[（(]([^）)]+)[）)]/)
  if (m) return m[1].replace(/店$/, '')
  return s || String(id || '')
}

function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
}

function payMethodText(r) {
  if (r.card_name || r.card_id) return '会员卡'
  const src = String(r.source || '')
  if (src === 'user') return money(r.amount) > 0 ? '小程序支付' : '小程序'
  if (money(r.amount) > 0) return '现金'
  if (String(r.status || '') === 'locked') return '锁场'
  return '未收款'
}

function mapBooking(r) {
  return {
    _id: String(r.id),
    id: String(r.id),
    orderNo: r.order_no || '',
    venueId: r.venue_id || '',
    venueName: r.venue_name || '',
    venueShort: shortVenueName(r.venue_name, r.venue_id),
    court: r.court || '',
    date: fmtDate(r.date),
    time: r.time || '',
    userId: r.user_id,
    memberId: r.user_id,
    openid: r.openid || '',
    userName: r.user_name || '',
    phone: r.user_phone || r.phone || '',
    status: r.status || 'booked',
    cardId: r.card_id ? String(r.card_id) : '',
    cardName: r.card_name || '',
    cardType: r.card_type || '',
    coachId: r.coach_id ? String(r.coach_id) : '',
    coachName: r.coach_name || '',
    amount: money(r.amount),
    remark: r.remark || '',
    source: r.source || '',
    operatorName: r.operator_name || '',
    payMethod: payMethodText(r)
  }
}

function normPersonName(n) {
  return String(n || '').replace(/\s+/g, '').trim()
}
function normPersonPhone(p) {
  return String(p || '').replace(/\D/g, '')
}
function personKey(c) {
  const sid = c.staff_id ? String(c.staff_id).trim() : ''
  if (sid) return 'staff:' + sid
  const phone = normPersonPhone(c.phone)
  if (phone) return 'phone:' + phone
  const name = normPersonName(c.name)
  if (name) return 'name:' + name
  return 'id:' + String(c.id)
}
function mergeCoachGroups(items) {
  const parent = items.map((_, i) => i)
  function find(i) {
    while (parent[i] !== i) {
      parent[i] = parent[parent[i]]
      i = parent[i]
    }
    return i
  }
  function union(a, b) {
    const pa = find(a)
    const pb = find(b)
    if (pa !== pb) parent[pa] = pb
  }
  const byStaff = new Map()
  const byPhone = new Map()
  const byName = new Map()
  items.forEach((r, i) => {
    const sid = r.staff_id ? String(r.staff_id).trim() : ''
    const phone = normPersonPhone(r.phone)
    const name = normPersonName(r.name)
    if (sid) {
      if (byStaff.has(sid)) union(i, byStaff.get(sid))
      else byStaff.set(sid, i)
    }
    if (phone) {
      if (byPhone.has(phone)) union(i, byPhone.get(phone))
      else byPhone.set(phone, i)
    }
    if (name) {
      if (byName.has(name)) union(i, byName.get(name))
      else byName.set(name, i)
    }
  })
  const buckets = new Map()
  items.forEach((r, i) => {
    const root = find(i)
    if (!buckets.has(root)) buckets.set(root, [])
    buckets.get(root).push(r)
  })
  return Array.from(buckets.values())
}

function isActiveCoach(status) {
  const s = String(status || '')
  return s === 'active' || s === '在职' || s === ''
}

exports.main = async (event) => {
  const body = parseEvent(event)
  const date = fmtDate(body.date || (body.data && body.data.date) || '')
  if (!date) return { ok: false, msg: '缺少日期', fnVer: FN_VER, coaches: [], bookings: [], occupied: [], venues: [], slots: [] }

  const d = new Date(date.replace(/-/g, '/'))
  let wd = d.getDay()
  if (wd === 0) wd = 7

  try {
    const [venueRows] = await pool.query(
      `SELECT v.id, v.name, c.id AS court_id, c.status AS court_status
         FROM venues v
         JOIN courts c ON c.venue_id = v.id AND TRIM(c.name) = '外场'
        WHERE v.id NOT LIKE '%e2e%'
          AND v.id NOT LIKE '%test%'
        ORDER BY v.id`
    )
    const venues = (venueRows || []).filter((r) => !isTestVenue(r.id)).map((r) => ({
      id: r.id,
      name: r.name || r.id,
      shortName: shortVenueName(r.name, r.id),
      courtId: r.court_id ? String(r.court_id) : '',
      status: r.court_status || 'open'
    }))
    const venueIds = venues.map((v) => v.id)
    if (!venueIds.length) {
      return { ok: true, fnVer: FN_VER, date, slots: FALLBACK_SLOTS.slice(), venues: [], coaches: [], bookings: [], occupied: [] }
    }

    const ph = venueIds.map(() => '?').join(',')

    const [coachRows] = await pool.query(
      `SELECT id, venue_id, staff_id, name, phone, specialty, sort, status, remark
         FROM coaches
        WHERE venue_id IN (${ph})
        ORDER BY sort ASC, id ASC`,
      venueIds
    )

    const activeRows = (coachRows || []).filter((r) => isActiveCoach(r.status))
    const coaches = mergeCoachGroups(activeRows).map((rows) => {
      const first = rows[0]
      const g = {
        _id: String(first.id),
        ids: [],
        name: first.name || '',
        phone: first.phone || '',
        staffId: first.staff_id ? String(first.staff_id) : '',
        venues: []
      }
      rows.forEach((r) => {
        const cid = String(r.id)
        if (g.ids.indexOf(cid) < 0) g.ids.push(cid)
        const vmeta = venues.find((v) => v.id === r.venue_id)
        g.venues.push({
          id: r.venue_id,
          name: vmeta ? vmeta.name : (r.venue_id || ''),
          shortName: vmeta ? vmeta.shortName : shortVenueName('', r.venue_id),
          coachId: cid
        })
        if (!g.name && r.name) g.name = r.name
        if (!g.phone && r.phone) g.phone = r.phone
        if (!g.staffId && r.staff_id) g.staffId = String(r.staff_id)
      })
      return g
    }).sort((a, b) => String(a.name).localeCompare(String(b.name), 'zh'))

    const allCoachIds = []
    coaches.forEach((c) => c.ids.forEach((id) => allCoachIds.push(id)))

    const [bookRows] = await pool.query(
      `SELECT b.id, b.order_no, b.venue_id, b.venue_name, b.court, b.date, b.time,
              b.user_id, b.openid, b.user_name, b.phone, b.status,
              IFNULL(NULLIF(u.phone,''), b.phone) AS user_phone,
              b.card_id, b.card_name, b.card_type, b.coach_id, b.coach_name,
              b.amount, b.remark, b.source, b.operator_name
         FROM bookings b
         LEFT JOIN users u ON u.id = b.user_id
        WHERE b.date=? AND b.status IN ('booked','locked')
          AND b.venue_id IN (${ph})
        ORDER BY b.time, b.venue_id, b.court`,
      [date, ...venueIds]
    )

    const bookings = []
    const occupied = []
    for (const r of (bookRows || [])) {
      const row = mapBooking(r)
      if (String(r.court || '').trim() === '外场') {
        if (row.status === 'booked') bookings.push(row)
      } else if (r.coach_id) {
        occupied.push(Object.assign({}, row, { kind: 'booking' }))
      }
    }

    const [groupRows] = await pool.query(
      `SELECT g.id, g.name, g.venue_id, v.name AS venue_name, g.court, g.date, g.time,
              g.coach_id, g.coach_name, g.status, g.enrolled, g.capacity
         FROM group_classes g
         LEFT JOIN venues v ON v.id = g.venue_id
        WHERE g.date=? AND g.status='open' AND g.venue_id IN (${ph})
        ORDER BY g.time, g.venue_id`,
      [date, ...venueIds]
    )
    for (const r of (groupRows || [])) {
      occupied.push({
        kind: 'group',
        _id: String(r.id),
        id: String(r.id),
        coachId: r.coach_id ? String(r.coach_id) : '',
        coachName: r.coach_name || '',
        time: r.time || '',
        date: fmtDate(r.date),
        venueId: r.venue_id || '',
        venueName: r.venue_name || '',
        venueShort: shortVenueName(r.venue_name, r.venue_id),
        court: r.court || '',
        name: r.name || '团课',
        userName: r.name || '团课',
        status: r.status || 'open',
        enrolled: r.enrolled != null ? Number(r.enrolled) : 0,
        capacity: r.capacity != null ? Number(r.capacity) : 0
      })
    }

    let slots = FALLBACK_SLOTS.slice()
    try {
      const [hourRows] = await pool.query(
        `SELECT DISTINCT time_slot
           FROM venue_hours
          WHERE weekday=? AND venue_id IN (${ph})
          ORDER BY time_slot`,
        [wd, ...venueIds]
      )
      const collected = (hourRows || []).map((r) => r.time_slot).filter(Boolean)
      if (collected.length) slots = collected
    } catch (e) {}

    return {
      ok: true,
      fnVer: FN_VER,
      date,
      slots,
      venues,
      coaches,
      bookings,
      occupied
    }
  } catch (e) {
    return { ok: false, msg: e.message || '查询失败', fnVer: FN_VER, coaches: [], bookings: [], occupied: [], venues: [], slots: [] }
  }
}
