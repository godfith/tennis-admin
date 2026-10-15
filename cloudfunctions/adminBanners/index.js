const cloud = require('wx-server-sdk')
const mysql = require('mysql2/promise')
cloud.init({ env: cloud.DYNAMIC_CURRENT_ENV })
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
const FN_VER = 'banners-20261015a'

function parseEvent(event) {
  if (event && event.body) {
    try {
      return Object.assign({}, event, typeof event.body === 'string' ? JSON.parse(event.body) : event.body)
    } catch (e) {
      return event
    }
  }
  return event || {}
}

exports.main = async (event) => {
  const body = parseEvent(event)
  const action = body.action || 'list'
  try {
    if (action === 'list') {
      const [rows] = await pool.query('SELECT id, image, title, link, sort_order, status FROM banners ORDER BY sort_order, id')
      return { ok: true, fnVer: FN_VER, list: rows }
    }
    if (action === 'save') {
      const { id, image, title, link, sortOrder, status } = body
      if (!image) return { ok: false, msg: '请填图片地址', fnVer: FN_VER }
      if (id) {
        await pool.query('UPDATE banners SET image=?, title=?, link=?, sort_order=?, status=?, updated_at=NOW() WHERE id=?',
          [image, title || '', link || '', sortOrder || 0, status || 'active', id])
      } else {
        await pool.query('INSERT INTO banners (image, title, link, sort_order, status, created_at) VALUES (?, ?, ?, ?, ?, NOW())',
          [image, title || '', link || '', sortOrder || 0, status || 'active'])
      }
      return { ok: true, fnVer: FN_VER }
    }
    if (action === 'upload') {
      const { fileContent, fileName } = body
      if (!fileContent || !fileName) return { ok: false, msg: '缺少文件', fnVer: FN_VER }
      const buffer = Buffer.from(fileContent, 'base64')
      const cloudPath = 'banners/' + Date.now() + '_' + fileName
      const res = await cloud.uploadFile({ cloudPath, fileContent: buffer })
      const url = await cloud.getTempFileURL({ fileList: [res.fileID] })
      const tempUrl = (url.fileList && url.fileList[0] && url.fileList[0].tempFileURL) || ''
      return { ok: true, fnVer: FN_VER, fileID: res.fileID, url: tempUrl }
    }
    if (action === 'delete') {
      if (!body.id) return { ok: false, msg: '缺少ID', fnVer: FN_VER }
      await pool.query('DELETE FROM banners WHERE id=?', [body.id])
      return { ok: true, fnVer: FN_VER }
    }
    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    return { ok: false, msg: e.message, fnVer: FN_VER }
  }
}
