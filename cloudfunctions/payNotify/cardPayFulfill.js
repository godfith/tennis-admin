'use strict'

const mall = require('./cardMall')

function ymdNowLocal() {
  try {
    return new Intl.DateTimeFormat('en-CA', {
      timeZone: 'Asia/Shanghai',
      year: 'numeric',
      month: '2-digit',
      day: '2-digit'
    }).format(new Date())
  } catch (e) {
    const d = new Date(Date.now() + 8 * 3600 * 1000)
    return d.toISOString().slice(0, 10)
  }
}

function normYmd(v) {
  if (!v) return ''
  const m = String(v).match(/^(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : ''
}

function addDaysYmd(ymd, days) {
  const base = normYmd(ymd) || ymdNowLocal()
  const d = new Date(base.replace(/-/g, '/') + ' 00:00:00')
  d.setDate(d.getDate() + Number(days || 0))
  const p = (n) => (n < 10 ? '0' + n : '' + n)
  return d.getFullYear() + '-' + p(d.getMonth() + 1) + '-' + p(d.getDate())
}

function parseRuleObj(v) {
  if (!v) return {}
  if (typeof v === 'object') return v
  try { return JSON.parse(v) || {} } catch (e) { return {} }
}

function templateIssueDates(tpl) {
  const rule = parseRuleObj(tpl && (tpl.time_rule || tpl.timeRule))
  const mode = rule.activateMode || 'now'
  const days = Number(tpl && (tpl.duration_days != null ? tpl.duration_days : (tpl.durationDays || rule.durationDays)) || 0)
  const today = ymdNowLocal()
  if (mode === 'first_use') return { from: null, to: null }
  if (rule.mode === 'dates' && Array.isArray(rule.dateRanges) && rule.dateRanges.length) {
    const starts = rule.dateRanges.map((x) => x && x.start).filter(Boolean).sort()
    const ends = rule.dateRanges.map((x) => x && x.end).filter(Boolean).sort()
    return { from: starts[0] || today, to: ends.length ? ends[ends.length - 1] : null }
  }
  if (days > 0) return { from: today, to: addDaysYmd(today, days) }
  return { from: null, to: null }
}

async function findIssuedCard(conn, payOrderId) {
  if (!payOrderId) return null
  try {
    const [rows] = await conn.query(
      'SELECT * FROM member_cards WHERE pay_order_id=? ORDER BY id DESC LIMIT 1',
      [payOrderId]
    )
    if (rows && rows[0]) return rows[0]
  } catch (e) {}
  try {
    const tag = '%[pay_order:' + String(payOrderId) + ']%'
    const [rows] = await conn.query(
      "SELECT * FROM member_cards WHERE remark LIKE ? ORDER BY id DESC LIMIT 1",
      [tag]
    )
    if (rows && rows[0]) return rows[0]
  } catch (e) {}
  return null
}

async function loadTemplate(conn, templateId) {
  if (!templateId) return null
  const [rows] = await conn.query('SELECT * FROM card_templates WHERE id=? LIMIT 1', [templateId])
  return (rows && rows[0]) || null
}

async function ensureLedgerCardPay(conn, o, cardId) {
  try {
    const [exist] = await conn.query(
      `SELECT id FROM finance_ledger WHERE pay_order_id=? AND type IN ('issue_card','card_pay') LIMIT 1`,
      [o.id]
    )
    if (exist && exist[0]) return
    const amt = Math.round(Number(o.amount_fen) || 0) / 100
    await conn.query(
      `INSERT INTO finance_ledger
        (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
         operator_name, card_id, booking_id, pay_order_id, remark)
       VALUES (CURDATE(), 'issue_card', ?, ?, ?, ?, ?, ?, ?, NULL, ?, ?)`,
      [
        amt,
        o.venue_id || '',
        o.venue_name || '',
        Number(o.user_id) > 0 ? Number(o.user_id) : null,
        o.user_name || '',
        '微信支付',
        cardId || null,
        o.id,
        ((o.description || '购卡') + ' ' + (o.out_trade_no || '')).slice(0, 200)
      ]
    )
  } catch (e) {
    console.warn('card_pay ledger', e.message || e)
  }
}

async function writeIssueLog(conn, o, tpl, cardId, amt) {
  try {
    await conn.query(
      `INSERT INTO activity_logs
        (type, user_name, operator_name, phone, detail, venue_id, venue_name, amount, card_name, created_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())`,
      [
        'issue_card',
        o.user_name || '',
        '微信支付',
        o.phone || '',
        '商城购卡 ' + ((tpl && tpl.name) || '') + ' 实付' + amt + '元 ' + (o.out_trade_no || ''),
        o.venue_id || '',
        o.venue_name || '',
        amt,
        (tpl && tpl.name) || ''
      ]
    )
  } catch (e) {}
}

async function attachCardToOrder(conn, o, cardId) {
  try {
    await conn.query(
      `UPDATE pay_orders SET card_id=?, biz_type=IFNULL(NULLIF(biz_type,''),'card'), updated_at=NOW() WHERE id=?`,
      [cardId, o.id]
    )
  } catch (e) {
    try {
      await conn.query(
        `UPDATE pay_orders SET updated_at=NOW() WHERE id=?`,
        [o.id]
      )
    } catch (e2) {}
  }
}

async function insertMemberCard(conn, o, tpl, paidYuan) {
  const dates = templateIssueDates(tpl)
  const times = Number(tpl.total_times || tpl.totalTimes) || 0
  let ruleObj = parseRuleObj(tpl.time_rule || tpl.timeRule)
  const timeRule = JSON.stringify(ruleObj || {})
  const userIdVal = Number(o.user_id) > 0 ? Number(o.user_id) : null
  const remark = mall.appendPayOrderRemark('商城微信支付', o.id)
  const baseCols = `(user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type,
        total_times, remaining_times, valid_from, valid_to, time_rule,
        status, source, remark, issuer_name, price)`
  const baseVals = [
    userIdVal,
    o.openid || '',
    o.user_name || '',
    o.venue_id || '',
    o.venue_name || '',
    tpl.id,
    tpl.name,
    tpl.type || 'group',
    times,
    times,
    dates.from,
    dates.to,
    timeRule || null,
    remark,
    '微信支付',
    paidYuan
  ]
  const tryFull = `INSERT INTO member_cards ${baseCols.replace(', price)', ', price, pay_order_id, paid_amount)')}
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'active', 'wx_mall', ?, ?, ?, ?, ?)`
  try {
    const [res] = await conn.query(tryFull, baseVals.concat([o.id, paidYuan]))
    return { ok: true, id: res.insertId }
  } catch (e) {
    const msg = String((e && e.message) || '')
    if (msg.indexOf('Unknown column') < 0) throw e
  }
  const [res] = await conn.query(
    `INSERT INTO member_cards ${baseCols}
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'active', 'wx_mall', ?, ?, ?)`,
    baseVals
  )
  return { ok: true, id: res.insertId, missingColumns: true }
}

/**
 * After a mall card pay_order is paid: issue a member card. Idempotent.
 */
async function fulfillCardPayOrder(conn, o, opts) {
  opts = opts || {}
  if (!o || !o.id) return { ok: false, msg: '无订单' }
  const existing = await findIssuedCard(conn, o.id)
  if (existing) {
    await attachCardToOrder(conn, o, existing.id)
    await ensureLedgerCardPay(conn, o, existing.id)
    return { ok: true, cardId: String(existing.id), already: true, created: false }
  }
  const templateId = mall.parseTemplateIdFromOrder(o)
  const tpl = await loadTemplate(conn, templateId)
  if (!tpl) return { ok: false, msg: '卡模板不存在，无法发卡', paidNoCard: true }
  const paidYuan = mall.money(Math.round(Number(o.amount_fen) || 0) / 100)
  const ins = await insertMemberCard(conn, o, tpl, paidYuan)
  const cardId = ins.id
  await attachCardToOrder(conn, o, cardId)
  await ensureLedgerCardPay(conn, o, cardId)
  await writeIssueLog(conn, o, tpl, cardId, paidYuan)
  return { ok: true, cardId: String(cardId), created: true, missingColumns: !!ins.missingColumns }
}

async function pickMchVenueId(preferred, mchOfFn, venueMchMap) {
  const tries = [preferred, 'venue_huadiwan', 'venue_haixinsha', 'venue_zhongda', 'venue_chenjiaci']
  const seen = {}
  for (const id of tries) {
    if (!id || seen[id]) continue
    seen[id] = true
    const mch = mchOfFn(id)
    if (mch) return { venueId: id, mch }
  }
  const keys = Object.keys(venueMchMap || {})
  for (const id of keys) {
    if (seen[id]) continue
    const mch = mchOfFn(id)
    if (mch) return { venueId: id, mch }
  }
  return { venueId: preferred || '', mch: null }
}

module.exports = {
  ymdNowLocal,
  templateIssueDates,
  findIssuedCard,
  loadTemplate,
  fulfillCardPayOrder,
  pickMchVenueId
}
