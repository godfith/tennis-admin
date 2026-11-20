'use strict'

var mall = require('./cardMall')
var adminRole = require('./adminRole')

function money(v) {
  return mall.money(v)
}

function refundProrate(remaining, total, paidAmount) {
  var left = Number(remaining) || 0
  if (left < 0) left = 0
  var tot = Number(total) || 0
  var paid = money(paidAmount)
  if (tot > 0) return money((paid * left) / tot)
  return left > 0 ? paid : 0
}

function parseHm(timeStr) {
  var start = String(timeStr || '').split('-')[0].trim()
  if (!start) return '00:00:00'
  if (start.length === 4) start = '0' + start
  if (start.length === 5) start = start + ':00'
  return start
}

function bookingStartMs(booking) {
  if (!booking) return NaN
  var date = String(booking.date || booking.book_date || '').slice(0, 10)
  if (!date) return NaN
  var start = parseHm(booking.time || booking.book_time)
  return new Date(date.replace(/-/g, '/') + ' ' + start).getTime()
}

function isUntakenEnrollment(booking, now) {
  if (!booking) return false
  var status = String(booking.status || '').toLowerCase()
  if (status !== 'booked') return false
  if (!booking.group_class_id && !booking.groupClassId) return false
  var ms = bookingStartMs(booking)
  var nowMs = now instanceof Date ? now.getTime() : Date.now()
  if (!Number.isFinite(ms)) return false
  return ms > nowMs
}

function planConfirmRefund(opts) {
  opts = opts || {}
  var card = opts.card || {}
  var unused = (opts.unusedEnrollments || []).filter(function (b) {
    return isUntakenEnrollment(b, opts.now || new Date())
  })
  var restore = unused.length
  var remaining = (Number(card.remaining_times != null ? card.remaining_times : card.remainingTimes) || 0) + restore
  var total = Number(card.total_times != null ? card.total_times : card.totalTimes) || 0
  var paid = opts.paidAmount != null ? money(opts.paidAmount) : mall.paidAmountOfCard(card)
  var refundAmount = refundProrate(remaining, total, paid)
  return {
    restore: restore,
    unusedEnrollments: unused,
    remainingAfterRestore: remaining,
    total: total,
    paid: paid,
    refundAmount: refundAmount,
    refundFen: Math.round(refundAmount * 100)
  }
}

function canConfirmCardRefund(role) {
  return adminRole.canConfirmCardRefund(role)
}

function shouldUseOnlineRefund(card) {
  return mall.hasPayOrder(card)
}

function outRefundNoForRequest(requestId, payOrder) {
  var raw = 'CR' + String(requestId || '') + String((payOrder && (payOrder.out_trade_no || payOrder.outTradeNo)) || '')
  return raw.replace(/[^a-zA-Z0-9]/g, '').slice(0, 64) || ('CR' + String(requestId || '0'))
}

function requestDoesNotChangeCardStatus() {
  return true
}

module.exports = {
  money,
  refundProrate,
  bookingStartMs,
  isUntakenEnrollment,
  planConfirmRefund,
  canConfirmCardRefund,
  shouldUseOnlineRefund,
  outRefundNoForRequest,
  requestDoesNotChangeCardStatus
}
