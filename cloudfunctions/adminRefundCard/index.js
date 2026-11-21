const mysql = require('mysql2/promise')
const mall = require('./cardMall')
const cardRefund = require('./cardRefund')
const adminRole = require('./adminRole')
const refundMeta = require('./refundRequestMeta')

const FN_VER = 'refundCard-20261121g'

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

let __cloud = null
function getCloud() {
  if (__cloud) return __cloud
  try {
    __cloud = require('wx-server-sdk')
    __cloud.init({ env: __cloud.DYNAMIC_CURRENT_ENV })
  } catch (e) {
    __cloud = null
  }
  return __cloud
}

async function refundCardPayViaPay(payload) {
  try {
    const data = await refundMeta.callCloudFn(
      getCloud(),
      'pay',
      Object.assign({ action: 'refundCardPay', skipLedger: true }, payload || {})
    )
    return data || { ok: false, msg: '退款无响应' }
  } catch (e) {
    return { ok: false, msg: (e && e.message) || '退款调用失败' }
  }
}

async function refundCourtPayViaPay(payload) {
  try {
    const data = await refundMeta.callCloudFn(
      getCloud(),
      'pay',
      Object.assign({ action: 'refundCourtPay' }, payload || {})
    )
    return data || { ok: false, msg: '退款无响应' }
  } catch (e) {
    return { ok: false, msg: (e && e.message) || '退款调用失败' }
  }
}

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

function refundAmount(card) {
  const price = money(card.price)
  const total = Number(card.total_times) || 0
  const left = Number(card.remaining_times) || 0
  if (card.type === 'time') return price
  if (total > 0) return money((price * left) / total)
  return price
}

async function queryAdmin(op) {
  const tries = []
  const id = Number(op.operatorId)
  if (id) tries.push(['SELECT id, username, name, role, phone FROM admins WHERE id=? LIMIT 1', [id]])
  if (op.operatorUsername) tries.push(['SELECT id, username, name, role, phone FROM admins WHERE username=? LIMIT 1', [op.operatorUsername]])
  const phone = String(op.operatorPhone || '').replace(/\D/g, '')
  if (phone) tries.push(['SELECT id, username, name, role, phone FROM admins WHERE phone=? OR username=? LIMIT 1', [phone, phone]])
  if (op.operatorName && !op.operatorId && !op.operatorUsername && !phone) {
    tries.push(['SELECT id, username, name, role, phone FROM admins WHERE name=? LIMIT 1', [op.operatorName]])
  }
  for (const [sql, args] of tries) {
    try {
      const [rows] = await pool.query(sql, args)
      if (rows && rows[0]) return rows[0]
    } catch (e) {}
  }
  return null
}

async function resolveRole(body) {
  const op = {
    operatorRole: body.operatorRole || '',
    operatorPhone: body.operatorPhone || '',
    operatorName: body.operatorName || '',
    operatorId: body.operatorId || body.adminId || '',
    operatorUsername: body.operatorUsername || ''
  }
  const admin = await queryAdmin(op)
  const role = admin ? (admin.role || op.operatorRole) : op.operatorRole
  const name = (admin && (admin.name || admin.username)) || op.operatorName || '管理员'
  return { role, name, admin, op }
}

async function writeRefund(card, amt, operatorName) {
  try {
    await pool.query(
      `UPDATE member_cards
          SET status='refunded', refund_amount=?, refunded_at=NOW(),
              refund_operator=?, updated_at=NOW()
        WHERE id=?`,
      [amt, operatorName, card.id]
    )
  } catch (e) {
    try {
      await pool.query(
        `UPDATE member_cards SET status='refunded', refund_amount=?, refunded_at=NOW(), updated_at=NOW() WHERE id=?`,
        [amt, card.id]
      )
    } catch (e2) {
      await pool.query(`UPDATE member_cards SET status='refunded', updated_at=NOW() WHERE id=?`, [card.id])
    }
  }
  if (amt) {
    try {
      await pool.query(
        `INSERT INTO finance_ledger
          (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
           operator_name, card_id, remark)
         VALUES (CURDATE(), 'refund_card', ?, ?, ?, ?, ?, ?, ?, ?)`,
        [
          -amt,
          card.venue_id || '',
          card.venue_name || '',
          card.user_id || null,
          card.user_name || '',
          operatorName,
          card.id,
          (card.card_name || '会员卡') + ' 退卡'
        ]
      )
    } catch (e) {}
  }
  try {
    await pool.query(
      `INSERT INTO activity_logs
        (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, NOW())`,
      [
        'card_refund',
        card.user_name || '',
        operatorName,
        '',
        '退卡 ' + (card.card_name || '') + ' 退款' + amt + '元',
        card.venue_id || '',
        card.venue_name || ''
      ]
    )
  } catch (e) {}
}

