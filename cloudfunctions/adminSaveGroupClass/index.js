const mysql = require('mysql2/promise')
const settingsLib = require('./groupClassSettings')
const coachPerm = require('./coachPerm')
const coachBind = require('./coachBind')
const { loadNextFixedVenue } = require('./nextFixedVenue')


const adminRole = require('./adminRole')
const FN_VER = 'saveGroupClass-20261120e'

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



const {
  intOr,
  fmtDate,
  datesInRange,
  normClassType,
  venueLimits,
  rotationVenueForDate,
  loadSettings,
  saveSettings,
  isOutdoorCourtName,
  pickInternalClassCourt
} = settingsLib

function readMinEnrollment(data, fallback) {
  if (!data) return fallback == null ? 0 : fallback
  if (data.minEnrollment != null && data.minEnrollment !== '') return intOr(data.minEnrollment, fallback == null ? 0 : fallback, 0, 30)
  if (data.min_enrollment != null && data.min_enrollment !== '') return intOr(data.min_enrollment, fallback == null ? 0 : fallback, 0, 30)
  return fallback == null ? 0 : fallback
}

function readCancelBeforeHours(data, fallback) {
  const dft = fallback == null ? 2 : fallback
  if (!data) return dft
  if (data.cancelBeforeHours != null && data.cancelBeforeHours !== '') return intOr(data.cancelBeforeHours, dft, 0, 72)
  if (data.cancel_before_hours != null && data.cancel_before_hours !== '') return intOr(data.cancel_before_hours, dft, 0, 72)
  return dft
}

function readClassType(data) {
  if (!data) return 'fixed'
  return normClassType(data.classType || data.class_type || data.type)
}

function readTheme(data) {
  if (!data || data.theme == null) return ''
  return String(data.theme).trim().slice(0, 200)
}

function readCourseContent(data, settings) {
  const raw = data ? String(data.courseContentId || data.course_content_id || '').trim() : ''
  const themeIn = readTheme(data)
  const hit = settingsLib.findCourseContent(settings, raw) || settingsLib.findCourseContent(settings, themeIn)
  if (hit) {
    return { courseContentId: hit.id, theme: themeIn || hit.name }
  }
  return { courseContentId: raw, theme: themeIn }
}


function normalizeWeekdays(list) {
  let raw = list
  if (raw == null) return []
  if (!Array.isArray(raw)) {
    if (typeof raw === 'number' || (typeof raw === 'string' && /^\s*\d+\s*$/.test(raw))) {
      raw = [raw]
    } else {
      return []
    }
  }
  const seen = new Set()
  const out = []
  for (const x of raw) {
    const n = Number(x)
    if (!Number.isInteger(n) || n < 0 || n > 6) continue
    if (seen.has(n)) continue
    seen.add(n)
    out.push(n)
  }
  return out
}

function ymdUtcWeekday(ymd) {
  const s = fmtDate(ymd)
  const m = /^(\d{4})-(\d{2})-(\d{2})$/.exec(s)
  if (!m) return null
  return new Date(Date.UTC(Number(m[1]), Number(m[2]) - 1, Number(m[3]))).getUTCDay()
}

function filterDatesByWeekdays(dates, weekdays) {
  const set = new Set(weekdays)
  const out = []
  for (const ymd of dates || []) {
    const w = ymdUtcWeekday(ymd)
    if (w != null && set.has(w)) out.push(ymd)
  }
  return out
}

const MAX_BATCH_CLASSES = 62

function normCourt(c) {
  return String(c || '')
    .trim()
    .replace(/^发球机/u, '')
    .replace(/场$/u, '')
}

async function resolveCourtName(venueId, court) {
  const raw = String(court || '').trim()
  if (!raw || !venueId) return raw
  const n = normCourt(raw)
  try {
    const [rows] = await pool.query(
      `SELECT name FROM courts
        WHERE venue_id=? AND (name=? OR name=? OR name=CONCAT(?,'场'))
          AND IFNULL(status,'open') NOT IN ('disabled','closed','停用')
        ORDER BY CASE WHEN name=? THEN 0 WHEN name=CONCAT(?,'场') THEN 1 ELSE 2 END
        LIMIT 1`,
      [venueId, raw, n, n, raw, n]
    )
    if (rows && rows[0] && rows[0].name) return String(rows[0].name)
  } catch (e) {}
  if (n && !/场$/u.test(raw)) return n + '场'
  return raw
}


