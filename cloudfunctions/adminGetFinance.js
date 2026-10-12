const mysql = require('mysql2/promise')

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
  timezone: '+08:00'
})

const FN_VER = 'getFinance-20261012b'

function parseEvent(event) {
  if (event && event.body) {
    try {
      const body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
      return Object.assign({}, event, body)
    } catch (e) {
      return event
    }
  }
  return event || {}
}

function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
}

function pad(n) {
  return String(n).padStart(2, '0')
}

function fmtDate(v) {
  if (!v) return ''
  if (typeof v === 'string') {
    const m = v.match(/^(\d{4})-(\d{2})-(\d{2})/)
    if (m) return m[0]
    const d = new Date(v)
    if (!Number.isNaN(d.getTime())) return d.getFullYear() + '-' + pad(d.getMonth() + 1) + '-' + pad(d.getDate())
    return ''
  }
  if (v instanceof Date && !Number.isNaN(v.getTime())) {
    return v.getFullYear() + '-' + pad(v.getMonth() + 1) + '-' + pad(v.getDate())
  }
  return ''
}

function fmtTime(v) {
  if (!v) return ''
  if (typeof v === 'string') {
    const m = v.match(/^(\d{4}-\d{2}-\d{2})[ T](\d{2}:\d{2}:\d{2})/)
    if (m) return m[1] + ' ' + m[2]
    if (/^\d{4}-\d{2}-\d{2}$/.test(v)) return v + ' 00:00:00'
    return v
  }
  if (v instanceof Date && !Number.isNaN(v.getTime())) {
    return (
      v.getFullYear() +
      '-' +
      pad(v.getMonth() + 1) +
      '-' +
      pad(v.getDate()) +
      ' ' +
      pad(v.getHours()) +
      ':' +
      pad(v.getMinutes()) +
      ':' +
      pad(v.getSeconds())
    )
  }
  return ''
}

function weekdayMon1(dateStr) {
  const s = fmtDate(dateStr)
  const d = new Date(s.replace(/-/g, '/'))
  if (Number.isNaN(d.getTime())) return 0
  const w = d.getDay()
  return w === 0 ? 7 : w
}

function daysBetween(from, to) {
  if (!from || !to) return 1
  const a = new Date(fmtDate(from).replace(/-/g, '/'))
  const b = new Date(fmtDate(to).replace(/-/g, '/'))
  if (Number.isNaN(a.getTime()) || Number.isNaN(b.getTime())) return 1
  const diff = Math.floor((b - a) / 86400000) + 1
  return diff > 0 ? diff : 1
}

function cardDayUnit(card) {
  const price = money(card.price)
  if (price <= 0) return 0
  return money(price / daysBetween(card.valid_from, card.valid_to))
}

function cardTimeUnit(card) {
  const price = money(card.price)
  const times = Number(card.total_times) || 0
  if (price <= 0 || times <= 0) return 0
  return money(price / times)
}

function isImportedIssuer(name) {
  const s = String(name || '')
  return s.indexOf('数据迁入') >= 0 || s.indexOf('系统迁入') >= 0 || s === '迁入'
}

