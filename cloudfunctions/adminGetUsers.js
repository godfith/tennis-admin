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
  timezone: '+08:00',
  charset: 'utf8mb4'
})

const FN_VER = 'getUsers-20260929b'

function fmtYmd(v) {
  if (!v) return ''
  if (v instanceof Date && !Number.isNaN(v.getTime())) {
    const y = v.getFullYear()
    const m = String(v.getMonth() + 1).padStart(2, '0')
    const d = String(v.getDate()).padStart(2, '0')
    return y + '-' + m + '-' + d
  }
  const s = String(v)
  const m = s.match(/(\d{4})-(\d{2})-(\d{2})/)
  if (m) return m[1] + '-' + m[2] + '-' + m[3]
  const d = new Date(v)
  if (!Number.isNaN(d.getTime()) && d.getFullYear() >= 2020) {
    return d.getFullYear() + '-' + String(d.getMonth() + 1).padStart(2, '0') + '-' + String(d.getDate()).padStart(2, '0')
  }
  return ''
}
const DEFAULT_TAGS = [
  ['学生', '#409eff'],
  ['白领', '#67c23a'],
  ['家庭', '#e6a23c'],
  ['私教学员', '#9c27b0'],
  ['团课常客', '#f56c6c'],
  ['VIP', '#c9a227'],
  ['沉睡', '#909399']
]

function parseEvent(event) {
  if (event && event.body) {
    try {
      const body = typeof event.body === 'string' ? JSON.parse(event.body) : event.body
      return Object.assign({}, event, body)
    } catch (e) {
      return event
    }
  }
  return event || {}
}

function mapUser(u, tagsByUser) {
  return {
    _id: String(u.id),
    userId: u.user_id || String(u.id),
    _openid: u.openid || '',
    nickName: u.nick_name || '',
    avatarUrl: u.avatar_url || '',
    phone: u.phone || '',
    role: u.role || 'user',
    venueId: u.venue_id || '',
    venueName: u.venue_name || '',
    remark: u.remark || '',
    balance: Number(u.balance) || 0,
    points: Number(u.points) || 0,
    cardCount: Number(u.card_count) || 0,
    totalSpend: Number(u.total_spend) || 0,
    spendByVenue: [],
    lastVisit: fmtYmd(u.last_visit),
    tags: tagsByUser[String(u.id)] || [],
    createdAt: u.created_at
  }
}

async function listVenues() {
  try {
    const [rows] = await pool.query('SELECT id, name FROM venues ORDER BY sort, name')
    return (rows || []).map((v) => ({ venueId: String(v.id), name: v.name || String(v.id) }))
  } catch (e) {
    return []
  }
}

async function loadSpendByUsers(ids) {
  const map = {}
  if (!ids.length) return map
  try {
    const [rows] = await pool.query(
      `SELECT user_id AS userId, IFNULL(venue_id,'') AS venueId, IFNULL(venue_name,'') AS venueName,
              SUM(amount) AS amount
         FROM finance_ledger
        WHERE user_id IN (${ids.map(() => '?').join(',')})
          AND amount > 0 AND type IN ('court_pay','card_issue')
        GROUP BY user_id, venue_id, venue_name`,
      ids
    )
    ;(rows || []).forEach((r) => {
      const k = String(r.userId)
      if (!map[k]) map[k] = []
      map[k].push({
        venueId: String(r.venueId || ''),
        venueName: r.venueName || '未分馆',
        amount: Number(r.amount) || 0
      })
    })
  } catch (e) {}
  return map
}

function attachSpend(list, spendMap) {
  list.forEach((u) => {
    u.spendByVenue = spendMap[u._id] || []
    if (!u.totalSpend) {
      u.totalSpend = u.spendByVenue.reduce((s, x) => s + (Number(x.amount) || 0), 0)
    }
  })
  return list
}

