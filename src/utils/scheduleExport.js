'use strict'

export function sanitizeFilenamePart(s) {
  return String(s || '')
    .replace(/[\\/:*?"<>|]+/g, '_')
    .replace(/\s+/g, '')
    .trim()
}

export function exportDateRangeLabel(filterDate, rows, dateGetter) {
  if (filterDate) return String(filterDate).slice(0, 10)
  const dates = (rows || [])
    .map((r) => String(dateGetter ? dateGetter(r) : (r && r.date) || '').slice(0, 10))
    .filter((d) => /^\d{4}-\d{2}-\d{2}$/.test(d))
    .sort()
  if (!dates.length) return '全部日期'
  if (dates[0] === dates[dates.length - 1]) return dates[0]
  return dates[0] + '至' + dates[dates.length - 1]
}

export const GROUP_CLASS_EXPORT_HEADERS = ['名称', '类型', '主题', '上课门店', '日期', '时段', '场地', '教练', '人数', '开班规则', '状态']

export function groupClassExportRows(list, helpers) {
  const h = helpers || {}
  return (list || []).map((row) => {
    const typeLabel = row.classTypeLabel || (row.classType === 'self' ? '自组团课' : '固定团课')
    const venue = row.venueName || (h.venueLabel ? h.venueLabel(row.venueId) : '') || '-'
    const date = h.formatDateCn ? h.formatDateCn(row.date) : (row.date || '')
    const time = h.formatTimeSlot ? h.formatTimeSlot(row.time) : (row.time || '')
    const rule = (row.minEnrollment || 0) > 0
      ? ('满' + row.minEnrollment + '人开 · 提前' + (row.cancelBeforeHours != null ? row.cancelBeforeHours : 2) + '小时')
      : '不自动取消'
    const status = h.statusLabel ? h.statusLabel(row.status) : (row.status || '')
    return [
      row.name || '',
      typeLabel,
      row.theme || '-',
      venue,
      date,
      time,
      row.court || '',
      row.coachName || '',
      String(row.enrolled || 0) + ' / ' + (row.capacity || '-'),
      rule,
      status
    ]
  })
}

export function groupClassExportFilename(venueName, dateRange) {
  return '团课排期-' + (sanitizeFilenamePart(venueName) || '全部门店') + '-' + (dateRange || '全部日期') + '.xls'
}

export function coachScheduleExportFilename(mode, venueName, date) {
  const modeLabel = mode === 'outdoor' ? '全店外场' : '本店排课'
  const venuePart = mode === 'outdoor' ? '' : ('-' + (sanitizeFilenamePart(venueName) || '未选场馆'))
  return '教练排课-' + modeLabel + venuePart + '-' + (date || '') + '.xls'
}

export function scheduleCellText(info) {
  const i = info || {}
  if (i.lesson) {
    const place = i.lessonPlace || ''
    return (i.lesson.userName || '私教') + (place ? ' · ' + place : '')
  }
  if (i.occupied) {
    const title = i.occupiedTitle || i.occupied.userName || '已排课'
    const place = i.occupiedPlace || ''
    return title + (place ? ' · ' + place : '')
  }
  if (i.group) {
    return (i.group.name || '团课') + ' · 团课 · ' + (i.group.court || '')
  }
  return '可排'
}

export function buildCoachScheduleRows(coaches, timeSlots, cellFor) {
  return (coaches || []).map((coach) => {
    const row = [coach && coach.name ? coach.name : '']
    ;(timeSlots || []).forEach((t) => row.push((cellFor && cellFor(coach, t)) || '可排'))
    return row
  })
}

export function workbenchScheduleText(opts) {
  const o = opts || {}
  let title = o.title || '我的课程安排'
  if (o.venueName) title += ' · ' + o.venueName
  const lines = [title]
  const rows = o.rows || []
  if (!rows.length) {
    lines.push('暂无课程')
    return lines.join('\n')
  }
  rows.forEach((r) => {
    const kind = r.kind === 'group' ? (r.name || '团课') : (r.userName ? ('学员：' + r.userName) : (r.userName === '' && r.status === 'locked' ? '锁场' : ''))
    const parts = [r.date || '', r.time || '', r.venueName || '', r.court || '', kind].filter(Boolean)
    lines.push(parts.join(' '))
  })
  return lines.join('\n')
}

export default {
  sanitizeFilenamePart,
  exportDateRangeLabel,
  GROUP_CLASS_EXPORT_HEADERS,
  groupClassExportRows,
  groupClassExportFilename,
  coachScheduleExportFilename,
  scheduleCellText,
  buildCoachScheduleRows,
  workbenchScheduleText
}
