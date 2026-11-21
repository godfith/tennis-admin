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

const BASIC_CONTENT_ID = 'forehand-basic'
const ADVANCED_CONTENT_ID = 'forehand-advanced'
const DEFAULT_COURSE_CONTENTS = [
  { id: BASIC_CONTENT_ID, name: '正手球-基础', templateIds: [] },
  { id: ADVANCED_CONTENT_ID, name: '正手球-进阶', templateIds: [] }
]

const DEFAULT_SETTINGS = {
  rotationVenues: DEFAULT_ROTATION.map((x) => Object.assign({}, x)),
  rotationStartDate: '2026-11-16',
  fixedOpenAnytime: true,
  fixedOpenFrom: '',
  fixedOpenTo: '',
  fixedOpenPermanent: true,
  selfOrganizeAdvanceDays: 2,
  defaultCancelBeforeHours: 2,
  defaultMinEnrollment: 0,
  courseContents: DEFAULT_COURSE_CONTENTS.map((x) => Object.assign({}, x, { templateIds: x.templateIds.slice() })),
  bindingsSeeded: false
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


function newCourseContentId() {
  return 'cc_' + Date.now().toString(36) + Math.random().toString(36).slice(2, 8)
}

function normalizeCourseContents(list, opts) {
  opts = opts || {}
  const hasKey = opts.hasKey === true
  const arr = Array.isArray(list) ? list : null
  if (!arr || (!arr.length && !hasKey)) {
    return DEFAULT_COURSE_CONTENTS.map((x) => Object.assign({}, x, { templateIds: x.templateIds.slice() }))
  }
  const seen = {}
  const out = []
  for (const item of arr) {
    if (!item) continue
    let id = String(item.id || item.contentId || item.content_id || '').trim()
    const name = String(item.name || item.title || item.label || '').trim().slice(0, 80)
    if (!name) continue
    if (!id) id = newCourseContentId()
    if (seen[id]) continue
    seen[id] = true
    const idsRaw = item.templateIds || item.template_ids || item.cardTemplateIds || []
    const templateIds = []
    const seenTpl = {}
    const src = Array.isArray(idsRaw) ? idsRaw : String(idsRaw || '').split(',')
    for (const t of src) {
      const tid = String(t == null ? '' : t).trim()
      if (!tid || seenTpl[tid]) continue
      seenTpl[tid] = true
      templateIds.push(tid)
    }
    out.push({ id, name, templateIds })
  }
  return out
}

function findCourseContent(settings, idOrName) {
  const s = normalizeSettings(settings)
  const key = String(idOrName || '').trim()
  if (!key) return null
  return (s.courseContents || []).find((x) => x.id === key || x.name === key) || null
}

function resolveClassCourseContent(row, settings) {
  const id = String((row && (row.course_content_id || row.courseContentId)) || '').trim()
  const theme = String((row && row.theme) || '').trim()
  const hit = findCourseContent(settings, id) || findCourseContent(settings, theme)
  return {
    courseContentId: hit ? hit.id : id,
    courseContentName: hit ? hit.name : theme,
    templateIds: hit ? hit.templateIds.slice() : [],
    theme: hit ? hit.name : theme
  }
}

function cardAllowedForCourseContent(card, content) {
  if (!content || (!content.id && !(content.templateIds || []).length && !content.name)) {
    return { ok: false, msg: '该课程未配置课程内容，暂不可报名' }
  }
  const ids = (content.templateIds || []).map(String)
  if (!ids.length) {
    return { ok: false, msg: '该课程暂未绑定可用团课卡，暂不可报名' }
  }
  const tid = String((card && (card.template_id || card.templateId)) || '').trim()
  if (!tid || ids.indexOf(tid) < 0) {
    return { ok: false, msg: '这张卡不能用于当前课程内容，请购买对应团课卡后再报名' }
  }
  return { ok: true }
}

function rotationIds(settings) {
  return (normalizeSettings(settings).rotationVenues || []).map((x) => String(x.venueId))
}

function applySettingsForRole(existing, incoming, role) {
  const adminRole = require('./adminRole')
  const next = normalizeSettings(incoming)
  if (adminRole.canReorderRotation(role)) return next
  const old = normalizeSettings(existing)
  const capMap = {}
  ;(next.rotationVenues || []).forEach((x) => {
    capMap[String(x.venueId)] = x.capacity
  })
  next.rotationVenues = (old.rotationVenues || []).map((x) => ({
    venueId: x.venueId,
    capacity: capMap[String(x.venueId)] != null ? capMap[String(x.venueId)] : x.capacity
  }))
  next.rotationStartDate = old.rotationStartDate
  return next
}

function isVisibleCalendarClass(row) {
  const s = String((row && row.status) || 'open').toLowerCase()
  if (
    s === 'cancelled' ||
    s === 'canceled' ||
    s === 'deleted' ||
    s === 'disabled' ||
    s === '已取消' ||
    s === '停用' ||
    s === 'closed' && false
  ) return false
  // closed (未开放) should not appear on guest calendar
  if (s === 'closed' || s === 'close' || s === '未开放' || s === '关闭') return false
  return true
}

function venueShortName(name, venueId) {
  const id = String(venueId || '')
  const map = {
    venue_huadiwan: '花地湾',
    venue_haixinsha: '海心沙',
    venue_zhongda: '中大',
    venue_chenjiaci: '陈家祠',
    venue_yangji: '杨箕',
    venue_weisha: '温莎'
  }
  if (map[id]) return map[id]
  const n = String(name || '').trim()
  const stripped = n.replace(/山羊Goat/g, '').replace(/网球馆|网球中心|网球/g, '').replace(/店$/g, '').trim()
  return (stripped || n).slice(0, 4)
}

function buildCalendarDays(classes, settings) {
  const order = rotationIds(settings)
  const orderIdx = {}
  order.forEach((id, i) => { orderIdx[id] = i })
  const byDate = {}
  for (const row of classes || []) {
    if (!isVisibleCalendarClass(row)) continue
    const date = fmtDate(row.date || row.dateYmd)
    if (!date) continue
    if (!byDate[date]) byDate[date] = []
    const venueId = String(row.venue_id || row.venueId || '')
    const venueName = String(row.venue_name || row.venueName || '')
    let bucket = byDate[date].find((x) => x.venueId === venueId)
    if (!bucket) {
      bucket = {
        venueId,
        venueName,
        venueShort: venueShortName(venueName, venueId),
        classes: []
      }
      byDate[date].push(bucket)
    }
    const content = resolveClassCourseContent(row, settings)
    const typ = normClassType(row.class_type || row.classType)
    bucket.classes.push({
      _id: String(row.id || row._id || ''),
      name: row.name || '',
      date,
      time: row.time || '',
      court: row.court || '',
      coachName: row.coach_name || row.coachName || '',
      classType: typ,
      classTypeLabel: classTypeLabel(typ),
      courseContentId: content.courseContentId,
      courseContentName: content.courseContentName,
      theme: content.theme,
      enrolled: Number(row.enrolled) || 0,
      capacity: Number(row.capacity) || 0,
      status: row.status || 'open'
    })
  }
  Object.keys(byDate).forEach((date) => {
    byDate[date].sort((a, b) => {
      const ia = orderIdx[a.venueId]
      const ib = orderIdx[b.venueId]
      if (ia != null && ib != null && ia !== ib) return ia - ib
      if (ia != null && ib == null) return -1
      if (ia == null && ib != null) return 1
      return String(a.venueShort || a.venueName).localeCompare(String(b.venueShort || b.venueName), 'zh')
    })
    byDate[date].forEach((bucket) => {
      bucket.classes.sort((a, b) => String(a.time || '').localeCompare(String(b.time || '')))
    })
  })
  const hasUpcoming = Object.keys(byDate).length > 0
  return { days: byDate, hasUpcoming, rotationVenueIds: order }
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
    fixedOpenFrom: fmtDate(src.fixedOpenFrom || src.fixed_open_from) || '',
    fixedOpenTo: fmtDate(src.fixedOpenTo || src.fixed_open_to) || '',
    fixedOpenPermanent: src.fixedOpenPermanent == null && src.fixed_open_permanent == null
      ? true
      : !(src.fixedOpenPermanent === false || src.fixedOpenPermanent === 0 || src.fixedOpenPermanent === '0' ||
          src.fixed_open_permanent === false || src.fixed_open_permanent === 0 || src.fixed_open_permanent === '0'),
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
    ),
    courseContents: normalizeCourseContents(
      src.courseContents || src.course_contents,
      { hasKey: Object.prototype.hasOwnProperty.call(src, 'courseContents') || Object.prototype.hasOwnProperty.call(src, 'course_contents') }
    ),
    bindingsSeeded: !!(src.bindingsSeeded || src.bindings_seeded)
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
  const content = resolveClassCourseContent(r, settings)
  const theme = content.theme || (r && r.theme != null ? String(r.theme) : '')
  const gate = userEnrollGate(r, settings, now)
  const s = normalizeSettings(settings)
  return {
    classType,
    classTypeLabel: classTypeLabel(classType),
    theme,
    courseContentId: content.courseContentId,
    courseContentName: content.courseContentName,
    boundTemplateIds: content.templateIds.slice(),
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
  BASIC_CONTENT_ID,
  ADVANCED_CONTENT_ID,
  DEFAULT_COURSE_CONTENTS,
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
  pickInternalClassCourt,
  newCourseContentId,
  normalizeCourseContents,
  findCourseContent,
  resolveClassCourseContent,
  cardAllowedForCourseContent,
  rotationIds,
  applySettingsForRole,
  isVisibleCalendarClass,
  venueShortName,
  buildCalendarDays
}
