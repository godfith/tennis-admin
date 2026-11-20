'use strict'

function normRole(role) {
  return String(role || '').trim().toLowerCase()
}

function isCoachRole(role) {
  var r = normRole(role)
  return r === 'coach' || r === '教练'
}

function isManagerRole(role) {
  var r = normRole(role)
  return r === 'manager' || r === '店长'
}

function isFrontRole(role) {
  var r = normRole(role)
  return r === 'front' || r === 'staff' || r === '前台' || r === '店员'
}

function isSuperAdminRole(role) {
  var r = normRole(role)
  return (
    r === 'admin' ||
    r === 'super' ||
    r === 'superadmin' ||
    r === '超级管理员' ||
    r === '管理员'
  )
}

function canReorderRotation(role) {
  return isSuperAdminRole(role)
}

function canConfirmCardRefund(role) {
  return isSuperAdminRole(role)
}

function canOpenSelfOrganized(role) {
  return !isCoachRole(role)
}

function roleFromAdminRow(ctx) {
  if (ctx && ctx.admin) return ctx.admin.role || ''
  return ''
}

function requireFoundSuperAdmin(ctx, denyMsg) {
  if (!ctx || !ctx.admin) {
    return { ok: false, msg: denyMsg || '请使用超级管理员账号登录后再操作' }
  }
  if (!isSuperAdminRole(ctx.admin.role)) {
    return { ok: false, msg: denyMsg || '只有超级管理员可以执行此操作' }
  }
  return { ok: true, role: ctx.admin.role }
}

module.exports = {
  normRole,
  isCoachRole,
  isManagerRole,
  isFrontRole,
  isSuperAdminRole,
  canReorderRotation,
  canConfirmCardRefund,
  canOpenSelfOrganized,
  roleFromAdminRow,
  requireFoundSuperAdmin
}
