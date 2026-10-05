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

const FN_VER = 'saveAdmin-20260926c'
const ROLES = ['admin', 'manager', 'front', 'service']

function parseEvent(event) {
  if (event && event.body) {
    try {
      const body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
      return Object.assign({}, event, body)
    } catch (e) {}
  }
  return event || {}
}

function normRole(r) {
  const s = String(r || '').trim().toLowerCase()
  if (['admin', 'super', 'superadmin', '超级管理员'].includes(s)) return 'admin'
  if (['manager', '店长'].includes(s)) return 'manager'
  if (['service', '客服'].includes(s)) return 'service'
  if (['front', 'staff', '前台', '店员'].includes(s)) return 'front'
  return 'front'
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const action = String(body.action || 'list').trim()
    const venueId = String(body.venueId || body.venue_id || '').trim()

    if (action === 'list') {
      let sql = `SELECT id, username, name, role, venue_id, venue_name, status, created_at, permissions
                   FROM admins`
      const args = []
      if (venueId) {
        sql += ' WHERE venue_id=? OR IFNULL(venue_id,\'\')=\'\''
        args.push(venueId)
      }
      sql += ' ORDER BY id DESC LIMIT 200'
      let rows
      try {
        const [r] = await pool.query(sql, args)
        rows = r
      } catch (e) {
        const [r] = await pool.query(sql.replace(', permissions', ''), args)
        rows = r
      }
      return {
        ok: true,
        fnVer: FN_VER,
        list: rows.map((r) => ({
          _id: String(r.id),
          username: r.username,
          name: r.name,
          role: r.role,
          venueId: r.venue_id,
          venueName: r.venue_name,
          status: r.status || 'active',
          perms: (() => { try { return JSON.parse(r.permissions || '[]') } catch (e) { return [] } })()
        }))
      }
    }

    if (action === 'add') {
      const username = String(body.username || '').trim()
      const password = String(body.password || '').trim()
      const name = String(body.name || username).trim()
      const role = normRole(body.role)
      const venueName = String(body.venueName || body.venue_name || '').trim()
      if (!username) return { ok: false, msg: '请填写登录账号', fnVer: FN_VER }
      if (password.length < 4) return { ok: false, msg: '密码至少 4 位', fnVer: FN_VER }
      if (role === 'admin' && String(body.operatorRole || '') !== 'admin') {
        return { ok: false, msg: '不能创建超级管理员', fnVer: FN_VER }
      }
      const [dup] = await pool.query('SELECT id FROM admins WHERE username=? LIMIT 1', [username])
      if (dup[0]) return { ok: false, msg: '账号已存在', fnVer: FN_VER }
      const [res] = await pool.query(
        `INSERT INTO admins (username, password, name, role, venue_id, venue_name, status, created_at)
         VALUES (?, ?, ?, ?, ?, ?, 'active', NOW())`,
        [username, password, name, role, venueId || null, venueName || null]
      )
      return { ok: true, fnVer: FN_VER, id: res.insertId }
    }

    if (action === 'update') {
      const id = Number(body.id)
      if (!id) return { ok: false, msg: '缺少账号', fnVer: FN_VER }
      const name = String(body.name || '').trim()
      const role = body.role ? normRole(body.role) : ''
      const status = body.status || ''
      const password = String(body.password || '').trim()
      const sets = []
      const args = []
      if (name) { sets.push('name=?'); args.push(name) }
      if (role) { sets.push('role=?'); args.push(role) }
      if (status) { sets.push('status=?'); args.push(status) }
      if (password) {
        if (password.length < 4) return { ok: false, msg: '密码至少 4 位', fnVer: FN_VER }
        sets.push('password=?')
        args.push(password)
      }
      if (venueId) { sets.push('venue_id=?'); args.push(venueId) }
      if (body.venueName != null) { sets.push('venue_name=?'); args.push(String(body.venueName)) }
      if (Array.isArray(body.perms)) {
        try { await pool.query('ALTER TABLE admins ADD COLUMN permissions TEXT NULL') } catch (e) {}
        sets.push('permissions=?')
        args.push(JSON.stringify(body.perms))
      }
      if (!sets.length) return { ok: false, msg: '没有要改的内容', fnVer: FN_VER }
      args.push(id)
      await pool.query('UPDATE admins SET ' + sets.join(', ') + ' WHERE id=?', args)
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'toggle') {
      const id = Number(body.id)
      const status = body.status === 'disabled' ? 'disabled' : 'active'
      if (!id) return { ok: false, msg: '缺少账号', fnVer: FN_VER }
      await pool.query('UPDATE admins SET status=? WHERE id=?', [status, id])
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'delete') {
      const id = Number(body.id)
      if (!id) return { ok: false, msg: '缺少账号', fnVer: FN_VER }
      const [rows] = await pool.query('SELECT id, username, role FROM admins WHERE id=? LIMIT 1', [id])
      if (!rows[0]) return { ok: false, msg: '账号不存在', fnVer: FN_VER }
      if (rows[0].role === 'admin' || String(rows[0].username).toLowerCase() === 'admin') {
        return { ok: false, msg: '不能删除超级管理员', fnVer: FN_VER }
      }
      await pool.query('DELETE FROM admins WHERE id=?', [id])
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'deleteMatch') {
      const phone = String(body.phone || '').trim()
      const name = String(body.name || '').trim()
      if (!phone && !name) return { ok: false, msg: '缺少匹配条件', fnVer: FN_VER }
      const cond = []
      const args = []
      if (phone) { cond.push('username=? OR phone=?'); args.push(phone, phone) }
      if (name) { cond.push('name=?'); args.push(name) }
      if (venueId) { cond.push('(venue_id=? OR IFNULL(venue_id,\'\')=\'\')'); args.push(venueId) }
      const where = cond.join(' AND ')
      const [found] = await pool.query(
        'SELECT id, username, role FROM admins WHERE (' + (phone && name ? 'username=? OR name=?' : (phone ? 'username=?' : 'name=?')) + ') AND role<>\'admin\'',
        phone && name ? [phone, name] : [phone || name]
      )
      let n = 0
      for (const r of found) {
        if (String(r.username).toLowerCase() === 'admin') continue
        await pool.query('DELETE FROM admins WHERE id=?', [r.id])
        n += 1
      }
      return { ok: true, fnVer: FN_VER, deleted: n }
    }

    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    return { ok: false, msg: e.message || '失败', fnVer: FN_VER }
  }
}