exports.main = async (raw) => {
  try {
    const event = parseEvent(raw)
    const venueId = event.venueId || ''
    const startDate = event.startDate || ''
    const endDate = event.endDate || ''
    if (!startDate || !endDate) return { ok: false, msg: '请选择日期区间', fnVer: FN_VER }

    let cardSql = `SELECT c.id, c.card_name, c.type, c.total_times, c.remaining_times, c.price,
                          c.valid_from, c.valid_to, c.status, c.created_at, c.updated_at, c.user_name,
                          c.venue_id, c.venue_name, c.issuer_name, c.refund_amount, c.refunded_at,
                          c.user_id, u.phone AS user_phone
                     FROM member_cards c
                     LEFT JOIN users u ON u.id = c.user_id
                    WHERE c.created_at >= ? AND c.created_at < DATE_ADD(?, INTERVAL 1 DAY)
                      AND IFNULL(c.status,'') <> 'deleted'`
    if (venueId) cardSql += ' AND c.venue_id = ?'

    let refundSql = `SELECT c.id, c.card_name, c.type, c.total_times, c.remaining_times, c.price,
                            c.status, c.created_at, c.updated_at, c.user_name,
                            c.venue_id, c.venue_name, c.issuer_name, c.refund_amount, c.refunded_at,
                            u.phone AS user_phone
                       FROM member_cards c
                       LEFT JOIN users u ON u.id = c.user_id
                      WHERE c.status = 'refunded'
                        AND IFNULL(c.refunded_at, c.updated_at) >= ? AND IFNULL(c.refunded_at, c.updated_at) < DATE_ADD(?, INTERVAL 1 DAY)`
    if (venueId) refundSql += ' AND c.venue_id = ?'

    let ledSql = `SELECT * FROM finance_ledger WHERE biz_date BETWEEN ? AND ?`
    if (venueId) ledSql += ' AND venue_id = ?'

    let paySql = `SELECT out_trade_no, venue_id, venue_name, court, book_date, book_time,
                         amount_fen, status, paid_at, user_name
                    FROM pay_orders
                   WHERE status = 'paid'
                     AND IFNULL(paid_at, created_at) >= ? AND IFNULL(paid_at, created_at) < DATE_ADD(?, INTERVAL 1 DAY)`
    if (venueId) paySql += ' AND venue_id = ?'

    let bookSql = `SELECT b.id, b.venue_id, b.venue_name, b.court, b.date, b.time, b.status,
                          b.card_id, b.card_name, b.card_type, b.user_name, b.source, b.created_at, b.amount,
                          b.user_id, b.phone, b.operator_name, u.phone AS user_phone
                     FROM bookings b
                     LEFT JOIN users u ON u.id = b.user_id
                    WHERE b.date BETWEEN ? AND ?`
    if (venueId) bookSql += ' AND b.venue_id = ?'

    const cardParams = [startDate + ' 00:00:00', endDate]
    if (venueId) cardParams.push(venueId)

    const refundParams = [startDate + ' 00:00:00', endDate]
    if (venueId) refundParams.push(venueId)

    const ledParams = [startDate, endDate]
    if (venueId) ledParams.push(venueId)

    const payParams = [startDate + ' 00:00:00', endDate]
    if (venueId) payParams.push(venueId)

    const bookParams = [startDate, endDate]
    if (venueId) bookParams.push(venueId)

    const errors = []
    const [cards, refundRows, ledRows, payRows, books, prices] = await Promise.all([
      pool.query(cardSql, cardParams).then(([r]) => r || []).catch((e) => {
        errors.push('cards:' + e.message)
        return pool.query(
          `SELECT id, card_name, type, total_times, remaining_times, price,
                  valid_from, valid_to, status, created_at, updated_at, user_name, issuer_name
             FROM member_cards
            WHERE created_at >= ? AND created_at < DATE_ADD(?, INTERVAL 1 DAY)`,
          [startDate + ' 00:00:00', endDate]
        ).then(([r]) => r || []).catch((e2) => { errors.push('cards2:' + e2.message); return [] })
      }),
      pool.query(refundSql, refundParams).then(([r]) => r || []).catch((e) => { errors.push('refund:' + e.message); return [] }),
      pool.query(ledSql, ledParams).then(([r]) => r || []).catch((e) => { errors.push('ledger:' + e.message); return [] }),
      pool.query(paySql, payParams).then(([r]) => r || []).catch((e) => { errors.push('pay:' + e.message); return [] }),
      pool.query(bookSql, bookParams).then(([r]) => r || []).catch((e) => { errors.push('books:' + e.message); return [] }),
      (venueId
        ? pool.query('SELECT court, time_slot, weekday, price FROM court_prices WHERE venue_id = ?', [venueId])
        : pool.query('SELECT venue_id, court, time_slot, weekday, price FROM court_prices')
      ).then(([r]) => r || []).catch((e) => { errors.push('prices:' + e.message); return [] })
    ])

    function unusedRefund(c) {
      if (c.refund_amount != null && c.refund_amount !== '') return money(c.refund_amount)
      const price = money(c.price)
      const total = Number(c.total_times) || 0
      const left = Number(c.remaining_times) || 0
      if (total > 0) return money((price * left) / total)
      return price
    }

    let turnoverCard = 0
    let importedAmount = 0
    let importedCount = 0
    let realIssueCount = 0
    const cardIssueList = []

    cards.forEach((c) => {
      const amt = money(c.price)
      const imported = isImportedIssuer(c.issuer_name)
      if (imported) {
        importedAmount += amt
        importedCount += 1
      } else {
        turnoverCard += amt
        realIssueCount += 1
      }
      cardIssueList.push({
        date: fmtDate(c.created_at),
        dateRaw: fmtDate(c.created_at),
        timeText: fmtTime(c.created_at),
        type: imported ? 'import_card' : 'issue_card',
        typeLabel: imported ? '迁入' : '发卡',
        cardId: String(c.id),
        cardName: c.card_name || '',
        name: c.card_name || '',
        userName: c.user_name || '',
        userAccount: c.user_name || '',
        phone: c.user_phone || '',
        venueName: c.venue_name || '',
        issuerName: c.issuer_name || '',
        operatorName: c.issuer_name || '',
        imported,
        amount: amt
      })
    })

    refundRows.forEach((c) => {
      const amt = unusedRefund(c)
      const imported = isImportedIssuer(c.issuer_name)
      if (!imported) turnoverCard -= amt
      cardIssueList.push({
        date: fmtDate(c.refunded_at || c.updated_at),
        dateRaw: fmtDate(c.refunded_at || c.updated_at),
        timeText: fmtTime(c.refunded_at || c.updated_at),
        type: 'refund_card',
        typeLabel: '退卡',
        cardId: String(c.id),
        cardName: c.card_name || '',
        name: (c.card_name || '会员卡') + '（退卡）',
        userName: c.user_name || '',
        userAccount: c.user_name || '',
        phone: c.user_phone || '',
        venueName: c.venue_name || '',
        issuerName: c.issuer_name || '',
        operatorName: c.issuer_name || '',
        imported,
        amount: money(-amt)
      })
    })

    let wxCourt = 0
    const courtPayList = []
    ;(payRows || []).forEach((p) => {
      const amt = money((Number(p.amount_fen) || 0) / 100)
      wxCourt += amt
      courtPayList.push({
        date: fmtDate(p.paid_at || p.book_date),
        dateRaw: fmtDate(p.paid_at || p.book_date),
        timeText: fmtTime(p.paid_at),
        type: 'court_pay',
        typeLabel: '订场收款',
        name: (p.court || '') + ' ' + (p.book_time || ''),
        cardName: '',
        userName: p.user_name || '',
        userAccount: p.user_name || '',
        phone: '',
        venueName: p.venue_name || '',
        operatorName: '',
        amount: amt
      })
    })

    const priceMap = {}
    ;(prices || []).forEach((r) => {
      if (venueId) priceMap[r.court + '_' + r.weekday + '_' + r.time_slot] = money(r.price)
      else priceMap[r.venue_id + '_' + r.court + '_' + r.weekday + '_' + r.time_slot] = money(r.price)
    })

    const cardIds = Array.from(new Set((books || []).map((b) => b.card_id).filter((id) => id != null)))
    const cardMap = {}
    if (cardIds.length) {
      const [usedCards] = await pool.query(
        `SELECT id, card_name, type, total_times, price, valid_from, valid_to,
                venue_name, issuer_name, created_at, user_name
           FROM member_cards WHERE id IN (${cardIds.map(() => '?').join(',')})`,
        cardIds
      )
      ;(usedCards || []).forEach((c) => {
        cardMap[String(c.id)] = c
      })
    }

    let incomeCourt = 0
    let incomeCard = 0
    let turnoverCourtBook = 0
    const consumeList = []
    const timeCardDaySeen = {}

    ;(books || []).forEach((b) => {
      if (b.status === 'cancelled' || b.status === 'locked') return
      if (String(b.user_name || '') === '锁场' || String(b.source || '') === 'lock') return
      const day = fmtDate(b.date)
      const wd = weekdayMon1(day)
      const livePrice = venueId
        ? priceMap[b.court + '_' + wd + '_' + b.time] || 0
        : priceMap[b.venue_id + '_' + b.court + '_' + wd + '_' + b.time] || 0
      const storedAmt = money(b.amount)
      const slotPrice = storedAmt > 0 ? storedAmt : livePrice
      const phone = b.phone || b.user_phone || ''
      const card = b.card_id ? cardMap[String(b.card_id)] : null
      const importedCard = card ? isImportedIssuer(card.issuer_name) : false

      if (b.card_id) {
        const isTime = (b.card_type || (card && card.type)) === 'time'
        let unit = 0
        if (isTime && card) {
          const key = String(b.card_id) + '_' + day
          if (timeCardDaySeen[key]) return
          timeCardDaySeen[key] = true
          unit = importedCard ? 0 : cardDayUnit(card)
        } else if (card) {
          unit = importedCard ? 0 : cardTimeUnit(card)
        }
        incomeCard += unit
        const cardTitle = b.card_name || (card && card.card_name) || ''
        consumeList.push({
          date: day,
          dateRaw: day,
          timeText: (day || '') + ' ' + (b.time || ''),
          type: 'card_use',
          typeLabel: importedCard ? '用卡(迁入卡)' : '用卡',
          bookingId: String(b.id),
          name: ((b.court || '') + ' ' + (b.time || '')).trim(),
          cardName: cardTitle,
          userName: b.user_name || '',
          userAccount: b.user_name || '',
          phone,
          venueName: b.venue_name || (card && card.venue_name) || '',
          operatorName: b.operator_name || '',
          court: b.court,
          time: b.time,
          imported: importedCard,
          amount: unit
        })
      } else {
        incomeCourt += slotPrice
        turnoverCourtBook += slotPrice
        consumeList.push({
          date: day,
          dateRaw: day,
          timeText: (day || '') + ' ' + (b.time || ''),
          type: 'court',
          typeLabel: '订场消费',
          bookingId: String(b.id),
          name: (b.court || '') + ' ' + (b.time || ''),
          cardName: '',
          userName: b.user_name || '',
          userAccount: b.user_name || '',
          phone,
          venueName: b.venue_name || '',
          operatorName: b.operator_name || '',
          court: b.court,
          time: b.time,
          imported: false,
          amount: slotPrice
        })
      }
    })

    const ledPay = ledRows.filter((r) => r.type === 'court_pay')
    if (ledPay.length && !wxCourt) {
      ledPay.forEach((row) => {
        const amt = money(row.amount)
        wxCourt += amt
        courtPayList.push({
          date: fmtDate(row.biz_date),
          dateRaw: fmtDate(row.biz_date),
          timeText: fmtTime(row.created_at) || fmtDate(row.biz_date),
          type: 'court_pay',
          typeLabel: '订场收款',
          payOrderId: row.pay_order_id,
          name: row.remark || '微信支付',
          cardName: '',
          userName: row.user_name || '',
          userAccount: row.user_name || '',
          phone: row.phone || '',
          venueName: row.venue_name || '',
          operatorName: row.operator_name || '',
          amount: amt
        })
      })
    }

    const turnoverCourt = wxCourt > 0 ? wxCourt : turnoverCourtBook

    const dayMap = {}
    function addDay(date, field, amt) {
      const d = fmtDate(date)
      if (!d) return
      if (!dayMap[d]) dayMap[d] = { date: d, dateRaw: d, turnover: 0, income: 0, issueReal: 0, issueImport: 0 }
      dayMap[d][field] = money(dayMap[d][field] + amt)
    }
    cardIssueList.forEach((r) => {
      if (r.type === 'refund_card') addDay(r.dateRaw, 'turnover', r.amount)
      else if (r.imported) addDay(r.dateRaw, 'issueImport', r.amount)
      else addDay(r.dateRaw, 'turnover', r.amount)
    })
    if (wxCourt > 0) courtPayList.forEach((r) => addDay(r.dateRaw, 'turnover', r.amount))
    else consumeList.filter((r) => r.type === 'court').forEach((r) => addDay(r.dateRaw, 'turnover', r.amount))
    consumeList.forEach((r) => addDay(r.dateRaw, 'income', r.amount))

    function byTimeDesc(a, b) {
      return String(b.timeText || b.dateRaw || '').localeCompare(String(a.timeText || a.dateRaw || ''))
    }
    const daily = Object.keys(dayMap)
      .sort()
      .reverse()
      .map((k) => dayMap[k])
    cardIssueList.sort(byTimeDesc)
    consumeList.sort(byTimeDesc)
    courtPayList.sort(byTimeDesc)

    return {
      ok: true,
      fnVer: FN_VER,
      startDate,
      endDate,
      venueId,
      turnover: {
        card: money(turnoverCard),
        court: money(turnoverCourt),
        total: money(turnoverCard + turnoverCourt)
      },
      income: {
        card: money(incomeCard),
        court: money(incomeCourt),
        total: money(incomeCard + incomeCourt)
      },
      imported: {
        count: importedCount,
        amount: money(importedAmount)
      },
      realIssue: {
        count: realIssueCount,
        amount: money(turnoverCard + refundRows.filter((c) => !isImportedIssuer(c.issuer_name)).reduce((s, c) => s + unusedRefund(c), 0))
      },
      daily,
      issueList: cardIssueList,
      payList: courtPayList,
      consumeList,
      debug: errors.length ? errors.join(' | ') : ''
    }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '统计失败', fnVer: FN_VER }
  }
}