async function resolveCoachAliasIds(coachIdVal) {
  const id = Number(coachIdVal)
  if (!id) return []
  const [rows] = await pool.query(
    'SELECT id, name, phone, staff_id FROM coaches WHERE id=? LIMIT 1',
    [id]
  )
  const me = rows && rows[0]
  if (!me) return [id]
  const conds = ['id=?']
  const params = [id]
  if (me.staff_id) {
    conds.push('staff_id=?')
    params.push(me.staff_id)
  }
  const phone = String(me.phone || '').replace(/\D/g, '')
  if (phone) {
    conds.push('REPLACE(REPLACE(IFNULL(phone,"")," ",""),"-","")=?')
    params.push(phone)
  }
  const name = String(me.name || '').replace(/\s+/g, '').trim()
  if (name) {
    conds.push("REPLACE(REPLACE(IFNULL(name,''),' ',''),'\\t','')=?")
    params.push(name)
  }
  const [sibs] = await pool.query(
    'SELECT id FROM coaches WHERE ' + conds.join(' OR '),
    params
  )
  const ids = Array.from(new Set((sibs || []).map((r) => Number(r.id)).filter(Boolean)))
  return ids.length ? ids : [id]
}

async function checkConflict(data, excludeId) {
  const courtNorm = normCourt(data.court)
  const courtName = data.courtName || data.court

  const [bCourt] = await pool.query(
    `SELECT id, status FROM bookings
      WHERE venue_id=? AND date=? AND time=?
        AND (court=? OR court=? OR court=CONCAT(?,'场'))
        AND status IN ('booked','locked')
      LIMIT 1`,
    [data.venueId, data.date, data.time, courtName, courtNorm, courtNorm]
  )
  if (bCourt.length) {
    return bCourt[0].status === 'locked'
      ? '该时段场地已锁场，无法排团课'
      : '该时段场地已有预约，无法排团课'
  }

  if (data.coachId) {
    const aliasIds = await resolveCoachAliasIds(data.coachId)
    const ph = aliasIds.map(() => '?').join(',')
    const [bCoach] = await pool.query(
      `SELECT id FROM bookings
        WHERE date=? AND time=? AND coach_id IN (${ph})
          AND status IN ('booked','locked','pending_pay')
        LIMIT 1`,
      [data.date, data.time, ...aliasIds]
    )
    if (bCoach.length) return '该时段教练已有预约，无法排团课'
  }

  let sql = `SELECT id FROM group_classes
    WHERE venue_id=? AND date=? AND time=?
      AND (court=? OR court=? OR court=CONCAT(?,'场'))
      AND status!='cancelled'`
  const params = [data.venueId, data.date, data.time, courtName, courtNorm, courtNorm]
  if (excludeId) {
    sql += ' AND id<>?'
    params.push(excludeId)
  }
  sql += ' LIMIT 1'
  const [gCourt] = await pool.query(sql, params)
  if (gCourt.length) return '该时段场地已有团课'

  if (data.coachId) {
    const aliasIds = await resolveCoachAliasIds(data.coachId)
    const ph = aliasIds.map(() => '?').join(',')
    let sql2 = `SELECT id FROM group_classes
      WHERE date=? AND time=? AND coach_id IN (${ph}) AND status!='cancelled'`
    const p2 = [data.date, data.time, ...aliasIds]
    if (excludeId) {
      sql2 += ' AND id<>?'
      p2.push(excludeId)
    }
    sql2 += ' LIMIT 1'
    const [gCoach] = await pool.query(sql2, p2)
    if (gCoach.length) return '该时段教练已有团课'
  }

  return null
}

