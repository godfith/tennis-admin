const crypto = require('crypto')
const https = require('https')
const mysql = require('mysql2/promise')
let cloud = null
try {
  cloud = require('wx-server-sdk')
  cloud.init({ env: cloud.DYNAMIC_CURRENT_ENV })
} catch (e) {}

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

const APPID = process.env.WX_APPID || 'wxe2f073ca2e08c355'
const WX_SECRET = process.env.WX_SECRET || ''
const NOTIFY_URL =
  process.env.WX_NOTIFY_URL ||
  'https://cloud1-d3g0pb1qk028e3585-d862bc2-1312769671.ap-shanghai.app.tcloudbase.com/payNotify'

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
  venue_zhongda: {
    mchid: process.env.WX_MCHID_ZHONGDA || '',
    serial: process.env.WX_SERIAL_ZHONGDA || '',
    keyPem: process.env.WX_KEY_ZHONGDA || '',
    apiV3Key: process.env.WX_APIV3_ZHONGDA || ''
  }
}

function getJson(url) {
  return new Promise((resolve, reject) => {
    https
      .get(url, (res) => {
        let raw = ''
        res.on('data', (c) => (raw += c))
        res.on('end', () => {
          try {
            resolve(JSON.parse(raw))
          } catch (e) {
            reject(e)
          }
        })
      })
      .on('error', reject)
  })
}

async function code2openid(code) {
  if (!code || !WX_SECRET) return ''
  const url =
    'https://api.weixin.qq.com/sns/jscode2session?appid=' +
    encodeURIComponent(APPID) +
    '&secret=' +
    encodeURIComponent(WX_SECRET) +
    '&js_code=' +
    encodeURIComponent(code) +
    '&grant_type=authorization_code'
  const data = await getJson(url)
  if (data && data.errcode) {
    console.error('jscode2session', data)
    return ''
  }
  return (data && data.openid) || ''
}

function parseEvent(event) {
  if (event && event.body) {
    try {
      const body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
      if (body && typeof body === 'object' && !Array.isArray(body)) {
        return Object.assign({}, event, body)
      }
      return body
    } catch (e) {
      return event
    }
  }
  return event || {}
}

function mchOf(venueId) {
  return VENUE_MCH[venueId] || null
}

function normalizePem(raw) {
  if (!raw) return ''
  let s = String(raw).replace(/\\n/g, '\n').replace(/\r/g, '').trim()
  const begin = '-----BEGIN PRIVATE KEY-----'
  const end = '-----END PRIVATE KEY-----'
  s = s.replace(begin, '').replace(end, '')
  const body = s.replace(/\s+/g, '')
  if (!body) return ''
  const lines = body.match(/.{1,64}/g) || [body]
  return begin + '\n' + lines.join('\n') + '\n' + end
}

function outTradeNo() {
  return 'GT' + Date.now() + Math.floor(Math.random() * 1000)
}

function requestJson(method, hostname, path, headers, body) {
  return new Promise((resolve, reject) => {
    const req = https.request(
      { hostname, path, method, headers },
      (res) => {
        let raw = ''
        res.on('data', (c) => (raw += c))
        res.on('end', () => {
          let json = null
          try {
            json = raw ? JSON.parse(raw) : {}
          } catch (e) {
            json = { raw }
          }
          resolve({ status: res.statusCode, json, raw })
        })
      }
    )
    req.on('error', reject)
    if (body) req.write(body)
    req.end()
  })
}

function signMessage(message, privateKey) {
  const sign = crypto.createSign('RSA-SHA256')
  sign.update(message)
  return sign.sign(privateKey, 'base64')
}

function authHeader(mchid, serial, privateKey, method, urlPath, body) {
  const timestamp = String(Math.floor(Date.now() / 1000))
  const nonce = crypto.randomBytes(16).toString('hex')
  const message = method + '\n' + urlPath + '\n' + timestamp + '\n' + nonce + '\n' + body + '\n'
  const signature = signMessage(message, privateKey)
  return (
    'WECHATPAY2-SHA256-RSA2048 ' +
    'mchid="' + mchid + '",' +
    'nonce_str="' + nonce + '",' +
    'signature="' + signature + '",' +
    'timestamp="' + timestamp + '",' +
    'serial_no="' + serial + '"'
  )
}

