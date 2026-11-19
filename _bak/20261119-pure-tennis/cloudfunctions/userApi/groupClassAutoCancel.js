'use strict'

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

function parseSlot(time) {
  const raw = String(time || '')
    .replace(/[–—]/g, '-')
    .trim()
  const parts = raw
    .split('-')
    .map((s) => s.trim())
    .filter(Boolean)
  return { start: parts[0] || '', end: parts[1] || parts[0] || '' }
}

function zonedMs(ymd, hm, offsetHours) {
  const off = offsetHours == null ? 8 : offsetHours
  const m = String(hm || '').match(/(\d{1,2}):(\d{2})/)
  if (!ymd || !m) return NaN
  const parts = String(ymd).split('-').map(Number)
  if (parts.length < 3) return NaN
  const y = parts[0]
  const mo = parts[1]
  const d = parts[2]
  const hh = Number(m[1])
  const mm = Number(m[2])
  return Date.UTC(y, mo - 1, d, hh - off, mm, 0)
}

function classStartMs(gc, offsetHours) {
  const ymd = fmtDate(gc && gc.date)
  const slot = parseSlot(gc && gc.time)
  return zonedMs(ymd, slot.start, offsetHours)
}

function classEndMs(gc, offsetHours) {
  const ymd = fmtDate(gc && gc.date)
  const slot = parseSlot(gc && gc.time)
  return zonedMs(ymd, slot.end || slot.start, offsetHours)
}

function isPastClass(gc, nowMs, offsetHours) {
  const end = classEndMs(gc, offsetHours)
  if (!Number.isFinite(end)) return false
  return (nowMs == null ? Date.now() : nowMs) >= end
}

function shouldAutoCancel(gc, nowMs, offsetHours) {
  if (!gc) return false
  const min = Number(gc.min_enrollment)
  if (!Number.isFinite(min) || min <= 0) return false
  if (String(gc.status || '') !== 'open') return false
  if (Number(gc.auto_cancel_exempt) === 1) return false
  if ((Number(gc.enrolled) || 0) >= min) return false
  const hoursRaw = gc.cancel_before_hours
  const hours =
    hoursRaw == null || hoursRaw === '' || !Number.isFinite(Number(hoursRaw))
      ? 2
      : Number(hoursRaw)
  const start = classStartMs(gc, offsetHours)
  if (!Number.isFinite(start)) return false
  const now = nowMs == null ? Date.now() : nowMs
  return now >= start - hours * 3600 * 1000
}

async function defaultWriteLog(conn, row) {
  try {
    await conn.query(
      `INSERT INTO activity_logs
        (type, user_name, operator_name, phone, detail, venue_id, venue_name, amount, card_name, created_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())`,
      [
        row.type || '',
        row.userName || '',
        row.operatorName || '',
        row.phone || '',
        row.detail || '',
        row.venueId || '',
        row.venueName || '',
        row.amount != null ? money(row.amount) : 0,
        row.cardName || ''
      ]
    )
  } catch (e) {
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
    } catch (e2) {
      console.warn('activity_logs write skip:', (e2 && e2.message) || (e && e.message))
    }
  }
}

async function defaultWriteLedger(conn, row) {
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
  } catch (e) {
    console.warn('finance_ledger write skip:', e && e.message)
  }
}

async function writeCancelLedgers(conn, writeLedger, b, operatorName) {
  const bizDate = fmtDate(b.date) || fmtDate(new Date())
  const remark = '团课自动取消 ' + (b.court || '') + ' ' + (b.time || '')
  let cardUseAmt = money(b.amount)
  let cardUseCardId = b.card_id || null
  try {
    const [cu] = await conn.query(
      `SELECT amount, card_id FROM finance_ledger
        WHERE booking_id=? AND type='card_use' AND amount>0
        ORDER BY id DESC LIMIT 1`,
      [b.id]
    )
    if (cu && cu[0]) {
      cardUseAmt = money(cu[0].amount)
      if (cu[0].card_id) cardUseCardId = cu[0].card_id
    }
  } catch (e) {}
  if (cardUseAmt > 0) {
    await writeLedger(conn, {
      bizDate,
      type: 'card_use_cancel',
      amount: -cardUseAmt,
      venueId: b.venue_id || '',
      venueName: b.venue_name || '',
      userId: b.user_id || null,
      userName: b.user_name || '',
      operatorName: operatorName || '系统',
      cardId: cardUseCardId,
      bookingId: b.id,
      remark
    })
  }
}

async function cancelOneEnrollment(conn, b, gc, hooks) {
  const writeLog = hooks.writeLog || defaultWriteLog
  const writeLedger = hooks.writeLedger || defaultWriteLedger
  const operatorName = hooks.operatorName || '系统'
  await conn.query(`UPDATE bookings SET status='cancelled', updated_at=NOW() WHERE id=? AND status='booked'`, [
    b.id
  ])
  if (b.card_id) {
    const [cards] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [b.card_id])
    const card = cards && cards[0]
    if (card && (card.type === 'times' || card.type === 'coach' || card.type === 'group')) {
      const left = (Number(card.remaining_times) || 0) + 1
      let st = card.status
      if (st === 'used_up' && left > 0) st = 'active'
      await conn.query(`UPDATE member_cards SET remaining_times=?, status=?, updated_at=NOW() WHERE id=?`, [
        left,
        st,
        card.id
      ])
    }
  }
  await writeCancelLedgers(conn, writeLedger, b, operatorName)
  await writeLog(conn, {
    type: 'booking_cancel',
    userName: b.user_name || '',
    operatorName,
    phone: b.phone || '',
    detail:
      '团课自动取消报名 ' +
      ((gc && gc.name) || '') +
      ' ' +
      fmtDateCn(gc && gc.date) +
      ' ' +
      ((gc && gc.time) || b.time || '') +
      ' · ' +
      ((gc && gc.court) || b.court || ''),
    venueId: (gc && gc.venue_id) || b.venue_id || '',
    venueName: b.venue_name || '',
    cardName: b.card_name || ''
  })
}

