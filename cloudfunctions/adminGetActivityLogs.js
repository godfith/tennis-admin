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

function isImportedIssuer(name) {
  const s = String(name || '')
  return s.indexOf('数据迁入') >= 0 || s.indexOf('系统迁入') >= 0 || s === '迁入'
}

const FN_VER = 'activity-20261012e'

const LABELS = {
  register: '用户注册',
  booking_add: '订场',
  booking_cancel: '取消预约',
  booking_convert: '改用卡',
  group_enroll: '团课报名',
  issue_card: '发卡',
  refund_card: '退卡',
  extend_card: '延期',
  gift_card: '体验发放',
  gift_add: '体验加次',
  trial_class: '报体验课',
  pay: '微信支付',
  card_extend: '延期',
  card_delete: '删卡',
  hours_save: '改开放时间'
}

function parseEvent(event) {
  if (event && event.body) {
    try {
      return Object.assign({}, event, typeof event.body === 'string' ? JSON.parse(event.body) : event.body)
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

function parseAmount(detail) {
  const s = String(detail || '')
  const m = s.match(/(-?\d+(?:\.\d+)?)\s*元/)
  if (m) return money(m[1])
  const m2 = s.match(/收款\s*(-?\d+(?:\.\d+)?)/)
  if (m2) return money(m2[1])
  return null
}

function parseCardName(detail) {
  const s = String(detail || '')
  let m = s.match(/卡券-([^，,；;\n]+)/)
  if (m) return ('卡券-' + m[1]).trim()
  m = s.match(/发卡\s+(.+?)(?:\s+收款|$)/)
  if (m) return m[1].trim()
  m = s.match(/给「(.+?)」/)
  if (m) return m[1].trim()
  m = s.match(/改用卡\s+(.+)$/)
  if (m) return m[1].trim()
  return ''
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const venueId = body.venueId || ''
    const type = body.type || ''
    const keyword = String(body.keyword || '').trim()
    const operator = String(body.operator || '').trim()
    const userName = String(body.userName || '').trim()
    const phone = String(body.phone || '').trim()
    const cardName = String(body.cardName || '').trim()
    const startDate = body.startDate || ''
    const endDate = body.endDate || ''
    const limit = Math.min(2000, Math.max(20, Number(body.limit) || 1000))

    if (body.action === 'weekly') {
      if (!startDate || !endDate) return { ok: false, msg: '请选择日期', fnVer: FN_VER }
      const customCats = Array.isArray(body.categories) ? body.categories.filter((c) => c && c.name) : []
      const groups = {}
      const catOrder = []
      if (customCats.length) {
        customCats.forEach((c) => {
          groups[c.name] = {}
          catOrder.push({ name: c.name, keywords: (c.keywords || []).map((k) => String(k).toLowerCase()), byUse: String(c.name).indexOf('体验') >= 0 })
        })
      } else {
        ;['卡券', '课程', '体验课', '订场'].forEach((n) => { groups[n] = {} })
        catOrder.push(
          { name: '体验课', keywords: ['体验'], byUse: true },
          { name: '课程', keywords: ['私教'], byUse: false },
          { name: '订场', keywords: ['发球机1小时', '1小时发球机', '闲时'], byUse: false },
          { name: '卡券', keywords: [], byUse: false }
        )
      }
      function matchCat(name, type) {
        const n = String(name || '').toLowerCase()
        for (const c of catOrder) {
          if (!c.keywords.length) continue
          if (c.keywords.some((k) => n.indexOf(k) >= 0)) return c
        }
        return catOrder[catOrder.length - 1]
      }
      function addRow(g, key, amt, cnt) {
        if (!groups[g][key]) groups[g][key] = { name: key, amount: 0, count: 0 }
        groups[g][key].amount = money(groups[g][key].amount + money(amt))
        groups[g][key].count += cnt
      }
      let wq = `SELECT c.card_name, c.type, c.price, c.issuer_name
                  FROM member_cards c
                 WHERE c.created_at >= ? AND c.created_at < DATE_ADD(?, INTERVAL 1 DAY)
                   AND IFNULL(c.status,'') <> 'deleted'`
      const wp = [startDate + ' 00:00:00', endDate]
      if (venueId) { wq += ' AND c.venue_id=?'; wp.push(venueId) }
      const [ws] = await pool.query(wq, wp)
      ;(ws || []).forEach((c) => {
        if (isImportedIssuer(c.issuer_name)) return
        const cat = matchCat(c.card_name, c.type)
        if (!cat || cat.byUse) return
        addRow(cat.name, c.card_name || '未命名', c.price, 1)
      })
      let uq = `SELECT c.card_name, c.type, c.price, c.total_times, b.date
                  FROM bookings b
                  JOIN member_cards c ON c.id = b.card_id
                 WHERE b.date BETWEEN ? AND ? AND b.status <> 'cancelled'
                   AND c.card_name LIKE '%体验%'`
      const up = [startDate, endDate]
      if (venueId) { uq += ' AND b.venue_id=?'; up.push(venueId) }
      const [us] = await pool.query(uq, up)
      ;(us || []).forEach((r) => {
        const cat = matchCat(r.card_name, r.type)
        if (!cat || !cat.byUse) return
        const unit = (Number(r.total_times) > 0) ? money(money(r.price) / Number(r.total_times)) : money(r.price)
        addRow(cat.name, r.card_name || cat.name, unit, 1)
      })
      const sections = catOrder.map((c) => {
        const rows = Object.values(groups[c.name] || {}).sort((a, b) => b.amount - a.amount)
        return {
          title: c.name,
          rows,
          amount: money(rows.reduce((s, r) => s + r.amount, 0)),
          count: rows.reduce((s, r) => s + r.count, 0)
        }
      })
      return { ok: true, fnVer: FN_VER, sections }
    }

    let cols = []
    try {
      const [crows] = await pool.query('SHOW COLUMNS FROM activity_logs')
      cols = (crows || []).map((r) => r.Field)
    } catch (e) {
      cols = ['id', 'type', 'user_name', 'operator_name', 'phone', 'detail', 'venue_id', 'venue_name', 'created_at']
    }
    const has = (name) => cols.indexOf(name) >= 0
    const selectBits = [
      'l.id',
      'l.type',
      'l.user_name',
      'l.operator_name',
      'IFNULL(NULLIF(l.phone,\'\'), u.phone) AS phone',
      'l.detail',
      'l.venue_id',
      'l.venue_name',
      "DATE_FORMAT(l.created_at, '%Y-%m-%d %H:%i:%s') AS created_at"
    ]
    if (has('amount')) selectBits.push('l.amount')
    if (has('card_name')) selectBits.push('l.card_name')
    if (has('user_id')) selectBits.push('l.user_id')

    let sql = `SELECT ${selectBits.join(', ')}
                 FROM activity_logs l
                 LEFT JOIN users u ON ${has('user_id') ? 'u.id = l.user_id' : '1=0'}
                WHERE 1=1`
    const params = []
    if (venueId) {
      sql += ' AND l.venue_id=?'
      params.push(venueId)
    }
    if (type) {
      sql += ' AND l.type=?'
      params.push(type)
    }
    if (startDate) {
      sql += ' AND l.created_at >= ?'
      params.push(startDate + ' 00:00:00')
    }
    if (endDate) {
      sql += ' AND l.created_at < DATE_ADD(?, INTERVAL 1 DAY)'
      params.push(endDate)
    }
    if (operator) {
      sql += ' AND l.operator_name LIKE ?'
      params.push('%' + operator + '%')
    }
    if (userName) {
      sql += ' AND l.user_name LIKE ?'
      params.push('%' + userName + '%')
    }
    if (phone) {
      sql += ' AND IFNULL(NULLIF(l.phone,\'\'), u.phone) LIKE ?'
      params.push('%' + phone + '%')
    }
    if (keyword) {
      sql += ' AND (l.user_name LIKE ? OR l.operator_name LIKE ? OR IFNULL(NULLIF(l.phone,\'\'), u.phone) LIKE ? OR l.detail LIKE ?)'
      const like = '%' + keyword + '%'
      params.push(like, like, like, like)
    }
    sql += ' ORDER BY l.id DESC LIMIT ' + limit

    const [rows] = await pool.query(sql, params)

    let cardIssueTotal = 0
    let bookingCashTotal = 0
    const issueRows = []
    if (startDate && endDate) {
      try {
        let cq = `SELECT c.id, u.phone, c.card_name, c.price, c.issuer_name, c.user_name,
                         DATE_FORMAT(c.created_at, '%Y-%m-%d %H:%i:%s') AS created_at
                    FROM member_cards c LEFT JOIN users u ON u.id = c.user_id
                   WHERE c.created_at >= ? AND c.created_at < DATE_ADD(?, INTERVAL 1 DAY)
                     AND IFNULL(c.status,'') <> 'deleted'`
        const cp = [startDate + ' 00:00:00', endDate]
        if (venueId) { cq += ' AND c.venue_id=?'; cp.push(venueId) }
        const [cs] = await pool.query(cq, cp)
        ;(cs || []).forEach((c) => {
          if (isImportedIssuer(c.issuer_name)) return
          const amt = money(c.price)
          cardIssueTotal += amt
          issueRows.push(c)
        })
      } catch (e) {}
      try {
        let bq = `SELECT IFNULL(SUM(amount),0) AS s FROM bookings
                   WHERE date BETWEEN ? AND ? AND status <> 'cancelled'
                     AND (card_id IS NULL OR card_id=0) AND IFNULL(amount,0) > 0`
        const bp = [startDate, endDate]
        if (venueId) { bq += ' AND venue_id=?'; bp.push(venueId) }
        const [bs] = await pool.query(bq, bp)
        bookingCashTotal = money(bs[0] && bs[0].s)
      } catch (e) {}
    }

    const usedIssue = new Set()
    function takeIssueAmount(phone, day, name) {
      for (const c of issueRows) {
        if (usedIssue.has(c.id)) continue
        const cphone = String(c.phone || '').replace(/\D/g, '').slice(-11)
        const cday = String(c.created_at || '').slice(0, 10)
        if (cday !== day) continue
        if (name && c.card_name !== name) continue
        if (phone && cphone && phone !== cphone) continue
        usedIssue.add(c.id)
        return money(c.price)
      }
      return null
    }

    function realAmount(r) {
      const t = r.type
      const phone = String(r.phone || '').replace(/\D/g, '').slice(-11)
      const day = String(r.created_at || '').slice(0, 10)
      if (t === 'issue_card') {
        const name = r.card_name || parseCardName(r.detail)
        return takeIssueAmount(phone, day, name)
      }
      return null
    }

    const seenId = new Set()
    let list = []
    ;(rows || []).forEach((r) => {
      if (seenId.has(String(r.id))) return
      seenId.add(String(r.id))
      const detail = r.detail || ''
      const parsedCard = r.card_name || parseCardName(detail)
      const parsedAmt = realAmount(r)
      list.push({
        id: String(r.id),
        type: r.type,
        typeLabel: LABELS[r.type] || r.type,
        userName: r.user_name || '',
        userAccount: r.user_name || '',
        operatorName: r.operator_name || '',
        phone: r.phone || '',
        cardName: parsedCard || '',
        amount: parsedAmt,
        detail,
        venueId: r.venue_id || '',
        venueName: r.venue_name || '',
        timeText: r.created_at || ''
      })
    })
    if (cardName) {
      const q = cardName.toLowerCase()
      list = list.filter((r) => String(r.cardName || '').toLowerCase().indexOf(q) >= 0)
    }

    return {
      ok: true,
      fnVer: FN_VER,
      list,
      cardIssueTotal: money(cardIssueTotal),
      bookingCashTotal: money(bookingCashTotal)
    }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '加载动态失败', fnVer: FN_VER }
  }
}
