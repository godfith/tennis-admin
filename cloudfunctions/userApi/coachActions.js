'use strict'

const coachPerm = require('./coachPerm')
const coachBind = require('./coachBind')

function normCourt(c) {
  return String(c || '').trim().replace(/^发球机/u, '').replace(/场$/u, '')
}

async function findBoundCoach(pool, event) {
  const phone = coachPerm.digits(event.phone || event.operatorPhone || '')
  let coach = null
  if (phone) {
    const [rows] = await pool.query('SELECT * FROM coaches WHERE phone=? OR REPLACE(REPLACE(phone," ",""),"-","")=? ORDER BY id ASC LIMIT 1', [phone, phone])
    coach = rows[0] || null
  }
  if (!coach && event.openid) {
    const [users] = await pool.query('SELECT * FROM users WHERE openid=? LIMIT 1', [event.openid])
    const u = users[0]
    if (u && u.role === 'coach' && u.nick_name) {
      const [rows2] = await pool.query('SELECT * FROM coaches WHERE name=? ORDER BY id ASC LIMIT 1', [u.nick_name])
      coach = rows2[0] || null
    }
  }
  return coach
}

async function venueNameOf(pool, venueId) {
  if (!venueId) return ''
  try {
    const [rows] = await pool.query('SELECT name FROM venues WHERE id=? LIMIT 1', [venueId])
    return (rows[0] && rows[0].name) || ''
  } catch (e) {
    return ''
  }
}

async function resolveOutdoorName(pool, venueId) {
  try {
    const [rows] = await pool.query(
      `SELECT name FROM courts WHERE venue_id=? AND name='外场' AND IFNULL(status,'open') NOT IN ('disabled','closed','停用') LIMIT 1`,
      [venueId]
    )
    if (rows && rows[0] && rows[0].name) return rows[0].name
  } catch (e) {}
  return '外场'
}

async function checkGroupConflict(pool, data, excludeId, fmtDate) {
  const courtNorm = normCourt(data.court)
  const courtName = data.court
  const date = fmtDate(data.date) || data.date
  const [bCourt] = await pool.query(
    `SELECT id, status, coach_id FROM bookings
      WHERE venue_id=? AND date=? AND time=?
        AND (court=? OR court=? OR court=CONCAT(?,'场'))
        AND status IN ('booked','locked')
      LIMIT 5`,
    [data.venueId, date, data.time, courtName, courtNorm, courtNorm]
  )
  if (bCourt.length) {
    if (coachPerm.isOutdoorSharedCourt(courtName)) {
      for (const row of bCourt) {
        const dec = coachPerm.outdoorLockBusyDecision({
          status: row.status,
          coachId: row.coach_id
        }, data.coachId)
        if (dec.block) {
          return row.status === 'locked' ? '该时段场地已锁场，无法排团课' : '该时段场地已有预约，无法排团课'
        }
      }
    } else {
      return bCourt[0].status === 'locked' ? '该时段场地已锁场，无法排团课' : '该时段场地已有预约，无法排团课'
    }
  }
  if (data.coachId) {
    const [bCoach] = await pool.query(
      `SELECT id FROM bookings WHERE date=? AND time=? AND coach_id=? AND status IN ('booked','locked') LIMIT 1`,
      [date, data.time, data.coachId]
    )
    if (bCoach.length) return '该时段教练已有预约，无法排团课'
  }
  let sql = `SELECT id FROM group_classes WHERE venue_id=? AND date=? AND time=? AND (court=? OR court=? OR court=CONCAT(?,'场')) AND status!='cancelled'`
  const params = [data.venueId, date, data.time, courtName, courtNorm, courtNorm]
  if (excludeId) { sql += ' AND id<>?'; params.push(excludeId) }
  sql += ' LIMIT 1'
  const [gCourt] = await pool.query(sql, params)
  if (gCourt.length) return '该时段场地已有团课'
  if (data.coachId) {
    let sql2 = `SELECT id FROM group_classes WHERE date=? AND time=? AND coach_id=? AND status!='cancelled'`
    const p2 = [date, data.time, data.coachId]
    if (excludeId) { sql2 += ' AND id<>?'; p2.push(excludeId) }
    sql2 += ' LIMIT 1'
    const [gCoach] = await pool.query(sql2, p2)
    if (gCoach.length) return '该时段教练已有团课'
  }
  return null
}

