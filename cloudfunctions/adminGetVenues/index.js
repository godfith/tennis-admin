const mysql = require('mysql2/promise')
const { mapVenueFlags } = require('./venueBookingRule')


const FN_VER = 'getVenues-20261119a'

const pool = mysql.createPool({
  host: 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: 26462,
  user: 'root',
  password: 'Admin123.',
  database: 'goat_prod',
  waitForConnections: true,
  connectionLimit: 5,
  connectTimeout: 10000
})



exports.main = async (event) => {
  try {
    let body = event
    if (event && event.body) {
      body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
    }
    body = body || {}
    if (body.action === 'ver' || body.action === '__ver__') {
      return { ok: true, fnVer: FN_VER }
    }
    const [rows] = await pool.query(
      'SELECT * FROM venues WHERE status = ? ORDER BY sort ASC, id ASC',
      ['active']
    )
    const list = (rows || []).map((r) => {
      const flags = mapVenueFlags(r)
      return {
        _id: r.id,
        venueId: r.id,
        name: r.name,
        status: r.status,
        sort: r.sort || 0,
        address: r.address || '',
        bookingEnabled: flags.bookingEnabled,
        isShell: flags.isShell
      }
    })
    return { ok: true, list, fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '查询场馆失败', list: [], fnVer: FN_VER }
  }
}
