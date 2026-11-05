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

const FN_VER = 'registerUser-20260926b'

function parseEvent(event) {
  if (event && event.body) {
    try {
      const body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
      return Object.assign({}, event, body)
    } catch (e) {}
  }
  return event || {}
}

function normPhone(p) {
  const s = String(p || '').replace(/\D/g, '')
  if (s.length === 11) return s
  if (s.length > 11) return s.slice(-11)
  return ''
}

function pack(u) {
  return {
    _id: String(u.id),
    id: u.id,
    phone: u.phone,
    nickName: u.nick_name,
    userId: u.user_id,
    _openid: u.openid || '',
    venueId: u.venue_id || '',
    venueName: u.venue_name || ''
  }
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const phone = normPhone(body.phone)
    if (!phone) return { ok: false, msg: '请填写11位手机号', fnVer: FN_VER }
    let nick = String(body.nickName || body.name || body.userName || '').trim()
    if (!nick) nick = phone
    const venueId = String(body.venueId || body.venue_id || '').trim()
    const venueName = String(body.venueName || body.venue_name || '').trim()

    const [byPhone] = await pool.query(
      'SELECT id, openid, user_id, nick_name, phone, venue_id, venue_name FROM users WHERE phone=? OR phone=? LIMIT 1',
      [phone, phone.replace(/^1/, '')]
    )
    if (byPhone[0]) {
      return { ok: true, existed: true, fnVer: FN_VER, user: pack(byPhone[0]) }
    }

    let userId = 'U' + phone
    const [idHit] = await pool.query('SELECT id FROM users WHERE user_id=? LIMIT 1', [userId])
    if (idHit[0]) userId = 'U' + phone + 'x' + Date.now().toString().slice(-4)

    const [nickHit] = await pool.query('SELECT id FROM users WHERE nick_name=? LIMIT 1', [nick])
    if (nickHit[0]) nick = phone

    const [nickHit2] = await pool.query('SELECT id FROM users WHERE nick_name=? LIMIT 1', [nick])
    if (nickHit2[0]) nick = phone + '_' + Date.now().toString().slice(-4)

    try {
      const [res] = await pool.query(
        `INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at, updated_at)
         VALUES ('', ?, ?, '', ?, 'user', ?, ?, 0, 0, NOW(), NOW())`,
        [userId, nick, phone, venueId || null, venueName || null]
      )
      return {
        ok: true,
        existed: false,
        fnVer: FN_VER,
        user: {
          _id: String(res.insertId),
          id: res.insertId,
          phone,
          nickName: nick,
          userId,
          _openid: openid,
          venueId,
          venueName
        }
      }
    } catch (e1) {
      const msg = String(e1.message || '')
      if (/unknown column/i.test(msg)) {
        const [res] = await pool.query(
          `INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, created_at)
           VALUES (?, ?, ?, '', ?, 'user', NOW())`,
          [openid, userId, nick, phone]
        )
        return {
          ok: true,
          existed: false,
          fnVer: FN_VER,
          user: { _id: String(res.insertId), id: res.insertId, phone, nickName: nick, userId, _openid: openid }
        }
      }
      if (/Duplicate/i.test(msg)) {
        userId = 'U' + phone + Date.now().toString().slice(-6)
        nick = phone + '_' + Date.now().toString().slice(-4)
        const openid2 = 'reg_' + phone + '_' + Date.now().toString().slice(-4)
        const [res] = await pool.query(
          `INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, created_at)
           VALUES (?, ?, ?, '', ?, 'user', NOW())`,
          [openid2, userId, nick, phone]
        )
        return {
          ok: true,
          existed: false,
          fnVer: FN_VER,
          user: { _id: String(res.insertId), id: res.insertId, phone, nickName: nick, userId, _openid: openid2 }
        }
      }
      return { ok: false, msg, fnVer: FN_VER }
    }
  } catch (e) {
    return { ok: false, msg: e.message || '注册失败', fnVer: FN_VER }
  }
}
