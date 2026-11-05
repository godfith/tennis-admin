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

const ALL_SLOTS = [
  '08:00-09:00',
  '09:00-10:00',
  '10:00-11:00',
  '11:00-12:00',
  '14:00-15:00',
  '15:00-16:00',
  '16:00-17:00',
  '17:00-18:00',
  '18:00-19:00',
  '19:00-20:00',
  '20:00-21:00'
]

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

function rateOf(occ, cap) {
  if (!cap) return 0
  return Math.round((occ / cap) * 1000) / 10
}

function weekdayMon1(dateStr) {
  const d = new Date(String(dateStr).replace(/-/g, '/'))
  if (Number.isNaN(d.getTime())) return 0
  const w = d.getDay()
  return w === 0 ? 7 : w
}

function slotSort(a, b) {
  return String(a).localeCompare(String(b))
}

exports.main = async (event) => {
  const e = parseEvent(event)
  const startDate = fmtDate(e.startDate)
  const endDate = fmtDate(e.endDate)
  if (!startDate || !endDate) {
    return { ok: false, msg: '请选择开始和结束日期' }
  }
  const dates = listDates(startDate, endDate)
  if (!dates.length) return { ok: false, msg: '日期区间无效' }
  if (dates.length > 93) return { ok: false, msg: '一次最多查 93 天' }

  let venueIds = []
  if (Array.isArray(e.venueIds) && e.venueIds.length) {
    venueIds = e.venueIds.map(String).filter(Boolean)
  } else if (e.venueId) {
    venueIds = [String(e.venueId)]
  }

  const slotFilter = Array.isArray(e.timeSlots) ? e.timeSlots.map(String).filter(Boolean) : []

  let courtFilter = []
  if (Array.isArray(e.courts) && e.courts.length) {
    courtFilter = e.courts.map(String).filter(Boolean)
  }

  try {
    let venues
    if (venueIds.length) {
      const [rows] = await pool.query(
        `SELECT id AS venueId, name FROM venues
         WHERE id IN (${venueIds.map(() => '?').join(',')})
         ORDER BY sort, id`,
        venueIds
      )
      venues = rows
    } else {
      const [rows] = await pool.query(
        'SELECT id AS venueId, name FROM venues ORDER BY sort, id'
      )
      venues = rows
    }
    if (!venues.length) {
      return {
        ok: true,
        summary: { capacity: 0, occupied: 0, rate: 0, days: dates.length, courts: 0, bookedCount: 0 },
        byVenue: [],
        byCourt: [],
        byTime: [],
        heatmap: [],
        slots: ALL_SLOTS,
        dates
      }
    }

    const vids = venues.map((v) => v.venueId)
    const [courtRows] = await pool.query(
      `SELECT venue_id AS venueId, name FROM courts
       WHERE venue_id IN (${vids.map(() => '?').join(',')})
         AND (status IS NULL OR status IN ('active','open','启用','开放',''))
       ORDER BY venue_id, id`,
      vids
    )

    let courts = courtRows
    if (courtFilter.length) {
      const cf = new Set(courtFilter)
      courts = courts.filter((c) => cf.has(c.name))
    }

    if (!courts.length) {
      return {
        ok: true,
        summary: { capacity: 0, occupied: 0, rate: 0, days: dates.length, courts: 0, bookedCount: 0 },
        byVenue: venues.map((v) => ({
          venueId: v.venueId,
          venueName: v.name,
          capacity: 0,
          occupied: 0,
          rate: 0,
          courts: 0
        })),
        byCourt: [],
        byTime: ALL_SLOTS.map((t) => ({ time: t, capacity: 0, occupied: 0, rate: 0 })),
        heatmap: [],
        slots: ALL_SLOTS,
        dates
      }
    }

    let hourRows = []
    try {
      const [hr] = await pool.query(
        `SELECT venue_id AS venueId, weekday, time_slot AS timeSlot
         FROM venue_hours
         WHERE venue_id IN (${vids.map(() => '?').join(',')})`,
        vids
      )
      hourRows = hr
    } catch (err) {
      hourRows = []
    }
    const hourSet = new Set()
    const hourSlots = new Set()
    hourRows.forEach((row) => {
      hourSet.add(String(row.venueId) + '|' + String(row.weekday) + '|' + String(row.timeSlot))
      hourSlots.add(String(row.timeSlot))
    })
    const useHours = hourSet.size > 0

    let priceRows = []
    try {
      const [pr] = await pool.query(
        `SELECT venue_id AS venueId, court, weekday, time_slot AS timeSlot, price
         FROM court_prices
         WHERE venue_id IN (${vids.map(() => '?').join(',')})`,
        vids
      )
      priceRows = pr
    } catch (err) {
      priceRows = []
    }

    const openSet = new Set()
    const pricedSlots = new Set()
    priceRows.forEach((row) => {
      if (Number(row.price) > 0) {
        openSet.add(String(row.venueId) + '|' + String(row.court) + '|' + String(row.weekday) + '|' + String(row.timeSlot))
        pricedSlots.add(String(row.timeSlot))
      }
    })
    const usePrice = openSet.size > 0

    let slots = useHours ? Array.from(hourSlots).sort(slotSort) : Array.from(pricedSlots).sort(slotSort)
    if (!slots.length) slots = ALL_SLOTS.slice()
    if (slotFilter.length) {
      const allow = new Set(slotFilter)
      slots = slots.filter((t) => allow.has(t))
      if (!slots.length) slots = slotFilter.slice()
    }

    function isOpen(vid, court, date, time) {
      if (slotFilter.length && !slotFilter.includes(time)) return false
      const w = weekdayMon1(date)
      if (useHours && !hourSet.has(String(vid) + '|' + w + '|' + time)) return false
      if (usePrice) return openSet.has(String(vid) + '|' + String(court) + '|' + w + '|' + time)
      return slots.includes(time)
    }

    const [bookRows] = await pool.query(
      `SELECT venue_id AS venueId, court, DATE_FORMAT(date,'%Y-%m-%d') AS d, time
       FROM bookings
       WHERE status = 'booked'
         AND date >= ? AND date <= ?
         AND venue_id IN (${vids.map(() => '?').join(',')})
         AND time IN (${slots.map(() => '?').join(',')})`,
      [startDate, endDate, ...vids, ...slots]
    )

    let groupRows = []
    try {
      const [g] = await pool.query(
        `SELECT venue_id AS venueId, court, DATE_FORMAT(date,'%Y-%m-%d') AS d, time
         FROM group_classes
         WHERE status = 'open'
           AND date >= ? AND date <= ?
           AND venue_id IN (${vids.map(() => '?').join(',')})
           AND time IN (${slots.map(() => '?').join(',')})`,
        [startDate, endDate, ...vids, ...slots]
      )
      groupRows = g
    } catch (err) {
      groupRows = []
    }

    const courtKeySet = new Set(courts.map((c) => c.venueId + '|' + c.name))
    const occupiedSet = new Set()
    function mark(rows) {
      for (const r of rows) {
        const key = String(r.venueId) + '|' + String(r.court)
        if (!courtKeySet.has(key)) continue
        if (!slots.includes(r.time)) continue
        occupiedSet.add(key + '|' + r.d + '|' + r.time)
      }
    }
    mark(bookRows)
    mark(groupRows)

    let capacity = 0
    let occupied = 0
    for (const c of courts) {
      for (const d of dates) {
        for (const t of slots) {
          if (!isOpen(c.venueId, c.name, d, t)) continue
          capacity += 1
          if (occupiedSet.has(c.venueId + '|' + c.name + '|' + d + '|' + t)) occupied += 1
        }
      }
    }
    const summary = {
      capacity,
      occupied,
      rate: rateOf(occupied, capacity),
      days: dates.length,
      courts: courts.length,
      bookedCount: bookRows.length,
      openByPrice: usePrice
    }

    const byVenue = venues.map((v) => {
      const vCourts = courts.filter((c) => c.venueId === v.venueId)
      let cap = 0
      let occ = 0
      for (const c of vCourts) {
        for (const d of dates) {
          for (const t of slots) {
            if (!isOpen(v.venueId, c.name, d, t)) continue
            cap += 1
            if (occupiedSet.has(v.venueId + '|' + c.name + '|' + d + '|' + t)) occ += 1
          }
        }
      }
      return {
        venueId: v.venueId,
        venueName: v.name,
        capacity: cap,
        occupied: occ,
        rate: rateOf(occ, cap),
        courts: vCourts.length
      }
    })

    const byCourt = courts.map((c) => {
      let cap = 0
      let occ = 0
      for (const d of dates) {
        for (const t of slots) {
          if (!isOpen(c.venueId, c.name, d, t)) continue
          cap += 1
          if (occupiedSet.has(c.venueId + '|' + c.name + '|' + d + '|' + t)) occ += 1
        }
      }
      const v = venues.find((x) => x.venueId === c.venueId)
      return {
        venueId: c.venueId,
        venueName: (v && v.name) || '',
        court: c.name,
        capacity: cap,
        occupied: occ,
        rate: rateOf(occ, cap)
      }
    })

    const byTime = slots.map((t) => {
      let cap = 0
      let occ = 0
      for (const c of courts) {
        for (const d of dates) {
          if (!isOpen(c.venueId, c.name, d, t)) continue
          cap += 1
          if (occupiedSet.has(c.venueId + '|' + c.name + '|' + d + '|' + t)) occ += 1
        }
      }
      return { time: t, capacity: cap, occupied: occ, rate: rateOf(occ, cap) }
    }).filter((row) => row.capacity > 0)

    // 热力图：按「时段 x 星期」汇总占用率（多日平均）
    const weekdayNames = ['', '一', '二', '三', '四', '五', '六', '日']
    const heatMap = []
    for (let w = 1; w <= 7; w++) {
      const daysOfW = dates.filter((d) => {
        const day = new Date(d.replace(/-/g, '/')).getDay()
        const mon1 = day === 0 ? 7 : day
        return mon1 === w
      })
      if (!daysOfW.length) continue
      for (const t of slots) {
        let cap = 0
        let occ = 0
        for (const c of courts) {
          for (const d of daysOfW) {
            if (!isOpen(c.venueId, c.name, d, t)) continue
            cap += 1
            if (occupiedSet.has(c.venueId + '|' + c.name + '|' + d + '|' + t)) occ += 1
          }
        }
        if (!cap) continue
        heatMap.push({
          weekday: w,
          weekdayLabel: '周' + weekdayNames[w],
          time: t,
          capacity: cap,
          occupied: occ,
          rate: rateOf(occ, cap)
        })
      }
    }

    // 按日趋势
    const byDate = dates.map((d) => {
      let cap = 0
      let occ = 0
      for (const c of courts) {
        for (const t of slots) {
          if (!isOpen(c.venueId, c.name, d, t)) continue
          cap += 1
          if (occupiedSet.has(c.venueId + '|' + c.name + '|' + d + '|' + t)) occ += 1
        }
      }
      return { date: d, capacity: cap, occupied: occ, rate: rateOf(occ, cap) }
    })

    return {
      ok: true,
      fnVer: 'occupancy-20260911d',
      summary,
      byVenue,
      byCourt,
      byTime,
      byDate,
      heatmap: heatMap,
      slots,
      dates,
      courts: courts.map((c) => ({ venueId: c.venueId, name: c.name }))
    }
  } catch (err) {
    console.error(err)
    return { ok: false, msg: err.message || '查询失败' }
  }
}