async function cancelOneClass(conn, gcId, hooks) {
  const writeLog = hooks.writeLog || defaultWriteLog
  const operatorName = hooks.operatorName || '系统'
  const nowMs = hooks.nowMs
  const [rows] = await conn.query('SELECT * FROM group_classes WHERE id=? FOR UPDATE', [gcId])
  const gc = rows && rows[0]
  if (!gc) return { cancelled: false, reason: 'missing' }
  if (!shouldAutoCancel(gc, nowMs, hooks.offsetHours)) {
    return { cancelled: false, reason: 'not_due', status: gc.status }
  }
  const [books] = await conn.query(
    `SELECT * FROM bookings WHERE group_class_id=? AND status='booked' FOR UPDATE`,
    [gc.id]
  )
  let n = 0
  for (const b of books || []) {
    await cancelOneEnrollment(conn, b, gc, hooks)
    n += 1
  }
  await conn.query(`UPDATE group_classes SET status='cancelled', enrolled=GREATEST(enrolled-?,0) WHERE id=?`, [
    n,
    gc.id
  ])
  // enrolled should be 0; force if leftover mismatch
  await conn.query(
    `UPDATE group_classes SET enrolled=(
        SELECT COUNT(*) FROM bookings WHERE group_class_id=? AND status='booked'
     ) WHERE id=?`,
    [gc.id, gc.id]
  )
  await writeLog(conn, {
    type: 'group_auto_cancel',
    userName: '',
    operatorName,
    phone: '',
    detail:
      '团课自动取消 ' +
      (gc.name || '') +
      ' ' +
      fmtDateCn(gc.date) +
      ' ' +
      (gc.time || '') +
      ' · 人数 ' +
      (gc.enrolled || 0) +
      '/' +
      (gc.min_enrollment || 0) +
      ' · 提前 ' +
      (gc.cancel_before_hours != null ? gc.cancel_before_hours : 2) +
      ' 小时',
    venueId: gc.venue_id || '',
    venueName: ''
  })
  return { cancelled: true, id: gc.id, refunded: n }
}

async function autoCancelDueGroupClasses(connOrPool, hooks) {
  const h = hooks || {}
  const operatorName = h.operatorName || '系统'
  let rows
  try {
    const [r] = await connOrPool.query(
      `SELECT id FROM group_classes
        WHERE status='open'
          AND IFNULL(auto_cancel_exempt,0)=0
          AND IFNULL(min_enrollment,0)>0
          AND IFNULL(enrolled,0) < min_enrollment
        ORDER BY date ASC, time ASC, id ASC
        LIMIT 200`
    )
    rows = r || []
  } catch (e) {
    const msg = (e && e.message) || String(e)
    if (/Unknown column|ER_BAD_FIELD/i.test(msg)) {
      return { ok: true, skipped: true, cancelled: 0, ids: [], msg: 'missing columns' }
    }
    return { ok: false, cancelled: 0, ids: [], msg }
  }

  // Pre-filter in JS when SELECT * isn't used (only ids). Need full rows for shouldAutoCancel.
  let full = rows
  if (rows.length && rows[0] && rows[0].min_enrollment == null && rows[0].id) {
    const ids = rows.map((x) => x.id)
    const [r2] = await connOrPool.query(
      `SELECT * FROM group_classes WHERE id IN (${ids.map(() => '?').join(',')})`,
      ids
    )
    full = r2 || []
  }

  const due = full.filter((gc) => shouldAutoCancel(gc, h.nowMs, h.offsetHours))
  const ids = []
  let refunded = 0
  for (const gc of due) {
    let ownConn = connOrPool
    let release = false
    try {
      if (typeof connOrPool.getConnection === 'function') {
        ownConn = await connOrPool.getConnection()
        release = true
      }
      await ownConn.beginTransaction()
      const out = await cancelOneClass(ownConn, gc.id, Object.assign({}, h, { operatorName }))
      await ownConn.commit()
      if (out && out.cancelled) {
        ids.push(out.id)
        refunded += out.refunded || 0
      }
    } catch (e) {
      try {
        await ownConn.rollback()
      } catch (e2) {}
      console.warn('auto-cancel class fail', gc && gc.id, e && e.message)
    } finally {
      if (release) {
        try {
          ownConn.release()
        } catch (e3) {}
      }
    }
  }
  return { ok: true, cancelled: ids.length, refunded, ids }
}

module.exports = {
  money,
  fmtDate,
  fmtDateCn,
  parseSlot,
  zonedMs,
  classStartMs,
  classEndMs,
  isPastClass,
  shouldAutoCancel,
  autoCancelDueGroupClasses,
  cancelOneClass
}
