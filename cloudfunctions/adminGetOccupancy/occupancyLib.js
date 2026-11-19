'use strict'

const ALL_SLOTS = [
  '08:00-09:00',
  '09:00-10:00',
  '10:00-11:00',
  '11:00-12:00',
  '12:00-13:00',
  '13:00-14:00',
  '14:00-15:00',
  '15:00-16:00',
  '16:00-17:00',
  '17:00-18:00',
  '18:00-19:00',
  '19:00-20:00',
  '20:00-21:00',
  '21:00-22:00'
]

const BUCKETS = [
  { id: '08-10', label: '8-10点', hours: ['08:00-09:00', '09:00-10:00'] },
  { id: '10-12', label: '10-12点', hours: ['10:00-11:00', '11:00-12:00'] },
  { id: '12-13', label: '12-13点', hours: ['12:00-13:00'] },
  { id: '13-15', label: '13-15点', hours: ['13:00-14:00', '14:00-15:00'] },
  { id: '15-18', label: '15-18点', hours: ['15:00-16:00', '16:00-17:00', '17:00-18:00'] },
  { id: '18-19', label: '18-19点', hours: ['18:00-19:00'] },
  { id: '19-21', label: '19-21点', hours: ['19:00-20:00', '20:00-21:00'] },
  { id: '21-22', label: '21-22点', hours: ['21:00-22:00'] }
]

const DAY_PARTS = [
  { id: 'weekday', label: '周一至五', weekdays: [1, 2, 3, 4, 5] },
  { id: 'weekend', label: '周六日', weekdays: [6, 7] }
]

const ROW_ORDER = ['海心沙', '海心沙匹克球', '中大', '花地湾', '陈家祠', '木兰', '杨箕', '员岗']

function pad(n) {
  return n < 10 ? '0' + n : '' + n
}

function ymd(d) {
  return d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate())
}

function fmtDate(v) {
  if (!v) return ''
  if (typeof v === 'string') {
    const m = v.match(/^(\d{4})-(\d{2})-(\d{2})/)
    if (m) return m[0]
  }
  const d = v instanceof Date ? v : new Date(String(v).replace(/-/g, '/'))
  if (Number.isNaN(d.getTime())) return ''
  return ymd(d)
}

function listDates(start, end) {
  const out = []
  const a = new Date(fmtDate(start).replace(/-/g, '/'))
  const b = new Date(fmtDate(end).replace(/-/g, '/'))
  if (Number.isNaN(a.getTime()) || Number.isNaN(b.getTime()) || a > b) return out
  const cur = new Date(a)
  while (cur <= b) {
    out.push(ymd(cur))
    cur.setDate(cur.getDate() + 1)
  }
  return out
}

function weekdayMon1(dateStr) {
  const d = new Date(String(dateStr).replace(/-/g, '/'))
  if (Number.isNaN(d.getTime())) return 0
  const w = d.getDay()
  return w === 0 ? 7 : w
}

function dayPartOf(dateStr) {
  const w = weekdayMon1(dateStr)
  if (w >= 1 && w <= 5) return 'weekday'
  if (w === 6 || w === 7) return 'weekend'
  return ''
}

function normCourt(name) {
  return String(name || '').trim().replace(/^发球机/u, '').replace(/场$/u, '')
}

function rateOf(occ, cap) {
  if (!cap) return null
  return Math.round((occ / cap) * 10000) / 100
}

function formatRate(rate) {
  if (rate == null) return '—'
  return rate.toFixed(2) + '%'
}

function slotSort(a, b) {
  return String(a).localeCompare(String(b))
}

function isPickleCourt(court) {
  const type = String((court && court.type) || '')
  const name = String((court && court.name) || '')
  if (type.indexOf('共用') >= 0) return false
  if (type.indexOf('匹克') >= 0) return true
  if (name.indexOf('匹克') >= 0) return true
  return false
}