async function ensureExtras() {
  await pool.query(`ALTER TABLE users ADD COLUMN remark varchar(255) DEFAULT ''`).catch(() => {})
  await pool.query(`ALTER TABLE users ADD COLUMN balance decimal(10,2) NOT NULL DEFAULT 0`).catch(() => {})
  await pool.query(`ALTER TABLE users ADD COLUMN points int NOT NULL DEFAULT 0`).catch(() => {})
  await pool.query(`
    CREATE TABLE IF NOT EXISTS user_tags (
      id bigint NOT NULL AUTO_INCREMENT,
      name varchar(32) NOT NULL,
      color varchar(16) DEFAULT '#409eff',
      created_at datetime DEFAULT CURRENT_TIMESTAMP,
      PRIMARY KEY (id),
      UNIQUE KEY uk_name (name)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `)
  await pool.query(`
    CREATE TABLE IF NOT EXISTS user_tag_map (
      user_id bigint NOT NULL,
      tag_id bigint NOT NULL,
      created_at datetime DEFAULT CURRENT_TIMESTAMP,
      PRIMARY KEY (user_id, tag_id),
      KEY idx_tag (tag_id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
  `)
  const [exist] = await pool.query('SELECT COUNT(*) AS n FROM user_tags')
  if (!exist[0] || Number(exist[0].n) === 0) {
    for (const [name, color] of DEFAULT_TAGS) {
      await pool.query('INSERT IGNORE INTO user_tags (name, color) VALUES (?, ?)', [name, color])
    }
  }
}

async function loadTagsForUsers(ids) {
  const map = {}
  if (!ids.length) return map
  const [rows] = await pool.query(
    `SELECT m.user_id AS userId, t.id, t.name, t.color
       FROM user_tag_map m
       JOIN user_tags t ON t.id = m.tag_id
      WHERE m.user_id IN (${ids.map(() => '?').join(',')})
      ORDER BY t.id`,
    ids
  )
  ;(rows || []).forEach((r) => {
    const k = String(r.userId)
    if (!map[k]) map[k] = []
    map[k].push({ _id: String(r.id), name: r.name, color: r.color })
  })
  return map
}

async function listTags() {
  const [rows] = await pool.query('SELECT id, name, color FROM user_tags ORDER BY id')
  return (rows || []).map((t) => ({ _id: String(t.id), name: t.name, color: t.color }))
}

async function loadCardsForUsers(ids) {
  const map = {}
  if (!ids.length) return map
  const [rows] = await pool.query(
    `SELECT user_id, card_name, type, status, remaining_times, total_times,
            DATE_FORMAT(valid_to,'%Y-%m-%d') AS valid_to
       FROM member_cards
      WHERE user_id IN (${ids.map(() => '?').join(',')})
        AND IFNULL(status,'') NOT IN ('deleted','refunded')
      ORDER BY id DESC`,
    ids
  )
  for (const r of rows || []) {
    const k = String(r.user_id)
    if (!map[k]) map[k] = []
    if (map[k].length >= 4) continue
    map[k].push({
      cardName: r.card_name || '',
      type: r.type,
      status: r.status,
      remainingTimes: r.remaining_times,
      totalTimes: r.total_times,
      validTo: r.valid_to
    })
  }
  return map
}

function cardStatusSql(cardStatus) {
  if (cardStatus === 'active') {
    return ` AND c.status='active' AND (c.valid_to IS NULL OR c.valid_to>=CURDATE())`
  }
  if (cardStatus === 'disabled') return ` AND c.status='disabled'`
  if (cardStatus === 'expired') {
    return ` AND (c.status='expired' OR (c.valid_to IS NOT NULL AND c.valid_to<CURDATE() AND IFNULL(c.status,'') NOT IN ('deleted','refunded','used_up')))`
  }
  if (cardStatus === 'done') return ` AND c.status='used_up'`
  return ''
}

