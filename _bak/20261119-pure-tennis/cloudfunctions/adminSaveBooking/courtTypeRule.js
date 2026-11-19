'use strict'

var COURT_TYPE_OPTIONS = ['网球', '匹克球', '发球机']

function parseTimeRule(raw) {
  if (!raw) return null
  if (typeof raw === 'object') return raw
  if (typeof raw === 'string') {
    try { return JSON.parse(raw) } catch (e) { return null }
  }
  return null
}

function isStoredLike(name, cardType) {
  var typ = String(cardType || '')
  var n = String(name || '')
  return typ === 'stored' || typ === '储值' || typ === 'wallet' || n.indexOf('储值') >= 0
}

function inferCourtTypesFromName(name, cardType) {
  if (isStoredLike(name, cardType)) return []
  var n = String(name || '')
  if (n.indexOf('匹克') >= 0 || n.indexOf('丁克') >= 0) return ['匹克球']
  if (n.indexOf('发球机') >= 0) return ['发球机']
  // 私教常在网球场和发球机房上，不能默认只当网球卡（否则陈家祠约不了）
  if (String(cardType || '') === 'coach') return ['网球', '发球机']
  return ['网球']
}

function normalizeCourtTypes(list) {
  if (!Array.isArray(list)) return null
  var out = []
  for (var i = 0; i < list.length; i++) {
    var t = String(list[i] || '').trim()
    if (t === '不限' || t === '*' || t === 'all') return []
    if (COURT_TYPE_OPTIONS.indexOf(t) >= 0 && out.indexOf(t) < 0) out.push(t)
  }
  return out
}

function hasExplicitCourtTypes(rule) {
  return !!(rule && Array.isArray(rule.courtTypes))
}

function resolveCardCourtTypes(card) {
  var name = (card && (card.cardName || card.card_name || card.name)) || ''
  var typ = (card && card.type) || ''
  if (isStoredLike(name, typ)) return []
  var rule = parseTimeRule(card && (card.timeRule || card.time_rule))
  if (hasExplicitCourtTypes(rule)) return normalizeCourtTypes(rule.courtTypes) || []
  return inferCourtTypesFromName(name, typ)
}

function inferCourtTypeFromCourt(court) {
  var typ = ''
  var name = ''
  if (typeof court === 'string') {
    name = court
  } else if (court && typeof court === 'object') {
    typ = String(court.type || '').trim()
    name = String(court.name || court.court || '')
  }
  if (typ === '网球' || typ === '匹克球' || typ === '发球机' || typ === '共用') return typ
  if (name.indexOf('匹克') >= 0 || name.indexOf('丁克') >= 0) return '匹克球'
  if (!typ && name && (name.indexOf('发球机') === 0 || name.indexOf('发球机') >= 0)) return '发球机'
  return '网球'
}

function resolveBookingSport(data) {
  if (data == null) return ''
  if (typeof data === 'string') {
    var s = data.trim()
    if (s === 'pickleball' || s === '匹克球' || s.indexOf('匹克') >= 0 || s.indexOf('丁克') >= 0) return 'pickleball'
    if (s === 'tennis' || s === '网球') return 'tennis'
    if (s === '发球机') return '发球机'
    return s
  }
  var sport = String(data.sport || data.courtSport || '').trim()
  if (sport === 'pickleball' || sport === '匹克球') return 'pickleball'
  if (sport === 'tennis' || sport === '网球') return 'tennis'
  if (sport === '发球机') return '发球机'
  if (sport) return sport
  var remark = String(data.remark || '')
  if (remark.indexOf('匹克') >= 0 || remark.indexOf('丁克') >= 0) return 'pickleball'
  return ''
}

function courtSportKind(court) {
  var typ = ''
  var remark = ''
  var name = ''
  if (typeof court === 'string') {
    name = court
  } else if (court && typeof court === 'object') {
    typ = String(court.type || '').trim()
    remark = String(court.remark || '')
    name = String(court.name || court.court || '')
  }
  if (typ === '共用') return 'both'
  if (typ === '匹克球') return 'pickleball'
  if (typ === '网球' || typ === '发球机') return 'tennis'
  var text = typ + name + remark
  var hasShare = text.indexOf('共用') >= 0
  var hasPickle = text.indexOf('匹克') >= 0 || text.indexOf('丁克') >= 0
  var hasTennisish = text.indexOf('网球') >= 0 || text.indexOf('发球机') >= 0
  if (hasShare || (hasPickle && hasTennisish)) return 'both'
  if (hasPickle) return 'pickleball'
  var inferred = inferCourtTypeFromCourt(court)
  if (inferred === '共用') return 'both'
  if (inferred === '匹克球') return 'pickleball'
  return 'tennis'
}