async function handleSaveGroupClass(pool, event, fmtDate, FN_VER) {
  const coach = await findBoundCoach(pool, event)
  const dec = coachPerm.decideCoachGroupClass({
    operatorRole: 'coach',
    action: event.id ? 'update' : 'add',
    bound: !!coach,
    selfCoachId: coach && coach.id,
    requestedCoachId: event.coachId,
    existingCoachId: ''
  })
  if (!dec.ok) return { ok: false, msg: dec.msg, fnVer: FN_VER }
  const venueId = String(event.venueId || '').trim()
  const name = String(event.name || '').trim()
  const date = fmtDate(event.date) || String(event.date || '').slice(0, 10)
  const time = String(event.time || '').trim()
  const court = String(event.court || '').trim()
  if (!venueId || !name || !date || !time || !court) {
    return { ok: false, msg: '请填写门店、名称、日期、时段和场地', fnVer: FN_VER }
  }
  const vname = event.venueName || (await venueNameOf(pool, venueId))
  const payload = {
    venueId,
    name,
    date,
    time,
    court,
    coachId: dec.coachId,
    coachName: coach.name || '',
    capacity: Number(event.capacity) > 0 ? Number(event.capacity) : 4,
    status: event.status || 'open',
    remark: event.remark || '',
    minEnrollment: Number(event.minEnrollment) || 0,
    cancelBeforeHours: event.cancelBeforeHours != null ? Number(event.cancelBeforeHours) : 2,
    classType: event.classType === 'self' ? 'self' : 'fixed',
    theme: event.theme || ''
  }
  if (event.id) {
    const [rows] = await pool.query('SELECT id, coach_id FROM group_classes WHERE id=? LIMIT 1', [event.id])
    if (!rows[0]) return { ok: false, msg: '团课不存在', fnVer: FN_VER }
    const dec2 = coachPerm.decideCoachGroupClass({
      operatorRole: 'coach',
      action: 'update',
      bound: true,
      selfCoachId: dec.coachId,
      existingCoachId: rows[0].coach_id,
      requestedCoachId: dec.coachId
    })
    if (!dec2.ok) return { ok: false, msg: dec2.msg, fnVer: FN_VER }
  }
  const err = await checkGroupConflict(pool, payload, event.id || null, fmtDate)
  if (err) return { ok: false, msg: err, fnVer: FN_VER }
  try {
    if (event.id) {
      await pool.query(
        `UPDATE group_classes SET venue_id=?, name=?, date=?, time=?, court=?, coach_id=?, coach_name=?,
          capacity=?, status=?, remark=?, min_enrollment=?, cancel_before_hours=? WHERE id=?`,
        [payload.venueId, payload.name, payload.date, payload.time, payload.court, payload.coachId, payload.coachName,
          payload.capacity, payload.status, payload.remark, payload.minEnrollment, payload.cancelBeforeHours, event.id]
      )
      return { ok: true, id: String(event.id), fnVer: FN_VER }
    }
    const [res] = await pool.query(
      `INSERT INTO group_classes
        (venue_id, name, date, time, court, coach_id, coach_name, capacity, enrolled, status, remark,
         min_enrollment, cancel_before_hours, auto_cancel_exempt)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, 0, ?, ?, ?, ?, 0)`,
      [payload.venueId, payload.name, payload.date, payload.time, payload.court, payload.coachId, payload.coachName,
        payload.capacity, payload.status, payload.remark, payload.minEnrollment, payload.cancelBeforeHours]
    )
    return { ok: true, id: String(res.insertId), fnVer: FN_VER }
  } catch (e) {
    return { ok: false, msg: e.message || '保存失败', fnVer: FN_VER }
  }
}

