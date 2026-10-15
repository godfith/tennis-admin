const cloud = require('wx-server-sdk')
const mysql = require('mysql2/promise')
cloud.init({ env: cloud.DYNAMIC_CURRENT_ENV })
const pool = mysql.createPool({
  host: 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: 26462,
  user: 'root',
  password: 'GoatTennis2026',
  database: 'goat_prod',
  waitForConnections: true,
  connectionLimit: 5,
  connectTimeout: 10000
})
const FN_VER = 'banners-20261015a'

exports.main = async (event) => {
  const body = event.body ? JSON.parse(event.body) : event
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
