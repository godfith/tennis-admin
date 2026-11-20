const mysql = require('mysql2/promise')
const { autoCancelDueGroupClasses } = require('./groupClassAutoCancel')
const settingsLib = require('./groupClassSettings')

const pool = mysql.createPool({
  host: process.env.DB_HOST || 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: Number(process.env.DB_PORT || 26462),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'goat_prod',
  waitForConnections: true,
  connectionLimit: 5,
  connectTimeout: 10000
})

const FN_VER = 'enrollGroup-20261120a'

function parseEvent(event) {
  if (event && event.body) {
    try {
      return typeof event.body === 'string' ? JSON.parse(event.body) : event.body
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

function fmtDate(v) {
  if (!v) return ''
  if (typeof v === 'string') {
    const m = v.match(/^(\d{4}-\d{2}-\d{2})/)
    return m ? m[1] : String(v).slice(0, 10)
  }
  if (v instanceof Date && !Number.isNaN(v.getTime())) {
    return (
      v.getFullYear() +
      '-' +
      String(v.getMonth() + 1).padStart(2, '0') +
      '-' +
      String(v.getDate()).padStart(2, '0')
    )
  }
  return String(v).slice(0, 10)
}

function fmtDateCn(v) {
  const s = fmtDate(v)
  if (!s || s.length < 10) return ''
  const [y, m, d] = s.split('-')
  return y + '年' + Number(m) + '月' + Number(d) + '日'
}

function cardUnit(card) {
  if (!card) return 0
  const price = money(card.price)
  if (
    (card.type === 'times' || card.type === 'coach' || card.type === 'group') &&
    Number(card.total_times) > 0
  ) {
    return money(price / Number(card.total_times))
  }
  return 0
}


function parseRuleObj(v) {
  if (!v) return null
  if (typeof v === 'object') return v
  try { return JSON.parse(v) } catch (e) { return null }
}

function groupTimeRuleRejectMsg(card, dateYmd, timeSlot) {
  if (!card || !dateYmd) return ''
  const from = String(card.valid_from || '').slice(0, 10)
  const to = String(card.valid_to || '').slice(0, 10)
  if (from && dateYmd < from) return '这张卡还没到生效日期'
  if (to && dateYmd > to) return '所选日期超出这张卡的有效期'
  const timeRule = parseRuleObj(card.time_rule)
  if (!timeRule) return ''
  const mode = timeRule.mode || ''
  const ranges = Array.isArray(timeRule.dateRanges) ? timeRule.dateRanges : []
  const isDates = mode === 'dates' || (!mode && ranges.length)
  if (isDates && ranges.length) {
    const okDate = ranges.some((rg) => {
      const s = (rg && (rg.start || (rg.range && rg.range[0]))) || ''
      const e = (rg && (rg.end || (rg.range && rg.range[1]))) || ''
      return s && e && dateYmd >= s && dateYmd <= e
    })
    if (!okDate) return '当天不在这张卡的可用日期内'
  }
  if (mode === 'rules' && Array.isArray(timeRule.rules) && timeRule.rules.length) {
    const d = new Date(String(dateYmd).replace(/-/g, '/'))
    if (Number.isNaN(d.getTime())) return ''
    let weekday = d.getDay()
    if (weekday === 0) weekday = 7
    const slotStart = String(timeSlot || '').split('-')[0]
    let matched = false
    for (const r of timeRule.rules) {
      const days = (r.weekdays || []).map((n) => Number(n))
      if (days.indexOf(weekday) < 0) continue
      const slots = r.timeSlots || []
      if (!slots.length || r.unlimited) {
        matched = true
        break
      }
      for (const s of slots) {
        if (s && s.start && s.end && slotStart && slotStart >= s.start && slotStart < s.end) {
          matched = true
          break
        }
      }
      if (matched) break
    }
    if (!matched) return '当前日期/时段不在这张卡的可用范围内'
  }
  return ''
}

function parseSeats(body) {
  if (!body) return { ok: true, seats: 1 }
  if (body.seats == null && body.qty == null && body.count == null) return { ok: true, seats: 1 }
  const raw = body.seats != null ? body.seats : (body.qty != null ? body.qty : body.count)
  const n = Math.floor(Number(raw))
  if (!Number.isFinite(n) || n < 1) return { ok: false, msg: '报名人数至少为1' }
  return { ok: true, seats: n }
}

async function resolveUserId(conn, userIdVal, openidVal) {
  if (userIdVal && Number.isFinite(Number(userIdVal))) return Number(userIdVal)
  if (!openidVal) return null
  try {
    const [rows] = await conn.query('SELECT id FROM users WHERE openid=? LIMIT 1', [openidVal])
    if (rows[0] && rows[0].id) return Number(rows[0].id)
  } catch (e) {}
  return null
}

async function writeLog(conn, row) {
  try {
    await conn.query(
      `INSERT INTO activity_logs
        (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, NOW())`,
      [
        row.type || '',
        row.userName || '',
        row.operatorName || '',
        row.phone || '',
        row.detail || '',
        row.venueId || '',
        row.venueName || ''
      ]
    )
  } catch (e) {}
}

async function writeLedger(conn, row) {
  try {
    await conn.query(
      `INSERT INTO finance_ledger
        (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
         operator_name, card_id, booking_id, pay_order_id, remark)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      [
        row.bizDate,
        row.type,
        money(row.amount),
        row.venueId || '',
        row.venueName || '',
        row.userId || null,
        row.userName || '',
        row.operatorName || '',
        row.cardId || null,
        row.bookingId || null,
        row.payOrderId || null,
        row.remark || ''
      ]
    )
    return ''
  } catch (e) {
    const msg = e && e.message ? e.message : String(e)
    console.error('finance_ledger write fail', msg)
    return msg
  }
}

exports.main = async (event) => {
  const conn = await pool.getConnection()
  try {
    const body = parseEvent(event)
    if (body.action === 'ver' || body.action === '__ver__') {
      return { ok: true, fnVer: FN_VER }
    }

    try {
      await autoCancelDueGroupClasses(pool, { operatorName: body.operatorName || '系统' })
    } catch (e) {
      console.warn('lazy auto-cancel skip:', e && e.message)
    }

    const groupClassId = body.groupClassId
    const cardId = body.cardId
    const userName = body.userName || ''
    const phone = body.phone || ''
    const operatorName = body.operatorName || '管理员'
    const remark = body.remark || ''
    const openid = body.userOpenid || body.openid || ''
    const seatParsed = parseSeats(body)
    if (!seatParsed.ok) {
      return { ok: false, msg: seatParsed.msg, fnVer: FN_VER }
    }
    const seats = seatParsed.seats

    if (!groupClassId || !cardId) {
      return { ok: false, msg: '参数不完整', fnVer: FN_VER }
    }

    await conn.beginTransaction()
    const [gcRows] = await conn.query('SELECT * FROM group_classes WHERE id=? FOR UPDATE', [
      groupClassId
    ])
    const gc = gcRows[0]
    if (!gc) {
      await conn.rollback()
      return { ok: false, msg: '团课不存在', fnVer: FN_VER }
    }
    // Admin temp-add: allow when closed or full.
    // Cancelled: restore to open + exempt, then enroll in this same transaction.
    if (gc.status === 'cancelled') {
      await conn.query(
        `UPDATE group_classes SET status='open', auto_cancel_exempt=1 WHERE id=?`,
        [groupClassId]
      )
      gc.status = 'open'
      gc.auto_cancel_exempt = 1
    }

    let userIdVal = null
    if (body.userId != null && /^\d+$/.test(String(body.userId).trim())) {
      userIdVal = Number(String(body.userId).trim())
    }
    userIdVal = await resolveUserId(conn, userIdVal, openid)

    let alreadySeats = 0
    if (userIdVal || openid) {
      const [mine] = await conn.query(
        `SELECT id FROM bookings
          WHERE group_class_id=? AND status='booked'
            AND (
              (? IS NOT NULL AND user_id=?)
              OR (? <> '' AND openid=?)
            )`,
        [groupClassId, userIdVal, userIdVal, openid || '', openid || '']
      )
      alreadySeats = (mine || []).length
    }

    const [cRows] = await conn.query(
      `SELECT * FROM member_cards WHERE id=? AND type='group' AND status='active' FOR UPDATE`,
      [cardId]
    )
    const card = cRows[0]
    const remain = Number(card && card.remaining_times) || 0
    if (!card || remain <= 0) {
      await conn.rollback()
      return { ok: false, msg: '团课卡不可用', fnVer: FN_VER }
    }
    if (remain < seats) {
      await conn.rollback()
      return { ok: false, msg: '团课卡剩余次数不足，无法扣' + seats + '节', fnVer: FN_VER }
    }

    let venueName = ''
    try {
      const [vn] = await conn.query('SELECT name FROM venues WHERE venue_id=? OR id=? LIMIT 1', [
        gc.venue_id,
        gc.venue_id
      ])
      venueName = (vn[0] && (vn[0].name || vn[0].venue_name)) || ''
    } catch (e) {}

    const enrollAmt = cardUnit(card)
    const dateYmd = fmtDate(gc.date)
    const ruleMsg = groupTimeRuleRejectMsg(card, dateYmd, gc.time)
    if (ruleMsg) {
      await conn.rollback()
      return { ok: false, msg: ruleMsg, fnVer: FN_VER }
    }
    const enrollSettings = await settingsLib.loadSettings(conn)
    const content = settingsLib.resolveClassCourseContent(gc, enrollSettings)
    const bind = settingsLib.cardAllowedForCourseContent(card, content)
    if (!bind.ok) {
      await conn.rollback()
      return { ok: false, msg: bind.msg, fnVer: FN_VER }
    }

    const [dec] = await conn.query(
      `UPDATE member_cards
          SET remaining_times = remaining_times - ?,
              status = IF(remaining_times <= 0, 'used_up', 'active'),
              updated_at = NOW()
        WHERE id=? AND IFNULL(remaining_times,0) >= ? AND status='active'`,
      [seats, card.id, seats]
    )
    if (!dec || Number(dec.affectedRows) !== 1) {
      await conn.rollback()
      return { ok: false, msg: '团课卡剩余次数不足，无法扣' + seats + '节', fnVer: FN_VER }
    }
    const [afterRows] = await conn.query(
      'SELECT remaining_times FROM member_cards WHERE id=? LIMIT 1',
      [card.id]
    )
    const left = Number(afterRows[0] && afterRows[0].remaining_times) || 0

    const ids = []
    let ledgerError = ''
    for (let i = 0; i < seats; i++) {
      const seatRemark = seats > 1
        ? ((remark ? remark + ' ' : '') + '第' + (i + 1) + '/' + seats + '名额')
        : remark
      const [res] = await conn.query(
        `INSERT INTO bookings (
          venue_id, venue_name, court, date, time,
          user_id, openid, user_name, phone, status,
          card_id, card_name, card_type, coach_id, coach_name,
          group_class_id, source, operator_name, remark, amount
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'booked', ?, ?, 'group', ?, ?, ?, 'admin', ?, ?, ?)`,
        [
          gc.venue_id,
          venueName,
          gc.court,
          dateYmd,
          gc.time,
          userIdVal,
          openid,
          userName,
          phone,
          card.id,
          card.card_name,
          gc.coach_id,
          gc.coach_name,
          groupClassId,
          operatorName,
          seatRemark,
          enrollAmt
        ]
      )
      ids.push(res.insertId)
      await writeLog(conn, {
        type: 'group_enroll',
        userName,
        operatorName,
        phone,
        detail:
          '团课报名 ' +
          (gc.name || '') +
          ' ' +
          fmtDateCn(dateYmd) +
          ' ' +
          (gc.time || '') +
          ' · ' +
          (gc.court || '') +
          (seats > 1 ? ' · 第' + (i + 1) + '/' + seats + '名额' : ''),
        venueId: gc.venue_id || '',
        venueName
      })
      const le = await writeLedger(conn, {
        bizDate: dateYmd,
        type: 'card_use',
        amount: enrollAmt,
        venueId: gc.venue_id || '',
        venueName,
        userId: userIdVal,
        userName,
        operatorName,
        cardId: card.id,
        bookingId: res.insertId,
        remark: '团课 ' + (gc.name || '') + ' ' + (gc.time || '') + (seats > 1 ? ' 第' + (i + 1) + '/' + seats + '名额' : '')
      })
      if (le && !ledgerError) ledgerError = le
    }

    await conn.query(`UPDATE group_classes SET enrolled = enrolled + ? WHERE id=?`, [seats, groupClassId])

    await conn.commit()
    return {
      ok: true,
      id: String(ids[0]),
      ids: ids.map(String),
      seats,
      mySeats: alreadySeats + seats,
      cardRemaining: left,
      ledgerError,
      fnVer: FN_VER
    }
  } catch (e) {
    try {
      await conn.rollback()
    } catch (e2) {}
    console.error(e)
    return { ok: false, msg: e.message || '报名失败', fnVer: FN_VER }
  } finally {
    conn.release()
  }
}