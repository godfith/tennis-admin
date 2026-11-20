'use strict'

const { digits, isCoachRole, pickCoachBind } = require('./coachPerm')

function operatorFrom(body, data) {
  const src = body || {}
  const d = data || {}
  return {
    operatorRole: String(src.operatorRole || d.operatorRole || '').trim(),
    operatorPhone: String(src.operatorPhone || d.operatorPhone || '').trim(),
    operatorName: String(src.operatorName || d.operatorName || '').trim(),
    operatorId: String(src.operatorId || src.adminId || d.operatorId || '').trim(),
    operatorUsername: String(src.operatorUsername || d.operatorUsername || '').trim()
  }
}

async function queryAdmin(db, op) {
  const tries = []
  const id = Number(op.operatorId)
  if (id) tries.push(['SELECT id, username, name, role, phone, venue_id, permissions FROM admins WHERE id=? LIMIT 1', [id]])
  if (op.operatorUsername) tries.push(['SELECT id, username, name, role, phone, venue_id, permissions FROM admins WHERE username=? LIMIT 1', [op.operatorUsername]])
  const phone = digits(op.operatorPhone)
  if (phone) {
    tries.push(['SELECT id, username, name, role, phone, venue_id, permissions FROM admins WHERE phone=? OR username=? LIMIT 1', [phone, phone]])
  }
  if (op.operatorName && !op.operatorId && !op.operatorUsername && !phone) {
    tries.push(['SELECT id, username, name, role, phone, venue_id, permissions FROM admins WHERE name=? LIMIT 1', [op.operatorName]])
  }
  for (const [sql, args] of tries) {
    try {
      const [rows] = await db.query(sql, args)
      if (rows && rows[0]) return rows[0]
    } catch (e) {
      try {
        const fallback = sql.replace(', phone', '').replace('phone=? OR ', '')
        const [rows] = await db.query(fallback, args.slice(0, fallback.split('?').length - 1))
        if (rows && rows[0]) return rows[0]
      } catch (e2) {}
    }
  }
  return null
}

async function listCoachCandidates(db, op) {
  const phone = digits(op.operatorPhone)
  const name = String(op.operatorName || '').trim()
  const out = []
  if (phone) {
    try {
      const [rows] = await db.query(
        'SELECT id, name, phone FROM coaches WHERE phone=? OR REPLACE(REPLACE(phone," ",""),"-","")=? ORDER BY id ASC LIMIT 5',
        [phone, phone]
      )
      ;(rows || []).forEach((r) => out.push(r))
    } catch (e) {}
  }
  if (!out.length && name) {
    try {
      const [rows] = await db.query('SELECT id, name, phone FROM coaches WHERE name=? ORDER BY id ASC LIMIT 5', [name])
      ;(rows || []).forEach((r) => out.push(r))
    } catch (e) {}
  }
  return out
}

function parsePerms(raw) {
  if (Array.isArray(raw)) return raw
  try { return JSON.parse(raw || '[]') } catch (e) { return [] }
}

function adminVenueIds(admin) {
  if (!admin) return []
  const ids = parsePerms(admin.permissions)
    .filter((p) => String(p).startsWith('venue:'))
    .map((p) => String(p).slice(6))
    .filter(Boolean)
  const one = String(admin.venue_id || '').trim()
  if (one && !ids.includes(one)) ids.unshift(one)
  return ids
}

async function resolveCoachOperator(db, body, data) {
  const op = operatorFrom(body, data)
  const admin = await queryAdmin(db, op)
  if (admin) {
    // Trust the admin row over client-supplied role/phone/name.
    op.operatorRole = admin.role || op.operatorRole
    op.operatorPhone = admin.phone || admin.username || op.operatorPhone
    op.operatorName = admin.name || op.operatorName
    op.operatorUsername = admin.username || op.operatorUsername
    if (!op.operatorId) op.operatorId = String(admin.id || '')
  }
  const role = op.operatorRole
  const isCoach = isCoachRole(role)
  if (!isCoach) {
    return { isCoach: false, bound: false, role, admin, op, selfCoachId: '', selfCoachName: '', allowedVenueIds: adminVenueIds(admin) }
  }
  const phone = digits(op.operatorPhone) || digits(op.operatorUsername)
  const candidates = await listCoachCandidates(db, { operatorPhone: phone, operatorName: op.operatorName })
  const hit = pickCoachBind(candidates, { phone: phone, name: phone ? '' : op.operatorName })
  return {
    isCoach: true,
    bound: !!(hit && hit.id),
    role,
    admin,
    op,
    coach: hit || null,
    selfCoachId: hit ? String(hit.id) : '',
    selfCoachName: hit ? (hit.name || '') : '',
    allowedVenueIds: adminVenueIds(admin)
  }
}

function assertCoachVenue(ctx, venueId) {
  const ids = (ctx && ctx.allowedVenueIds) || []
  if (!ids.length) return
  if (!ids.includes(String(venueId || ''))) {
    const err = new Error('只能在自己可管理的门店锁外场')
    err.code = 'VENUE'
    throw err
  }
}

module.exports = {
  operatorFrom,
  resolveCoachOperator,
  assertCoachVenue,
  adminVenueIds
}
