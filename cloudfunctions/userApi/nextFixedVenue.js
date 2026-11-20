'use strict'

var SKIP_STATUSES = {
  cancelled: true,
  deleted: true,
  disabled: true,
  '已取消': true,
  '已删除': true,
  '停用': true
}

function fmtYmd(v) {
  if (!v) return ''
  if (typeof v === 'string') {
    var m = v.match(/^(\d{4}-\d{2}-\d{2})/)
    return m ? m[1] : String(v).slice(0, 10)
  }
  if (v instanceof Date && !isNaN(v.getTime())) {
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

function normClassType(v) {
  var s = String(v == null ? '' : v).trim().toLowerCase()
  if (
    s === 'self' ||
    s === 'self_organized' ||
    s === 'self-organized' ||
    s === 'self_organize' ||
    s === 'self-organize' ||
    s === '自组' ||
    s === '自组团课'
  ) {
    return 'self'
  }
  return 'fixed'
}

function emptyNextFixedVenue() {
  return { venueId: '', venueName: '', lastVenueId: '', lastDate: '', lastTime: '' }
}

function rotationList(list) {
  var seen = Object.create(null)
  var out = []
  var arr = Array.isArray(list) ? list : []
  for (var i = 0; i < arr.length; i++) {
    var item = arr[i]
    var venueId = ''
    var venueName = ''
    if (item == null || item === '') continue
    if (typeof item === 'string' || typeof item === 'number') {
      venueId = String(item).trim()
    } else {
      venueId = String(item.venueId || item.venue_id || item.id || '').trim()
      venueName = String(item.venueName || item.venue_name || item.name || '')
    }
    if (!venueId || seen[venueId]) continue
    seen[venueId] = true
    out.push({ venueId: venueId, venueName: venueName })
  }
  return out
}

function isSkippedStatus(status) {
  var s = String(status == null || status === '' ? 'open' : status).trim()
  if (SKIP_STATUSES[s]) return true
  if (SKIP_STATUSES[s.toLowerCase()]) return true
  return false
}

function isKeptFixedClass(row) {
  if (!row) return false
  if (normClassType(row.classType || row.class_type || row.type) !== 'fixed') return false
  if (isSkippedStatus(row.status)) return false
  return true
}

function recencyTuple(row) {
  var date = fmtYmd(row && (row.date || row.classDate || row.class_date))
  var time = String((row && row.time) || '')
  var id = row && (row.id != null ? row.id : row._id)
  return { date: date, time: time, id: id }
}

function compareRecency(a, b) {
  var aa = recencyTuple(a)
  var bb = recencyTuple(b)
  if (aa.date !== bb.date) return aa.date < bb.date ? 1 : -1
  if (aa.time !== bb.time) return aa.time < bb.time ? 1 : -1
  var na = Number(aa.id)
  var nb = Number(bb.id)
  if (isFinite(na) && isFinite(nb) && String(aa.id) !== '' && String(bb.id) !== '' && na !== nb) {
    return nb - na
  }
  var sa = String(aa.id == null ? '' : aa.id)
  var sb = String(bb.id == null ? '' : bb.id)
  if (sa === sb) return 0
  return sa < sb ? 1 : -1
}

function lastKeptFixedClass(classes) {
  var kept = (Array.isArray(classes) ? classes : []).filter(isKeptFixedClass)
  if (!kept.length) return null
  kept.sort(compareRecency)
  return kept[0]
}

function nextFixedVenue(rotationVenues, classes) {
  var list = rotationList(rotationVenues)
  var last = lastKeptFixedClass(classes)
  var lastVenueId = last ? String(last.venueId || last.venue_id || '') : ''
  var lastDate = last ? fmtYmd(last.date || last.classDate || last.class_date) : ''
  var lastTime = last ? String(last.time || '') : ''
  var base = {
    venueId: '',
    venueName: '',
    lastVenueId: lastVenueId,
    lastDate: lastDate,
    lastTime: lastTime
  }
  if (!list.length) return base
  var pick
  if (!last) {
    pick = list[0]
  } else {
    var idx = -1
    for (var i = 0; i < list.length; i++) {
      if (String(list[i].venueId) === lastVenueId) {
        idx = i
        break
      }
    }
    pick = idx < 0 ? list[0] : list[(idx + 1) % list.length]
  }
  base.venueId = pick.venueId
  base.venueName = pick.venueName || ''
  return base
}

async function loadVenueNameMap(pool, ids) {
  var map = Object.create(null)
  var list = (ids || []).map(function (id) { return String(id || '').trim() }).filter(Boolean)
  if (!pool || !list.length) return map
  try {
    var placeholders = list.map(function () { return '?' }).join(',')
    var res = await pool.query(
      'SELECT id, name FROM venues WHERE CAST(id AS CHAR) IN (' + placeholders + ')',
      list
    )
    var rows = res && res[0] ? res[0] : res
    ;(rows || []).forEach(function (r) {
      if (r && r.id != null) map[String(r.id)] = r.name || ''
    })
  } catch (e) {}
  return map
}

async function queryLastKeptFixedRows(pool) {
  if (!pool) return []
  try {
    var res = await pool.query(
      "SELECT g.id, g.venue_id AS venueId, g.date, g.time, g.class_type AS classType, g.status\n" +
      "  FROM group_classes g\n" +
      " WHERE (g.class_type IS NULL OR g.class_type='' OR LOWER(g.class_type) IN ('fixed','固定','固定团课'))\n" +
      "   AND LOWER(IFNULL(g.status,'open')) NOT IN ('cancelled','deleted','disabled','已取消','已删除','停用')\n" +
      " ORDER BY g.date DESC, g.time DESC, g.id DESC\n" +
      " LIMIT 1"
    )
    return (res && res[0] ? res[0] : res) || []
  } catch (e) {
    try {
      var res2 = await pool.query(
        "SELECT g.id, g.venue_id AS venueId, g.date, g.time, g.status\n" +
        "  FROM group_classes g\n" +
        " WHERE LOWER(IFNULL(g.status,'open')) NOT IN ('cancelled','deleted','disabled','已取消','已删除','停用')\n" +
        " ORDER BY g.date DESC, g.time DESC, g.id DESC\n" +
        " LIMIT 1"
      )
      return (res2 && res2[0] ? res2[0] : res2) || []
    } catch (e2) {
      return []
    }
  }
}

async function loadNextFixedVenue(pool, settings) {
  var rotation = (settings && (settings.rotationVenues || settings.rotation_venues)) || []
  var ids = rotationList(rotation).map(function (x) { return x.venueId })
  var names = await loadVenueNameMap(pool, ids)
  var named = (Array.isArray(rotation) ? rotation : []).map(function (item) {
    if (!item || typeof item !== 'object') return item
    var id = String(item.venueId || item.venue_id || item.id || '').trim()
    return Object.assign({}, item, { venueName: item.venueName || item.venue_name || item.name || names[id] || '' })
  })
  var rows = await queryLastKeptFixedRows(pool)
  var mapped = (rows || []).map(function (r) {
    return {
      id: r.id,
      venueId: r.venueId || r.venue_id,
      date: fmtYmd(r.date),
      time: r.time || '',
      classType: r.classType || r.class_type,
      status: r.status
    }
  })
  var out = nextFixedVenue(named, mapped)
  if (out.venueId && !out.venueName) out.venueName = names[String(out.venueId)] || ''
  if (out.venueId && !out.venueName && pool) {
    try {
      var res = await pool.query('SELECT name FROM venues WHERE CAST(id AS CHAR)=? LIMIT 1', [String(out.venueId)])
      var row = (res && res[0] && res[0][0]) || (res && res[0]) || null
      if (row && row.name) out.venueName = row.name
    } catch (e) {}
  }
  return out
}

module.exports = {
  SKIP_STATUSES,
  fmtYmd,
  normClassType,
  emptyNextFixedVenue,
  rotationList,
  isSkippedStatus,
  isKeptFixedClass,
  lastKeptFixedClass,
  nextFixedVenue,
  loadNextFixedVenue
}