function venueShortName(name) {
  const s = String(name || '').trim()
  const m = s.match(/[（(]([^）)]+)[）)]/)
  let short = m ? m[1] : s
  short = short.replace(/店$/, '')
  return short || s
}

function rowLabel(venueName, sport) {
  const short = venueShortName(venueName)
  return sport === 'pickleball' ? short + '匹克球' : short
}

function isBookableCourtStatus(status) {
  const s = String(status || '').trim()
  if (!s) return true
  return ['active', 'open', '启用', '开放'].indexOf(s) >= 0
}

function isOpen(ctx, vid, courtName, date, time) {
  if (ctx.slotFilter && ctx.slotFilter.length && ctx.slotFilter.indexOf(time) < 0) return false
  const w = weekdayMon1(date)
  if (ctx.useHours && !ctx.hourSet.has(String(vid) + '|' + w + '|' + time)) return false
  if (ctx.usePrice) {
    return ctx.openSet.has(String(vid) + '|' + normCourt(courtName) + '|' + w + '|' + time)
  }
  if (ctx.slots && ctx.slots.length) return ctx.slots.indexOf(time) >= 0
  return true
}

function occKey(vid, courtName, date, time) {
  return String(vid) + '|' + normCourt(courtName) + '|' + date + '|' + time
}

function expandHourSlots(timeStr) {
  const s = String(timeStr || '').trim()
  const m = s.match(/^(\d{1,2}):(\d{2})\s*-\s*(\d{1,2}):(\d{2})$/)
  if (!m) return s ? [s] : []
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
    slots.push(pad(Math.floor(a / 60)) + ':' + pad(a % 60) + '-' + pad(Math.floor(b / 60)) + ':' + pad(b % 60))
  }
  return slots.length ? slots : [s]
}

function timesOverlap(a, b) {
  const sa = new Set(expandHourSlots(a))
  return expandHourSlots(b).some((t) => sa.has(t))
}

function markOccupied(occupiedSet, courtKeySet, slotsAllow, rows) {
  for (const r of rows || []) {
    const key = String(r.venueId) + '|' + normCourt(r.court)
    if (courtKeySet && !courtKeySet.has(key)) continue
    const d = fmtDate(r.d || r.date)
    if (!d) continue
    const hours = expandHourSlots(r.time)
    for (const time of hours) {
      if (slotsAllow && slotsAllow.length && slotsAllow.indexOf(time) < 0) continue
      occupiedSet.add(key + '|' + d + '|' + time)
    }
  }
  return occupiedSet
}

function emptyCell() {
  return { capacity: 0, occupied: 0, rate: null, display: '—' }
}

function makeCell(occ, cap) {
  if (!cap) return emptyCell()
  const rate = rateOf(occ, cap)
  return { capacity: cap, occupied: occ, rate: rate, display: formatRate(rate) }
}

function buildCourtGroups(venues, courts) {
  const groups = []
  for (const v of venues || []) {
    const vCourts = (courts || []).filter((c) => String(c.venueId) === String(v.venueId))
    const tennis = vCourts.filter((c) => !isPickleCourt(c))
    const pickle = vCourts.filter((c) => isPickleCourt(c))
    if (tennis.length || (!tennis.length && !pickle.length)) {
      groups.push({
        key: String(v.venueId) + '|tennis',
        venueId: v.venueId,
        venueName: v.name,
        sport: 'tennis',
        label: rowLabel(v.name, 'tennis'),
        courts: tennis
      })
    }
    if (pickle.length) {
      groups.push({
        key: String(v.venueId) + '|pickleball',
        venueId: v.venueId,
        venueName: v.name,
        sport: 'pickleball',
        label: rowLabel(v.name, 'pickleball'),
        courts: pickle
      })
    }
  }
  groups.sort((a, b) => {
    const ia = ROW_ORDER.indexOf(a.label)
    const ib = ROW_ORDER.indexOf(b.label)
    const sa = ia < 0 ? 1000 : ia
    const sb = ib < 0 ? 1000 : ib
    if (sa !== sb) return sa - sb
    return String(a.key).localeCompare(String(b.key))
  })
  return groups
}

