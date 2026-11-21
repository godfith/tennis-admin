// Local WeChat refund helpers extracted from pay, so adminRefundCard
// can refund without calling the pay HTTP gateway.
const crypto = require('crypto')
const https = require('https')

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

function requestJson(method, hostname, path, headers, body) {
  const hdrs = Object.assign({
    Accept: 'application/json',
    'User-Agent': 'Mozilla/5.0 (compatible; GoatTennisAdmin/1.0)'
  }, headers || {})
  return new Promise((resolve, reject) => {
    const req = https.request(
      { hostname, path, method, headers: hdrs },
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
    req.setHeader('Accept', hdrs.Accept)
    req.setHeader('User-Agent', hdrs['User-Agent'])
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

async function refundWxOrder(mch, opts) {
  opts = opts || {}
  if (!mch) return { ok: false, msg: '缺少商户' }
  const privateKey = normalizePem(mch.keyPem)
  if (!privateKey || !mch.mchid || !mch.serial) {
    return { ok: false, msg: '支付证书未配置，无法退款' }
  }
  const outRefundNo = opts.outRefundNo || ('RF' + String(opts.outTradeNo || '').slice(0, 28))
  const bodyObj = {
    out_refund_no: outRefundNo,
    reason: String(opts.reason || '取消订场退款').slice(0, 80),
    amount: {
      refund: Number(opts.refundFen) || 0,
      total: Number(opts.amountFen) || 0,
      currency: 'CNY'
    }
  }
  if (opts.transactionId) bodyObj.transaction_id = opts.transactionId
  else bodyObj.out_trade_no = opts.outTradeNo
  if (!bodyObj.amount.refund || !bodyObj.amount.total) {
    return { ok: false, msg: '退款金额无效' }
  }
  const wxBody = JSON.stringify(bodyObj)
  const urlPath = '/v3/refund/domestic/refunds'
  const authorization = authHeader(mch.mchid, mch.serial, privateKey, 'POST', urlPath, wxBody)
  const wxRes = await requestJson(
    'POST',
    'api.mch.weixin.qq.com',
    urlPath,
    {
      Accept: 'application/json',
      'Content-Type': 'application/json',
      'User-Agent': 'Mozilla/5.0 (compatible; GoatTennisAdmin/1.0)',
      Authorization: authorization
    },
    wxBody
  )
  const j = wxRes.json || {}
  if (wxRes.status === 200 && (j.refund_id || j.status === 'SUCCESS' || j.status === 'PROCESSING' || j.out_refund_no)) {
    return { ok: true, outRefundNo, refundId: j.refund_id || '', data: j }
  }
  {
    const code = String(j.code || '')
    const msg = String(j.message || '')
    if (msg.indexOf('已退款') >= 0 || msg.indexOf('重复退款') >= 0 || (code === 'INVALID_REQUEST' && msg.indexOf('退款') >= 0)) {
      return { ok: true, already: true, outRefundNo, data: j }
    }
    if (code === 'RESOURCE_NOT_EXISTS') {
      return { ok: false, msg: msg || '原订单不存在', data: j }
    }
  }
  return {
    ok: false,
    msg: (j && (j.message || j.code)) || '微信退款失败',
    data: j,
    status: wxRes.status
  }
}

async function refundPaidOrder(conn, o, opts) {
  opts = opts || {}
  if (!o || !o.id) return { ok: false, msg: '订单不存在' }
  if (o.status === 'refunded') {
    return { ok: true, already: true, msg: '已退款' }
  }
  if (o.status !== 'paid') {
    return { ok: false, msg: '订单未支付，无法退款', status: o.status }
  }
  const mch = mchOf(o.venue_id)
  if (!mch) return { ok: false, msg: '该场馆未配置商户号' }
  const amountFen = Number(o.amount_fen) || 0
  const refundFen = Number(opts.refundFen != null ? opts.refundFen : amountFen) || 0
  if (!refundFen || refundFen < 1) {
    return { ok: false, msg: '退款金额无效' }
  }
  if (refundFen > amountFen) {
    return { ok: false, msg: '退款金额不能大于实付' }
  }
  const outRefundNo = opts.outRefundNo || ('RF' + String(o.out_trade_no || o.id).replace(/[^a-zA-Z0-9]/g, '').slice(0, 30))
  const wx = await refundWxOrder(mch, {
    outTradeNo: o.out_trade_no,
    transactionId: o.transaction_id || '',
    amountFen,
    refundFen,
    outRefundNo,
    reason: opts.reason || '取消订场退款'
  })
  if (!wx.ok) {
    return { ok: false, msg: wx.msg || '微信退款失败', wx: wx.data || null }
  }
  await conn.query(
    `UPDATE pay_orders
        SET status='refunded',
            description=CONCAT(IFNULL(description,''), ' [退款', ?, ']'),
            updated_at=NOW()
      WHERE id=? AND status IN ('paid','refunded')`,
    [outRefundNo, o.id]
  )
  return {
    ok: true,
    already: !!wx.already,
    outRefundNo,
    refundId: wx.refundId || '',
    refundFen,
    skipLedger: opts.skipLedger === true
  }
}

async function loadPayOrder(conn, payload) {
  payload = payload || {}
  const payOrderId = payload.payOrderId || payload.pay_order_id
  const tradeNo = payload.outTradeNo || payload.out_trade_no || ''
  let o = null
  if (payOrderId) {
    const [rows] = await conn.query('SELECT * FROM pay_orders WHERE id=? LIMIT 1', [payOrderId])
    o = rows[0]
  } else if (tradeNo) {
    const [rows] = await conn.query('SELECT * FROM pay_orders WHERE out_trade_no=? LIMIT 1', [tradeNo])
    o = rows[0]
  } else if (payload.bookingId) {
    const [rows] = await conn.query(
      `SELECT p.* FROM pay_orders p
        INNER JOIN bookings b ON b.pay_order_id=p.id
       WHERE b.id=? LIMIT 1`,
      [payload.bookingId]
    )
    o = rows[0]
    if (!o) {
      const [rows2] = await conn.query(
        'SELECT * FROM pay_orders WHERE booking_id=? ORDER BY id DESC LIMIT 1',
        [payload.bookingId]
      )
      o = rows2[0]
    }
  }
  return o || null
}

module.exports = {
  mchOf,
  refundWxOrder,
  refundPaidOrder,
  loadPayOrder
}
