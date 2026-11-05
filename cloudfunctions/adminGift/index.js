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

const FN_VER = 'gift-20260912b'
const TYPES = { times: '场地次', group: '团课次', coach: '私教次' }

function parseEvent(event) {
  if (event && event.body) {
    try {
      const body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
      return Object.assign({}, event, body)
    } catch (e) {
      return event
    }
  }
  return event || {}
}

function isAdmin(body) {
  const role = String((body && body.role) || '').trim().toLowerCase()
  const name = String((body && body.operatorName) || '')
  if (['manager', '店长', 'front', 'staff', '前台', '店员', 'service', '客服'].includes(role)) return false
  if (name.includes('店长') || name.includes('店员') || name.includes('前台') || name.includes('客服')) return false
  return true
}

function fmtYmd(v) {
  if (!v) return ''
  const s = String(v)
  const m = s.match(/(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : ''
}

function mapCard(c) {
  return {
    _id: String(c.id),
    userId: String(c.user_id || ''),
    userName: c.user_name || '',
    cardName: c.card_name || '',
    type: c.type,
    totalTimes: Number(c.total_times) || 0,
    remainingTimes: Number(c.remaining_times) || 0,
    validFrom: fmtYmd(c.valid_from),
    validTo: fmtYmd(c.valid_to),
    venueId: c.venue_id || '',
    venueName: c.venue_name || '',
    source: c.source || '',
    remark: c.remark || '',
    issuerName: c.issuer_name || '',
    status: c.status || '',
    createdAt: c.created_at
  }
}

async function writeLedger(conn, row) {
  try {
    await conn.query(
      `INSERT INTO finance_ledger
        (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
         operator_name, card_id, remark)
       VALUES (CURDATE(), ?, 0, ?, ?, ?, ?, ?, ?, ?)`,
      [
        row.type,
        row.venueId || '',
        row.venueName || '',
        row.userId,
        row.userName || '',
        row.operatorName || '',
        row.cardId,
        row.remark || ''
      ]
    )
  } catch (e) {}
}

exports.main = async (event) => {
  const body = parseEvent(event)
  const action = body.action || 'list'
  try {
    if (!isAdmin(body) && action !== 'list') {
      return { ok: false, msg: '仅管理员账号可以赠课 / 赠次', fnVer: FN_VER }
    }

    if (action === 'list') {
      const [rows] = await pool.query(
        `SELECT * FROM member_cards
          WHERE source IN ('admin_gift','gift')
          ORDER BY id DESC LIMIT 200`
      )
      return { ok: true, list: (rows || []).map(mapCard), fnVer: FN_VER }
    }

    if (action === 'userCards') {
      const userId = Number(body.userId)
      if (!userId) return { ok: false, msg: '缺少用户', fnVer: FN_VER }
      const [rows] = await pool.query(
        `SELECT * FROM member_cards WHERE user_id=? AND status='active' ORDER BY id DESC`,
        [userId]
      )
      return { ok: true, list: (rows || []).map(mapCard), fnVer: FN_VER }
    }

    if (action === 'addTimes') {
      const cardId = Number(body.cardId)
      const times = Math.max(1, Number(body.times) || 0)
      if (!cardId || !times) return { ok: false, msg: '请填写要增加的次数', fnVer: FN_VER }
      const operatorName = String(body.operatorName || '管理员').trim()
      const remark = String(body.remark || '').trim()
      const conn = await pool.getConnection()
      try {
        await conn.beginTransaction()
        const [rows] = await conn.query('SELECT * FROM member_cards WHERE id=? LIMIT 1', [cardId])
        if (!rows.length) {
          await conn.rollback()
          return { ok: false, msg: '卡不存在', fnVer: FN_VER }
        }
        const card = rows[0]
        await conn.query(
          `UPDATE member_cards
              SET total_times = total_times + ?,
                  remaining_times = remaining_times + ?,
                  remark = TRIM(CONCAT(IFNULL(remark,''), ?)),
                  updated_at = NOW()
            WHERE id=?`,
          [times, times, remark ? '；赠+' + times + '：' + remark : '；赠+' + times, cardId]
        )
        await writeLedger(conn, {
          type: 'gift_add',
          venueId: card.venue_id,
          venueName: card.venue_name,
          userId: card.user_id,
          userName: card.user_name,
          operatorName,
          cardId,
          remark: '给「' + (card.card_name || '') + '」赠' + times + '次'
        })
        await conn.commit()
        return { ok: true, fnVer: FN_VER }
      } catch (e) {
        await conn.rollback()
        throw e
      } finally {
        conn.release()
      }
    }

    if (action === 'gift') {
      const users = Array.isArray(body.users) ? body.users : []
      const type = body.type || 'times'
      const times = Math.max(1, Number(body.times) || 0)
      const venueId = body.venueId || ''
      const venueName = body.venueName || ''
      const validFrom = body.validFrom || null
      const validTo = body.validTo || null
      const remark = String(body.remark || '').trim()
      const operatorName = String(body.operatorName || '管理员').trim()
      const cardName = String(body.cardName || '').trim() || ('赠送' + (TYPES[type] || '体验') + times + '次')
      if (!users.length) return { ok: false, msg: '请选择用户', fnVer: FN_VER }
      if (!venueId) return { ok: false, msg: '请选择场馆', fnVer: FN_VER }
      if (!TYPES[type]) return { ok: false, msg: '赠送类型不对', fnVer: FN_VER }

      const created = []
      const conn = await pool.getConnection()
      try {
        await conn.beginTransaction()
        for (const u of users) {
          const userId = Number(u.userId || u._id)
          if (!userId) continue
          const [res] = await conn.query(
            `INSERT INTO member_cards (
              user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type,
              total_times, remaining_times, valid_from, valid_to,
              status, source, remark, issuer_name, price
            ) VALUES (?, ?, ?, ?, ?, NULL, ?, ?, ?, ?, ?, ?, 'active', 'admin_gift', ?, ?, 0)`,
            [
              userId,
              u.openid || u._openid || '',
              u.userName || u.nickName || '',
              venueId,
              venueName,
              cardName,
              type,
              times,
              times,
              validFrom,
              validTo,
              remark,
              operatorName
            ]
          )
          await writeLedger(conn, {
            type: 'gift_card',
            venueId,
            venueName,
            userId,
            userName: u.userName || u.nickName || '',
            operatorName,
            cardId: res.insertId,
            remark: cardName + (remark ? ' ' + remark : '')
          })
          created.push(String(res.insertId))
        }
        if (!created.length) {
          await conn.rollback()
          return { ok: false, msg: '没有成功赠送的用户', fnVer: FN_VER }
        }
        await conn.commit()
        return { ok: true, count: created.length, ids: created, fnVer: FN_VER }
      } catch (e) {
        await conn.rollback()
        throw e
      } finally {
        conn.release()
      }
    }

    if (action === 'classes') {
      const venueId = body.venueId || ''
      let sql = `SELECT id, venue_id, name, date, time, court, coach_name, capacity, enrolled, status
                   FROM group_classes WHERE status='open'`
      const params = []
      if (venueId) {
        sql += ' AND venue_id=?'
        params.push(venueId)
      }
      sql += ' ORDER BY date ASC, time ASC LIMIT 80'
      const [rows] = await pool.query(sql, params)
      return {
        ok: true,
        list: (rows || []).map((g) => ({
          _id: String(g.id),
          venueId: g.venue_id || '',
          name: g.name || '',
          date: fmtYmd(g.date),
          time: g.time || '',
          court: g.court || '',
          coachName: g.coach_name || '',
          capacity: Number(g.capacity) || 0,
          enrolled: Number(g.enrolled) || 0
        })),
        fnVer: FN_VER
      }
    }

    if (action === 'trialClass') {
      const users = Array.isArray(body.users) ? body.users : []
      const groupClassId = Number(body.groupClassId)
      const operatorName = String(body.operatorName || '管理员').trim()
      const remark = String(body.remark || '体验课').trim()
      if (!users.length) return { ok: false, msg: '请选择用户', fnVer: FN_VER }
      if (!groupClassId) return { ok: false, msg: '请选择体验课', fnVer: FN_VER }

      const conn = await pool.getConnection()
      try {
        await conn.beginTransaction()
        const [gcRows] = await conn.query('SELECT * FROM group_classes WHERE id=? FOR UPDATE', [groupClassId])
        if (!gcRows.length) {
          await conn.rollback()
          return { ok: false, msg: '团课不存在', fnVer: FN_VER }
        }
        const gc = gcRows[0]
        if (gc.status !== 'open') {
          await conn.rollback()
          return { ok: false, msg: '这节课未开放报名', fnVer: FN_VER }
        }
        let venueName = body.venueName || ''
        try {
          const [vn] = await conn.query('SELECT name FROM venues WHERE id=? OR venue_id=? LIMIT 1', [gc.venue_id, gc.venue_id])
          if (vn[0]) venueName = vn[0].name || venueName
        } catch (e) {}

        let okCount = 0
        const fail = []
        for (const u of users) {
          const userId = Number(u.userId || u._id)
          if (!userId) {
            fail.push((u.nickName || '用户') + '：缺少ID')
            continue
          }
          const [leftRows] = await conn.query('SELECT enrolled, capacity FROM group_classes WHERE id=? FOR UPDATE', [groupClassId])
          const enrolled = Number(leftRows[0].enrolled) || 0
          const capacity = Number(leftRows[0].capacity) || 0
          if (enrolled >= capacity) {
            fail.push((u.nickName || userId) + '：名额已满')
            continue
          }
          const [dup] = await conn.query(
            `SELECT id FROM bookings WHERE group_class_id=? AND status='booked' AND user_id=? LIMIT 1`,
            [groupClassId, userId]
          )
          if (dup.length) {
            fail.push((u.nickName || userId) + '：已报名')
            continue
          }
          const [cardRes] = await conn.query(
            `INSERT INTO member_cards (
              user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type,
              total_times, remaining_times, valid_from, valid_to,
              status, source, remark, issuer_name, price
            ) VALUES (?, ?, ?, ?, ?, NULL, ?, 'group', 1, 0, CURDATE(), NULL, 'used_up', 'admin_gift', ?, ?, 0)`,
            [
              userId,
              u.openid || u._openid || '',
              u.userName || u.nickName || '',
              gc.venue_id || '',
              venueName,
              '体验课 ' + (gc.name || ''),
              remark,
              operatorName
            ]
          )
          await conn.query(
            `INSERT INTO bookings (
              venue_id, venue_name, court, date, time,
              user_id, openid, user_name, phone, status,
              card_id, card_name, card_type, coach_id, coach_name,
              group_class_id, source, operator_name, remark, amount
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'booked', ?, ?, 'group', ?, ?, ?, 'admin_gift', ?, ?, 0)`,
            [
              gc.venue_id || '',
              venueName,
              gc.court || '',
              fmtYmd(gc.date),
              gc.time || '',
              userId,
              u.openid || u._openid || '',
              u.userName || u.nickName || '',
              u.phone || '',
              cardRes.insertId,
              '体验课 ' + (gc.name || ''),
              gc.coach_id || null,
              gc.coach_name || '',
              groupClassId,
              operatorName,
              remark
            ]
          )
          await conn.query('UPDATE group_classes SET enrolled = enrolled + 1 WHERE id=?', [groupClassId])
          await writeLedger(conn, {
            type: 'gift_card',
            venueId: gc.venue_id || '',
            venueName,
            userId,
            userName: u.userName || u.nickName || '',
            operatorName,
            cardId: cardRes.insertId,
            remark: '体验课 ' + (gc.name || '') + ' ' + fmtYmd(gc.date) + ' ' + (gc.time || '')
          })
          okCount++
        }
        await conn.commit()
        return { ok: true, count: okCount, fail, fnVer: FN_VER }
      } catch (e) {
        await conn.rollback()
        throw e
      } finally {
        conn.release()
      }
    }

    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '赠送失败', fnVer: FN_VER }
  }
}
