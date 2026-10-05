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
    '/occupancy',
    '/coach-attendance',
    '/bookings',
    '/coach-schedule',
    '/group-classes',
    '/courts',
    '/hours',
    '/prices',
    '/coaches',
    '/users'
  ],
  front: ['/bookings', '/coach-schedule', '/users'],
  service: ['/bookings', '/users']
}

export const PERM_OPTIONS = [
  { key: '/dashboard', label: '数据看板' },
  { key: '/activity', label: '业务动态' },
  { key: '/finance', label: '财务报表' },
  { key: '/occupancy', label: '订场率' },
  { key: '/coach-attendance', label: '教练出勤' },
  { key: '/bookings', label: '预约管理' },
  { key: '/coach-schedule', label: '教练排课' },
  { key: '/group-classes', label: '团课排期' },
  { key: '/courts', label: '场地管理' },
  { key: '/hours', label: '场地时间' },
  { key: '/prices', label: '场地价格' },
  { key: '/coaches', label: '教练管理' },
  { key: '/staff', label: '员工管理' },
  { key: '/users', label: '用户管理' },
  { key: '/cards', label: '卡模板管理' },
  { key: '/gift', label: '体验发放' },
  { key: 'issueCard', label: '发卡' },
  { key: 'refundCard', label: '退卡/删除卡' },
  { key: 'extendCard', label: '延期' },
  { key: 'cancelBook', label: '取消预约' },
  { key: 'editTemplate', label: '改卡模板' },
  { key: 'editStaff', label: '改员工权限' }
]

export function getPerms() {
  try {
    const raw = JSON.parse(localStorage.getItem('admin_perms') || '[]')
    return Array.isArray(raw) ? raw : []
  } catch (e) {
    return []
  }
}

export function canAccess(path) {
  if (roleKind() === 'admin') return true
  const custom = getPerms()
  if (custom.length) return custom.includes(path)
  const list = ALLOWED[roleKind()] || []
  return list.includes(path)
}

export function can(action) {
  if (roleKind() === 'admin') return true
  const custom = getPerms()
  if (custom.length) return custom.includes(action)
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
