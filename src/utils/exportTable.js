function pad2(n) {
  return n < 10 ? '0' + n : '' + n
}

export function todayYmd() {
  const d = new Date()
  return d.getFullYear() + '-' + pad2(d.getMonth() + 1) + '-' + pad2(d.getDate())
}

export function escapeHtml(s) {
  return String(s == null ? '' : s)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
}

export function csvCell(v) {
  const s = v == null ? '' : String(v)
  if (/[",\r\n]/.test(s)) return '"' + s.replace(/"/g, '""') + '"'
  return s
}

export function buildExcelHtml(sheetName, headers, rows) {
  const parts = []
  parts.push('<!DOCTYPE html>')
  parts.push('<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40">')
  parts.push('<head><meta charset="UTF-8"><title>' + escapeHtml(sheetName || '导出') + '</title>')
  parts.push('<!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>' + escapeHtml(sheetName || '导出') + '</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]-->')
  parts.push('<style>body{font-family:"Microsoft YaHei","微软雅黑",Arial,sans-serif}table{border-collapse:collapse}th,td{border:1px solid #cfcfcf;padding:6px 8px;font-size:10pt;white-space:nowrap}th{background:#f3f7f4;color:#1a5c3a;font-weight:600}</style>')
  parts.push('</head><body><table><thead><tr>')
  ;(headers || []).forEach((h) => parts.push('<th>' + escapeHtml(h) + '</th>'))
  parts.push('</tr></thead><tbody>')
  ;(rows || []).forEach((row) => {
    parts.push('<tr>')
    ;(row || []).forEach((cell) => parts.push('<td>' + escapeHtml(cell) + '</td>'))
    parts.push('</tr>')
  })
  parts.push('</tbody></table></body></html>')
  return parts.join('')
}

export function downloadExcelHtml(filename, sheetName, headers, rows) {
  const html = buildExcelHtml(sheetName, headers, rows)
  const blob = new Blob(['\uFEFF' + html], { type: 'application/vnd.ms-excel;charset=utf-8;' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = filename
  a.click()
  URL.revokeObjectURL(url)
}

export default {
  todayYmd,
  escapeHtml,
  csvCell,
  buildExcelHtml,
  downloadExcelHtml
}