async function insertGroupClass(row) {
  const valsFull = [
    row.venueId,
    row.name,
    row.date,
    row.time,
    row.court,
    row.coachId || null,
    row.coachName || '',
    row.capacity,
    row.status || 'open',
    row.remark || '',
    row.minEnrollment,
    row.cancelBeforeHours,
    row.classType || 'fixed',
    row.theme || '',
    row.courseContentId || ''
  ]
  try {
    const [res] = await pool.query(
      `INSERT INTO group_classes
        (venue_id, name, date, time, court, coach_id, coach_name, capacity, enrolled, status, remark,
         min_enrollment, cancel_before_hours, auto_cancel_exempt, class_type, theme, course_content_id)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, 0, ?, ?, ?, ?, 0, ?, ?, ?)`,
      valsFull
    )
    return { ok: true, id: String(res.insertId) }
  } catch (e) {
    const msg = (e && e.message) || ''
    if (msg.indexOf('Unknown column') < 0) throw e
    try {
      const [res] = await pool.query(
        `INSERT INTO group_classes
          (venue_id, name, date, time, court, coach_id, coach_name, capacity, enrolled, status, remark,
           min_enrollment, cancel_before_hours, auto_cancel_exempt, class_type, theme)
         VALUES (?, ?, ?, ?, ?, ?, ?, ?, 0, ?, ?, ?, ?, 0, ?, ?)`,
        valsFull.slice(0, 14)
      )
      return { ok: true, id: String(res.insertId), missingColumns: true }
    } catch (e2) {
      const msg2 = (e2 && e2.message) || ''
      if (msg2.indexOf('Unknown column') < 0) throw e2
      const [res] = await pool.query(
        `INSERT INTO group_classes
          (venue_id, name, date, time, court, coach_id, coach_name, capacity, enrolled, status, remark,
           min_enrollment, cancel_before_hours, auto_cancel_exempt)
         VALUES (?, ?, ?, ?, ?, ?, ?, ?, 0, ?, ?, ?, ?, 0)`,
        valsFull.slice(0, 12)
      )
      return { ok: true, id: String(res.insertId), missingColumns: true }
    }
  }
}

async function updateGroupClass(id, row) {
  try {
    await pool.query(
      `UPDATE group_classes SET
        venue_id=?, name=?, date=?, time=?, court=?, coach_id=?, coach_name=?,
        capacity=?, status=?, remark=?,
        min_enrollment=?, cancel_before_hours=?,
        class_type=?, theme=?, course_content_id=?
       WHERE id=?`,
      [
        row.venueId, row.name, row.date, row.time, row.court,
        row.coachId || null, row.coachName || '',
        row.capacity, row.status || 'open', row.remark || '',
        row.minEnrollment, row.cancelBeforeHours,
        row.classType || 'fixed', row.theme || '', row.courseContentId || '',
        id
      ]
    )
    return { ok: true }
  } catch (e) {
    const msg = (e && e.message) || ''
    if (msg.indexOf('Unknown column') < 0) throw e
    try {
      await pool.query(
        `UPDATE group_classes SET
          venue_id=?, name=?, date=?, time=?, court=?, coach_id=?, coach_name=?,
          capacity=?, status=?, remark=?,
          min_enrollment=?, cancel_before_hours=?,
          class_type=?, theme=?
         WHERE id=?`,
        [
          row.venueId, row.name, row.date, row.time, row.court,
          row.coachId || null, row.coachName || '',
          row.capacity, row.status || 'open', row.remark || '',
          row.minEnrollment, row.cancelBeforeHours,
          row.classType || 'fixed', row.theme || '',
          id
        ]
      )
      return { ok: true, missingColumns: true }
    } catch (e2) {
      const msg2 = (e2 && e2.message) || ''
      if (msg2.indexOf('Unknown column') < 0) throw e2
      await pool.query(
        `UPDATE group_classes SET
          venue_id=?, name=?, date=?, time=?, court=?, coach_id=?, coach_name=?,
          capacity=?, status=?, remark=?,
          min_enrollment=?, cancel_before_hours=?
         WHERE id=?`,
        [
          row.venueId, row.name, row.date, row.time, row.court,
          row.coachId || null, row.coachName || '',
          row.capacity, row.status || 'open', row.remark || '',
          row.minEnrollment, row.cancelBeforeHours,
          id
        ]
      )
      return { ok: true, missingColumns: true }
    }
  }
}

async function loadVenueCourts(venueId) {
  const [rows] = await pool.query(
    `SELECT * FROM courts
      WHERE venue_id=? AND IFNULL(status,'open') NOT IN ('disabled','closed','停用')
      ORDER BY sort ASC, id ASC`,
    [venueId]
  )
  return rows || []
}

