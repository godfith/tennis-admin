const mysql = require('mysql2/promise')

const pool = mysql.createPool({
  host: process.env.DB_HOST || 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: Number(process.env.DB_PORT || 26462),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || 'Admin123.',
  database: process.env.DB_NAME || 'goat_prod',
  waitForConnections: true,
  connectionLimit: 5,
  connectTimeout: 10000
})

const FN_VER = 'enrollGroup-20260909b'

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

    const groupClassId = body.groupClassId
    const cardId = body.cardId
    const userName = body.userName || ''
    const phone = body.phone || ''
    const operatorName = body.operatorName || '管理员'
    const remark = body.remark || ''
    const openid = body.userOpenid || body.openid || ''

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
    if (gc.status !== 'open') {
      await conn.rollback()
      return { ok: false, msg: '团课未开放', fnVer: FN_VER }
    }
    if ((gc.enrolled || 0) >= (gc.capacity || 0)) {
      await conn.rollback()
      return { ok: false, msg: '名额已满', fnVer: FN_VER }
    }

    let userIdVal = null
    if (body.userId != null && /^\d+$/.test(String(body.userId).trim())) {
      userIdVal = Number(String(body.userId).trim())
    }
    userIdVal = await resolveUserId(conn, userIdVal, openid)

    if (userIdVal || openid) {
      const [dup] = await conn.query(
        `SELECT id FROM bookings
          WHERE group_class_id=? AND status='booked'
            AND (
              (? IS NOT NULL AND user_id=?)
              OR (? <> '' AND openid=?)
            )
          LIMIT 1`,
        [groupClassId, userIdVal, userIdVal, openid || '', openid || '']
      )
      if (dup.length) {
        await conn.rollback()
        return { ok: false, msg: '该会员已报名此团课', fnVer: FN_VER }
      }
    }

    const [cRows] = await conn.query(
      `SELECT * FROM member_cards WHERE id=? AND type='group' AND status='active' FOR UPDATE`,
      [cardId]
    )
    const card = cRows[0]
    if (!card || (card.remaining_times || 0) <= 0) {
      await conn.rollback()
      return { ok: false, msg: '团课卡不可用', fnVer: FN_VER }
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
        remark,
        enrollAmt
      ]
    )

    const left = card.remaining_times - 1
    await conn.query(
      `UPDATE member_cards SET remaining_times=?, status=?, updated_at=NOW() WHERE id=?`,
      [left, left <= 0 ? 'used_up' : 'active', card.id]
    )
    await conn.query(`UPDATE group_classes SET enrolled = enrolled + 1 WHERE id=?`, [groupClassId])

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
        (gc.court || ''),
      venueId: gc.venue_id || '',
      venueName
    })

    const ledgerError = await writeLedger(conn, {
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
      remark: '团课 ' + (gc.name || '') + ' ' + (gc.time || '')
    })

    await conn.commit()
    return {
      ok: true,
      id: String(res.insertId),
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