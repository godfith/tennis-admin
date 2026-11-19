'use strict'

const SETTING_KEY = 'group_class'

const DEFAULT_ROTATION = [
  { venueId: 'venue_huadiwan', capacity: 4 },
  { venueId: 'venue_haixinsha', capacity: 4 },
  { venueId: 'venue_zhongda', capacity: 4 },
  { venueId: 'venue_chenjiaci', capacity: 4 },
  { venueId: 'venue_yangji', capacity: 4 },
  { venueId: 'venue_weisha', capacity: 4 }
]

const DEFAULT_SETTINGS = {
  rotationVenues: DEFAULT_ROTATION.map((x) => Object.assign({}, x)),
  rotationStartDate: '2026-11-16',
  fixedOpenAnytime: true,
  selfOrganizeAdvanceDays: 2,
  defaultCancelBeforeHours: 2,
  defaultMinEnrollment: 0
}

function intOr(v, dft, min, max) {
  const n = Number(v)
  if (!Number.isFinite(n)) return dft
  let x = Math.floor(n)
  if (min != null && x < min) x = min
  if (max != null && x > max) x = max
  return x
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

function ymdToUtcDays(ymd) {
  const s = fmtDate(ymd)
  const m = /^(\d{4})-(\d{2})-(\d{2})$/.exec(s)
  if (!m) return null
  return Date.UTC(Number(m[1]), Number(m[2]) - 1, Number(m[3])) / 86400000
}

function dayDiff(laterYmd, earlierYmd) {
  const a = ymdToUtcDays(laterYmd)
  const b = ymdToUtcDays(earlierYmd)
  if (a == null || b == null) return null
  return a - b
}

function datesInRange(startYmd, endYmd) {
  const start = fmtDate(startYmd)
  const end = fmtDate(endYmd)
  const a = ymdToUtcDays(start)
  const b = ymdToUtcDays(end)
  if (a == null || b == null || b < a) return []
  const out = []
  for (let d = a; d <= b; d++) {
    const dt = new Date(d * 86400000)
    out.push(
      dt.getUTCFullYear() +
        '-' +
        String(dt.getUTCMonth() + 1).padStart(2, '0') +
        '-' +
        String(dt.getUTCDate()).padStart(2, '0')
    )
  }
  return out
}

function normClassType(v) {
  const s = String(v || '').trim().toLowerCase()
  if (
    s === 'self' ||
    s === 'self_organized' ||
    s === 'self-organized' ||
    s === 'self_organize' ||
    s === 'self-organize' ||
    s === '自组' ||
    s === '自组团课'
  ) {
    return 'self'
  }
  return 'fixed'
}

function classTypeLabel(v) {
  return normClassType(v) === 'self' ? '自组团课' : '固定团课'
}

function todayYmd(now) {
  const d = now instanceof Date ? now : new Date()
  const y = d.getFullYear()
  const m = String(d.getMonth() + 1).padStart(2, '0')
  const day = String(d.getDate()).padStart(2, '0')
  return y + '-' + m + '-' + day
}

function normalizeRotation(list) {
  const seen = {}
  const out = []
  const arr = Array.isArray(list) ? list : []
  for (const item of arr) {
    if (!item) continue
    const venueId = String(item.venueId || item.venue_id || item.id || '').trim()
    if (!venueId || seen[venueId]) continue
    seen[venueId] = true
    // 人数完全由后台填写：优先用 capacity；若是旧配置只有 min/max，则沿用原来的上限。
    let capacity = null
    if (item.capacity != null && item.capacity !== '') capacity = item.capacity
    else if (item.maxCapacity != null && item.maxCapacity !== '') capacity = item.maxCapacity
    else if (item.max_capacity != null && item.max_capacity !== '') capacity = item.max_capacity
    else if (item.minCapacity != null && item.minCapacity !== '') capacity = item.minCapacity
    else if (item.min_capacity != null && item.min_capacity !== '') capacity = item.min_capacity
    capacity = intOr(capacity, 4, 1, null)
    if (capacity < 1) capacity = 1
    out.push({ venueId, capacity })
  }
  return out
}

function normalizeSettings(raw) {
  const src = raw && typeof raw === 'object' ? raw : {}
  const rotationVenues = normalizeRotation(src.rotationVenues || src.rotation_venues)
  const out = {
    rotationVenues: rotationVenues.length ? rotationVenues : DEFAULT_SETTINGS.rotationVenues.map((x) => Object.assign({}, x)),
    rotationStartDate: fmtDate(src.rotationStartDate || src.rotation_start_date) || DEFAULT_SETTINGS.rotationStartDate,
    fixedOpenAnytime: src.fixedOpenAnytime == null && src.fixed_open_anytime == null
      ? true
      : !(src.fixedOpenAnytime === false || src.fixedOpenAnytime === 0 || src.fixedOpenAnytime === '0' ||
          src.fixed_open_anytime === false || src.fixed_open_anytime === 0 || src.fixed_open_anytime === '0'),
    selfOrganizeAdvanceDays: intOr(
      src.selfOrganizeAdvanceDays != null ? src.selfOrganizeAdvanceDays : src.self_organize_advance_days,
      2,
      0,
      30
    ),
    defaultCancelBeforeHours: intOr(
      src.defaultCancelBeforeHours != null ? src.defaultCancelBeforeHours : src.default_cancel_before_hours,
      2,
      0,
      null
    ),
    defaultMinEnrollment: intOr(
      src.defaultMinEnrollment != null ? src.defaultMinEnrollment : src.default_min_enrollment,
      0,
      0,
      null
    )
  }
  return out
}

function venueLimits(settings, venueId) {
  const s = normalizeSettings(settings)
  const id = String(venueId || '').trim()
  const hit = s.rotationVenues.find((x) => x.venueId === id)
  const capacity = hit ? hit.capacity : 4
  const minEnrollment = s.defaultMinEnrollment
  return { capacity, minEnrollment }
}

function rotationVenueForDate(settings, dateYmd) {
  const s = normalizeSettings(settings)
  const list = s.rotationVenues || []
  if (!list.length) return null
  const date = fmtDate(dateYmd)
  const start = fmtDate(s.rotationStartDate) || DEFAULT_SETTINGS.rotationStartDate
  const diff = dayDiff(date, start)
  if (diff == null) return null
  const n = list.length
  const idx = ((diff % n) + n) % n
  return list[idx] || null
}

function parseMaybeJson(v) {
  if (v == null) return null
  if (typeof v === 'object') return v
  if (typeof v === 'string') {
    try { return JSON.parse(v) } catch (e) { return null }
  }
  return null
}

async function loadSettings(pool) {
  try {
    const [rows] = await pool.query(
      'SELECT setting_value FROM app_settings WHERE setting_key=? LIMIT 1',
      [SETTING_KEY]
    )
    if (rows && rows[0] && rows[0].setting_value != null) {
      return normalizeSettings(parseMaybeJson(rows[0].setting_value) || rows[0].setting_value)
    }
  } catch (e) {
    // table or row may not exist yet; fall back to defaults
  }
  return normalizeSettings(DEFAULT_SETTINGS)
}

async function saveSettings(pool, data) {
  const settings = normalizeSettings(data)
  const json = JSON.stringify(settings)
  try {
    await pool.query(
      `INSERT INTO app_settings (setting_key, setting_value, updated_at)
         VALUES (?, CAST(? AS JSON), NOW())
       ON DUPLICATE KEY UPDATE setting_value=VALUES(setting_value), updated_at=NOW()`,
      [SETTING_KEY, json]
    )
    return { ok: true, settings }
  } catch (e1) {
    try {
      await pool.query(
        `INSERT INTO app_settings (setting_key, setting_value, updated_at)
           VALUES (?, ?, NOW())
         ON DUPLICATE KEY UPDATE setting_value=VALUES(setting_value), updated_at=NOW()`,
        [SETTING_KEY, json]
      )
      return { ok: true, settings }
    } catch (e2) {
      return { ok: false, msg: '保存失败，请先执行预览 SQL 创建 app_settings 表', error: (e2 && e2.message) || '' }
    }
  }
}

function userEnrollGate(gc, settings, now) {
  if (!gc) return { ok: false, reason: '团课不存在', enrollOpen: false }
  const status = String(gc.status || 'open')
  if (status === 'cancelled') return { ok: false, reason: '该团课已取消', enrollOpen: false, code: 'cancelled' }
  if (status !== 'open') return { ok: false, reason: '该团课暂不开放报名', enrollOpen: false, code: 'closed' }
  const cap = Number(gc.capacity) || 0
  const enrolled = Number(gc.enrolled) || 0
  if (cap > 0 && enrolled >= cap) return { ok: false, reason: '该团课已满员', enrollOpen: false, code: 'full' }
  const typ = normClassType(gc.class_type || gc.classType)
  const s = normalizeSettings(settings)
  const classDate = fmtDate(gc.date)
  const today = todayYmd(now)
  if (typ === 'self' || (typ === 'fixed' && s.fixedOpenAnytime === false)) {
    const days = typ === 'self' ? s.selfOrganizeAdvanceDays : s.selfOrganizeAdvanceDays
    const diff = dayDiff(classDate, today)
    if (diff == null) return { ok: false, reason: '课程日期无效', enrollOpen: false, code: 'date' }
    if (diff < days) {
      const reason = typ === 'self'
        ? (days > 0 ? ('自组团课需提前' + days + '天报名') : '当前不可报名')
        : (days > 0 ? ('需提前' + days + '天报名') : '当前不可报名')
      return { ok: false, reason, enrollOpen: false, code: 'advance', advanceDays: days }
    }
  }
  return { ok: true, reason: '', enrollOpen: true, code: 'ok' }
}

function mapClassExtra(r, settings, now) {
  const classType = normClassType(r && (r.class_type || r.classType))
  const theme = r && r.theme != null ? String(r.theme) : ''
  const gate = userEnrollGate(r, settings, now)
  const s = normalizeSettings(settings)
  return {
    classType,
    classTypeLabel: classTypeLabel(classType),
    theme,
    enrollOpen: !!gate.enrollOpen,
    enrollClosedReason: gate.enrollOpen ? '' : (gate.reason || ''),
    selfOrganizeAdvanceDays: s.selfOrganizeAdvanceDays,
    fixedOpenAnytime: s.fixedOpenAnytime
  }
}

function isOutdoorCourtName(name) {
  return String(name || '').trim() === '外场'
}

function pickInternalClassCourt(courts) {
  const list = (courts || []).filter((c) => {
    const status = String((c && (c.status || '')) || 'open')
    if (['disabled', 'closed', '停用'].includes(status)) return false
    if (isOutdoorCourtName(c && c.name)) return false
    return true
  })
  if (!list.length) return null
  const named = list.find((c) => String(c.name || '').indexOf('团课') >= 0)
  if (named) return named
  const visible = list.find((c) => {
    const v = c.customer_visible != null ? c.customer_visible : c.customerVisible
    return v !== 0 && v !== '0'
  })
  return visible || list[0]
}

module.exports = {
  SETTING_KEY,
  DEFAULT_SETTINGS,
  DEFAULT_ROTATION,
  intOr,
  fmtDate,
  dayDiff,
  datesInRange,
  normClassType,
  classTypeLabel,
  todayYmd,
  normalizeSettings,
  venueLimits,
  rotationVenueForDate,
  loadSettings,
  saveSettings,
  userEnrollGate,
  mapClassExtra,
  isOutdoorCourtName,
  pickInternalClassCourt
}
