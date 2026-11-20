'use strict'

var CARD_PAY_COURT = '__mall_card__'
var CARD_PAY_PREFIX = '[购卡]'
var BASIC_CARD_NAME_HINT = '【通用】网球基础团'

function money(v) {
  var n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
}

function isBasicGroupCardName(name) {
  var s = String(name || '')
  if (!s) return false
  if (s.indexOf('【通用】网球基础团') >= 0) return true
  return s.indexOf('网球基础团') >= 0 && s.indexOf('通用') >= 0
}

function parseMaybeJson(v) {
  if (v == null) return null
  if (typeof v === 'object') return v
  if (typeof v === 'string') {
    try { return JSON.parse(v) } catch (e) { return null }
  }
  return null
}

function timeRuleOf(tpl) {
  var rule = parseMaybeJson(tpl && (tpl.time_rule || tpl.timeRule))
  if (!rule || typeof rule !== 'object') return {}
  return rule
}

function mallListedFromRule(tpl) {
  var rule = timeRuleOf(tpl)
  if (rule.mallListed === true || rule.mallListed === 1 || rule.mallListed === '1') return true
  if (rule.mallListed === false || rule.mallListed === 0 || rule.mallListed === '0') return false
  return null
}

function isMallListed(tpl, opts) {
  opts = opts || {}
  if (!tpl) return false
  if (tpl.mall_listed != null && tpl.mall_listed !== '') {
    return !(tpl.mall_listed === 0 || tpl.mall_listed === '0' || tpl.mall_listed === false)
  }
  if (tpl.mallListed != null && tpl.mallListed !== '') {
    return !(tpl.mallListed === 0 || tpl.mallListed === '0' || tpl.mallListed === false)
  }
  var fromRule = mallListedFromRule(tpl)
  if (fromRule != null) return fromRule
  var allowIds = opts.mallTemplateIds || []
  if (allowIds && allowIds.length) {
    return allowIds.map(String).indexOf(String(tpl.id || tpl._id || '')) >= 0
  }
  if (opts.defaultByName !== false) {
    return isBasicGroupCardName(tpl.name) && String(tpl.type || '') === 'group'
  }
  return false
}

function setMallListedOnRule(timeRule, listed) {
  var rule = timeRule && typeof timeRule === 'object' ? Object.assign({}, timeRule) : {}
  rule.mallListed = !!listed
  return rule
}

function isCardPayOrder(o) {
  if (!o) return false
  var t = String(o.biz_type || o.bizType || '').toLowerCase()
  if (t === 'card' || t === 'mall_card' || t === 'group_card') return true
  if (String(o.court || '') === CARD_PAY_COURT) return true
  if (String(o.description || '').indexOf(CARD_PAY_PREFIX) === 0) return true
  return false
}

function encodeCardPayDescription(tpl) {
  var name = (tpl && tpl.name) || '团课卡'
  var id = (tpl && (tpl.id || tpl._id)) || ''
  return CARD_PAY_PREFIX + ' ' + name + ' template=' + id
}

function parseTemplateIdFromOrder(o) {
  if (!o) return ''
  if (o.template_id) return String(o.template_id)
  if (o.templateId) return String(o.templateId)
  var m = String(o.description || '').match(/template=(\d+)/)
  return m ? m[1] : ''
}

function templatePriceYuan(tpl) {
  return money(tpl && tpl.price)
}

function templatePriceFen(tpl) {
  return Math.round(templatePriceYuan(tpl) * 100)
}

function resolveChargeFen(tpl, clientAmountYuan) {
  var serverFen = templatePriceFen(tpl)
  if (!serverFen || serverFen < 1) {
    return { ok: false, msg: '该卡模板未定价，暂不可购买', amountFen: 0 }
  }
  if (clientAmountYuan != null && clientAmountYuan !== '') {
    var clientFen = Math.round(money(clientAmountYuan) * 100)
    if (clientFen > 0 && Math.abs(clientFen - serverFen) > 1) {
      return {
        ok: false,
        msg: '价格已变动，请刷新后再购买',
        amountFen: serverFen,
        clientFen: clientFen
      }
    }
  }
  return { ok: true, amountFen: serverFen, amountYuan: money(serverFen / 100) }
}

function paidAmountOfCard(card) {
  if (!card) return 0
  if (card.paid_amount != null && card.paid_amount !== '') return money(card.paid_amount)
  if (card.paidAmount != null && card.paidAmount !== '') return money(card.paidAmount)
  return money(card.price)
}

function parsePayOrderIdFromCard(card) {
  if (!card) return 0
  var raw = card.pay_order_id || card.payOrderId
  if (raw) {
    var n = Number(raw)
    if (Number.isFinite(n) && n > 0) return n
  }
  var m = String(card.remark || '').match(/\[pay_order:(\d+)\]/)
  return m ? Number(m[1]) : 0
}

function hasPayOrder(card) {
  return parsePayOrderIdFromCard(card) > 0
}

function appendPayOrderRemark(remark, payOrderId) {
  var tag = '[pay_order:' + String(payOrderId) + ']'
  var s = String(remark || '')
  if (s.indexOf(tag) >= 0) return s
  return (s ? s.replace(/\s+$/, '') + ' ' : '') + tag
}

function isGroupTemplate(tpl) {
  return String((tpl && tpl.type) || '') === 'group'
}

function isActiveTemplate(tpl) {
  var s = String((tpl && tpl.status) || 'active').toLowerCase()
  return s === 'active' || s === '' || s === '启用'
}

module.exports = {
  CARD_PAY_COURT,
  CARD_PAY_PREFIX,
  BASIC_CARD_NAME_HINT,
  money,
  isBasicGroupCardName,
  timeRuleOf,
  mallListedFromRule,
  isMallListed,
  setMallListedOnRule,
  isCardPayOrder,
  encodeCardPayDescription,
  parseTemplateIdFromOrder,
  templatePriceYuan,
  templatePriceFen,
  resolveChargeFen,
  paidAmountOfCard,
  parsePayOrderIdFromCard,
  hasPayOrder,
  appendPayOrderRemark,
  isGroupTemplate,
  isActiveTemplate
}
