'use strict'

function numFlag(v, defaultVal) {
  if (v == null || v === '') return defaultVal
  if (v === false) return 0
  if (v === true) return 1
  const n = Number(v)
  if (!Number.isFinite(n)) return defaultVal
  return n
}

function isShellVenue(row) {
  if (!row) return false
  if (numFlag(row.is_shell != null ? row.is_shell : row.isShell, 0) === 1) return true
  if (numFlag(row.booking_enabled != null ? row.booking_enabled : row.bookingEnabled, 1) === 0) return true
  return false
}

function isCustomerBookableVenue(row) {
  return !isShellVenue(row)
}

function mapVenueFlags(row) {
  const isShell = numFlag(row && (row.is_shell != null ? row.is_shell : row.isShell), 0) === 1 ? 1 : 0
  const bookingEnabled = numFlag(
    row && (row.booking_enabled != null ? row.booking_enabled : row.bookingEnabled),
    isShell ? 0 : 1
  ) === 0 ? 0 : 1
  return { isShell, bookingEnabled }
}

async function loadVenue(pool, venueId) {
  const id = String(venueId || '').trim()
  if (!id || !pool) return null
  try {
    const [rows] = await pool.query(
      'SELECT * FROM venues WHERE id=? OR venue_id=? LIMIT 1',
      [id, id]
    )
    return (rows && rows[0]) || null
  } catch (e) {
    try {
      const [rows] = await pool.query('SELECT * FROM venues WHERE id=? LIMIT 1', [id])
      return (rows && rows[0]) || null
    } catch (e2) {
      return null
    }
  }
}

async function rejectIfNotCustomerBookable(pool, venueId) {
  const row = await loadVenue(pool, venueId)
  if (!row) return { ok: false, msg: '门店不存在' }
  if (!isCustomerBookableVenue(row)) {
    return { ok: false, msg: '该门店不对客人开放订场' }
  }
  return { ok: true, venue: row }
}

function includeShellRequested(event) {
  if (!event) return false
  const v = event.includeShell != null ? event.includeShell : event.include_shell
  if (v === true || v === 1 || v === '1' || v === 'true') return true
  const purpose = String(event.purpose || event.for || '').toLowerCase()
  if (purpose === 'group' || purpose === 'groupclass' || purpose === 'group_class' || purpose === 'all') return true
  return false
}

module.exports = {
  isShellVenue,
  isCustomerBookableVenue,
  mapVenueFlags,
  loadVenue,
  rejectIfNotCustomerBookable,
  includeShellRequested
}
