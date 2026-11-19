const crypto = require('crypto')
const mysql = require('mysql2/promise')

const PAYNOTIFY_FN_VER = 'payNotify-20261108a'
const BUSY_SQL = "('booked','locked','pending_pay')"

function normCourt(c) {
  return String(c || '').trim().replace(/^发球机/u, '').replace(/场$/u, '')
}

async function resolveCourtName(conn, venueId, court) {
  const raw = String(court || '').trim()
  if (!raw) return ''
  const n = normCourt(raw)
  try {
    const [rows] = await conn.query(
      `SELECT name FROM courts
        WHERE venue_id=? AND IFNULL(status,'open') NOT IN ('disabled','closed','停用')
          AND (name=? OR name=? OR TRIM(TRAILING '场' FROM name)=?)
        ORDER BY (name=?) DESC, (name=?) DESC, id ASC LIMIT 1`,
      [venueId, raw, n + '场', n, raw, n + '场']
    )
    if (rows && rows[0] && rows[0].name) return String(rows[0].name)
  } catch (e) {}
  return raw
}

function slotLockName(venueId, dateYmd, time, court) {
  const raw = 'book:' + String(venueId || '') + ':' + String(dateYmd || '') + ':' + String(time || '') + ':' + normCourt(court)
  if (raw.length <= 64) return raw
  return 'book:' + crypto.createHash('sha1').update(raw).digest('hex')
}

async function acquireSlotLock(conn, venueId, dateYmd, time, court) {
  const name = slotLockName(venueId, dateYmd, time, court)
  const [rows] = await conn.query('SELECT GET_LOCK(?, 10) AS ok', [name])
  if (!rows[0] || Number(rows[0].ok) !== 1) {
    const err = new Error('系统繁忙，请稍后重试')
    err.code = 'SLOT_LOCK'
    throw err
  }
  return name
}

async function releaseSlotLock(conn, name) {
  if (!name) return
  try {
    await conn.query('SELECT RELEASE_LOCK(?)', [name])
  } catch (e) {}
}

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

const VENUE_MCH = {
  venue_chenjiaci: {
    mchid: process.env.WX_MCHID_CHENJIACI || '1727992653',
    serial: process.env.WX_SERIAL_CHENJIACI || '2EEDD0198FB266BC2422092D94016D4C45CB78D8',
    keyPem: process.env.WX_KEY_CHENJIACI || '',
    apiV3Key: process.env.WX_APIV3_CHENJIACI || ''
  },
  venue_haixinsha: {
    mchid: process.env.WX_MCHID_HAIXINSHA || '1677093223',
    serial: process.env.WX_SERIAL_HAIXINSHA || '207C673494633D5983A76F42FDADC7FA26A6A737',
    keyPem: process.env.WX_KEY_HAIXINSHA || '',
    apiV3Key: process.env.WX_APIV3_HAIXINSHA || ''
  },
  venue_huadiwan: {
    mchid: process.env.WX_MCHID_HUADIWAN || '1702673686',
    serial: process.env.WX_SERIAL_HUADIWAN || '52FAA65CB9BEB6EEC25B8C984547FBD9A7BF3FC3',
    keyPem: process.env.WX_KEY_HUADIWAN || '',
    apiV3Key: process.env.WX_APIV3_HUADIWAN || ''
  },
  venue_zhongda: {
    mchid: process.env.WX_MCHID_ZHONGDA || '1684193652',
    serial: process.env.WX_SERIAL_ZHONGDA || '12B8D17E8E1D9210EC7A0F70DF2DC5B5FB853413',
    keyPem: process.env.WX_KEY_ZHONGDA || '',
    apiV3Key: process.env.WX_APIV3_ZHONGDA || ''
  }
}

function decryptResource(apiV3Key, resource) {
  const key = Buffer.from(apiV3Key, 'utf8')
  const nonce = Buffer.from(resource.nonce, 'utf8')
  const associatedData = Buffer.from(resource.associated_data || '', 'utf8')
  const buf = Buffer.from(resource.ciphertext, 'base64')
  const data = buf.slice(0, buf.length - 16)
  const tag = buf.slice(buf.length - 16)
  const decipher = crypto.createDecipheriv('aes-256-gcm', key, nonce)
  decipher.setAuthTag(tag)
  if (associatedData.length) decipher.setAAD(associatedData)
  return decipher.update(data, undefined, 'utf8') + decipher.final('utf8')
}

function parseBody(rawEvent) {
  if (!rawEvent) return {}
  if (rawEvent.body) {
    try {
      return typeof rawEvent.body === 'string' ? JSON.parse(rawEvent.body) : rawEvent.body
    } catch (e) {
      return rawEvent
    }
  }
  return rawEvent
}