async function venueExists(venueId) {
  const [rows] = await pool.query('SELECT id, name FROM venues WHERE id=? LIMIT 1', [venueId])
  return rows && rows[0] ? rows[0] : null
}

async function hasDuplicateClass(venueId, date, time) {
  const [rows] = await pool.query(
    `SELECT id FROM group_classes
      WHERE venue_id=? AND date=? AND time=? AND status!='cancelled'
      LIMIT 1`,
    [venueId, date, time]
  )
  return !!(rows && rows[0])
}

async function planBatch(data) {
  const venueId = data && (data.venueId || data.venue_id)
  const name = String((data && data.name) || '').trim()
  const startDate = fmtDate(data && (data.startDate || data.start_date))
  const endDate = fmtDate(data && (data.endDate || data.end_date))
  const time = String((data && data.time) || '').trim()
  const courtRaw = String((data && (data.court || data.courtName || data.court_name)) || '').trim()
  const weekdays = normalizeWeekdays(data && (data.weekdays != null ? data.weekdays : data.weekday))

  if (!venueId || !name || !startDate || !endDate || !time || !courtRaw) {
    return { ok: false, msg: '请填写门店、名称、日期范围、星期、时段和场地', fnVer: FN_VER }
  }
  if (!weekdays.length) {
    return { ok: false, msg: '请选择至少一个星期', fnVer: FN_VER }
  }
  if (endDate < startDate) {
    return { ok: false, msg: '结束日期不能早于开始日期', fnVer: FN_VER }
  }

  const venue = await venueExists(venueId)
  if (!venue) return { ok: false, msg: '门店不存在', fnVer: FN_VER }

  const dates = filterDatesByWeekdays(datesInRange(startDate, endDate), weekdays)
  if (!dates.length) {
    return { ok: false, msg: '选定范围内没有符合星期的日期', fnVer: FN_VER }
  }
  if (dates.length > MAX_BATCH_CLASSES) {
    return { ok: false, msg: '一次最多排 62 节', fnVer: FN_VER }
  }

  const courtName = await resolveCourtName(venueId, courtRaw)
  const settings = await loadSettings(pool)
  const limits = venueLimits(settings, venueId)
  const classType = readClassType(data)
  const content = readCourseContent(data, settings)
  const theme = content.theme
  const courseContentId = content.courseContentId
  const minEnrollment = readMinEnrollment(data, 0)
  const cancelBeforeHours = readCancelBeforeHours(data, settings.defaultCancelBeforeHours)
  const capacity = data.capacity != null && data.capacity !== ''
    ? intOr(data.capacity, limits.capacity || 1, 1, null)
    : (limits.capacity || 1)
  const coachId = (data && (data.coachId || data.coach_id)) || null
  const coachName = (data && (data.coachName || data.coach_name)) || ''
  const status = (data && data.status) || 'open'
  const remark = (data && data.remark) || ''

  const list = []
  const skippedList = []
  for (const date of dates) {
    const weekday = ymdUtcWeekday(date)
    const payload = { venueId, date, time, court: courtName, courtName, coachId }
    const err = await checkConflict(payload, null)
    const item = { date, weekday, venueId, venueName: venue.name, court: courtName, time }
    if (err) skippedList.push(Object.assign({}, item, { reason: err }))
    else list.push(item)
  }

  return {
    ok: true,
    fnVer: FN_VER,
    created: list.length,
    skipped: skippedList.length,
    list,
    skippedList,
    rowTemplate: {
      venueId,
      name,
      time,
      court: courtName,
      coachId,
      coachName,
      capacity,
      status,
      remark,
      minEnrollment,
      cancelBeforeHours,
      classType,
      theme,
      courseContentId
    }
  }
}

function publicBatchPlan(planned) {
  return {
    ok: true,
    fnVer: FN_VER,
    created: planned.created,
    skipped: planned.skipped,
    list: planned.list,
    skippedList: planned.skippedList
  }
}

