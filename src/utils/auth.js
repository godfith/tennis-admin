export function getRole() {
  return String(localStorage.getItem('admin_role') || '').trim().toLowerCase()
}

export function getAdminName() {
  return String(localStorage.getItem('admin_name') || '').trim()
}

export function roleKind() {
  const r = getRole()
  const n = getAdminName()
  if (['manager', '店长'].includes(r) || n.includes('店长')) return 'manager'
  if (['service', '客服'].includes(r) || n.includes('客服')) return 'service'
  if (['front', 'staff', '前台', '店员'].includes(r) || n.includes('店员') || n.includes('前台')) return 'front'
  if (
    ['admin', 'super', 'superadmin', '超级管理员', '管理员'].includes(r) ||
    n.includes('超级') ||
    !r
  ) {
    return 'admin'
  }
  return 'admin'
}

export function roleLabel() {
  return { admin: '超级管理员', manager: '店长', front: '店员', service: '客服' }[roleKind()] || '管理员'
}

export const HOME = {
  admin: '/dashboard',
  manager: '/dashboard',
  front: '/bookings',
  service: '/bookings'
}

export const ALLOWED = {
  admin: ['*'],
  manager: [
    '/dashboard',
    '/activity',
    '/finance',
    '/coach-attendance',
    '/bookings',
    '/group-classes',
    '/courts',
    '/prices',
    '/coaches',
    '/users'
  ],
  front: ['/bookings', '/users'],
  service: ['/bookings', '/users']
}

export function canAccess(path) {
  if (roleKind() === 'admin') return true
  const list = ALLOWED[roleKind()] || []
  return list.includes(path)
}

export function can(action) {
  const k = roleKind()
  const map = {
    switchVenue: k === 'admin',
    finance: k === 'admin' || k === 'manager',
    refundCard: k === 'admin' || k === 'manager',
    extendCard: k === 'admin' || k === 'manager',
    issueCard: k === 'admin' || k === 'manager' || k === 'front',
    book: k === 'admin' || k === 'manager' || k === 'front',
    cancelBook: k === 'admin' || k === 'manager' || k === 'front',
    enrollGroup: k === 'admin' || k === 'manager' || k === 'front',
    editGroup: k === 'admin' || k === 'manager',
    editCourt: k === 'admin' || k === 'manager',
    editPrice: k === 'admin' || k === 'manager',
    editCoach: k === 'admin' || k === 'manager',
    editStaff: k === 'admin',
    editTemplate: k === 'admin'
  }
  return !!map[action]
}

export function homePath() {
  return HOME[roleKind()] || '/bookings'
}
