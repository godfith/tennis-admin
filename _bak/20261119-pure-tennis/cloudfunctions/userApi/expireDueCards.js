/**
 * Shared helper: mark member_cards expired when valid_to is already past today (UTC+8).
 * Only updates status and updated_at. Does not change remaining_times.
 * Idempotent. Swallows missing-column / query errors so callers are not broken.
 */

function shanghaiYmd(now) {
  const d = now instanceof Date ? now : now != null ? new Date(now) : new Date()
  if (!(d instanceof Date) || Number.isNaN(d.getTime())) return null
  try {
    return new Intl.DateTimeFormat('en-CA', {
      timeZone: 'Asia/Shanghai',
      year: 'numeric',
      month: '2-digit',
      day: '2-digit'
    }).format(d)
  } catch (e) {
    return new Date(d.getTime() + 8 * 3600 * 1000).toISOString().slice(0, 10)
  }
}

function fmtValidTo(v) {
  if (v == null || v === '') return null
  if (typeof v === 'string') {
    const m = v.match(/(\d{4}-\d{2}-\d{2})/)
    return m ? m[1] : null
  }
  if (v instanceof Date && !Number.isNaN(v.getTime())) {
    // Treat a Date as an instant and read the Asia/Shanghai calendar day,
    // so a DATE stored as 16:00Z the previous UTC day stays the +8 date.
    return shanghaiYmd(v)
  }
  const s = String(v)
  const m = s.match(/(\d{4}-\d{2}-\d{2})/)
  return m ? m[1] : null
}

function isDueToExpire(card, today) {
  const todayYmd = today || shanghaiYmd()
  if (!card || !todayYmd) return false
  const status = String(card.status == null ? '' : card.status)
  if (status !== 'active') return false
  const raw = card.valid_to != null ? card.valid_to : card.validTo
  const validTo = fmtValidTo(raw)
  if (!validTo) return false
  return validTo < todayYmd
}

function buildExpireUpdate(opts) {
  const options = opts || {}
  const today = options.today || shanghaiYmd()
  const sql =
    "UPDATE member_cards SET status='expired', updated_at=NOW() " +
    "WHERE status='active' AND valid_to IS NOT NULL AND valid_to < ?"
  const params = [today]
  const ids = Array.isArray(options.ids)
    ? options.ids.map((x) => Number(x)).filter((n) => Number.isFinite(n) && n > 0)
    : []
  if (ids.length) {
    return {
      sql: sql + ' AND id IN (' + ids.map(() => '?').join(',') + ')',
      params: params.concat(ids),
      today
    }
  }
  if (options.userId != null && /^\d+$/.test(String(options.userId).trim())) {
    return {
      sql: sql + ' AND user_id=?',
      params: params.concat([Number(String(options.userId).trim())]),
      today
    }
  }
  if (options.openid) {
    return {
      sql: sql + ' AND openid=?',
      params: params.concat([String(options.openid)]),
      today
    }
  }
  return { sql, params, today }
}

async function expireDueCards(db, opts) {
  const empty = { ok: true, affected: 0 }
  if (!db || typeof db.query !== 'function') return empty
  try {
    const built = buildExpireUpdate(opts || {})
    if (!built.today) return empty
    const [ret] = await db.query(built.sql, built.params)
    return { ok: true, affected: Number(ret && ret.affectedRows) || 0 }
  } catch (e) {
    return { ok: false, affected: 0, error: (e && e.message) || String(e) }
  }
}

module.exports = {
  shanghaiYmd,
  fmtValidTo,
  isDueToExpire,
  buildExpireUpdate,
  expireDueCards
}