async function addBatch(data) {
  const planned = await planBatch(data)
  if (!planned.ok) return planned
  if (!planned.list.length) {
    return {
      ok: true,
      fnVer: FN_VER,
      created: 0,
      skipped: planned.skippedList.length,
      list: [],
      skippedList: planned.skippedList
    }
  }

  const created = []
  const skippedList = planned.skippedList.slice()
  const tpl = planned.rowTemplate
  for (const item of planned.list) {
    const payload = {
      venueId: item.venueId,
      date: item.date,
      time: item.time,
      court: item.court,
      courtName: item.court,
      coachId: tpl.coachId
    }
    const err = await checkConflict(payload, null)
    if (err) {
      skippedList.push(Object.assign({}, item, { reason: err }))
      continue
    }
    try {
      const ins = await insertGroupClass(Object.assign({}, tpl, { date: item.date }))
      created.push({
        id: ins.id,
        date: item.date,
        weekday: item.weekday,
        venueId: item.venueId,
        venueName: item.venueName,
        court: item.court,
        time: item.time,
        classType: tpl.classType
      })
    } catch (e) {
      skippedList.push(Object.assign({}, item, { reason: (e && e.message) || '写入失败' }))
    }
  }
  return {
    ok: true,
    fnVer: FN_VER,
    created: created.length,
    skipped: skippedList.length,
    list: created,
    skippedList
  }
}

async function planRotation(data) {
  const startDate = fmtDate(data && (data.startDate || data.start_date))
  const endDate = fmtDate(data && (data.endDate || data.end_date))
  const time = String((data && data.time) || '').trim()
  if (!startDate || !endDate || !time) {
    return { ok: false, msg: '请填写日期范围和时段', fnVer: FN_VER }
  }
  if (endDate < startDate) return { ok: false, msg: '结束日期不能早于开始日期', fnVer: FN_VER }
  const dates = datesInRange(startDate, endDate)
  if (!dates.length) return { ok: false, msg: '日期区间无效', fnVer: FN_VER }
  if (dates.length > 62) return { ok: false, msg: '一次最多生成 62 天', fnVer: FN_VER }

  const settings = await loadSettings(pool)
  const classType = readClassType(data)
  const content = readCourseContent(data, settings)
  const theme = content.theme
  const courseContentId = content.courseContentId
  const defaultName = String((data && data.name) || '').trim() || (classType === 'self' ? '自组团课' : '固定团课')
  const coachId = (data && (data.coachId || data.coach_id)) || null
  const coachName = (data && (data.coachName || data.coach_name)) || ''
  const cancelBeforeHours = readCancelBeforeHours(data, settings.defaultCancelBeforeHours)
  const status = (data && data.status) || 'open'

  const willCreate = []
  const pending = []
  const skipped = []
  for (const date of dates) {
    const slot = rotationVenueForDate(settings, date)
    if (!slot || !slot.venueId) {
      skipped.push({ date, reason: '当天没有轮转门店' })
      continue
    }
    const venue = await venueExists(slot.venueId)
    if (!venue) {
      skipped.push({ date, venueId: slot.venueId, reason: '门店不存在（请先执行空壳馆 SQL）' })
      continue
    }
    if (await hasDuplicateClass(slot.venueId, date, time)) {
      skipped.push({ date, venueId: slot.venueId, venueName: venue.name, reason: '该门店此时段已有团课' })
      continue
    }
    const courts = await loadVenueCourts(slot.venueId)
    const courtRow = pickInternalClassCourt(courts)
    if (!courtRow) {
      skipped.push({ date, venueId: slot.venueId, venueName: venue.name, reason: '没有可用的内部团课场地（不会使用外场）' })
      continue
    }
    const courtName = courtRow.name
    const payload = {
      venueId: slot.venueId,
      date,
      time,
      court: courtName,
      courtName,
      coachId
    }
    const err = await checkConflict(payload, null)
    if (err) {
      skipped.push({ date, venueId: slot.venueId, venueName: venue.name, reason: err })
      continue
    }
    const limits = venueLimits(settings, slot.venueId)
    const listItem = {
      date,
      venueId: slot.venueId,
      venueName: venue.name,
      court: courtName,
      time,
      classType
    }
    const row = {
      venueId: slot.venueId,
      name: defaultName,
      date,
      time,
      court: courtName,
      coachId,
      coachName,
      capacity: limits.capacity,
      status,
      remark: '',
      minEnrollment: settings.defaultMinEnrollment,
      cancelBeforeHours,
      classType,
      theme,
      courseContentId
    }
    willCreate.push(listItem)
    pending.push({ listItem, row, venueName: venue.name })
  }
  return { ok: true, fnVer: FN_VER, willCreate, pending, skipped }
}