function jsapiPaySign(appId, timeStamp, nonceStr, pkg, privateKey) {
  const message = appId + '\n' + timeStamp + '\n' + nonceStr + '\n' + pkg + '\n'
  return signMessage(message, privateKey)
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

exports.main = async (rawEvent) => {
  try {
    const path = String((rawEvent && (rawEvent.path || rawEvent.requestContext && rawEvent.requestContext.path)) || '')
    const isNotify =
      path.indexOf('payNotify') >= 0 ||
      (rawEvent && rawEvent.action === 'notify') ||
      (rawEvent && rawEvent.resource && rawEvent.resource.ciphertext)

    if (isNotify) {
      let body = rawEvent
      if (rawEvent.body) {
        body = typeof rawEvent.body === 'string' ? JSON.parse(rawEvent.body) : rawEvent.body
      }
      if (!body || !body.resource) {
        return { code: 'FAIL', message: 'empty' }
      }
      let plain = null
      const keys = Object.keys(VENUE_MCH).map((k) => VENUE_MCH[k].apiV3Key).filter(Boolean)
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
              const amt = Math.round((Number(o.amount_fen) || 0)) / 100
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
                  o.booking_id || null,
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
    }

    const event = parseEvent(rawEvent)
    const action = event.action || 'createCourtPay'
    if (action !== 'createCourtPay') {
      return { ok: false, msg: '未知 action' }
    }

    const venueId = event.venueId || ''
    const mch = mchOf(venueId)
    if (!mch) {
      return { ok: false, msg: '该场馆暂未开通线上支付，请用会员卡或到店支付' }
    }
    if (!mch.keyPem || !mch.apiV3Key) {
      return { ok: false, msg: '支付证书未配置，请联系管理员' }
    }

    let openid = ''
    try {
      if (cloud && cloud.getWXContext) {
        const ctx = cloud.getWXContext()
        if (ctx && ctx.OPENID) openid = ctx.OPENID
      }
    } catch (e) {}
    if (!openid && event.code) {
      openid = await code2openid(event.code)
    }
    if (!openid) openid = event.openid || ''
    if (!openid) return { ok: false, msg: '请先登录' }

    const amountYuan = Number(event.amount || 0)
    const amountFen = Math.round(amountYuan * 100)
    if (!amountFen || amountFen < 1) return { ok: false, msg: '金额无效' }

    const court = event.court || ''
    const date = event.date || ''
    const time = event.time || ''
    if (!court || !date || !time) return { ok: false, msg: '请选择场地和时段' }

    const no = outTradeNo()
    const desc = '订场 ' + (event.venueName || '') + ' ' + court + ' ' + date + ' ' + time
    const privateKey = normalizePem(mch.keyPem)

    await pool.query(
      `INSERT INTO pay_orders (
        out_trade_no, venue_id, venue_name, court, book_date, book_time,
        user_id, openid, user_name, phone, mchid, amount_fen, status, description
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'pending', ?)`,
      [
        no,
        venueId,
        event.venueName || '',
        court,
        date,
        time,
        event.userId || '',
        openid,
        event.userName || '',
        event.phone || '',
        mch.mchid,
        amountFen,
        desc
      ]
    )

    const wxBodyObj = {
      appid: APPID,
      mchid: mch.mchid,
      description: desc.slice(0, 127),
      out_trade_no: no,
      notify_url: NOTIFY_URL,
      amount: { total: amountFen, currency: 'CNY' },
      payer: { openid: openid }
    }
    const wxBody = JSON.stringify(wxBodyObj)
    const urlPath = '/v3/pay/transactions/jsapi'
    const authorization = authHeader(mch.mchid, mch.serial, privateKey, 'POST', urlPath, wxBody)
    const wxRes = await requestJson(
      'POST',
      'api.mch.weixin.qq.com',
      urlPath,
      {
        Accept: 'application/json',
        'Content-Type': 'application/json',
        Authorization: authorization
      },
      wxBody
    )

    if (!wxRes.json || !wxRes.json.prepay_id) {
      const msg = (wxRes.json && (wxRes.json.message || wxRes.json.detail && wxRes.json.detail.message)) || '微信下单失败'
      console.error('jsapi fail', wxRes.status, wxRes.raw)
      await pool.query(`UPDATE pay_orders SET status='failed', updated_at=NOW() WHERE out_trade_no=?`, [no])
      return { ok: false, msg: msg }
    }

    const prepayId = wxRes.json.prepay_id
    await pool.query(`UPDATE pay_orders SET prepay_id=?, updated_at=NOW() WHERE out_trade_no=?`, [prepayId, no])

    const timeStamp = String(Math.floor(Date.now() / 1000))
    const nonceStr = crypto.randomBytes(16).toString('hex')
    const pkg = 'prepay_id=' + prepayId
    const paySign = jsapiPaySign(APPID, timeStamp, nonceStr, pkg, privateKey)

    return {
      ok: true,
      outTradeNo: no,
      payParams: {
        timeStamp,
        nonceStr,
        package: pkg,
        signType: 'RSA',
        paySign
      }
    }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '支付异常' }
  }
}
