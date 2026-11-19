const mysql = require('mysql2/promise')
const { autoCancelDueGroupClasses } = require('./groupClassAutoCancel')

const FN_VER = 'autoCancelGroup-20261112c'

const pool = mysql.createPool({
  host: process.env.DB_HOST || 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
  port: Number(process.env.DB_PORT || 26462),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || 'Admin123.',
  database: process.env.DB_NAME || 'goat_prod',
  waitForConnections: true,
  connectionLimit: 5,
  connectTimeout: 10000
})

function parseEvent(event) {
  if (event && event.body) {
    try {
      return typeof event.body === 'string' ? JSON.parse(event.body) : event.body
    } catch (e) {
      return event
    }
  }
  return event || {}
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    if (body.action === 'ver' || body.action === '__ver__') {
      return { ok: true, fnVer: FN_VER }
    }
    const out = await autoCancelDueGroupClasses(pool, {
      operatorName: body.operatorName || '系统'
    })
    return Object.assign({ fnVer: FN_VER }, out)
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '自动取消失败', fnVer: FN_VER }
  }
}
