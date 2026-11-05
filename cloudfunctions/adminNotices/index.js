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
const FN_VER = 'notices-20261104a'

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

async function ensureTable() {
  await pool.query(`
    CREATE TABLE IF NOT EXISTS notice_templates (
      id INT AUTO_INCREMENT PRIMARY KEY,
      title VARCHAR(100) NOT NULL DEFAULT '预约注意事项',
      content TEXT,
      status VARCHAR(20) DEFAULT 'active',
      venue_id VARCHAR(64) DEFAULT '',
      sort_order INT DEFAULT 0,
      created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
      updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `)
  await pool.query(`
    CREATE TABLE IF NOT EXISTS notify_scripts (
      id INT AUTO_INCREMENT PRIMARY KEY,
      type VARCHAR(20) NOT NULL,
      content TEXT,
      updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
      UNIQUE KEY uk_type (type)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `)
  await pool.query(`
    INSERT INTO notify_scripts (type, content) VALUES
    ('normal', '如取消或改期需提前2小时告知'),
    ('coach', '请准时到场，如需取消请提前告知教练')
    ON DUPLICATE KEY UPDATE content = content
  `)
}

exports.main = async (rawEvent) => {
  try {
    const event = parseEvent(rawEvent)
    const action = event.action || 'list'
    await ensureTable()

    if (action === 'ver') return { ok: true, fnVer: FN_VER }

    if (action === 'list') {
      const [rows] = await pool.query(
        'SELECT id, title, content, status, venue_id, sort_order, updated_at FROM notice_templates ORDER BY sort_order, id DESC'
      )
      return { ok: true, fnVer: FN_VER, list: rows || [] }
    }

    if (action === 'save') {
      const { id, title, content, status, venueId, sortOrder } = event
      if (!title) return { ok: false, msg: '请填写标题', fnVer: FN_VER }
      if (id) {
        await pool.query(
          'UPDATE notice_templates SET title=?, content=?, status=?, venue_id=?, sort_order=?, updated_at=NOW() WHERE id=?',
          [title, content || '', status || 'active', venueId || '', sortOrder || 0, id]
        )
      } else {
        await pool.query(
          'INSERT INTO notice_templates (title, content, status, venue_id, sort_order) VALUES (?, ?, ?, ?, ?)',
          [title, content || '', status || 'active', venueId || '', sortOrder || 0]
        )
      }
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'delete') {
      const { id } = event
      if (!id) return { ok: false, msg: '缺少id', fnVer: FN_VER }
      await pool.query('DELETE FROM notice_templates WHERE id=?', [id])
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'getActive') {
      const venueId = event.venueId || ''
      let sql = "SELECT id, title, content FROM notice_templates WHERE status='active'"
      const params = []
      if (venueId) {
        sql += ' AND (venue_id=? OR venue_id=\'\' OR venue_id IS NULL)'
        params.push(venueId)
      }
      sql += ' ORDER BY (venue_id=?) DESC, sort_order, id DESC LIMIT 1'
      params.push(venueId || '')
      const [rows] = await pool.query(sql, params)
      const row = rows[0] || null
      return { ok: true, fnVer: FN_VER, notice: row }
    }

    if (action === 'getScripts') {
      const [rows] = await pool.query('SELECT type, content FROM notify_scripts')
      const map = {}
      ;(rows || []).forEach(r => { map[r.type] = r.content || '' })
      return { ok: true, fnVer: FN_VER, scripts: map }
    }
    if (action === 'saveScript') {
      const type = event.type || 'normal'
      const contentText = event.content || ''
      if (!['normal', 'coach'].includes(type)) return { ok: false, msg: '类型错误', fnVer: FN_VER }
      await pool.query(
        'INSERT INTO notify_scripts (type, content) VALUES (?, ?) ON DUPLICATE KEY UPDATE content=?, updated_at=NOW()',
        [type, contentText, contentText]
      )
      return { ok: true, fnVer: FN_VER }
    }
    return { ok: false, msg: '未知操作', fnVer: FN_VER }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '服务异常', fnVer: FN_VER }
  }
}
