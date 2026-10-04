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

function parseEvent(event) {
  let body = event || {}
  if (body && body.body) {
    try {
      const inner = typeof body.body === 'string' ? JSON.parse(body.body) : body.body
      body = Object.assign({}, body, inner)
    } catch (e) {}
  }
  return body
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

function parseTimeRule(v) {
  if (!v) return null
  if (typeof v === 'object') return v
  try {
    return JSON.parse(v)
  } catch (e) {
    return null
  }
}

function weekdayMon1(dateStr) {
  const s = fmtDate(dateStr)
  if (!s) return 0
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

function cardUnit(card) {
  if (!card) return 0
  const price = money(card.price)
  if (
    (card.type === 'times' || card.type === 'coach' || card.type === 'group') &&
    Number(card.total_times) > 0
  ) {
    return money(price / Number(card.total_times))
  }
  if (card.type === 'time' && price > 0) {
    return money(price / daysBetween(card.valid_from, card.valid_to))
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

async function getSlotPrice(conn, venueId, court, dateStr, timeStr) {
  const wd = weekdayMon1(dateStr)
  if (!venueId || !court || !wd || !timeStr) return 0
  try {
    const [rows] = await conn.query(
      `SELECT price FROM court_prices
        WHERE venue_id=? AND court=? AND weekday=? AND time_slot=? LIMIT 1`,
      [venueId, court, wd, timeStr]
    )
    return money(rows[0] && rows[0].price)
  } catch (e) {
    return 0
  }
}

async function resolvePhone(conn, phone, userId, userName) {
  if (phone && /^1\d{10}$/.test(String(phone))) return String(phone)
  try {
    if (userId) {
      const [rows] = await conn.query('SELECT phone FROM users WHERE id=? LIMIT 1', [userId])
      if (rows[0] && rows[0].phone) return String(rows[0].phone)
    }
    if (userName) {
      const [rows] = await conn.query('SELECT phone FROM users WHERE nick_name=? AND phone IS NOT NULL AND phone<>\'\' LIMIT 1', [userName])
      if (rows[0] && rows[0].phone) return String(rows[0].phone)
    }
  } catch (e) {}
  return phone || ''
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
  const params = [
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
  try {
    await conn.query(
      `INSERT INTO finance_ledger
        (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
         operator_name, card_id, booking_id, pay_order_id, remark)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
      params
    )
    return ''
  } catch (e) {
    const msg = e && e.message ? e.message : String(e)
    console.error('finance_ledger write fail', msg)
    return msg
  }
}

const FN_VER = 'saveBooking-20260928e'

exports.main = async (event) => {
  const conn = await pool.getConnection()
  try {
    const body = parseEvent(event)
    const { action, id, data } = body || {}
    if (action === 'ver' || action === '__ver__') {
      return { ok: true, fnVer: FN_VER }
    }
    if (!action) return { ok: false, msg: '缺少 action', fnVer: FN_VER }

    if (action === 'cancel') {
      await conn.beginTransaction()
      const [rows] = await conn.query('SELECT * FROM bookings WHERE id=? FOR UPDATE', [id])
      const b = rows[0]
      if (!b) {
        await conn.rollback()
        return { ok: false, msg: '预约不存在' }
      }
      if (b.status === 'cancelled') {
        await conn.rollback()
        return { ok: false, msg: '已取消' }
      }

      await conn.query(
        `UPDATE bookings SET status='cancelled', cancelled_by_admin=1,
          operator_name=?, updated_at=NOW() WHERE id=?`,
        [(data && data.operatorName) || '管理员', id]
      )

      let refundCardId = b.card_id || null
      if (!refundCardId) {
        try {
          const [led] = await conn.query(
            `SELECT card_id FROM finance_ledger
              WHERE booking_id=? AND card_id IS NOT NULL AND type IN ('card_use','issue_card')
              ORDER BY id DESC LIMIT 1`,
            [b.id]
          )
          if (led[0] && led[0].card_id) refundCardId = led[0].card_id
        } catch (e) {}
      }
      if (refundCardId) {
        const [cards] = await conn.query(
          'SELECT * FROM member_cards WHERE id=? FOR UPDATE',
          [refundCardId]
        )
        const card = cards[0]
        if (card && (card.type === 'times' || card.type === 'coach' || card.type === 'group') && card.status !== 'deleted' && card.status !== 'refunded') {
          const left = (Number(card.remaining_times) || 0) + 1
          const total = Number(card.total_times) || left
          await conn.query(
            `UPDATE member_cards SET remaining_times=?, status='active', updated_at=NOW() WHERE id=?`,
            [Math.min(left, total), card.id]
          )
        }
      }

      if (b.group_class_id) {
        await conn.query(
          `UPDATE group_classes SET enrolled = GREATEST(enrolled - 1, 0) WHERE id=?`,
          [b.group_class_id]
        )
      }

      await writeLog(conn, {
        type: 'booking_cancel',
        userName: b.user_name || '',
        operatorName: (data && data.operatorName) || '管理员',
        phone: b.phone || '',
        detail: '取消预约 ' + (b.court || '') + ' ' + fmtDateCn(b.date) + ' ' + (b.time || ''),
        venueId: b.venue_id || '',
        venueName: b.venue_name || ''
      })

      const ledgerError = await writeLedger(conn, {
        bizDate: fmtDate(b.date) || fmtDate(new Date()),
        type: refundCardId ? 'card_use_cancel' : 'court_cancel',
        amount: -money(b.amount),
        venueId: b.venue_id || '',
        venueName: b.venue_name || '',
        userId: b.user_id || null,
        userName: b.user_name || '',
        operatorName: (data && data.operatorName) || '管理员',
        cardId: refundCardId || null,
        bookingId: b.id,
        remark: '取消 ' + (b.court || '') + ' ' + (b.time || '')
      })

      await conn.commit()
      return { ok: true, ledgerError, fnVer: FN_VER }
    }

    if (action === 'add') {
      if (!data || !data.venueId || !data.court || !data.date || !data.time || !data.userName) {
        return { ok: false, msg: '参数不完整' }
      }
      await conn.beginTransaction()
      const dateYmd = fmtDate(data.date) || data.date

      const [gc] = await conn.query(
        `SELECT id FROM group_classes
          WHERE venue_id=? AND date=? AND time=? AND court=? AND status='open' LIMIT 1`,
        [data.venueId, dateYmd, data.time, data.court]
      )
      if (gc.length) {
        await conn.rollback()
        return { ok: false, msg: '该时段为团课，请从团课格子报名' }
      }

      const [busy] = await conn.query(
        `SELECT id FROM bookings
          WHERE venue_id=? AND date=? AND time=? AND court=? AND status IN ('booked','locked') LIMIT 1`,
        [data.venueId, dateYmd, data.time, data.court]
      )
      if (busy.length) {
        await conn.rollback()
        return { ok: false, msg: '该时段已被预约' }
      }

      let userIdVal = null
      if (data.memberId != null && /^\d+$/.test(String(data.memberId).trim())) {
        userIdVal = Number(String(data.memberId).trim())
      }
      userIdVal = await resolveUserId(conn, userIdVal, data.memberOpenid || data.openid || '')

      let coachIdVal = null
      if (data.coachId != null && /^\d+$/.test(String(data.coachId).trim())) {
        coachIdVal = Number(String(data.coachId).trim())
      }

      if (coachIdVal) {
        const [coachBusy] = await conn.query(
          `SELECT id FROM bookings
            WHERE venue_id=? AND date=? AND time=? AND coach_id=? AND status='booked' LIMIT 1`,
          [data.venueId, dateYmd, data.time, coachIdVal]
        )
        if (coachBusy.length) {
          await conn.rollback()
          return { ok: false, msg: '该教练此时段已被预约' }
        }
        const [coachGroup] = await conn.query(
          `SELECT id FROM group_classes
            WHERE venue_id=? AND date=? AND time=? AND coach_id=? AND status='open' LIMIT 1`,
          [data.venueId, dateYmd, data.time, coachIdVal]
        )
        if (coachGroup.length) {
          await conn.rollback()
          return { ok: false, msg: '该教练此时段有团课' }
        }
      }

      if (data.issueTemplateId) {
        const [tplRows] = await conn.query('SELECT * FROM card_templates WHERE id=? LIMIT 1', [data.issueTemplateId])
        const tpl = tplRows[0]
        if (!tpl) {
          await conn.rollback()
          return { ok: false, msg: '发卡模板不存在', fnVer: FN_VER }
        }
        const times = Number(data.issueTotalTimes || tpl.total_times || 0)
        let timeRule = tpl.time_rule
        if (timeRule && typeof timeRule === 'object') timeRule = JSON.stringify(timeRule)
        const payPrice = money(data.issuePrice != null ? data.issuePrice : data.amount)
        const [issued] = await conn.query(
          `INSERT INTO member_cards (
            user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type,
            total_times, remaining_times, valid_from, valid_to, time_rule,
            status, source, remark, issuer_name, price
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'active', 'admin_give', ?, ?, ?)`,
          [
            userIdVal,
            data.memberOpenid || '',
            data.userName || '',
            data.venueId,
            data.venueName || '',
            tpl.id,
            tpl.name,
            tpl.type,
            times,
            times,
            data.issueValidFrom || null,
            data.issueValidTo || null,
            timeRule || null,
            data.remark || '订场同时发卡',
            data.operatorName || '管理员',
            payPrice
          ]
        )
        if (!data.cardId) data.cardId = issued.insertId
        if (payPrice > 0) {
          await writeLedger(conn, {
            bizDate: dateYmd,
            type: 'issue_card',
            amount: payPrice,
            venueId: data.venueId,
            venueName: data.venueName || '',
            userId: userIdVal,
            userName: data.userName || '',
            operatorName: data.operatorName || '管理员',
            cardId: issued.insertId,
            remark: (tpl.name || '会员卡') + ' 订场发卡'
          })
        }
      }

      let cardIdVal = null
      let cardName = data.cardName || ''
      let cardType = data.cardType || ''
      let cardRemaining = null
      let bookCard = null

      if (data.cardId) {
        const [cards] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [
          data.cardId
        ])
        const card = cards[0]
        if (!card || card.status !== 'active') {
          await conn.rollback()
          return { ok: false, msg: '会员卡不可用' }
        }
        if (card.type === 'group') {
          await conn.rollback()
          return { ok: false, msg: '团课卡不能用于普通订场' }
        }
        if (card.type === 'coach' && !coachIdVal) {
          await conn.rollback()
          return { ok: false, msg: '教练卡必须选择教练' }
        }
        if (coachIdVal && card.type !== 'coach') {
          await conn.rollback()
          return { ok: false, msg: '约教练只能使用教练卡' }
        }
        if (card.time_rule || card.type === 'time') {
          const timeRule = parseTimeRule(card.time_rule)
          if (timeRule && timeRule.mode === 'rules' && Array.isArray(timeRule.rules)) {
            const wd = weekdayMon1(dateYmd)
            const slotStart = String(data.time || '').split('-')[0]
            let matched = null
            for (const r of timeRule.rules) {
              if (!(r.weekdays || []).includes(wd)) continue
              const slots = r.timeSlots || []
              if (!slots.length) {
                if (r.unlimited) {
                  matched = r
                  break
                }
                continue
              }
              for (const s of slots) {
                if (slotStart >= s.start && slotStart < s.end) {
                  matched = r
                  break
                }
              }
              if (matched) break
            }
            if (!matched) {
              await conn.rollback()
              return { ok: false, msg: '当前日期/时段不在时间卡可用范围内' }
            }
            const maxH = Number(matched.maxHours) || 0
            if (maxH > 0) {
              const [usedRows] = await conn.query(
                `SELECT COUNT(*) AS cnt FROM bookings WHERE card_id=? AND date=? AND status='booked'`,
                [card.id, dateYmd]
              )
              const used = Number(usedRows[0] && usedRows[0].cnt) || 0
              if (used + 1 > maxH) {
                await conn.rollback()
                return { ok: false, msg: `时间卡今日最多可约 ${maxH} 小时，已约 ${used} 小时` }
              }
            }
          }
        }
        {
          const tr = parseTimeRule(card.time_rule) || {}
          const allowVenues = Array.isArray(tr.venueIds) ? tr.venueIds.filter(Boolean) : []
          const bookVenue = data.venueId || body.venueId || ''
          if (allowVenues.length && bookVenue && !allowVenues.includes(bookVenue)) {
            await conn.rollback()
            return { ok: false, msg: '这张卡不能在当前门店使用' }
          }
          if (tr.mode === 'dates' || (Array.isArray(tr.dateRanges) && tr.dateRanges.length)) {
            const okDate = (tr.dateRanges || []).some((rg) => rg.start && rg.end && dateYmd >= rg.start && dateYmd <= rg.end)
            if (!okDate) {
              await conn.rollback()
              return { ok: false, msg: '当天不在这张节假日卡的可用日期内' }
            }
          }
          const dayCap = Number(tr.maxHoursPerDay) || 0
          if (dayCap > 0) {
            const [usedRows] = await conn.query(
              `SELECT COUNT(*) AS cnt FROM bookings WHERE card_id=? AND date=? AND status='booked'`,
              [card.id, dateYmd]
            )
            const used = Number(usedRows[0] && usedRows[0].cnt) || 0
            if (used + 1 > dayCap) {
              await conn.rollback()
              return { ok: false, msg: `该卡每天最多可约 ${dayCap} 小时，今日已约 ${used} 小时` }
            }
          }
        }
        if (card.type === 'times' || card.type === 'coach') {
          if ((card.remaining_times || 0) <= 0) {
            await conn.rollback()
            return { ok: false, msg: '卡次数不足' }
          }
          const left = card.remaining_times - 1
          cardRemaining = left
          let activateSql = ''
          const activateParams = []
          let tr = card.time_rule
          if (typeof tr === 'string') { try { tr = JSON.parse(tr) } catch (e) { tr = {} } }
          if (tr && tr.activateMode === 'first_use' && !card.valid_from && Number(tr.durationDays) > 0) {
            const end = new Date(dateYmd + 'T00:00:00')
            end.setDate(end.getDate() + Number(tr.durationDays))
            const p = (n) => (n < 10 ? '0' + n : '' + n)
            const to = end.getFullYear() + '-' + p(end.getMonth() + 1) + '-' + p(end.getDate())
            activateSql = ', valid_from=?, valid_to=?'
            activateParams.push(dateYmd, to)
          }
          await conn.query(
            `UPDATE member_cards SET remaining_times=?, status=?${activateSql}, updated_at=NOW() WHERE id=?`,
            [left, left <= 0 ? 'used_up' : 'active'].concat(activateParams, [card.id])
          )
        }
        cardIdVal = card.id
        cardName = card.card_name || cardName
        cardType = card.type || cardType
        bookCard = card
      }

      const rawAmt = data.amount != null ? data.amount : (data.payAmount != null ? data.payAmount : body.amount)
      const typedCash = rawAmt != null && rawAmt !== '' ? money(rawAmt) : 0
      const slotPrice = await getSlotPrice(conn, data.venueId, data.court, dateYmd, data.time)
      let bookAmount
      if (cardIdVal) {
        bookAmount = typedCash > 0 ? typedCash : 0
      } else {
        bookAmount = typedCash > 0 ? typedCash : slotPrice
      }
      const cash = bookAmount

      const [res] = await conn.query(
        `INSERT INTO bookings (
          venue_id, venue_name, court, date, time,
          user_id, openid, user_name, phone, status,
          card_id, card_name, card_type, coach_id, coach_name,
          source, operator_name, remark, amount
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'booked', ?, ?, ?, ?, ?, 'admin', ?, ?, ?)`,
        [
          data.venueId,
          data.venueName || '',
          data.court,
          dateYmd,
          data.time,
          userIdVal,
          data.memberOpenid || '',
          data.userName || '',
          await resolvePhone(conn, data.phone, userIdVal, ''),
          cardIdVal,
          cardName,
          cardType,
          coachIdVal,
          data.coachName || '',
          data.operatorName || '管理员',
          data.remark || data.orderNo || '',
          bookAmount
        ]
      )

      let detail = '预约 ' + (data.court || '') + ' ' + fmtDateCn(dateYmd) + ' ' + (data.time || '')
      if (data.coachName) detail += ' · 教练' + data.coachName
      if (cardName) detail += ' · ' + cardName
      const phoneVal = await resolvePhone(conn, data.phone, userIdVal, data.userName)
      await writeLog(conn, {
        type: 'booking_add',
        userName: data.userName || '',
        operatorName: data.operatorName || '管理员',
        phone: phoneVal,
        detail,
        venueId: data.venueId,
        venueName: data.venueName || ''
      })

      let ledgerError = null
      if (cash > 0 && !cardIdVal) {
        ledgerError = await writeLedger(conn, {
          bizDate: dateYmd,
          type: 'court_pay',
          amount: cash,
          venueId: data.venueId,
          venueName: data.venueName || '',
          userId: userIdVal,
          userName: data.userName || '',
          operatorName: data.operatorName || '管理员',
          cardId: cardIdVal,
          bookingId: res.insertId,
          remark: '订场实收现金 ' + (data.court || '') + ' ' + (data.time || '')
        })
      }
      if (cardIdVal) {
        const useErr = await writeLedger(conn, {
          bizDate: dateYmd,
          type: 'card_use',
          amount: cardUnit(bookCard),
          venueId: data.venueId,
          venueName: data.venueName || '',
          userId: userIdVal,
          userName: data.userName || '',
          operatorName: data.operatorName || '管理员',
          cardId: cardIdVal,
          bookingId: res.insertId,
          remark: (data.court || '') + ' ' + (data.time || '') + (cardName ? ' · ' + cardName : '')
        })
        if (useErr) ledgerError = useErr
      }

      await conn.commit()
      return {
        ok: true,
        id: String(res.insertId),
        amount: bookAmount,
        cardRemaining,
        ledgerError,
        fnVer: FN_VER
      }
    }

    if (action === 'update') {
      if (!id) return { ok: false, msg: '缺少预约ID', fnVer: FN_VER }
      await conn.beginTransaction()
      const [rows] = await conn.query('SELECT * FROM bookings WHERE id=? FOR UPDATE', [id])
      const b = rows[0]
      if (!b) {
        await conn.rollback()
        return { ok: false, msg: '预约不存在', fnVer: FN_VER }
      }
      if (b.status === 'cancelled' || b.status === 'done' || b.status === 'completed') {
        await conn.rollback()
        return { ok: false, msg: '已取消或已完成不能改', fnVer: FN_VER }
      }
      const startHm = String(b.time || '').split('-')[0] || '00:00'
      const startAt = new Date(String(fmtDate(b.date)).replace(/-/g, '/') + ' ' + startHm)
      if (!Number.isNaN(startAt.getTime()) && startAt.getTime() <= Date.now()) {
        await conn.rollback()
        return { ok: false, msg: '已开始的预约不能改详情', fnVer: FN_VER }
      }
      const court = (data && data.court) || b.court
      const dateYmd = fmtDate((data && data.date) || b.date) || b.date
      const time = (data && data.time) || b.time
      const remark = data && data.remark != null ? data.remark : b.remark
      const amount = data && data.amount != null ? money(data.amount) : money(b.amount)
      if (court !== b.court || String(dateYmd) !== String(fmtDate(b.date)) || time !== b.time) {
        const [busy] = await conn.query(
          `SELECT id FROM bookings WHERE venue_id=? AND date=? AND time=? AND court=? AND status IN ('booked','locked') AND id<>? LIMIT 1`,
          [b.venue_id, dateYmd, time, court, id]
        )
        if (busy.length) {
          await conn.rollback()
          return { ok: false, msg: '目标时段已被占用', fnVer: FN_VER }
        }
      }
      let cardId = b.card_id
      let cardName = b.card_name
      let cardType = b.card_type
      if (data && Object.prototype.hasOwnProperty.call(data, 'cardId') && String(data.cardId || '') !== String(b.card_id || '')) {
        if (b.card_id) {
          const [oldRows] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [b.card_id])
          const old = oldRows[0]
          if (old && (old.type === 'times' || old.type === 'coach' || old.type === 'group')) {
            const left = (old.remaining_times || 0) + 1
            await conn.query(
              `UPDATE member_cards SET remaining_times=?, status='active', updated_at=NOW() WHERE id=?`,
              [left, old.id]
            )
          }
        }
        if (data.cardId) {
          const [newRows] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [data.cardId])
          const neu = newRows[0]
          if (!neu || neu.status !== 'active') {
            await conn.rollback()
            return { ok: false, msg: '新卡不可用', fnVer: FN_VER }
          }
          if (neu.type === 'times' || neu.type === 'coach') {
            if ((neu.remaining_times || 0) <= 0) {
              await conn.rollback()
              return { ok: false, msg: '新卡次数不足', fnVer: FN_VER }
            }
            const left = neu.remaining_times - 1
            await conn.query(
              `UPDATE member_cards SET remaining_times=?, status=?, updated_at=NOW() WHERE id=?`,
              [left, left <= 0 ? 'used_up' : 'active', neu.id]
            )
          }
          cardId = neu.id
          cardName = neu.card_name
          cardType = neu.type
        } else {
          cardId = null
          cardName = ''
          cardType = ''
        }
      }
      let coachIdVal = b.coach_id || null
      let coachNameVal = b.coach_name || ''
      if (data && Object.prototype.hasOwnProperty.call(data, 'coachId')) {
        const raw = data.coachId
        coachIdVal = raw != null && String(raw).trim() !== '' && /^\d+$/.test(String(raw).trim()) ? Number(String(raw).trim()) : null
        coachNameVal = data.coachName || ''
      }
      const finalType = cardType || b.card_type
      if (finalType === 'coach' && !coachIdVal) {
        await conn.rollback()
        return { ok: false, msg: '教练卡请选择教练', fnVer: FN_VER }
      }
      if (finalType !== 'coach') {
        coachIdVal = coachIdVal
      }
      await conn.query(
        `UPDATE bookings SET court=?, date=?, time=?, remark=?, amount=?, card_id=?, card_name=?, card_type=?, coach_id=?, coach_name=?, operator_name=? WHERE id=?`,
        [court, dateYmd, time, remark || '', amount, cardId, cardName || '', cardType || '', coachIdVal, coachNameVal || '', (data && data.operatorName) || '管理员', id]
      )
      if (money(b.amount) !== amount) {
        await writeLedger(conn, {
          bizDate: dateYmd,
          type: 'court_adjust',
          amount: money(amount - money(b.amount)),
          venueId: b.venue_id || '',
          venueName: b.venue_name || '',
          userId: b.user_id || null,
          userName: b.user_name || '',
          operatorName: (data && data.operatorName) || '管理员',
          cardId: cardId,
          bookingId: b.id,
          remark: '改金额 ' + money(b.amount) + '→' + amount
        })
      }
      if (data && data.issueTemplateId) {
        const [tplRows] = await conn.query('SELECT * FROM card_templates WHERE id=? LIMIT 1', [data.issueTemplateId])
        const tpl = tplRows[0]
        if (!tpl) {
          await conn.rollback()
          return { ok: false, msg: '发卡模板不存在', fnVer: FN_VER }
        }
        if (tpl.type === 'coach' && !coachIdVal) {
          await conn.rollback()
          return { ok: false, msg: '教练卡请选择教练', fnVer: FN_VER }
        }
        const times = Number(tpl.total_times || 0)
        let timeRule = tpl.time_rule
        if (timeRule && typeof timeRule === 'object') timeRule = JSON.stringify(timeRule)
        const payPrice = money(data.issuePrice != null ? data.issuePrice : 0)
        const [issued] = await conn.query(
          `INSERT INTO member_cards (
            user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type,
            total_times, remaining_times, valid_from, valid_to, time_rule,
            status, source, remark, issuer_name, price
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'active', 'admin_give', ?, ?, ?)`,
          [
            b.user_id, b.openid || '', b.user_name || '', b.venue_id, b.venue_name || '',
            tpl.id, tpl.name, tpl.type, times, Math.max(0, times - 1),
            null, null, timeRule || null, '详情同时发卡并扣一次',
            (data && data.operatorName) || '管理员', payPrice
          ]
        )
        cardId = issued.insertId
        cardName = tpl.name
        cardType = tpl.type
        if (payPrice > 0) {
          await writeLedger(conn, {
            bizDate: dateYmd, type: 'issue_card', amount: payPrice,
            venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
            operatorName: (data && data.operatorName) || '管理员', cardId: issued.insertId,
            bookingId: id, remark: (tpl.name || '') + ' 详情同时发卡'
          })
        }
        await conn.query(
          `UPDATE bookings SET card_id=?, card_name=?, card_type=?, coach_id=?, coach_name=? WHERE id=?`,
          [cardId, cardName || '', cardType || '', coachIdVal, coachNameVal || '', id]
        )
        await writeLog(conn, {
          type: 'issue_card', userName: b.user_name, operatorName: (data && data.operatorName) || '管理员',
          phone: b.phone, detail: '预约同时发卡 ' + (tpl.name || '') + (payPrice ? ' 收款' + payPrice + '元' : ''),
          venueId: b.venue_id, venueName: b.venue_name
        })
      }
      await conn.commit()
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'refund_cash_keep_card' || action === 'refund_card_keep_cash') {
      if (!id) return { ok: false, msg: '缺少预约ID', fnVer: FN_VER }
      await conn.beginTransaction()
      const [rows] = await conn.query('SELECT * FROM bookings WHERE id=? FOR UPDATE', [id])
      const b = rows[0]
      if (!b) { await conn.rollback(); return { ok: false, msg: '预约不存在', fnVer: FN_VER } }
      if (b.status === 'cancelled') { await conn.rollback(); return { ok: false, msg: '已取消不能改', fnVer: FN_VER } }
      const op = (data && data.operatorName) || '管理员'
      if (action === 'refund_cash_keep_card') {
        const amt = money(b.amount)
        if (amt <= 0) { await conn.rollback(); return { ok: false, msg: '这笔预约没有可退现金', fnVer: FN_VER } }
        if (!(data && data.issueTemplateId)) { await conn.rollback(); return { ok: false, msg: '请选择要发的卡', fnVer: FN_VER } }
        if (b.card_id) {
          const [oldRows] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [b.card_id])
          const old = oldRows[0]
          if (old && (old.type === 'times' || old.type === 'coach' || old.type === 'group')) {
            const left = Number(old.remaining_times || 0) + 1
            await conn.query(`UPDATE member_cards SET remaining_times=?, status='active', updated_at=NOW() WHERE id=?`, [left, old.id])
          }
        }
        const [tplRows] = await conn.query('SELECT * FROM card_templates WHERE id=? LIMIT 1', [data.issueTemplateId])
        const tpl = tplRows[0]
        if (!tpl) { await conn.rollback(); return { ok: false, msg: '发卡模板不存在', fnVer: FN_VER } }
        let coachIdVal = null
        if (data.coachId != null && /^\d+$/.test(String(data.coachId).trim())) coachIdVal = Number(String(data.coachId).trim())
        if (tpl.type === 'coach' && !coachIdVal) { await conn.rollback(); return { ok: false, msg: '教练卡请选择教练', fnVer: FN_VER } }
        const times = Number(tpl.total_times || 0)
        let remain = times
        if (tpl.type === 'times' || tpl.type === 'coach' || tpl.type === 'group') {
          remain = times - 1
          if (remain < 0) { await conn.rollback(); return { ok: false, msg: '该卡模板次数为 0，不能扣次', fnVer: FN_VER } }
        }
        let timeRule = tpl.time_rule
        if (timeRule && typeof timeRule === 'object') timeRule = JSON.stringify(timeRule)
        const issuePrice = money(data.issuePrice)
        const [issued] = await conn.query(
          `INSERT INTO member_cards (
            user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type,
            total_times, remaining_times, valid_from, valid_to, time_rule,
            status, source, remark, issuer_name, price
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'admin_give', ?, ?, ?)`,
          [
            b.user_id, b.openid || '', b.user_name || '', b.venue_id, b.venue_name || '',
            tpl.id, tpl.name, tpl.type, times, remain, null, null, timeRule || null,
            remain <= 0 ? 'used_up' : 'active', '只退款改发卡', op, issuePrice
          ]
        )
        await conn.query(
          `UPDATE bookings SET amount=0, card_id=?, card_name=?, card_type=?, coach_id=?, coach_name=?, operator_name=?, updated_at=NOW() WHERE id=?`,
          [issued.insertId, tpl.name || '', tpl.type || '', coachIdVal, data.coachName || '', op, id]
        )
        await writeLedger(conn, {
          bizDate: fmtDate(b.date), type: 'court_refund', amount: -amt,
          venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
          operatorName: op, cardId: issued.insertId, bookingId: id, remark: '只退款 ' + amt + ' 改发卡'
        })
        if (issuePrice > 0) {
          await writeLedger(conn, {
            bizDate: fmtDate(b.date), type: 'issue_card', amount: issuePrice,
            venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
            operatorName: op, cardId: issued.insertId, bookingId: id, remark: '只退款并发 ' + (tpl.name || '')
          })
        }
        await writeLog(conn, {
          type: 'booking_convert', userName: b.user_name, operatorName: op, phone: b.phone,
          detail: '只退款' + amt + '元 发卡「' + (tpl.name || '') + '」' + issuePrice + '元 扣1次',
          venueId: b.venue_id, venueName: b.venue_name
        })
        await conn.commit()
        return { ok: true, fnVer: FN_VER }
      }
      if (!b.card_id) { await conn.rollback(); return { ok: false, msg: '这笔预约没有卡可退', fnVer: FN_VER } }
      const cashAmt = money(data && data.amount != null ? data.amount : b.amount)
      const [cards] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [b.card_id])
      const card = cards[0]
      if (card && (card.type === 'times' || card.type === 'coach' || card.type === 'group')) {
        const left = Number(card.remaining_times || 0) + 1
        await conn.query(`UPDATE member_cards SET remaining_times=?, status='active', updated_at=NOW() WHERE id=?`, [left, card.id])
      }
      const oldAmt = money(b.amount)
      await conn.query(
        `UPDATE bookings SET card_id=NULL, card_name='', card_type='', coach_id=NULL, coach_name='', amount=?, operator_name=?, updated_at=NOW() WHERE id=?`,
        [cashAmt, op, id]
      )
      await writeLedger(conn, {
        bizDate: fmtDate(b.date), type: 'card_use_cancel', amount: 0,
        venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
        operatorName: op, cardId: b.card_id, bookingId: id, remark: '只退卡 ' + (b.card_name || '')
      })
      const delta = money(cashAmt - oldAmt)
      if (delta !== 0) {
        await writeLedger(conn, {
          bizDate: fmtDate(b.date), type: delta > 0 ? 'court_pay' : 'court_refund', amount: delta,
          venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
          operatorName: op, cardId: null, bookingId: id, remark: '只退卡改收款 ' + oldAmt + '→' + cashAmt
        })
      }
      await writeLog(conn, {
        type: 'booking_convert', userName: b.user_name, operatorName: op, phone: b.phone,
        detail: '只退卡「' + (b.card_name || '') + '」 收款' + cashAmt + '元',
        venueId: b.venue_id, venueName: b.venue_name
      })
      await conn.commit()
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'convert_to_card' || action === 'convert_to_cash') {
      await conn.beginTransaction()
      const [rows] = await conn.query('SELECT * FROM bookings WHERE id=? FOR UPDATE', [id])
      const b = rows[0]
      if (!b) { await conn.rollback(); return { ok: false, msg: '预约不存在', fnVer: FN_VER } }
      if (b.status === 'cancelled') { await conn.rollback(); return { ok: false, msg: '已取消', fnVer: FN_VER } }
      const op = (data && data.operatorName) || '管理员'
      if (action === 'convert_to_cash') {
        if (!b.card_id) { await conn.rollback(); return { ok: false, msg: '这笔预约没有用卡', fnVer: FN_VER } }
        const [cards] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [b.card_id])
        const card = cards[0]
        if (card && (card.type === 'times' || card.type === 'coach' || card.type === 'group')) {
          const left = Number(card.remaining_times || 0) + 1
          await conn.query(`UPDATE member_cards SET remaining_times=?, status='active', updated_at=NOW() WHERE id=?`, [left, card.id])
        }
        await conn.query(`UPDATE bookings SET card_id=NULL, card_name='', card_type='', updated_at=NOW(), operator_name=? WHERE id=?`, [op, id])
        await writeLedger(conn, {
          bizDate: fmtDate(b.date), type: 'card_use_cancel', amount: 0,
          venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
          operatorName: op, cardId: b.card_id, bookingId: id, remark: '退卡留场 ' + (b.court || '') + ' ' + (b.time || '')
        })
        await writeLog(conn, { type: 'booking_convert', userName: b.user_name, operatorName: op, phone: b.phone, detail: '退卡留场 ' + (b.court || '') + ' ' + (b.time || ''), venueId: b.venue_id, venueName: b.venue_name })
        await conn.commit()
        return { ok: true, fnVer: FN_VER }
      }
      const cardIdVal = Number(data && data.cardId) || 0
      if (!cardIdVal) { await conn.rollback(); return { ok: false, msg: '请选择要消耗的卡', fnVer: FN_VER } }
      const [cards] = await conn.query('SELECT * FROM member_cards WHERE id=? FOR UPDATE', [cardIdVal])
      const card = cards[0]
      if (!card || card.status !== 'active') { await conn.rollback(); return { ok: false, msg: '卡不可用', fnVer: FN_VER } }
      if (card.type === 'coach' && !(data && data.coachId)) { await conn.rollback(); return { ok: false, msg: '教练卡请选择教练', fnVer: FN_VER } }
      let remain = null
      if (card.type === 'times' || card.type === 'coach' || card.type === 'group') {
        remain = Number(card.remaining_times || 0) - 1
        if (remain < 0) { await conn.rollback(); return { ok: false, msg: '卡次数不足', fnVer: FN_VER } }
        await conn.query(`UPDATE member_cards SET remaining_times=?, status=?, updated_at=NOW() WHERE id=?`, [remain, remain <= 0 ? 'used_up' : 'active', card.id])
      }
      const refundAmt = money(b.amount)
      await conn.query(
        `UPDATE bookings SET card_id=?, card_name=?, card_type=?, coach_id=?, amount=0, operator_name=?, updated_at=NOW() WHERE id=?`,
        [cardIdVal, card.card_name || '', card.type || '', data.coachId || null, op, id]
      )
      if (refundAmt > 0) {
        await writeLedger(conn, {
          bizDate: fmtDate(b.date), type: 'court_refund', amount: -refundAmt,
          venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
          operatorName: op, cardId: cardIdVal, bookingId: id, remark: '退款改用卡 ' + (b.court || '')
        })
      }
      await writeLedger(conn, {
        bizDate: fmtDate(b.date), type: 'card_use', amount: 0,
        venueId: b.venue_id, venueName: b.venue_name, userId: b.user_id, userName: b.user_name,
        operatorName: op, cardId: cardIdVal, bookingId: id, remark: '改用卡 ' + (card.card_name || '')
      })
      await writeLog(conn, { type: 'booking_convert', userName: b.user_name, operatorName: op, phone: b.phone, detail: '退款改用卡 ' + (card.card_name || ''), venueId: b.venue_id, venueName: b.venue_name })
      await conn.commit()
      return { ok: true, remaining: remain, fnVer: FN_VER }
    }

    if (action === 'lock') {
      if (!data || !data.venueId || !data.court || !data.date || !data.time) {
        return { ok: false, msg: '参数不完整', fnVer: FN_VER }
      }
      await conn.beginTransaction()
      const dateYmd = fmtDate(data.date) || data.date
      const [gc] = await conn.query(
        `SELECT id FROM group_classes WHERE venue_id=? AND date=? AND time=? AND court=? AND status='open' LIMIT 1`,
        [data.venueId, dateYmd, data.time, data.court]
      )
      if (gc.length) {
        await conn.rollback()
        return { ok: false, msg: '该时段为团课，不能锁场', fnVer: FN_VER }
      }
      const [busy] = await conn.query(
        `SELECT id, status FROM bookings WHERE venue_id=? AND date=? AND time=? AND court=? AND status IN ('booked','locked') LIMIT 1`,
        [data.venueId, dateYmd, data.time, data.court]
      )
      if (busy.length) {
        await conn.rollback()
        return { ok: false, msg: busy[0].status === 'locked' ? '该时段已锁场' : '该时段已被预约', fnVer: FN_VER }
      }
      const remark = data.remark || '[锁场] 锁场'
      let res
      try {
        const [r] = await conn.query(
          `INSERT INTO bookings (
            venue_id, venue_name, court, date, time,
            user_id, openid, user_name, phone, status,
            source, operator_name, remark, amount
          ) VALUES (?, ?, ?, ?, ?, NULL, '', '锁场', '', 'locked', 'lock', ?, ?, 0)`,
          [data.venueId, data.venueName || '', data.court, dateYmd, data.time, data.operatorName || '管理员', remark]
        )
        res = r
      } catch (e) {
        const [r] = await conn.query(
          `INSERT INTO bookings (
            venue_id, venue_name, court, date, time,
            user_id, openid, user_name, phone, status,
            source, operator_name, remark, amount
          ) VALUES (?, ?, ?, ?, ?, NULL, '', '锁场', '', 'booked', 'lock', ?, ?, 0)`,
          [data.venueId, data.venueName || '', data.court, dateYmd, data.time, data.operatorName || '管理员', remark]
        )
        res = r
      }
      await conn.commit()
      return { ok: true, id: String(res.insertId), status: 'locked', fnVer: FN_VER }
    }

    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    try {
      await conn.rollback()
    } catch (e2) {}
    console.error(e)
    return { ok: false, msg: e.message || '操作失败', fnVer: FN_VER }
  } finally {
    conn.release()
  }
}