async function handleLockOutdoor(pool, event, fmtDate, FN_VER) {
  const coach = await findBoundCoach(pool, event)
  const venueId = String(event.venueId || '').trim()
  const date = fmtDate(event.date) || String(event.date || '').slice(0, 10)
  const time = String(event.time || '').trim()
  const courtName = await resolveOutdoorName(pool, venueId)
  const dec = coachPerm.decideCoachLock({
    operatorRole: 'coach',
    action: 'lock',
    bound: !!coach,
    selfCoachId: coach && coach.id,
    courtName,
    coachId: event.coachId
  })
  if (!dec.ok) return { ok: false, msg: dec.msg, fnVer: FN_VER }
  if (!venueId || !date || !time) return { ok: false, msg: '请选择门店、日期和时段', fnVer: FN_VER }

  const [gcAll] = await pool.query(
    `SELECT id, time FROM group_classes WHERE venue_id=? AND date=? AND (court=? OR court='外场') AND status='open'`,
    [venueId, date, courtName]
  )
  // exact time match is enough here; overlap would be nicer but keep simple and consistent with hour slots
  if ((gcAll || []).some((g) => String(g.time) === time)) {
    return { ok: false, msg: '该时段为团课，不能锁场', fnVer: FN_VER }
  }
  const [busyAll] = await pool.query(
    `SELECT id, status, time, source, user_name, coach_id FROM bookings
      WHERE venue_id=? AND date=? AND (court=? OR court='外场') AND status IN ('booked','locked','pending_pay')`,
    [venueId, date, courtName]
  )
  const busy = (busyAll || []).filter((b) => String(b.time) === time)
  for (const row of busy) {
    const decision = coachPerm.outdoorLockBusyDecision({
      status: row.status,
      source: row.source,
      userName: row.user_name,
      coachId: row.coach_id
    }, dec.coachId)
    if (decision.block) return { ok: false, msg: decision.msg, fnVer: FN_VER }
  }
  const [own] = await pool.query(
    `SELECT id FROM bookings WHERE date=? AND time=? AND coach_id=? AND status IN ('booked','locked') LIMIT 1`,
    [date, time, dec.coachId]
  )
  if (own.length) return { ok: false, msg: '该时段您已有课程或锁场', fnVer: FN_VER }
  const venueName = event.venueName || (await venueNameOf(pool, venueId))
  const remark = event.remark || '[锁场] 教练锁外场'
  try {
    const [res] = await pool.query(
      `INSERT INTO bookings (
        venue_id, venue_name, court, date, time,
        user_id, openid, user_name, phone, status,
        source, operator_name, remark, amount, coach_id, coach_name
      ) VALUES (?, ?, ?, ?, ?, NULL, '', '锁场', '', 'locked', 'lock', ?, ?, 0, ?, ?)`,
      [venueId, venueName, courtName, date, time, coach.name || '教练', remark, dec.coachId, coach.name || '']
    )
    return { ok: true, id: String(res.insertId), status: 'locked', fnVer: FN_VER }
  } catch (e) {
    return { ok: false, msg: '锁场失败：' + (e.message || ''), fnVer: FN_VER }
  }
}

function mapWorkbenchBooking(r, fmtDate) {
  const locked = r.status === 'locked' || r.source === 'lock' || r.user_name === '锁场'
  return {
    _id: String(r.id),
    kind: locked ? 'lock' : 'lesson',
    date: fmtDate(r.date),
    time: r.time,
    court: r.court,
    venueId: r.venue_id ? String(r.venue_id) : '',
    venueName: r.venue_name || '',
    userName: locked ? '锁场' : (r.user_name || ''),
    status: r.status,
    name: locked ? '锁场' : ''
  }
}

function mapWorkbenchGroup(r, fmtDate) {
  return {
    _id: String(r.id),
    kind: 'group',
    date: fmtDate(r.date),
    time: r.time,
    court: r.court,
    venueId: r.venue_id ? String(r.venue_id) : '',
    venueName: r.venue_name || '',
    userName: '',
    status: r.status,
    name: r.name || '团课'
  }
}

async function enhanceWorkbench(pool, event, coach, fmtDate) {
  const venueId = String(event.venueId || '').trim()
  const [books] = await pool.query(
    `SELECT * FROM bookings
      WHERE coach_id=? AND status IN ('booked','locked')
      ORDER BY date ASC, time ASC LIMIT 200`,
    [coach.id]
  )
  let groups = []
  try {
    const [grows] = await pool.query(
      `SELECT g.*, v.name AS venue_name
         FROM group_classes g
         LEFT JOIN venues v ON v.id = g.venue_id
        WHERE g.coach_id=? AND g.status!='cancelled'
        ORDER BY g.date ASC, g.time ASC LIMIT 200`,
      [coach.id]
    )
    groups = grows || []
  } catch (e) {
    groups = []
  }
  let list = (books || []).map((r) => mapWorkbenchBooking(r, fmtDate))
    .concat(groups.map((r) => mapWorkbenchGroup(r, fmtDate)))
  if (venueId) list = list.filter((x) => String(x.venueId) === venueId)
  list.sort((a, b) => String(a.date + a.time).localeCompare(String(b.date + b.time)))
  return list
}

module.exports = {
  findBoundCoach,
  handleSaveGroupClass,
  handleLockOutdoor,
  enhanceWorkbench
}
