const mysql = require('mysql2/promise')
const lib = require('./occupancyLib')

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

const FN_VER = 'occupancy-20261116a'
const ALL_SLOTS = lib.ALL_SLOTS

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

exports.main = async (event) => {
  const e = parseEvent(event)
  const startDate = lib.fmtDate(e.startDate)
  const endDate = lib.fmtDate(e.endDate)
  if (!startDate || !endDate) {
    return { ok: false, msg: '请选择开始和结束日期', fnVer: FN_VER }
  }
  const dates = lib.listDates(startDate, endDate)
  if (!dates.length) return { ok: false, msg: '日期区间无效', fnVer: FN_VER }
  if (dates.length > 93) return { ok: false, msg: '一次最多查 93 天', fnVer: FN_VER }

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

  const emptyMatrix = lib.buildMatrix({
    venues: [],
    courts: [],
    dates,
    ctx: { useHours: false, hourSet: new Set(), usePrice: false, openSet: new Set(), slots: ALL_SLOTS, slotFilter },
    occupiedSet: new Set()
  })

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
        fnVer: FN_VER,
        summary: { capacity: 0, occupied: 0, rate: 0, days: dates.length, courts: 0, bookedCount: 0 },
        byVenue: [],
        byCourt: [],
        byTime: [],
        byDate: dates.map((d) => ({ date: d, capacity: 0, occupied: 0, rate: 0 })),
        heatmap: [],
        matrix: emptyMatrix,
        slots: ALL_SLOTS,
        dates
      }
    }

    const vids = venues.map((v) => v.venueId)
    const [courtRows] = await pool.query(
      `SELECT venue_id AS venueId, name, type, status, remark FROM courts
       WHERE venue_id IN (${vids.map(() => '?').join(',')})
       ORDER BY venue_id, id`,
      vids
    )

    let courts = (courtRows || []).filter((c) => String(c.name || '').trim() !== '外场')
    if (courtFilter.length) {
      const cf = new Set(courtFilter)
      courts = courts.filter((c) => cf.has(c.name))
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
        openSet.add(String(row.venueId) + '|' + lib.normCourt(row.court) + '|' + String(row.weekday) + '|' + String(row.timeSlot))
        pricedSlots.add(String(row.timeSlot))
      }
    })
    const usePrice = openSet.size > 0

    let slots = useHours ? Array.from(hourSlots).sort(lib.slotSort) : Array.from(pricedSlots).sort(lib.slotSort)
    if (!slots.length) slots = ALL_SLOTS.slice()
    if (slotFilter.length) {
      const allow = new Set(slotFilter)
      slots = slots.filter((t) => allow.has(t))
      if (!slots.length) slots = slotFilter.slice()
    }

    const ctx = { useHours, hourSet, usePrice, openSet, slots, slotFilter }

    const bookableCourts = courts.filter((c) => lib.isBookableCourtStatus(c.status))
    const courtKeySet = new Set(bookableCourts.map((c) => String(c.venueId) + '|' + lib.normCourt(c.name)))

    const slotIn = slots.length ? slots : ALL_SLOTS
    let bookRows = []
    if (bookableCourts.length) {
      const [br] = await pool.query(
        `SELECT venue_id AS venueId, court, DATE_FORMAT(date,'%Y-%m-%d') AS d, time
         FROM bookings
         WHERE status IN ('booked','locked','pending_pay')
           AND date >= ? AND date <= ?
           AND venue_id IN (${vids.map(() => '?').join(',')})`,
        [startDate, endDate, ...vids]
      )
      bookRows = br
    }

    let groupRows = []
    if (bookableCourts.length) {
      try {
        const [g] = await pool.query(
          `SELECT venue_id AS venueId, court, DATE_FORMAT(date,'%Y-%m-%d') AS d, time
           FROM group_classes
           WHERE status = 'open'
             AND date >= ? AND date <= ?
             AND venue_id IN (${vids.map(() => '?').join(',')})`,
          [startDate, endDate, ...vids]
        )
        groupRows = g
      } catch (err) {
        groupRows = []
      }
    }

    const occupiedSet = new Set()
    lib.markOccupied(occupiedSet, courtKeySet, slotIn, bookRows)
    lib.markOccupied(occupiedSet, courtKeySet, slotIn, groupRows)

    const matrix = lib.buildMatrix({ venues, courts, dates, ctx, occupiedSet })

    const hourly = lib.hourlyStats(courts, dates, slots, ctx, occupiedSet)
    const summary = {
      capacity: hourly.capacity,
      occupied: hourly.occupied,
      rate: hourly.rate,
      days: dates.length,
      courts: bookableCourts.length,
      bookedCount: bookRows.length,
      openByPrice: usePrice
    }

    const byVenue = venues.map((v) => {
      const vCourts = bookableCourts.filter((c) => c.venueId === v.venueId)
      const st = lib.hourlyStats(vCourts, dates, slots, ctx, occupiedSet)
      return {
        venueId: v.venueId,
        venueName: v.name,
        capacity: st.capacity,
        occupied: st.occupied,
        rate: st.rate,
        courts: vCourts.length
      }
    })

    const byCourt = bookableCourts.map((c) => {
      const st = lib.hourlyStats([c], dates, slots, ctx, occupiedSet)
      const v = venues.find((x) => x.venueId === c.venueId)
      return {
        venueId: c.venueId,
        venueName: (v && v.name) || '',
        court: c.name,
        type: c.type || '',
        capacity: st.capacity,
        occupied: st.occupied,
        rate: st.rate
      }
    })

    const byTime = slots.map((t) => {
      const st = lib.hourlyStats(bookableCourts, dates, [t], ctx, occupiedSet)
      return { time: t, capacity: st.capacity, occupied: st.occupied, rate: st.rate }
    }).filter((row) => row.capacity > 0)

    const weekdayNames = ['', '一', '二', '三', '四', '五', '六', '日']
    const heatMap = []
    for (let w = 1; w <= 7; w++) {
      const daysOfW = dates.filter((d) => lib.weekdayMon1(d) === w)
      if (!daysOfW.length) continue
      for (const t of slots) {
        const st = lib.hourlyStats(bookableCourts, daysOfW, [t], ctx, occupiedSet)
        if (!st.capacity) continue
        heatMap.push({
          weekday: w,
          weekdayLabel: '周' + weekdayNames[w],
          time: t,
          capacity: st.capacity,
          occupied: st.occupied,
          rate: st.rate
        })
      }
    }

    const byDate = dates.map((d) => {
      const st = lib.hourlyStats(bookableCourts, [d], slots, ctx, occupiedSet)
      return { date: d, capacity: st.capacity, occupied: st.occupied, rate: st.rate }
    })

    return {
      ok: true,
      fnVer: FN_VER,
      summary,
      byVenue,
      byCourt,
      byTime,
      byDate,
      heatmap: heatMap,
      matrix,
      slots,
      dates,
      courts: bookableCourts.map((c) => ({ venueId: c.venueId, name: c.name, type: c.type || '' }))
    }
  } catch (err) {
    console.error(err)
    return { ok: false, msg: err.message || '查询失败', fnVer: FN_VER }
  }
}
