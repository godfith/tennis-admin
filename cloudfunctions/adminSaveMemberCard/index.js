const mysql = require('mysql2/promise')
const cardActivateHelper = require('./cardActivateHelper')

const pool = mysql.createPool({
  host: process.env.DB_HOST || 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: Number(process.env.DB_PORT || 26462),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'goat_prod',
  waitForConnections: true,
  connectionLimit: 5,
  connectTimeout: 10000,
  dateStrings: true,
  timezone: '+08:00',
  charset: 'utf8mb4'
})

// Real saveMemberCard (was wrongly a getBookings copy). UI primary path is adminGetUsers.saveMemberCard;
// this CF mirrors the same logic so direct calls / old routes stay correct.
const FN_VER = 'saveMemberCard-20261117c'

function parseEvent(event) {
  let body = event || {}
  if (body && body.body) {
    try {
      const inner = typeof body.body === 'string' ? JSON.parse(body.body) : body.body
      body = Object.assign({}, body, inner)
    } catch (e) {}
  }
  return body
}

function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
}

function fmtDate(v) {
  if (!v) return null
  const m = String(v).match(/^(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : null
}

exports.main = async (event) => {
  const body = parseEvent(event)
  const action = body.action || 'saveMemberCard'
  if (action === 'ver') return { ok: true, fnVer: FN_VER }

  // Only save / disable / enable / pause / activate / unactivate — no booking list here
  if (!['saveMemberCard', 'disableCard', 'enableCard', 'pauseCard', 'activate', 'unactivate'].includes(action) && body.cardId == null && !(body.data && body.data.cardId)) {
    return { ok: false, msg: 'adminSaveMemberCard 仅支持改卡（saveMemberCard/disable/enable/pause/activate/unactivate）。查订场请用 adminGetBookings。', fnVer: FN_VER }
  }

  const cardId = body.cardId || (body.data && body.data.cardId)
  const data = body.data || body
  const op = body.operatorName || data.operatorName || '管理员'
  if (!cardId) return { ok: false, msg: '缺少卡ID', fnVer: FN_VER }

  try {
    const [rows] = await pool.query('SELECT * FROM member_cards WHERE id=? LIMIT 1', [cardId])
    const card = rows[0]
    if (!card) return { ok: false, msg: '卡不存在', fnVer: FN_VER }


    if (action === 'activate' || action === 'unactivate') {
      const gate = cardActivateHelper.canChangeActivation(card)
      if (!gate.ok) return { ok: false, msg: gate.msg, fnVer: FN_VER }
      let rule = cardActivateHelper.parseRule(card.time_rule)
      if (!rule || typeof rule !== 'object') rule = {}
      const today = cardActivateHelper.todayYmd()
      let validFrom = null
      let validTo = null
      let nextStatus = card.status
      let detail = ''
      if (action === 'activate') {
        const days = Number((rule && rule.durationDays) || card.duration_days || 0)
        const dates = cardActivateHelper.computeActivateDates(today, days)
        validFrom = dates.validFrom
        validTo = dates.validTo
        nextStatus = cardActivateHelper.nextStatusOnActivate(card, dates, today)
        detail = '后台激活「' + (card.card_name || '') + '」有效期 ' + validFrom + ' ~ ' + (validTo || '不限')
      } else {
        rule.activateMode = 'first_use'
        validFrom = null
        validTo = null
        nextStatus = cardActivateHelper.nextStatusOnUnactivate(card)
        detail = '后台改为未激活「' + (card.card_name || '') + '」，已清空有效期，次数与停用状态不变'
      }
      await pool.query(
        `UPDATE member_cards SET valid_from=?, valid_to=?, status=?, time_rule=?, updated_at=NOW() WHERE id=?`,
        [validFrom, validTo, nextStatus, JSON.stringify(rule), cardId]
      )
      try {
        await pool.query(
          `INSERT INTO activity_logs (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
           VALUES ('card_edit', ?, ?, '', ?, ?, ?, NOW())`,
          [card.user_name || '', op, detail, card.venue_id || '', card.venue_name || '']
        )
      } catch (e) {}
      return {
        ok: true,
        action,
        validFrom: validFrom || '',
        validTo: validTo || '',
        status: nextStatus,
        activateMode: rule.activateMode || '',
        remainingTimes: card.remaining_times,
        fnVer: FN_VER
      }
    }

    if (action === 'disableCard') {
      await pool.query(`UPDATE member_cards SET status='disabled', updated_at=NOW() WHERE id=?`, [cardId])
      return { ok: true, status: 'disabled', fnVer: FN_VER }
    }
    if (action === 'enableCard') {
      let rule = card.time_rule
      if (typeof rule === 'string') { try { rule = JSON.parse(rule) } catch (e) { rule = {} } }
      if (rule && typeof rule === 'object') delete rule.pause
      const t = String(card.type || '')
      let nextStatus = 'active'
      if ((t === 'times' || t === 'coach' || t === 'group') && Number(card.remaining_times) <= 0) {
        nextStatus = 'used_up'
      }
      await pool.query(`UPDATE member_cards SET status=?, time_rule=?, updated_at=NOW() WHERE id=?`, [nextStatus, rule ? JSON.stringify(rule) : card.time_rule, cardId])
      return { ok: true, status: nextStatus, fnVer: FN_VER }
    }
    if (action === 'pauseCard') {
      const from = String(data.pauseFrom || '').slice(0, 10)
      if (!/^\d{4}-\d{2}-\d{2}$/.test(from)) return { ok: false, msg: '请选择停卡日期', fnVer: FN_VER }
      const autoResume = !!data.autoResume
      const resumeDate = autoResume ? String(data.resumeDate || '').slice(0, 10) : ''
      if (autoResume && !/^\d{4}-\d{2}-\d{2}$/.test(resumeDate)) return { ok: false, msg: '请选择自动复卡日期', fnVer: FN_VER }
      if (autoResume && resumeDate <= from) return { ok: false, msg: '复卡日期要晚于停卡日期', fnVer: FN_VER }
      let rule = card.time_rule
      if (typeof rule === 'string') { try { rule = JSON.parse(rule) } catch (e) { rule = {} } }
      if (!rule || typeof rule !== 'object') rule = { mode: 'unlimited' }
      rule.pause = { from, autoResume, resumeDate, extendValidity: !!data.extendValidity }
      let validTo = card.valid_to
      if (data.extendValidity && autoResume && card.valid_to) {
        const days = Math.round((new Date(resumeDate) - new Date(from)) / 86400000)
        if (days > 0) {
          const end = new Date(String(card.valid_to).slice(0, 10) + 'T00:00:00')
          end.setDate(end.getDate() + days)
          const p = (n) => (n < 10 ? '0' + n : '' + n)
          validTo = end.getFullYear() + '-' + p(end.getMonth() + 1) + '-' + p(end.getDate())
        }
      }
      await pool.query(`UPDATE member_cards SET status='disabled', valid_to=?, time_rule=?, updated_at=NOW() WHERE id=?`, [validTo, JSON.stringify(rule), cardId])
      const until = autoResume ? resumeDate : '2099-12-31'
      await pool.query(
        `UPDATE bookings SET status='cancelled', remark=CONCAT(IFNULL(remark,''),' 停卡取消'), updated_at=NOW()
          WHERE card_id=? AND status='booked' AND date>=? AND date<?`,
        [cardId, from, until]
      )
      return { ok: true, status: 'disabled', validTo, fnVer: FN_VER }
    }

    // default: saveMemberCard
    const validFrom = data.validFrom != null ? fmtDate(data.validFrom) : fmtDate(card.valid_from)
    const validTo = data.validTo != null ? (fmtDate(data.validTo) || null) : fmtDate(card.valid_to)
    let remaining = card.remaining_times
    let total = card.total_times
    if (data.remainingTimes != null && data.remainingTimes !== '') remaining = Number(data.remainingTimes)
    if (data.totalTimes != null && data.totalTimes !== '') total = Number(data.totalTimes)
    if (!Number.isFinite(remaining)) remaining = card.remaining_times
    if (!Number.isFinite(total)) total = card.total_times
    let timeRule = data.timeRule != null ? data.timeRule : card.time_rule
    if (timeRule && typeof timeRule === 'object') {
      timeRule.customized = true
      timeRule = JSON.stringify(timeRule)
    }
    const cardName = data.cardName != null && String(data.cardName).trim() ? String(data.cardName).trim() : card.card_name
    const oldPrice = money(card.price)
    let nextPrice = oldPrice
    const priceProvided = data.price != null && data.price !== ''
    if (priceProvided) {
      nextPrice = money(data.price)
      if (nextPrice < 0) return { ok: false, msg: '实收金额不能为负', fnVer: FN_VER }
    }
    let remark = card.remark || ''
    if (!/\[已改规则\]/.test(remark)) remark = (remark ? remark + ' ' : '') + '[已改规则]'
    if (priceProvided && nextPrice !== oldPrice && !/\[已改实收\]/.test(remark)) {
      remark = (remark ? remark + ' ' : '') + '[已改实收]'
    }
    const oldFrom = fmtDate(card.valid_from)
    const oldTo = fmtDate(card.valid_to)
    if ((oldFrom || '') !== (validFrom || '') || (oldTo || '') !== (validTo || '')) {
      if (!/\[已改有效期\]/.test(remark)) remark = (remark ? remark + ' ' : '') + '[已改有效期]'
    }
    // Keep status in sync with remaining for times/coach/group cards
      let nextStatus = card.status
      const t = String(card.type || '')
      if (t === 'times' || t === 'coach' || t === 'group') {
        if (Number(remaining) > 0) {
          if (nextStatus === 'used_up') nextStatus = 'active'
        } else if (nextStatus === 'active') {
          nextStatus = 'used_up'
        }
      }
      await pool.query(
          `UPDATE member_cards SET card_name=?, valid_from=?, valid_to=?, remaining_times=?, total_times=?, time_rule=?, remark=?, price=?, status=?, updated_at=NOW() WHERE id=?`,
          [cardName, validFrom, validTo, remaining, total, timeRule, remark, nextPrice, nextStatus, cardId]
        )
    const priceDelta = money(nextPrice - oldPrice)
    if (priceProvided && priceDelta !== 0) {
      try {
        await pool.query(
          `INSERT INTO finance_ledger
            (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
             operator_name, card_id, remark)
           VALUES (CURDATE(), 'card_price_adjust', ?, ?, ?, ?, ?, ?, ?, ?)`,
          [
            priceDelta,
            card.venue_id || '',
            card.venue_name || '',
            card.user_id || null,
            card.user_name || '',
            op,
            cardId,
            '改卡实收 ' + oldPrice + '→' + nextPrice + ' · 「' + cardName + '」'
          ]
        )
      } catch (e) {}
    }
    try {
      const detailParts = ['改卡「' + cardName + '」规则/有效期']
      if (priceProvided && priceDelta !== 0) detailParts.push('实收 ' + oldPrice + '→' + nextPrice)
      await pool.query(
        `INSERT INTO activity_logs (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
         VALUES ('card_edit', ?, ?, '', ?, ?, ?, NOW())`,
        [card.user_name || '', op, detailParts.join('；'), card.venue_id || '', card.venue_name || '']
      )
    } catch (e) {}
    return { ok: true, rulesEdited: true, datesEdited: /\[已改有效期\]/.test(remark), price: nextPrice, priceDelta, fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '保存失败', fnVer: FN_VER }
  }
}