async function loadUnusedEnrollments(conn, cardId) {
  const [rows] = await conn.query(
    `SELECT * FROM bookings
      WHERE card_id=? AND status='booked' AND group_class_id IS NOT NULL AND group_class_id<>0`,
    [cardId]
  )
  return rows || []
}

async function cancelUntakenEnrollments(conn, card, unused, operatorName) {
  let restored = 0
  for (const b of unused) {
    const [upd] = await conn.query(
      `UPDATE bookings SET status='cancelled', updated_at=NOW() WHERE id=? AND status='booked'`,
      [b.id]
    )
    if (!upd || Number(upd.affectedRows) !== 1) continue
    restored += 1
    if (b.group_class_id) {
      await conn.query(
        `UPDATE group_classes SET enrolled = GREATEST(enrolled - 1, 0) WHERE id=?`,
        [b.group_class_id]
      )
    }
    try {
      await conn.query(
        `INSERT INTO finance_ledger
          (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
           operator_name, card_id, booking_id, remark)
         VALUES (CURDATE(), 'card_use_cancel', ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
        [
          money(b.amount) || 0,
          b.venue_id || '',
          b.venue_name || '',
          b.user_id || null,
          b.user_name || '',
          operatorName,
          card.id,
          b.id,
          '退款前取消未上课团课报名'
        ]
      )
    } catch (e) {}
  }
  if (restored > 0) {
    await conn.query(
      `UPDATE member_cards
          SET remaining_times = IFNULL(remaining_times,0) + ?,
              status = 'active',
              updated_at = NOW()
        WHERE id=?`,
      [restored, card.id]
    )
  }
  return restored
}

function initiatorText(row) {
  const name = row.user_name || row.user_nick || '会员'
  const phone = row.user_phone || ''
  const who = phone ? (name + '（' + phone + '）') : name
  return who + ' · 小程序'
}

async function listRequests(body) {
  const status = body.status || 'pending'
  const venueIds = [].concat(body.venueIds || (body.venueId ? [body.venueId] : []))
    .map((x) => String(x || '').trim())
    .filter((x) => x && x !== 'all')
  const whereStatus = (status && status !== 'all')
    ? " AND CONVERT(IFNULL(r.status,'') USING utf8mb4) COLLATE utf8mb4_general_ci = CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci"
    : ''
  const params = (status && status !== 'all') ? [status] : []
  const joinUsers = `LEFT JOIN users u ON (
                 (r.user_id IS NOT NULL AND r.user_id <> 0 AND u.id = r.user_id)
                 OR (
                   (r.user_id IS NULL OR r.user_id = 0)
                   AND CONVERT(IFNULL(r.openid,'') USING utf8mb4) COLLATE utf8mb4_general_ci <> CONVERT('' USING utf8mb4) COLLATE utf8mb4_general_ci
                   AND CONVERT(IFNULL(u.openid,'') USING utf8mb4) COLLATE utf8mb4_general_ci = CONVERT(IFNULL(r.openid,'') USING utf8mb4) COLLATE utf8mb4_general_ci
                 )
               )`
  const selectBase = `SELECT r.*, c.card_name, c.user_name, c.status AS card_status,
                    c.remaining_times AS card_remaining, c.total_times AS card_total,
                    c.price AS card_price, c.paid_amount AS card_paid_amount, c.pay_order_id AS card_pay_order_id,
                    c.venue_id AS card_venue_id, c.venue_name AS card_venue_name,
                    u.nick_name AS user_nick, u.phone AS user_phone`
  let rows
  try {
    const [rs] = await pool.query(
      selectBase + `,
                    b.venue_id AS booking_venue_id, b.venue_name AS booking_venue_name
               FROM card_refund_requests r
               LEFT JOIN member_cards c ON c.id = r.card_id
               ` + joinUsers + `
               LEFT JOIN bookings b ON b.id = r.booking_id
              WHERE 1=1` + whereStatus + `
              ORDER BY r.id DESC LIMIT 200`,
      params
    )
    rows = rs
  } catch (e) {
    const msg = String((e && e.message) || '')
    if (msg.indexOf('Unknown column') < 0 && msg.indexOf('booking_id') < 0) throw e
    const [rs] = await pool.query(
      selectBase + `
               FROM card_refund_requests r
               LEFT JOIN member_cards c ON c.id = r.card_id
               ` + joinUsers + `
              WHERE 1=1` + whereStatus + `
              ORDER BY r.id DESC LIMIT 200`,
      params
    )
    rows = rs
  }
  const list = (rows || []).map((r) => {
    const meta = refundMeta.parseMeta(r)
    const name = r.user_name || r.user_nick || meta.initiatorName || '会员'
    const venueId = r.venue_id || meta.venueId || r.card_venue_id || r.booking_venue_id || ''
    const venueName = r.venue_name || meta.venueName || r.card_venue_name || r.booking_venue_name || ''
    return Object.assign({}, r, {
      user_name: r.user_name || r.user_nick || name,
      requestType: meta.type || 'mall_card',
      requestTypeLabel: refundMeta.typeLabel(meta.type || 'mall_card'),
      initiatorName: meta.initiatorName || name,
      initiatorPhone: meta.initiatorPhone || r.user_phone || '',
      initiatorSource: meta.initiatorSource,
      initiatorText: refundMeta.initiatorText(meta, r),
      summary: meta.summary || r.reason || '',
      venueId,
      venueName
    })
  }).filter((r) => {
    if (!venueIds.length) return true
    return venueIds.indexOf(String(r.venueId || '')) >= 0
  })
  return { ok: true, list, fnVer: FN_VER }
}

async function callSaveBooking(payload) {
  try {
    const data = await refundMeta.callCloudFn(getCloud(), 'adminSaveBooking', payload || {})
    return data || { ok: false, msg: '订场服务无响应' }
  } catch (e) {
    return { ok: false, msg: (e && e.message) || '调用订场服务失败' }
  }
}

async function confirmNonMall(request, meta, operatorName, conn) {
  await conn.query(
    `UPDATE card_refund_requests SET status='refunding', operator_name=?, updated_at=NOW() WHERE id=?`,
    [operatorName, request.id]
  )
  await conn.commit()

  let exec = { ok: false, msg: '未知退款类型' }
  if (meta.type === 'booking_cash_issue') {
    exec = await callSaveBooking({
      action: 'refund_cash_keep_card',
      id: meta.bookingId,
      approvedRequestId: request.id,
      data: {
        issueTemplateId: meta.issueTemplateId,
        issuePrice: meta.issuePrice,
        payMeituan: meta.payMeituan,
        payDouyin: meta.payDouyin,
        payOffline: meta.payOffline,
        coachId: meta.coachId,
        coachName: meta.coachName,
        operatorName
      }
    })
  } else if (meta.type === 'booking_cancel') {
    exec = await callSaveBooking({
      action: 'cancel',
      id: meta.bookingId,
      approvedRequestId: request.id,
      data: { operatorName }
    })
  } else if (meta.type === 'booking_wx_refund') {
    const payOrderId = request.pay_order_id
    if (!payOrderId && !meta.bookingId) {
      exec = { ok: false, msg: '缺少支付单，无法补退微信' }
    } else {
      exec = await refundCourtPayViaPay({
        payOrderId,
        bookingId: meta.bookingId,
        reason: '补退微信·' + operatorName,
        skipLedger: true
      })
      if (exec && exec.ok) {
        exec.refundAmount = request.refund_amount
        try {
          await pool.query(
            `INSERT INTO activity_logs
              (type, user_name, operator_name, phone, detail, venue_id, venue_name, amount, created_at)
             VALUES (?, ?, ?, ?, ?, ?, ?, ?, NOW())`,
            [
              'booking_refund',
              '',
              operatorName,
              '',
              '补退微信 ' + (request.refund_amount != null ? request.refund_amount : '') + '元 预约#' + (meta.bookingId || ''),
              meta.venueId || '',
              meta.venueName || '',
              request.refund_amount || 0
            ]
          )
        } catch (e) {}
      }
    }
  } else if (meta.type === 'admin_card' || meta.type === 'admin_card_delete') {
    const cardId = request.card_id
    const [cards] = await pool.query('SELECT * FROM member_cards WHERE id=? LIMIT 1', [cardId])
    const card = cards[0]
    if (!card) exec = { ok: false, msg: '会员卡不存在' }
    else if (card.status === 'refunded' && meta.type !== 'admin_card_delete') exec = { ok: true, already: true }
    else {
      const amt = refundMeta.money(request.refund_amount != null ? request.refund_amount : refundAmount(card))
      if (card.status !== 'refunded' && card.status !== 'deleted') {
        await writeRefund(card, amt, operatorName)
      }
      if (meta.type === 'admin_card_delete') {
        await pool.query(`UPDATE member_cards SET status='deleted', updated_at=NOW() WHERE id=?`, [cardId])
      }
      exec = { ok: true, refundAmount: amt }
    }
  }

  if (!exec || !exec.ok) {
    try {
      await pool.query(
        `UPDATE card_refund_requests SET status='pending', updated_at=NOW() WHERE id=? AND CONVERT(IFNULL(status,'') USING utf8mb4) COLLATE utf8mb4_general_ci = CONVERT('refunding' USING utf8mb4) COLLATE utf8mb4_general_ci`,
        [request.id]
      )
    } catch (e) {}
    return {
      ok: false,
      msg: (exec && exec.msg) || '确认退款失败，申请已退回待确认，请重试',
      fnVer: FN_VER
    }
  }

  try {
    await pool.query(
      `UPDATE card_refund_requests SET status='confirmed', confirmed_at=IFNULL(confirmed_at,NOW()), operator_name=?, updated_at=NOW() WHERE id=?`,
      [operatorName, request.id]
    )
  } catch (e) {}
  return {
    ok: true,
    already: !!exec.already,
    refundAmount: exec.refundAmount != null ? exec.refundAmount : request.refund_amount,
    msg: exec.already ? '已处理' : '已确认退款',
    fnVer: FN_VER
  }
}

async function confirmRequest(body, ctx) {
  const gate = adminRole.requireFoundSuperAdmin(ctx, '只有超级管理员可以确认线上退款')
  if (!gate.ok) {
    return { ok: false, msg: gate.msg, fnVer: FN_VER }
  }
  const requestId = body.requestId || body.id
  if (!requestId) return { ok: false, msg: '缺少申请ID', fnVer: FN_VER }
  const operatorName = ctx.name || '管理员'

  const conn = await pool.getConnection()
  let plan = null
  let request = null
  let card = null
  let outRefundNo = ''
  let payOrderId = 0
  let refundFen = 0
  try {
    await conn.beginTransaction()
    const [reqs] = await conn.query(
      'SELECT * FROM card_refund_requests WHERE id=? FOR UPDATE',
      [requestId]
    )
    request = reqs[0]
    if (!request) {
      await conn.rollback()
      return { ok: false, msg: '退款申请不存在', fnVer: FN_VER }
    }
    if (request.status === 'confirmed') {
      await conn.rollback()
      return { ok: true, already: true, msg: '已确认退款', fnVer: FN_VER }
    }
    if (request.status !== 'pending' && request.status !== 'refunding') {
      await conn.rollback()
      return { ok: false, msg: '该申请当前状态不可确认', status: request.status, fnVer: FN_VER }
    }
    const meta = refundMeta.parseMeta(request)
    if (meta.type && meta.type !== 'mall_card') {
      const out = await confirmNonMall(request, meta, operatorName, conn)
      try { conn.release() } catch (e) {}
      return out
    }
    const [cards] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [request.card_id])
    card = cards[0]
    if (!card) {
      await conn.rollback()
      return { ok: false, msg: '会员卡不存在', fnVer: FN_VER }
    }
    if (card.status === 'refunded') {
      await conn.query(
        `UPDATE card_refund_requests SET status='confirmed', confirmed_at=IFNULL(confirmed_at,NOW()), operator_name=?, updated_at=NOW() WHERE id=?`,
        [operatorName, request.id]
      )
      await conn.commit()
      return { ok: true, already: true, msg: '卡已退', fnVer: FN_VER }
    }
    const unusedAll = await loadUnusedEnrollments(conn, card.id)
    plan = cardRefund.planConfirmRefund({ card, unusedEnrollments: unusedAll, now: new Date() })
    refundFen = plan.refundFen
    payOrderId = request.pay_order_id || mall.parsePayOrderIdFromCard(card)
    outRefundNo = request.out_refund_no || cardRefund.outRefundNoForRequest(request.id, { out_trade_no: payOrderId })
    await conn.query(
      `UPDATE card_refund_requests
          SET status='refunding',
              remaining_times=?, total_times=?, paid_amount=?, refund_amount=?,
              out_refund_no=?, operator_name=?, updated_at=NOW()
        WHERE id=?`,
      [
        plan.remainingAfterRestore,
        plan.total,
        plan.paid,
        plan.refundAmount,
        outRefundNo,
        operatorName,
        request.id
      ]
    )
    await conn.commit()
  } catch (e) {
    try { await conn.rollback() } catch (e2) {}
    conn.release()
    throw e
  }

  // WeChat refund happens outside the card-mutating transaction.
  let wx = { ok: true, skipped: true }
  if (refundFen >= 1) {
    wx = await refundCardPayViaPay({
      payOrderId,
      outRefundNo,
      refundFen,
      reason: '团课卡退款',
      skipLedger: true
    })
    if (!wx || !wx.ok) {
      try {
        await pool.query(
          `UPDATE card_refund_requests SET status='pending', updated_at=NOW() WHERE id=? AND CONVERT(IFNULL(status,'') USING utf8mb4) COLLATE utf8mb4_general_ci = CONVERT('refunding' USING utf8mb4) COLLATE utf8mb4_general_ci`,
          [request.id]
        )
      } catch (e) {}
      conn.release()
      return {
        ok: false,
        msg: (wx && wx.msg) || '微信退款失败，卡状态未改，请稍后重试',
        cardStatus: card.status,
        fnVer: FN_VER
      }
    }
  }

  try {
    await conn.beginTransaction()
    const [cards2] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [card.id])
    const card2 = cards2[0] || card
    if (card2.status === 'refunded') {
      await conn.query(
        `UPDATE card_refund_requests SET status='confirmed', confirmed_at=IFNULL(confirmed_at,NOW()), wx_refund_id=?, operator_name=?, updated_at=NOW() WHERE id=?`,
        [(wx && wx.refundId) || '', operatorName, request.id]
      )
      await conn.commit()
      return { ok: true, already: true, refundAmount: plan.refundAmount, fnVer: FN_VER }
    }
    const unused2 = await loadUnusedEnrollments(conn, card2.id)
    const plan2 = cardRefund.planConfirmRefund({ card: card2, unusedEnrollments: unused2, paidAmount: plan.paid, now: new Date() })
    const restored = await cancelUntakenEnrollments(conn, card2, plan2.unusedEnrollments, operatorName)
    const [afterRestore] = await conn.query('SELECT * FROM member_cards WHERE id=? LIMIT 1', [card2.id])
    const card3 = afterRestore[0] || card2
    const amt = cardRefund.refundProrate(
      card3.remaining_times,
      card3.total_times,
      plan.paid
    )
    try {
      await conn.query(
        `UPDATE member_cards
            SET status='refunded', refund_amount=?, refunded_at=NOW(), refund_operator=?, updated_at=NOW()
          WHERE id=? AND status<>'refunded'`,
        [amt, operatorName, card3.id]
      )
    } catch (e) {
      await conn.query(
        `UPDATE member_cards SET status='refunded', updated_at=NOW() WHERE id=?`,
        [card3.id]
      )
    }
    if (amt) {
      try {
        await conn.query(
          `INSERT INTO finance_ledger
            (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
             operator_name, card_id, pay_order_id, remark)
           VALUES (CURDATE(), 'refund_card', ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
          [
            -amt,
            card3.venue_id || '',
            card3.venue_name || '',
            card3.user_id || null,
            card3.user_name || '',
            operatorName,
            card3.id,
            payOrderId || null,
            (card3.card_name || '团课卡') + ' 线上退款'
          ]
        )
      } catch (e) {}
    }
    await conn.query(
      `UPDATE card_refund_requests
          SET status='confirmed', refund_amount=?, wx_refund_id=?,
              confirmed_at=NOW(), operator_name=?, updated_at=NOW()
        WHERE id=?`,
      [amt, (wx && wx.refundId) || '', operatorName, request.id]
    )
    try {
      await conn.query(
        `INSERT INTO activity_logs
          (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
         VALUES (?, ?, ?, ?, ?, ?, ?, NOW())`,
        [
          'card_refund',
          card3.user_name || '',
          operatorName,
          '',
          '确认线上退卡 ' + (card3.card_name || '') + ' 退款' + amt + '元 恢复未上课' + restored + '次',
          card3.venue_id || '',
          card3.venue_name || ''
        ]
      )
    } catch (e) {}
    await conn.commit()
    return {
      ok: true,
      refundAmount: amt,
      restored,
      refundFen: Math.round(amt * 100),
      outRefundNo,
      fnVer: FN_VER
    }
  } catch (e) {
    try { await conn.rollback() } catch (e2) {}
    // WeChat may have already refunded; leave request in refunding so retry can finish voiding.
    return { ok: false, msg: e.message || '确认退款失败，请重试（勿重复操作以免重复退款）', fnVer: FN_VER, wxDone: !!(wx && wx.ok && !wx.skipped) }
  } finally {
    conn.release()
  }
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const action = body.action || 'refund'
    if (action === 'ver' || action === '__ver__') return { ok: true, fnVer: FN_VER }

    const ctx = await resolveRole(body)

    if (action === 'listRequests') {
      try {
        return await listRequests(body)
      } catch (e) {
        const msg = String((e && e.message) || '')
        if (msg.indexOf("doesn't exist") >= 0 || msg.indexOf('card_refund_requests') >= 0) {
          return { ok: true, list: [], msg: '请先执行 SQL 创建 card_refund_requests 表', fnVer: FN_VER }
        }
        throw e
      }
    }

    if (action === 'confirmRequest') {
      return await confirmRequest(body, ctx)
    }

    const cardId = body.cardId
    const operatorName = ctx.name || body.operatorName || '管理员'
    if (!cardId) return { ok: false, msg: '缺少卡号', fnVer: FN_VER }

    const [rows] = await pool.query('SELECT * FROM member_cards WHERE id=? LIMIT 1', [cardId])
    const card = rows[0]
    if (!card) return { ok: false, msg: '会员卡不存在', fnVer: FN_VER }
    if (card.status === 'deleted') return { ok: false, msg: '这张卡已经删了', fnVer: FN_VER }

    if (action === 'delete' && (card.status === 'refunded' || card.status === 'deleted')) {
      await pool.query(`UPDATE member_cards SET status='deleted', updated_at=NOW() WHERE id=?`, [cardId])
      return { ok: true, deleted: true, refundAmount: 0, fnVer: FN_VER }
    }

    if (action === 'refund' || action === 'delete' || action === 'createRequest') {
      const exist = await refundMeta.findPending(pool, { cardId: card.id })
      if (exist) {
        return {
          ok: true,
          pending: true,
          already: true,
          requestId: exist.id,
          msg: '已提交退款申请，等待管理员确认',
          fnVer: FN_VER
        }
      }
      const isMall = mall.hasPayOrder(card)
      const type = isMall ? 'mall_card' : (action === 'delete' ? 'admin_card_delete' : 'admin_card')
      const amt = refundAmount(card)
      const requestId = await refundMeta.insertRequest(pool, {
        cardId: card.id,
        userId: card.user_id,
        openid: card.openid || '',
        payOrderId: mall.parsePayOrderIdFromCard(card) || card.pay_order_id || null,
        remainingTimes: Number(card.remaining_times) || 0,
        totalTimes: Number(card.total_times) || 0,
        paidAmount: mall.paidAmountOfCard ? mall.paidAmountOfCard(card) : (card.paid_amount || card.price || amt),
        refundAmount: amt,
        summary: (action === 'delete' ? '删除并退卡「' : '退卡「') + (card.card_name || '') + '」' + amt + '元',
        venueId: card.venue_id || '',
        venueName: card.venue_name || '',
        meta: {
          type,
          venueId: card.venue_id || '',
          venueName: card.venue_name || '',
          initiatorName: operatorName,
          initiatorPhone: body.operatorPhone || '',
          initiatorSource: 'admin',
          summary: (action === 'delete' ? '删除并退卡「' : '退卡「') + (card.card_name || '') + '」' + amt + '元'
        }
      })
      return {
        ok: true,
        pending: true,
        requestId,
        refundAmount: amt,
        msg: '已提交退款申请，等待管理员在「退款申请」确认后才会退款',
        fnVer: FN_VER
      }
    }

    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '退卡失败', fnVer: FN_VER }
  }
}