async function ensureLedgerCourtPay(conn, o, bookingId, outTradeNo) {
  const [exist] = await conn.query(
    `SELECT id FROM finance_ledger WHERE pay_order_id=? AND type='court_pay' LIMIT 1`,
    [o.id]
  )
  if (exist && exist[0]) return
  const amt = Math.round(Number(o.amount_fen) || 0) / 100
  await conn.query(
    `INSERT INTO finance_ledger
      (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
       operator_name, card_id, booking_id, pay_order_id, remark)
     VALUES (?, 'court_pay', ?, ?, ?, ?, ?, ?, NULL, ?, ?, ?)`,
    [
      o.book_date || new Date(),
      amt,
      o.venue_id || '',
      o.venue_name || '',
      Number(o.user_id) > 0 ? Number(o.user_id) : null,
      o.user_name || '',
      '微信支付',
      bookingId || null,
      o.id,
      (o.court || '') + ' ' + (o.book_time || '') + ' ' + (outTradeNo || o.out_trade_no || '')
    ]
  )
}

async function writeBookingLog(conn, o) {
  try {
    const amt = Math.round(Number(o.amount_fen) || 0) / 100
    await conn.query(
      `INSERT INTO activity_logs
        (type, user_name, operator_name, phone, detail, venue_id, venue_name, amount, card_name, created_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())`,
      [
        'booking_add',
        o.user_name || '',
        o.user_name || '用户',
        o.phone || '',
        `预约 ${o.court || ''} ${o.book_date || ''} ${o.book_time || ''} · 微信支付`,
        o.venue_id || '',
        o.venue_name || '',
        amt,
        ''
      ]
    )
  } catch (e) {
    console.warn('activity_logs', e.message || e)
  }
}

async function fulfillPaidOrder(conn, o) {
  if (!o || !o.id) return { ok: false }
  const amt = Math.round(Number(o.amount_fen) || 0) / 100
  const courtNorm = normCourt(o.court)
  const courtName = (await resolveCourtName(conn, o.venue_id, o.court)) || o.court
  let bookingId = o.booking_id ? Number(o.booking_id) : null
  let created = false

  if (bookingId) {
    const [bk] = await conn.query('SELECT * FROM bookings WHERE id=? LIMIT 1', [bookingId])
    const b = bk && bk[0]
    if (b) {
      if (b.status === 'pending_pay' || b.status === 'booked') {
        if (b.status === 'pending_pay') {
          await conn.query(
            `UPDATE bookings
                SET status='booked', amount=?, pay_order_id=?, updated_at=NOW()
              WHERE id=? AND status='pending_pay'`,
            [amt, o.id, bookingId]
          )
          created = true
        } else {
          await conn.query(
            `UPDATE bookings SET pay_order_id=?, amount=? WHERE id=?`,
            [o.id, amt, bookingId]
          )
        }
        await conn.query('UPDATE pay_orders SET booking_id=? WHERE id=?', [bookingId, o.id])
        await ensureLedgerCourtPay(conn, o, bookingId, o.out_trade_no)
        if (created) await writeBookingLog(conn, o)
        return { ok: true, bookingId, created }
      }
      if (b.status === 'cancelled') bookingId = null
    } else {
      bookingId = null
    }
  }

  if (!bookingId) {
    const [pend] = await conn.query(
      `SELECT id FROM bookings WHERE pay_order_id=? AND status='pending_pay' ORDER BY id DESC LIMIT 1`,
      [o.id]
    )
    if (pend[0] && pend[0].id) {
      bookingId = Number(pend[0].id)
      await conn.query(
        `UPDATE bookings
            SET status='booked', amount=?, pay_order_id=?, updated_at=NOW()
          WHERE id=? AND status='pending_pay'`,
        [amt, o.id, bookingId]
      )
      await conn.query('UPDATE pay_orders SET booking_id=? WHERE id=?', [bookingId, o.id])
      await ensureLedgerCourtPay(conn, o, bookingId, o.out_trade_no)
      await writeBookingLog(conn, o)
      return { ok: true, bookingId, created: true }
    }
  }

  if (o.venue_id && o.book_date && o.book_time && courtNorm) {
    const [busy] = await conn.query(
      `SELECT id, status FROM bookings
        WHERE venue_id=? AND date=? AND time=?
          AND (court=? OR court=CONCAT(?,'场'))
          AND status IN ${BUSY_SQL}
        LIMIT 1`,
      [o.venue_id, o.book_date, o.book_time, courtNorm, courtNorm]
    )
    if (busy.length) {
      await ensureLedgerCourtPay(conn, o, null, o.out_trade_no)
      console.error('payNotify paid_no_slot', o.out_trade_no, busy[0])
      return { ok: false, paidNoSlot: true, conflictId: busy[0].id }
    }
  }

  const userIdVal = Number(o.user_id) > 0 ? Number(o.user_id) : null
  const remarkBase = String(o.description || '').indexOf('匹克') >= 0 ? '匹克球 ' : ''
  const [res] = await conn.query(
    `INSERT INTO bookings (
      venue_id, venue_name, court, date, time,
      user_id, openid, user_name, phone, status,
      card_id, card_name, card_type,
      coach_id, coach_name, source, remark, amount, pay_order_id
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'booked', NULL, '', '', NULL, '', 'user', ?, ?, ?)`,
    [
      o.venue_id || '',
      o.venue_name || '',
      courtName,
      o.book_date,
      o.book_time,
      userIdVal,
      o.openid || '',
      o.user_name || '',
      o.phone || '',
      remarkBase + '[微信支付]',
      amt,
      o.id
    ]
  )
  bookingId = Number(res.insertId)
  await conn.query('UPDATE pay_orders SET booking_id=? WHERE id=?', [bookingId, o.id])
  await ensureLedgerCourtPay(conn, o, bookingId, o.out_trade_no)
  await writeBookingLog(conn, o)
  return { ok: true, bookingId, created: true }
}