exports.main = async (event) => {
  const body = parseEvent(event)
  const action = body.action || 'list'
  try {
    await ensureExtras()

    if (action === 'listCards') {
      const cardName = String(body.cardName || '').trim()
      const cardStatus = String(body.cardStatus || '').trim()
      const keyword = String(body.keyword || '').trim()
      let sql = `SELECT c.id, c.card_name, c.type, c.status, c.remaining_times, c.total_times,
                        DATE_FORMAT(c.valid_from,'%Y-%m-%d') AS valid_from,
                        DATE_FORMAT(c.valid_to,'%Y-%m-%d') AS valid_to,
                        u.id AS user_id, u.nick_name, u.phone
                   FROM member_cards c
                   LEFT JOIN users u ON u.id=c.user_id
                  WHERE IFNULL(c.status,'') NOT IN ('deleted','refunded')`
      const params = []
      if (cardName) {
        sql += ` AND CONVERT(IFNULL(c.card_name,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci`
        params.push('%' + cardName + '%')
      }
      if (keyword) {
        sql += ` AND (
          CONVERT(IFNULL(u.nick_name,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
          OR CONVERT(IFNULL(u.phone,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
        )`
        params.push('%' + keyword + '%', '%' + keyword + '%')
      }
      sql += cardStatusSql(cardStatus)
      sql += ' ORDER BY c.id DESC LIMIT 300'
      const [rows] = await pool.query(sql, params)
      return {
        ok: true,
        list: (rows || []).map((r) => ({
          _id: String(r.id),
          cardName: r.card_name,
          type: r.type,
          status: r.status,
          remainingTimes: r.remaining_times,
          totalTimes: r.total_times,
          validFrom: r.valid_from,
          validTo: r.valid_to,
          userId: r.user_id ? String(r.user_id) : '',
          nickName: r.nick_name || '',
          phone: r.phone || ''
        })),
        fnVer: FN_VER
      }
    }

    if (action === 'batchDisableCards') {
      const ids = (Array.isArray(body.cardIds) ? body.cardIds : []).map(Number).filter(Boolean)
      if (!ids.length) return { ok: false, msg: '请先勾选要停用的卡', fnVer: FN_VER }
      await pool.query(
        `UPDATE member_cards SET status='disabled', updated_at=NOW()
          WHERE id IN (${ids.map(() => '?').join(',')}) AND IFNULL(status,'') NOT IN ('deleted','refunded')`,
        ids
      )
      return { ok: true, count: ids.length, fnVer: FN_VER }
    }

    if (action === 'listTags') {
      return { ok: true, list: await listTags(), fnVer: FN_VER }
    }

    if (action === 'saveTag') {
      const name = String(body.name || '').trim()
      const color = String(body.color || '#409eff').trim()
      if (!name) return { ok: false, msg: '请填写标签名', fnVer: FN_VER }
      const [dup] = await pool.query('SELECT id FROM user_tags WHERE name=? LIMIT 1', [name])
      if (dup.length && String(dup[0].id) !== String(body.id || '')) {
        return {
          ok: false,
          exists: true,
          id: String(dup[0].id),
          msg: '标签「' + name + '」已经有了，请直接在下拉里选，不用再新建',
          list: await listTags(),
          fnVer: FN_VER
        }
      }
      try {
        if (body.id) {
          await pool.query('UPDATE user_tags SET name=?, color=? WHERE id=?', [name, color, body.id])
        } else {
          await pool.query('INSERT INTO user_tags (name, color) VALUES (?, ?)', [name, color])
        }
      } catch (e) {
        if (e && (e.code === 'ER_DUP_ENTRY' || String(e.message).includes('Duplicate'))) {
          return {
            ok: false,
            exists: true,
            msg: '标签「' + name + '」已经有了，请直接在下拉里选，不用再新建',
            list: await listTags(),
            fnVer: FN_VER
          }
        }
        return { ok: false, msg: '保存标签失败：' + (e.message || '数据库错误'), fnVer: FN_VER }
      }
      return { ok: true, list: await listTags(), fnVer: FN_VER }
    }

    if (action === 'deleteTag') {
      if (!body.id) return { ok: false, msg: '缺少标签', fnVer: FN_VER }
      await pool.query('DELETE FROM user_tag_map WHERE tag_id=?', [body.id])
      await pool.query('DELETE FROM user_tags WHERE id=?', [body.id])
      return { ok: true, list: await listTags(), fnVer: FN_VER }
    }

    if (action === 'setUserTags') {
      const userId = Number(body.userId)
      const tagIds = Array.isArray(body.tagIds) ? body.tagIds.map(Number).filter(Boolean) : []
      if (!userId) return { ok: false, msg: '缺少用户', fnVer: FN_VER }
      await pool.query('DELETE FROM user_tag_map WHERE user_id=?', [userId])
      for (const tid of tagIds) {
        await pool.query('INSERT IGNORE INTO user_tag_map (user_id, tag_id) VALUES (?, ?)', [userId, tid])
      }
      const tags = (await loadTagsForUsers([userId]))[String(userId)] || []
      return { ok: true, tags, fnVer: FN_VER }
    }

    if (action === 'adjustWallet') {
      const userId = Number(body.userId)
      if (!userId) return { ok: false, msg: '缺少用户', fnVer: FN_VER }
      const addBal = Number(body.addBalance)
      const addPts = Number(body.addPoints)
      const setBal = body.balance
      const setPts = body.points
      const [rows] = await pool.query('SELECT id, nick_name, phone, IFNULL(balance,0) AS balance, IFNULL(points,0) AS points, venue_id, venue_name FROM users WHERE id=? LIMIT 1', [userId])
      if (!rows.length) return { ok: false, msg: '用户不存在', fnVer: FN_VER }
      const u = rows[0]
      let nextBal = Number(u.balance) || 0
      let nextPts = Number(u.points) || 0
      if (setBal !== undefined && setBal !== null && setBal !== '') nextBal = Math.max(0, Number(setBal) || 0)
      if (setPts !== undefined && setPts !== null && setPts !== '') nextPts = Math.max(0, Math.floor(Number(setPts) || 0))
      if (!Number.isNaN(addBal) && addBal) nextBal = Math.max(0, +(nextBal + addBal).toFixed(2))
      if (!Number.isNaN(addPts) && addPts) nextPts = Math.max(0, nextPts + Math.trunc(addPts))
      await pool.query('UPDATE users SET balance=?, points=?, updated_at=NOW() WHERE id=?', [nextBal, nextPts, userId])
      const delta = +(nextBal - Number(u.balance)).toFixed(2)
      if (delta !== 0) {
        try {
          await pool.query(
            `INSERT INTO finance_ledger
              (biz_date, type, amount, venue_id, venue_name, user_id, user_name, operator_name, remark)
             VALUES (CURDATE(), ?, ?, ?, ?, ?, ?, ?, ?)`,
            [
              delta > 0 ? 'balance_in' : 'balance_out',
              delta,
              u.venue_id || '',
              u.venue_name || '',
              userId,
              u.nick_name || '',
              body.operatorName || '管理员',
              String(body.remark || (delta > 0 ? '充值余额' : '扣减余额')).slice(0, 200)
            ]
          )
        } catch (e) {}
      }
      try {
        await pool.query(
          `INSERT INTO activity_logs (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
           VALUES ('wallet_adjust', ?, ?, ?, ?, ?, ?, NOW())`,
          [
            u.nick_name || '',
            body.operatorName || '管理员',
            u.phone || '',
            `余额 ${Number(u.balance)}→${nextBal} 积分 ${Number(u.points)}→${nextPts} ${body.remark || ''}`,
            u.venue_id || '',
            u.venue_name || ''
          ]
        )
      } catch (e) {}
      return { ok: true, balance: nextBal, points: nextPts, fnVer: FN_VER }
    }

    if (action === 'saveMemberCard' || action === 'disableCard' || action === 'enableCard' || action === 'pauseCard') {
      const cardId = body.cardId || (body.data && body.data.cardId)
      const data = body.data || body
      const op = body.operatorName || data.operatorName || '管理员'
      if (!cardId) return { ok: false, msg: '缺少卡ID', fnVer: FN_VER }
      const [rows] = await pool.query('SELECT * FROM member_cards WHERE id=? LIMIT 1', [cardId])
      const card = rows[0]
      if (!card) return { ok: false, msg: '卡不存在', fnVer: FN_VER }
      if (action === 'disableCard') {
        await pool.query(`UPDATE member_cards SET status='disabled', updated_at=NOW() WHERE id=?`, [cardId])
        return { ok: true, status: 'disabled', fnVer: FN_VER }
      }
      if (action === 'enableCard') {
        let rule = card.time_rule
        if (typeof rule === 'string') { try { rule = JSON.parse(rule) } catch (e) { rule = {} } }
        if (rule && typeof rule === 'object') delete rule.pause
        await pool.query(`UPDATE member_cards SET status='active', time_rule=?, updated_at=NOW() WHERE id=?`, [rule ? JSON.stringify(rule) : card.time_rule, cardId])
        return { ok: true, status: 'active', fnVer: FN_VER }
      }
      if (action === 'pauseCard') {
        const from = String(data.pauseFrom || '').slice(0, 10)
        if (!/^\d{4}-\d{2}-\d{2}$/.test(from)) return { ok: false, msg: '请选择停卡日期', fnVer: FN_VER }
        const autoResume = !!data.autoResume
        const resumeDate = autoResume ? String(data.resumeDate || '').slice(0, 10) : ''
        if (autoResume && !/^\d{4}-\d{2}-\d{2}$/.test(resumeDate)) return { ok: false, msg: '请选择自动复卡日期', fnVer: FN_VER }
        if (autoResume && resumeDate <= from) return { ok: false, msg: '复卡日期要晚于停卡日期', fnVer: FN_VER }
        let rule = card.time_rule
        if (typeof rule === 'string') { try { rule = JSON.parse(rule) } catch (e) { rule = {} } }
        if (!rule || typeof rule !== 'object') rule = { mode: 'unlimited' }
        rule.pause = { from, autoResume, resumeDate, extendValidity: !!data.extendValidity }
        let validTo = card.valid_to
        if (data.extendValidity && autoResume && card.valid_to) {
          const days = Math.round((new Date(resumeDate) - new Date(from)) / 86400000)
          if (days > 0) {
            const end = new Date(String(card.valid_to).slice(0, 10) + 'T00:00:00')
            end.setDate(end.getDate() + days)
            const p = (n) => (n < 10 ? '0' + n : '' + n)
            validTo = end.getFullYear() + '-' + p(end.getMonth() + 1) + '-' + p(end.getDate())
          }
        }
        await pool.query(`UPDATE member_cards SET status='disabled', valid_to=?, time_rule=?, updated_at=NOW() WHERE id=?`, [validTo, JSON.stringify(rule), cardId])
        const until = autoResume ? resumeDate : '2099-12-31'
        await pool.query(
          `UPDATE bookings SET status='cancelled', remark=CONCAT(IFNULL(remark,''),' 停卡取消'), updated_at=NOW()
            WHERE card_id=? AND status='booked' AND date>=? AND date<?`,
          [cardId, from, until]
        )
        return { ok: true, status: 'disabled', validTo, fnVer: FN_VER }
      }
      const fmt = (v) => {
        if (!v) return null
        const m = String(v).match(/^(\d{4}-\d{2}-\d{2})/)
        return m ? m[1] : null
      }
      const validFrom = data.validFrom != null ? fmt(data.validFrom) : fmt(card.valid_from)
      const validTo = data.validTo != null ? (fmt(data.validTo) || null) : fmt(card.valid_to)
      let remaining = card.remaining_times
      let total = card.total_times
      if (data.remainingTimes != null && data.remainingTimes !== '') remaining = Number(data.remainingTimes)
      if (data.totalTimes != null && data.totalTimes !== '') total = Number(data.totalTimes)
      if (!Number.isFinite(remaining)) remaining = card.remaining_times
      if (!Number.isFinite(total)) total = card.total_times
      let timeRule = data.timeRule != null ? data.timeRule : card.time_rule
      if (timeRule && typeof timeRule === 'object') {
        timeRule.customized = true
        timeRule = JSON.stringify(timeRule)
      }
      const cardName = data.cardName != null && String(data.cardName).trim() ? String(data.cardName).trim() : card.card_name
      let remark = card.remark || ''
      if (!/\[已改规则\]/.test(remark)) remark = (remark ? remark + ' ' : '') + '[已改规则]'
      try {
        await pool.query(
          `UPDATE member_cards SET card_name=?, valid_from=?, valid_to=?, remaining_times=?, total_times=?, time_rule=?, remark=?, updated_at=NOW() WHERE id=?`,
          [cardName, validFrom, validTo, remaining, total, timeRule, remark, cardId]
        )
      } catch (e) {
        return { ok: false, msg: e.message || '保存失败', fnVer: FN_VER }
      }
      try {
        await pool.query(
          `INSERT INTO activity_logs (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
           VALUES ('card_edit', ?, ?, '', ?, ?, ?, NOW())`,
          [card.user_name || '', op, '改卡「' + cardName + '」规则/有效期', card.venue_id || '', card.venue_name || '']
        )
      } catch (e) {}
      return { ok: true, rulesEdited: true, fnVer: FN_VER }
    }

    if (action === 'saveRemark') {
      const userId = Number(body.userId)
      if (!userId) return { ok: false, msg: '缺少用户', fnVer: FN_VER }
      await pool.query('UPDATE users SET remark=? WHERE id=?', [String(body.remark || '').slice(0, 255), userId])
      return { ok: true, fnVer: FN_VER }
    }

    if (action === 'detail') {
      const userId = Number(body.userId || body.id)
      if (!userId) return { ok: false, msg: '缺少用户', fnVer: FN_VER }
      const [rows] = await pool.query(
        `SELECT u.id, u.openid, u.user_id, u.nick_name, u.avatar_url, u.phone,
                u.role, u.created_at, u.updated_at, u.venue_id, u.venue_name, u.remark,
                IFNULL(u.balance,0) AS balance, IFNULL(u.points,0) AS points,
                (SELECT COUNT(*) FROM member_cards c WHERE c.user_id=u.id AND c.status='active') AS card_count,
                (SELECT COALESCE(SUM(amount),0) FROM finance_ledger f
                  WHERE f.user_id=u.id AND f.amount>0 AND f.type IN ('court_pay','card_issue')) AS total_spend,
                (SELECT DATE_FORMAT(MAX(date), '%Y-%m-%d') FROM bookings b WHERE b.user_id=u.id AND b.status='booked') AS last_visit
           FROM users u WHERE u.id=? LIMIT 1`,
        [userId]
      )
      if (!rows.length) return { ok: false, msg: '用户不存在', fnVer: FN_VER }
      const tagsMap = await loadTagsForUsers([userId])
      const user = mapUser(rows[0], tagsMap)
      const spendMap = await loadSpendByUsers([userId])
      attachSpend([user], spendMap)
      const venues = await listVenues()

      const [cards] = await pool.query(
        `SELECT * FROM member_cards WHERE user_id=? AND IFNULL(status,'')<>'deleted' ORDER BY id DESC LIMIT 50`,
        [userId]
      )
      const [books] = await pool.query(
        `SELECT id, court, DATE_FORMAT(date, '%Y-%m-%d') AS date, time, status, amount, card_name, venue_name, remark
           FROM bookings WHERE user_id=? ORDER BY date DESC, id DESC LIMIT 80`,
        [userId]
      )
      let ledger = []
      try {
        const [led] = await pool.query(
          `SELECT id, DATE_FORMAT(biz_date, '%Y-%m-%d') AS biz_date, type, amount, venue_name, remark, created_at
             FROM finance_ledger WHERE user_id=? ORDER BY id DESC LIMIT 30`,
          [userId]
        )
        ledger = led || []
      } catch (e) {}

      return {
        ok: true,
        user,
        cards: (cards || []).map((c) => {
          let timeRule = c.time_rule
          if (typeof timeRule === 'string') {
            try { timeRule = JSON.parse(timeRule) } catch (e) { timeRule = null }
          }
          const rulesEdited = !!(c.rules_edited || (timeRule && timeRule.customized) || /\[已改规则\]/.test(String(c.remark || '')))
          return {
            _id: String(c.id),
            cardName: c.card_name,
            type: c.type,
            status: c.status,
            remainingTimes: c.remaining_times,
            totalTimes: c.total_times,
            validFrom: fmtYmd(c.valid_from),
            validTo: fmtYmd(c.valid_to),
            price: c.price != null ? Number(c.price) : null,
            venueName: c.venue_name || '',
            issuerName: c.issuer_name || '',
            templateId: c.template_id ? String(c.template_id) : '',
            timeRule,
            remark: c.remark || '',
            rulesEdited
          }
        }),
        bookings: (books || []).map((b) => ({
          _id: String(b.id),
          court: b.court,
          date: fmtYmd(b.date),
          time: b.time,
          status: b.status,
          amount: b.amount != null ? Number(b.amount) : 0,
          cardName: b.card_name || '',
          venueName: b.venue_name || '',
          remark: b.remark || ''
        })),
        ledger: ledger.map((r) => ({
          _id: String(r.id),
          date: fmtYmd(r.biz_date),
          type: r.type,
          amount: Number(r.amount) || 0,
          venueName: r.venue_name || '',
          remark: r.remark || ''
        })),
        tags: await listTags(),
        venues,
        fnVer: FN_VER
      }
    }

    // list
    const keyword = String(body.keyword || '').trim()
    const venueId = body.venueId || ''
    const tagId = body.tagId ? Number(body.tagId) : 0
    const cardType = String(body.cardType || '').trim()
    const cardName = String(body.cardName || '').trim()
    const cardStatus = String(body.cardStatus || '').trim()
    const createdFrom = String(body.createdFrom || '').slice(0, 10)
    const createdTo = String(body.createdTo || '').slice(0, 10)
    const sort = String(body.sort || 'id_desc')
    const page = Math.max(1, Number(body.page) || 1)
    const pageSize = body.export
      ? Math.min(500, Math.max(20, Number(body.pageSize) || 500))
      : Math.min(100, Math.max(20, Number(body.pageSize) || 50))

    let sql = `SELECT u.id, u.openid, u.user_id, u.nick_name, u.avatar_url, u.phone,
                      u.role, u.created_at, u.updated_at, u.venue_id, u.venue_name, u.remark,
                      IFNULL(u.balance,0) AS balance, IFNULL(u.points,0) AS points,
                IFNULL(u.balance,0) AS balance, IFNULL(u.points,0) AS points,
                      (SELECT COUNT(*) FROM member_cards c WHERE c.user_id=u.id AND c.status='active') AS card_count,
                      (SELECT COALESCE(SUM(amount),0) FROM finance_ledger f
                        WHERE f.user_id=u.id AND f.amount>0 AND f.type IN ('court_pay','card_issue')) AS total_spend,
                      (SELECT DATE_FORMAT(MAX(date), '%Y-%m-%d') FROM bookings b WHERE b.user_id=u.id AND b.status='booked') AS last_visit
                 FROM users u WHERE 1=1`
    const params = []
    if (venueId) {
      sql += ' AND u.venue_id=?'
      params.push(venueId)
    }
    if (keyword) {
      sql += ` AND (
        CONVERT(IFNULL(u.nick_name,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
        OR CONVERT(IFNULL(u.phone,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
        OR CONVERT(IFNULL(u.user_id,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
        OR CONVERT(IFNULL(u.remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
      )`
      const like = '%' + keyword + '%'
      params.push(like, like, like, like)
    }
    if (tagId) {
      sql += ' AND EXISTS (SELECT 1 FROM user_tag_map m WHERE m.user_id=u.id AND m.tag_id=?)'
      params.push(tagId)
    }
    if (cardType || cardName || cardStatus) {
      sql += ` AND EXISTS (
        SELECT 1 FROM member_cards c
        WHERE c.user_id=u.id AND IFNULL(c.status,'') NOT IN ('deleted','refunded')`
      if (cardType) {
        sql += ' AND c.type=?'
        params.push(cardType)
      }
      if (cardName) {
        sql += ` AND CONVERT(IFNULL(c.card_name,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci`
        params.push('%' + cardName + '%')
      }
      sql += cardStatusSql(cardStatus)
      sql += ')'
    }
    if (createdFrom) {
      sql += ' AND DATE(u.created_at)>=?'
      params.push(createdFrom)
    }
    if (createdTo) {
      sql += ' AND DATE(u.created_at)<=?'
      params.push(createdTo)
    }
    const orderMap = {
      id_desc: 'u.id DESC',
      id_asc: 'u.id ASC',
      spend_desc: 'total_spend DESC, u.id DESC',
      balance_desc: 'balance DESC, u.id DESC',
      spend_asc: 'total_spend ASC, u.id DESC',
      cards_desc: 'card_count DESC, u.id DESC',
      visit_desc: 'last_visit DESC, u.id DESC',
      created_desc: 'u.created_at DESC',
      created_asc: 'u.created_at ASC'
    }
    sql += ' ORDER BY ' + (orderMap[sort] || orderMap.id_desc)
    sql += ' LIMIT ? OFFSET ?'
    params.push(pageSize, (page - 1) * pageSize)

    let rows
    try {
      const [r] = await pool.query(sql, params)
      rows = r
    } catch (e) {
      let sql2 = `SELECT u.id, u.openid, u.user_id, u.nick_name, u.avatar_url, u.phone,
                         u.role, u.created_at, u.updated_at, u.remark,
                         0 AS card_count, 0 AS total_spend, NULL AS last_visit
                    FROM users u WHERE 1=1`
      const p2 = []
      if (keyword) {
        sql2 += ` AND (
          CONVERT(IFNULL(u.nick_name,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
          OR CONVERT(IFNULL(u.phone,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
          OR CONVERT(IFNULL(u.user_id,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT(? USING utf8mb4) COLLATE utf8mb4_general_ci
        )`
        const like = '%' + keyword + '%'
        p2.push(like, like, like)
      }
      sql2 += ' ORDER BY u.id DESC LIMIT 200'
      const [r2] = await pool.query(sql2, p2)
      rows = r2
    }

    const ids = (rows || []).map((u) => u.id)
    const tagsMap = await loadTagsForUsers(ids)
    const cardsMap = await loadCardsForUsers(ids)
    const list = attachSpend((rows || []).map((u) => {
      const item = mapUser(u, tagsMap)
      item.cards = cardsMap[String(u.id)] || []
      return item
    }), await loadSpendByUsers(ids))
    return {
      ok: true,
      list,
      tags: await listTags(),
      venues: await listVenues(),
      fnVer: FN_VER
    }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '查询用户失败', fnVer: FN_VER }
  }
}