async function generateRotation(data, opts) {
  const dryRun = !!(opts && opts.dryRun) || !!(data && (data.dryRun === true || data.dryRun === 'true'))
  const planned = await planRotation(data)
  if (!planned.ok) return planned
  if (dryRun) {
    return {
      ok: true,
      fnVer: FN_VER,
      created: planned.willCreate.length,
      skipped: planned.skipped.length,
      list: planned.willCreate,
      skippedList: planned.skipped
    }
  }

  const created = []
  const skipped = planned.skipped.slice()
  for (const item of planned.pending) {
    const row = item.row
    const payload = {
      venueId: row.venueId,
      date: row.date,
      time: row.time,
      court: row.court,
      courtName: row.court,
      coachId: row.coachId
    }
    if (await hasDuplicateClass(row.venueId, row.date, row.time)) {
      skipped.push({ date: row.date, venueId: row.venueId, venueName: item.venueName, reason: '该门店此时段已有团课' })
      continue
    }
    const err = await checkConflict(payload, null)
    if (err) {
      skipped.push({ date: row.date, venueId: row.venueId, venueName: item.venueName, reason: err })
      continue
    }
    const ins = await insertGroupClass(row)
    created.push(Object.assign({}, item.listItem, { id: ins.id }))
  }
  return {
    ok: true,
    fnVer: FN_VER,
    created: created.length,
    skipped: skipped.length,
    list: created,
    skippedList: skipped
  }
}

