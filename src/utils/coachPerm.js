'use strict'

export const UNBOUND_MSG = '请用与教练资料相同的手机号开通登录'
export const NO_PRIVATE_MSG = '教练不能代约私教课或为他人预约'
export const ONLY_OUTDOOR_MSG = '教练只能锁自己的外场'
export const ONLY_OWN_LOCK_MSG = '只能锁自己的外场时段'
export const ONLY_OWN_GROUP_MSG = '只能发布或管理自己的团课'
export const NO_BATCH_MSG = '教练不能批量锁场或改锁场规则'
export const NO_GROUP_BATCH_MSG = '教练不能修改团课设置或批量/轮转排课'
export const NO_SELF_GROUP_MSG = '教练只能开固定团课'

export function digits(s) {
  return String(s || '').replace(/\D/g, '')
}

export function isCoachRole(role) {
  const r = String(role || '').trim().toLowerCase()
  return r === 'coach' || r === '教练'
}

export function isOutdoorSharedCourt(name) {
  return String(name || '').trim() === '外场'
}

export function pickCoachBind(candidates, opts) {
  const list = candidates || []
  const phone = digits(opts && opts.phone)
  const name = String((opts && opts.name) || '').trim()
  if (phone) {
    for (let i = 0; i < list.length; i++) {
      if (digits(list[i] && list[i].phone) === phone) return list[i]
    }
    return null
  }
  if (!name) return null
  const hits = list.filter((c) => String((c && c.name) || '').trim() === name)
  if (hits.length === 1) return hits[0]
  return null
}

export function decideCoachAddBooking(opts) {
  opts = opts || {}
  if (!isCoachRole(opts.operatorRole)) return { ok: true, skipped: true }
  return { ok: false, msg: NO_PRIVATE_MSG }
}

export function decideCoachLock(opts) {
  opts = opts || {}
  if (!isCoachRole(opts.operatorRole)) return { ok: true, skipped: true }
  const action = String(opts.action || 'lock')
  if (action === 'batchLock' || action === 'batchUnlock' || action === 'saveLockRule' || action === 'deleteLockRule') {
    return { ok: false, msg: NO_BATCH_MSG }
  }
  if (!opts.bound || !opts.selfCoachId) return { ok: false, msg: UNBOUND_MSG }
  if (!isOutdoorSharedCourt(opts.courtName || opts.court)) return { ok: false, msg: ONLY_OUTDOOR_MSG }
  if (opts.coachId && String(opts.coachId) !== String(opts.selfCoachId)) {
    return { ok: false, msg: ONLY_OWN_LOCK_MSG }
  }
  return { ok: true, coachId: String(opts.selfCoachId) }
}

export function decideCoachGroupClass(opts) {
  opts = opts || {}
  if (!isCoachRole(opts.operatorRole)) return { ok: true, skipped: true }
  const action = String(opts.action || '')
  const blocked = {
    saveSettings: true,
    generateRotation: true,
    previewRotation: true,
    addBatch: true,
    previewBatch: true
  }
  if (blocked[action]) return { ok: false, msg: NO_GROUP_BATCH_MSG }
  const typ = String(opts.classType || opts.class_type || '').toLowerCase()
  if (typ === 'self' || typ === 'self_organized' || typ === 'self-organized' || typ === 'self_organize' || typ === '自组' || typ === '自组团课') {
    return { ok: false, msg: NO_SELF_GROUP_MSG }
  }
  if (!opts.bound || !opts.selfCoachId) return { ok: false, msg: UNBOUND_MSG }
  if (opts.existingCoachId && String(opts.existingCoachId) !== String(opts.selfCoachId)) {
    return { ok: false, msg: ONLY_OWN_GROUP_MSG }
  }
  if (opts.requestedCoachId && String(opts.requestedCoachId) !== String(opts.selfCoachId)) {
    return { ok: false, msg: ONLY_OWN_GROUP_MSG }
  }
  return { ok: true, coachId: String(opts.selfCoachId) }
}

export function outdoorLockBusyDecision(busyRow, selfCoachId) {
  if (!busyRow) return { block: false }
  const cid = busyRow.coachId != null ? busyRow.coachId : busyRow.coach_id
  const hasCoach = cid != null && String(cid).trim() !== ''
  const sameCoach = hasCoach && String(cid) === String(selfCoachId)
  const otherCoach = hasCoach && String(cid) !== String(selfCoachId)
  const src = String(busyRow.source || '')
  const isLock =
    String(busyRow.status || '') === 'locked' ||
    src === 'lock' ||
    src === 'court_lock' ||
    String(busyRow.userName || busyRow.user_name || '') === '锁场'
  if (isLock && (sameCoach || !hasCoach)) return { block: true, msg: '该时段已锁场' }
  if (isLock && otherCoach) return { block: false }
  if (sameCoach) return { block: true, msg: '该时段您已有课程或锁场' }
  if (otherCoach) return { block: false }
  return { block: true, msg: '该时段场地已有预约' }
}

export default {
  UNBOUND_MSG,
  NO_PRIVATE_MSG,
  ONLY_OUTDOOR_MSG,
  ONLY_OWN_LOCK_MSG,
  ONLY_OWN_GROUP_MSG,
  NO_BATCH_MSG,
  NO_GROUP_BATCH_MSG,
  digits,
  isCoachRole,
  isOutdoorSharedCourt,
  pickCoachBind,
  decideCoachAddBooking,
  decideCoachLock,
  decideCoachGroupClass,
  outdoorLockBusyDecision
}