function aggregateGroup(group, dates, ctx, occupiedSet) {
  const bookable = (group.courts || []).filter((c) => isBookableCourtStatus(c.status))
  const parts = {}
  const partDays = {}
  for (const part of DAY_PARTS) {
    const days = dates.filter((d) => part.weekdays.indexOf(weekdayMon1(d)) >= 0)
    partDays[part.id] = days
    const cells = {}
    for (const bucket of BUCKETS) {
      const hours = ctx.slotFilter && ctx.slotFilter.length
        ? bucket.hours.filter((h) => ctx.slotFilter.indexOf(h) >= 0)
        : bucket.hours
      let cap = 0
      let occ = 0
      for (const c of bookable) {
        for (const d of days) {
          for (const t of hours) {
            if (!isOpen(ctx, group.venueId, c.name, d, t)) continue
            cap += 1
            if (occupiedSet.has(occKey(group.venueId, c.name, d, t))) occ += 1
          }
        }
      }
      cells[bucket.id] = makeCell(occ, cap)
    }
    parts[part.id] = cells
  }
  return {
    key: group.key,
    venueId: group.venueId,
    venueName: group.venueName,
    shortName: venueShortName(group.venueName),
    sport: group.sport,
    label: group.label,
    courts: bookable.length,
    courtNames: bookable.map((c) => c.name),
    cells: parts
  }
}

function sumCells(rows) {
  let capacity = 0
  let occupied = 0
  for (const row of rows || []) {
    for (const part of DAY_PARTS) {
      const cells = (row.cells && row.cells[part.id]) || {}
      for (const bucket of BUCKETS) {
        const cell = cells[bucket.id]
        if (!cell) continue
        capacity += cell.capacity
        occupied += cell.occupied
      }
    }
  }
  return {
    capacity,
    occupied,
    rate: rateOf(occupied, capacity),
    display: formatRate(rateOf(occupied, capacity))
  }
}

function buildMatrix({ venues, courts, dates, ctx, occupiedSet }) {
  const groups = buildCourtGroups(venues, courts)
  const rows = groups.map((g) => aggregateGroup(g, dates, ctx, occupiedSet))
  return {
    buckets: BUCKETS.map((b) => ({ id: b.id, label: b.label, hours: b.hours.slice() })),
    dayParts: DAY_PARTS.map((p) => ({
      id: p.id,
      label: p.label,
      days: dates.filter((d) => p.weekdays.indexOf(weekdayMon1(d)) >= 0)
    })),
    rows,
    summary: sumCells(rows)
  }
}

function hourlyStats(courts, dates, slots, ctx, occupiedSet) {
  let capacity = 0
  let occupied = 0
  const bookable = (courts || []).filter((c) => isBookableCourtStatus(c.status))
  for (const c of bookable) {
    for (const d of dates) {
      for (const t of slots) {
        if (!isOpen(ctx, c.venueId, c.name, d, t)) continue
        capacity += 1
        if (occupiedSet.has(occKey(c.venueId, c.name, d, t))) occupied += 1
      }
    }
  }
  return { capacity, occupied, rate: rateOf(occupied, capacity) == null ? 0 : rateOf(occupied, capacity) }
}

module.exports = {
  ALL_SLOTS,
  BUCKETS,
  DAY_PARTS,
  ROW_ORDER,
  pad,
  ymd,
  fmtDate,
  listDates,
  weekdayMon1,
  dayPartOf,
  normCourt,
  rateOf,
  formatRate,
  slotSort,
  isPickleCourt,
  venueShortName,
  rowLabel,
  isBookableCourtStatus,
  isOpen,
  occKey,
  expandHourSlots,
  timesOverlap,
  markOccupied,
  emptyCell,
  makeCell,
  buildCourtGroups,
  aggregateGroup,
  sumCells,
  buildMatrix,
  hourlyStats
}
