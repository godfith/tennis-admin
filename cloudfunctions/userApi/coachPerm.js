'use strict'

var UNBOUND_MSG = '请用与教练资料相同的手机号开通登录'
var NO_PRIVATE_MSG = '教练不能代约私教课或为他人预约'
var ONLY_OUTDOOR_MSG = '教练只能锁自己的外场'
var ONLY_OWN_LOCK_MSG = '只能锁自己的外场时段'
var ONLY_OWN_GROUP_MSG = '只能发布或管理自己的团课'
var NO_BATCH_MSG = '教练不能批量锁场或改锁场规则'
var NO_GROUP_BATCH_MSG = '教练不能修改团课设置或批量/轮转排课'
var NO_SELF_GROUP_MSG = '教练只能开固定团课'

function digits(s) {
  return String(s || '').replace(/\D/g, '')
}

function isCoachRole(role) {
  var r = String(role || '').trim().toLowerCase()
  return r === 'coach' || r === '教练'
}

function isOutdoorSharedCourt(name) {
  return String(name || '').trim() === '外场'
}

function pickCoachBind(candidates, opts) {
  var list = candidates || []
  var phone = digits(opts && opts.phone)
  var name = String((opts && opts.name) || '').trim()
  if (phone) {
    for (var i = 0; i < list.length; i++) {
      if (digits(list[i] && list[i].phone) === phone) return list[i]
    }
    return null
  }
  if (!name) return null
  var hits = list.filter(function (c) {
    return String((c && c.name) || '').trim() === name
  })
  if (hits.length === 1) return hits[0]
  return null
}

function decideCoachAddBooking(opts) {
  opts = opts || {}
  if (!isCoachRole(opts.operatorRole)) return { ok: true, skipped: true }
  return { ok: false, msg: NO_PRIVATE_MSG }
}

function decideCoachLock(opts) {
  opts = opts || {}
  if (!isCoachRole(opts.operatorRole)) return { ok: true, skipped: true }
  var action = String(opts.action || 'lock')
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

function decideCoachGroupClass(opts) {
  opts = opts || {}
  if (!isCoachRole(opts.operatorRole)) return { ok: true, skipped: true }
  var action = String(opts.action || '')
  var blocked = {
    saveSettings: true,
    generateRotation: true,
    previewRotation: true,
    addBatch: true,
    previewBatch: true
  }
  if (blocked[action]) return { ok: false, msg: NO_GROUP_BATCH_MSG }
  var typ = String(opts.classType || opts.class_type || '').toLowerCase()
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

function outdoorLockBusyDecision(busyRow, selfCoachId) {
  if (!busyRow) return { block: false }
  var cid = busyRow.coachId != null ? busyRow.coachId : busyRow.coach_id
  var hasCoach = cid != null && String(cid).trim() !== ''
  var sameCoach = hasCoach && String(cid) === String(selfCoachId)
  var otherCoach = hasCoach && String(cid) !== String(selfCoachId)
  var src = String(busyRow.source || '')
  var isLock =
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

var api = {
  UNBOUND_MSG: UNBOUND_MSG,
  NO_PRIVATE_MSG: NO_PRIVATE_MSG,
  ONLY_OUTDOOR_MSG: ONLY_OUTDOOR_MSG,
  ONLY_OWN_LOCK_MSG: ONLY_OWN_LOCK_MSG,
  ONLY_OWN_GROUP_MSG: ONLY_OWN_GROUP_MSG,
  NO_BATCH_MSG: NO_BATCH_MSG,
  NO_GROUP_BATCH_MSG: NO_GROUP_BATCH_MSG,
  NO_SELF_GROUP_MSG: NO_SELF_GROUP_MSG,
  digits: digits,
  isCoachRole: isCoachRole,
  isOutdoorSharedCourt: isOutdoorSharedCourt,
  pickCoachBind: pickCoachBind,
  decideCoachAddBooking: decideCoachAddBooking,
  decideCoachLock: decideCoachLock,
  decideCoachGroupClass: decideCoachGroupClass,
  outdoorLockBusyDecision: outdoorLockBusyDecision
}

module.exports = api