function physicalCourtKey(venueId, court) {
  var name = ''
  if (typeof court === 'string') name = court
  else if (court && typeof court === 'object') name = court.name || court.court || ''
  return String(venueId || '') + '|' + String(name || '').trim()
}

function samePhysicalSlot(a, b) {
  if (!a || !b) return false
  var courtA = a.court != null ? a.court : a
  var courtB = b.court != null ? b.court : b
  return physicalCourtKey(a.venueId, courtA) === physicalCourtKey(b.venueId, courtB)
    && String(a.date || '') === String(b.date || '')
    && String(a.time || '') === String(b.time || '')
}

function requiredCourtTypesForBooking(court, sport) {
  var courtType = inferCourtTypeFromCourt(court)
  var hint = resolveBookingSport(sport)
  if (courtType === '共用') {
    if (hint === 'pickleball') return ['匹克球']
    return ['网球', '发球机']
  }
  // 网球与发球机按同一类训练场地：花地湾发球机卡也能约网球场，陈家祠次卡也能约发球机房
  if (courtType === '发球机' || courtType === '网球') return ['网球', '发球机']
  return [courtType]
}

function cardAllowsCourt(card, court, sport) {
  var allowed = resolveCardCourtTypes(card)
  if (!allowed.length) return true
  var required = requiredCourtTypesForBooking(court, sport)
  for (var i = 0; i < required.length; i++) {
    if (allowed.indexOf(required[i]) >= 0) return true
  }
  return false
}

function courtTypeRejectMsg(card) {
  var allowed = resolveCardCourtTypes(card)
  if (!allowed.length) return ''
  if (allowed.length === 1) {
    if (allowed[0] === '发球机') return '这张卡仅限发球机使用'
    return '这张卡仅限' + allowed[0] + '场地使用'
  }
  var parts = []
  for (var i = 0; i < allowed.length; i++) {
    parts.push(allowed[i] === '发球机' ? '发球机' : allowed[i] + '场地')
  }
  return '这张卡仅限' + parts.join('、') + '使用'
}

function courtTypesText(cardOrRule, name, cardType) {
  var card = cardOrRule
  if (cardOrRule && (cardOrRule.courtTypes || cardOrRule.mode || cardOrRule.venueIds) && !cardOrRule.cardName && !cardOrRule.card_name && !cardOrRule.timeRule && !cardOrRule.time_rule) {
    card = { timeRule: cardOrRule, cardName: name, name: name, type: cardType }
  }
  var rule = parseTimeRule(card && (card.timeRule || card.time_rule || card))
  var displayName = name || (card && (card.cardName || card.card_name || card.name)) || ''
  var typ = cardType || (card && card.type) || ''
  if (isStoredLike(displayName, typ)) return '-'
  if (hasExplicitCourtTypes(rule)) {
    var explicit = normalizeCourtTypes(rule.courtTypes) || []
    if (!explicit.length) return '不限'
    return explicit.join('、')
  }
  return inferCourtTypesFromName(displayName, typ).join('、') || '不限'
}

function formCourtTypesForEdit(rule, name, cardType) {
  var r = parseTimeRule(rule) || rule
  if (hasExplicitCourtTypes(r)) return (normalizeCourtTypes(r.courtTypes) || []).slice()
  return inferCourtTypesFromName(name, cardType).slice()
}

var api = {
  COURT_TYPE_OPTIONS: COURT_TYPE_OPTIONS,
  parseTimeRule: parseTimeRule,
  isStoredLike: isStoredLike,
  inferCourtTypesFromName: inferCourtTypesFromName,
  normalizeCourtTypes: normalizeCourtTypes,
  hasExplicitCourtTypes: hasExplicitCourtTypes,
  resolveCardCourtTypes: resolveCardCourtTypes,
  inferCourtTypeFromCourt: inferCourtTypeFromCourt,
  courtSportKind: courtSportKind,
  physicalCourtKey: physicalCourtKey,
  samePhysicalSlot: samePhysicalSlot,
  resolveBookingSport: resolveBookingSport,
  requiredCourtTypesForBooking: requiredCourtTypesForBooking,
  cardAllowsCourt: cardAllowsCourt,
  courtTypeRejectMsg: courtTypeRejectMsg,
  courtTypesText: courtTypesText,
  formCourtTypesForEdit: formCourtTypesForEdit
}

if (typeof module !== 'undefined' && module.exports) {
  module.exports = api
}

if (typeof exports !== 'undefined') {
  Object.keys(api).forEach(function (k) { exports[k] = api[k] })
}
