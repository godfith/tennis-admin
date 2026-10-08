const crypto = require('crypto')
const mysql = require('mysql2/promise')

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

exports.main = async (rawEvent) => {
  try {
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
      const [upd] = await pool.query(
        `UPDATE pay_orders
           SET status='paid', transaction_id=?, paid_at=NOW(), updated_at=NOW()
         WHERE out_trade_no=? AND status<>'paid'`,
        [transactionId, outTradeNo]
      )
      if (upd && upd.affectedRows) {
        try {
          const [rows] = await pool.query(
            'SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1',
            [outTradeNo]
          )
          const o = rows[0]
          if (o) {
            const amt = Math.round(Number(o.amount_fen) || 0) / 100
            let bookingId = o.booking_id || null
            if (!bookingId && o.venue_id && o.book_date && o.book_time && o.court) {
              const uid = Number(o.user_id) > 0 ? Number(o.user_id) : null
              const [bk] = await pool.query(
                `SELECT id FROM bookings
                  WHERE venue_id=? AND date=? AND time=? AND court=? AND status='booked'
                    AND (pay_order_id IS NULL OR pay_order_id=0)
                    AND (
                      (? <> '' AND openid=?)
                      OR (? IS NOT NULL AND user_id=?)
                    )
                  ORDER BY id DESC LIMIT 1`,
                [
                  o.venue_id,
                  o.book_date,
                  o.book_time,
                  o.court,
                  o.openid || '',
                  o.openid || '',
                  uid,
                  uid
                ]
              )
              if (bk[0] && bk[0].id) bookingId = bk[0].id
            }
            if (bookingId) {
              await pool.query(
                'UPDATE bookings SET pay_order_id=?, amount=IFNULL(amount, ?) WHERE id=?',
                [o.id, amt, bookingId]
              )
              await pool.query('UPDATE pay_orders SET booking_id=? WHERE id=?', [bookingId, o.id])
            }
            await pool.query(
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
                bookingId,
                o.id,
                (o.court || '') + ' ' + (o.book_time || '') + ' ' + outTradeNo
              ]
            )
          }
        } catch (e) {
          console.error('ledger court_pay', e.message || e)
        }
      }
    }
    return { code: 'SUCCESS', message: '成功' }
  } catch (e) {
    console.error(e)
    return { code: 'FAIL', message: e.message || 'notify error' }
  }
}
