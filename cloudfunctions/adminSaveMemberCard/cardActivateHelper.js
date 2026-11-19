// Shared helper for manual card activation and first-use cancel revert.
// Dates are calendar days in Asia/Shanghai. validTo = start + durationDays
// (existing convention: Nov 17 + 30 = Dec 17). durationDays 0 => unlimited.

function pad2(n) {
  return n < 10 ? '0' + n : '' + n
}

function todayYmd(now) {
  if (typeof now === 'string' && /^\d{4}-\d{2}-\d{2}/.test(now)) return now.slice(0, 10)
  const d = now instanceof Date ? now : (now ? new Date(now) : new Date())
  if (Number.isNaN(d.getTime())) return ''
  const utc = d.getTime() + d.getTimezoneOffset() * 60000
  const sh = new Date(utc + 8 * 3600000)
  return sh.getFullYear() + '-' + pad2(sh.getMonth() + 1) + '-' + pad2(sh.getDate())
}

function addDaysYmd(ymd, days) {
  const m = String(ymd || '').match(/^(\d{4}-\d{2}-\d{2})/)
  if (!m) return ''
  const d = new Date(m[1] + 'T00:00:00')
  d.setDate(d.getDate() + Number(days || 0))
  return d.getFullYear() + '-' + pad2(d.getMonth() + 1) + '-' + pad2(d.getDate())
}

function parseRule(raw) {
  if (!raw) return {}
  if (typeof raw === 'object') {
    try { return JSON.parse(JSON.stringify(raw)) || {} } catch (e) { return Object.assign({}, raw) }
  }
  try { return JSON.parse(raw) || {} } catch (e) { return {} }
}

function computeActivateDates(today, durationDays) {
  const from = todayYmd(today)
  const days = Number(durationDays || 0)
  if (!(days > 0)) return { validFrom: from, validTo: null }
  return { validFrom: from, validTo: addDaysYmd(from, days) }
}

function shouldRevertActivation(opts) {
  const mode = opts && opts.activateMode
  const from = opts && opts.validFrom
  const bookedCount = Number(opts && opts.bookedCount)
  return mode === 'first_use' && !!from && bookedCount === 0
}

function nextStatusOnActivate(card, dates, today) {
  const status = String((card && card.status) || '')
  if (status === 'used_up' || status === 'deleted' || status === 'refunded' || status === 'disabled') return status
  if (status === 'expired') {
    const to = dates && dates.validTo
    const day = todayYmd(today)
    if (!to || String(to) >= day) return 'active'
  }
  return status
}

function nextStatusOnUnactivate(card) {
  const status = String((card && card.status) || '')
  if (status === 'disabled' || status === 'deleted' || status === 'refunded' || status === 'used_up') return status
  if (status === 'expired') {
    const t = String((card && card.type) || '')
    if (t === 'times' || t === 'coach' || t === 'group') {
      return Number(card.remaining_times) > 0 ? 'active' : status
    }
    return 'active'
  }
  return status
}

function canChangeActivation(card) {
  const status = String((card && card.status) || '')
  if (status === 'deleted' || status === 'refunded') {
    return { ok: false, msg: '已删除或已退卡不能改激活状态' }
  }
  return { ok: true }
}

module.exports = {
  todayYmd,
  addDaysYmd,
  parseRule,
  computeActivateDates,
  shouldRevertActivation,
  nextStatusOnActivate,
  nextStatusOnUnactivate,
  canChangeActivation
}