exports.main = async (event) => {
  try {
    let body = event
    if (event.body) {
      body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
    }
    const { action, id, data } = body || {}
    if (!action) return { ok: false, msg: '缺少 action', fnVer: FN_VER }
    if (action === 'ver' || action === '__ver__') return { ok: true, fnVer: FN_VER }

    const ctx = await coachBind.resolveCoachOperator(pool, body, data || {})
    const coachGuarded = ['add', 'update', 'toggle', 'restore', 'delete', 'saveSettings', 'generateRotation', 'previewRotation', 'addBatch', 'previewBatch']
    if (ctx.isCoach && coachGuarded.includes(action)) {
      let existingCoachId = ''
      if (id && ['update', 'toggle', 'restore', 'delete'].includes(action)) {
        try {
          const [rows] = await pool.query('SELECT coach_id FROM group_classes WHERE id=? LIMIT 1', [id])
          if (rows && rows[0]) existingCoachId = rows[0].coach_id || ''
        } catch (e) {}
      }
      const requested = data && (data.coachId || data.coach_id)
      const dec = coachPerm.decideCoachGroupClass({
        operatorRole: ctx.role,
        action,
        bound: ctx.bound,
        selfCoachId: ctx.selfCoachId,
        requestedCoachId: requested,
        existingCoachId,
        classType: data && (data.classType || data.class_type)
      })
      if (!dec.ok) return { ok: false, msg: dec.msg, fnVer: FN_VER }
      if (data && dec.coachId) {
        data.coachId = dec.coachId
        data.coachName = ctx.selfCoachName || data.coachName || ''
      }
    }

    async function loadGroupTemplates() {
      try {
        const [rows] = await pool.query(
          `SELECT id, name, type, price, total_times, status FROM card_templates
            WHERE type='group' AND IFNULL(status,'active') IN ('active','启用','')
            ORDER BY id ASC`
        )
        return (rows || []).map((r) => ({
          id: String(r.id),
          name: r.name,
          price: Number(r.price) || 0,
          totalTimes: Number(r.total_times) || 0,
          status: r.status || 'active'
        }))
      } catch (e) {
        return []
      }
    }

    if (action === 'getSettings') {
      const settings = await loadSettings(pool)
      const next = await loadNextFixedVenue(pool, settings)
      const groupTemplates = await loadGroupTemplates()
      return {
        ok: true,
        settings,
        nextFixedVenue: next,
        groupTemplates,
        canReorderRotation: adminRole.canReorderRotation(ctx.role),
        fnVer: FN_VER
      }
    }

    if (action === 'nextFixedVenue') {
      const settings = await loadSettings(pool)
      const next = await loadNextFixedVenue(pool, settings)
      return { ok: true, nextFixedVenue: next, fnVer: FN_VER }
    }

    if (action === 'saveSettings') {
      const incoming = data || body.settings || body
      const existing = await loadSettings(pool)
      const next = settingsLib.applySettingsForRole(existing, incoming, ctx.admin ? ctx.admin.role : '')
      const out = await saveSettings(pool, next)
      if (!out.ok) return { ok: false, msg: out.msg || '保存失败', fnVer: FN_VER }
      return { ok: true, settings: out.settings, fnVer: FN_VER }
    }

    if (action === 'previewRotation') {
      return await generateRotation(data || body || {}, { dryRun: true })
    }

    if (action === 'generateRotation') {
      return await generateRotation(data || body || {})
    }

    if (action === 'previewBatch') {
      const planned = await planBatch(data || body || {})
      if (!planned.ok) return planned
      return publicBatchPlan(planned)
    }

    if (action === 'addBatch') {
      return await addBatch(data || body || {})
    }

    if (action === 'add' || action === 'update') {
      if (!data || !data.venueId || !data.date || !data.time || !data.court) {
        return { ok: false, msg: '参数不完整', fnVer: FN_VER }
      }
      const courtName = await resolveCourtName(data.venueId, data.court)
      if (isOutdoorCourtName(courtName) && String(data.allowOutdoor || '') !== '1') {
        // 允许显式传入，但不默认拦住已有「外场」课编辑；新增时仍可用，只是生成轮转不会选外场
      }
      const payload = Object.assign({}, data, { court: courtName, courtName })
      const err = await checkConflict(payload, action === 'update' ? id : null)
      if (err) return { ok: false, msg: err, fnVer: FN_VER }

      const settings = await loadSettings(pool)
      const limits = venueLimits(settings, payload.venueId)
      const classType = readClassType(payload)
      if (ctx.isCoach && classType === 'self') {
        return { ok: false, msg: coachPerm.NO_SELF_GROUP_MSG, fnVer: FN_VER }
      }
      const content = readCourseContent(payload, settings)
      const theme = content.theme
      const courseContentId = content.courseContentId
      const minEnrollment = readMinEnrollment(payload, 0)
      const cancelBeforeHours = readCancelBeforeHours(payload, settings.defaultCancelBeforeHours)
      const capacity = payload.capacity != null && payload.capacity !== ''
        ? intOr(payload.capacity, limits.capacity || 1, 1, null)
        : (limits.capacity || 1)
      const row = {
        venueId: payload.venueId,
        name: payload.name,
        date: payload.date,
        time: payload.time,
        court: courtName,
        coachId: payload.coachId || null,
        coachName: payload.coachName || '',
        capacity,
        status: payload.status || 'open',
        remark: payload.remark || '',
        minEnrollment,
        cancelBeforeHours,
        classType,
        theme,
        courseContentId
      }
      if (action === 'add') {
        const ins = await insertGroupClass(row)
        return { ok: true, id: ins.id, fnVer: FN_VER }
      }
      const upd = await updateGroupClass(id, row)
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'toggle') {
      await pool.query(
        `UPDATE group_classes SET status=? WHERE id=?`,
        [data.status, id]
      )
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'restore') {
      if (!id) return { ok: false, msg: '缺少团课ID', fnVer: FN_VER }
      const [rows] = await pool.query('SELECT id, status FROM group_classes WHERE id=?', [id])
      if (!rows[0]) return { ok: false, msg: '团课不存在', fnVer: FN_VER }
      await pool.query(
        `UPDATE group_classes SET status='open', auto_cancel_exempt=1 WHERE id=?`,
        [id]
      )
      return { ok: true, fnVer: FN_VER, status: 'open', autoCancelExempt: 1 }
    }

    if (action === 'delete') {
      if (!id) return { ok: false, msg: '缺少团课ID', fnVer: FN_VER }
      const [rows] = await pool.query('SELECT enrolled FROM group_classes WHERE id=?', [id])
      if (!rows[0]) return { ok: false, msg: '团课不存在', fnVer: FN_VER }
      if ((rows[0].enrolled || 0) > 0) {
        return { ok: false, msg: '该团课仍有报名学员，请先在名单中移除后再删除', fnVer: FN_VER }
      }
      await pool.query(`DELETE FROM group_classes WHERE id=?`, [id])
      return { ok: true, fnVer: FN_VER }
    }

    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '操作失败', fnVer: FN_VER }
  }
}