exports.main = async (rawEvent) => {
  try {
    // Lightweight ver probe (HTTP GET without resource still returns FAIL empty; use query action via cloud invoke)
    if (rawEvent && rawEvent.action === 'ver') {
      return { ok: true, fnVer: PAYNOTIFY_FN_VER }
    }

    const body = parseBody(rawEvent)
    if (!body || !body.resource) {
      return { code: 'FAIL', message: 'empty' }
    }

    let plain = null
    const keys = Object.keys(VENUE_MCH)
      .map((k) => VENUE_MCH[k].apiV3Key)
      .filter(Boolean)
    let lastErr = ''
    for (let i = 0; i < keys.length; i++) {
      try {
        plain = JSON.parse(decryptResource(keys[i], body.resource))
        break
      } catch (e) {
        lastErr = e.message
      }
    }
    if (!plain) {
      console.error('notify decrypt fail', lastErr)
      return { code: 'FAIL', message: 'decrypt' }
    }

    const outTradeNo = plain.out_trade_no
    const tradeState = plain.trade_state
    const transactionId = plain.transaction_id || ''
    if (tradeState === 'SUCCESS' && outTradeNo) {
      const conn = await pool.getConnection()
      let slotLock = null
      try {
        await conn.query(
          `UPDATE pay_orders
             SET status='paid', transaction_id=?, paid_at=NOW(), updated_at=NOW()
           WHERE out_trade_no=? AND status IN ('pending','failed')`,
          [transactionId, outTradeNo]
        )
        const [rows] = await conn.query(
          'SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1',
          [outTradeNo]
        )
        const o = rows[0]
        if (o) {
          if (o.status === 'refunded') {
            // late notify after refund — ignore
          } else {
          if (transactionId && o.status !== 'paid') {
            await conn.query(
              `UPDATE pay_orders SET status='paid', transaction_id=?, paid_at=IFNULL(paid_at,NOW()), updated_at=NOW()
                WHERE id=? AND status IN ('pending','failed')`,
              [transactionId, o.id]
            )
            o.status = 'paid'
            o.transaction_id = transactionId
          } else if (transactionId && !o.transaction_id) {
            await conn.query(`UPDATE pay_orders SET transaction_id=? WHERE id=?`, [transactionId, o.id])
            o.transaction_id = transactionId
          }
          try {
            slotLock = await acquireSlotLock(conn, o.venue_id, o.book_date, o.book_time, o.court)
          } catch (e) {
            console.warn('payNotify GET_LOCK', e.message || e)
          }
          const [rows2] = await conn.query(
            'SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1',
            [outTradeNo]
          )
          const o2 = rows2[0] || o
          if (o2.status !== 'refunded') {
            await fulfillPaidOrder(conn, o2)
          }
          }
        }
      } catch (e) {
        console.error('payNotify fulfill', e.message || e)
      } finally {
        await releaseSlotLock(conn, slotLock)
        conn.release()
      }
    }
    return { code: 'SUCCESS', message: '成功', fnVer: PAYNOTIFY_FN_VER }
  } catch (e) {
    console.error(e)
    return { code: 'FAIL', message: e.message || 'notify error' }
  }
}
