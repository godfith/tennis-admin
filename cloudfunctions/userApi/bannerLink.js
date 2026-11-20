'use strict'

var PRESETS = [
  { key: '', label: '不跳转', path: '' },
  { key: 'group', label: '团课报名', path: '/pages/group/group' },
  { key: 'shop', label: '商城', path: '/pages/shop/shop' },
  { key: 'booking', label: '立即订场', path: '/pages/booking/booking' }
]

function normalizeBannerLink(link) {
  var s = String(link || '').trim()
  if (!s || s === 'none' || s === '无' || s === '不跳转') return ''
  var lower = s.toLowerCase()
  for (var i = 0; i < PRESETS.length; i++) {
    var p = PRESETS[i]
    if (!p.path) continue
    if (s === p.key || s === p.label || s === p.path || s === p.path.replace(/^\//, '')) return p.path
    if (lower === p.key) return p.path
  }
  if (s.indexOf('团课') >= 0) return '/pages/group/group'
  if (s.indexOf('商城') >= 0 || s.indexOf('购卡') >= 0) return '/pages/shop/shop'
  if (s.indexOf('订场') >= 0 || s.indexOf('预约') >= 0) return '/pages/booking/booking'
  if (s.charAt(0) !== '/') s = '/' + s
  return s
}

function isGroupBanner(banner) {
  if (!banner) return false
  var title = String(banner.title || banner.name || '')
  var image = String(banner.image || '')
  return title.indexOf('团课') >= 0 || image.indexOf('group') >= 0 || image.indexOf('tuan') >= 0
}

function defaultLinkForBanner(banner) {
  if (isGroupBanner(banner)) return '/pages/group/group'
  return normalizeBannerLink(banner && banner.link)
}

function bannerNavType(path) {
  var p = normalizeBannerLink(path)
  if (!p) return { path: '', mode: 'none' }
  if (p.indexOf('/pages/shop/shop') === 0 || p.indexOf('/pages/booking/booking') === 0 || p.indexOf('/pages/index/index') === 0) {
    return { path: p, mode: 'switchTab' }
  }
  return { path: p, mode: 'navigateTo' }
}

module.exports = {
  PRESETS,
  normalizeBannerLink,
  isGroupBanner,
  defaultLinkForBanner,
  bannerNavType
}
