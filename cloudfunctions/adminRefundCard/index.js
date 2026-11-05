const mysql = require('mysql2/promise')

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

function money(v) {
  const n = Number(v)
  if (!Number.isFinite(n)) return 0
  return Math.round(n * 100) / 100
}

function refundAmount(card) {
  const price = money(card.price)
  const total = Number(card.total_times) || 0
  const left = Number(card.remaining_times) || 0
  if (card.type === 'time') return price
  if (total > 0) return money((price * left) / total)
  return price
}

async function writeRefund(card, amt, operatorName) {
  try {
    await pool.query(
      `UPDATE member_cards
          SET status='refunded', refund_amount=?, refunded_at=NOW(),
              refund_operator=?, updated_at=NOW()
        WHERE id=?`,
      [amt, operatorName, card.id]
    )
  } catch (e) {
    try {
      await pool.query(
        `UPDATE member_cards SET status='refunded', refund_amount=?, refunded_at=NOW(), updated_at=NOW() WHERE id=?`,
        [amt, card.id]
      )
    } catch (e2) {
      await pool.query(`UPDATE member_cards SET status='refunded', updated_at=NOW() WHERE id=?`, [card.id])
    }
  }
  if (amt) {
    try {
      await pool.query(
        `INSERT INTO finance_ledger
          (biz_date, type, amount, venue_id, venue_name, user_id, user_name,
           operator_name, card_id, remark)
         VALUES (CURDATE(), 'refund_card', ?, ?, ?, ?, ?, ?, ?, ?)`,
        [
          -amt,
          card.venue_id || '',
          card.venue_name || '',
          card.user_id || null,
          card.user_name || '',
          operatorName,
          card.id,
          (card.card_name || '会员卡') + ' 退卡'
        ]
      )
    } catch (e) {}
  }
  try {
    await pool.query(
      `INSERT INTO activity_logs
        (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, NOW())`,
      [
        'card_refund',
        card.user_name || '',
        operatorName,
        '',
        '退卡 ' + (card.card_name || '') + ' 退款' + amt + '元',
        card.venue_id || '',
        card.venue_name || ''
      ]
    )
  } catch (e) {}
}

exports.main = async (event) => {
  try {
    const body = parseEvent(event)
    const cardId = body.cardId
    const operatorName = body.operatorName || '管理员'
    const action = body.action || 'refund'
    if (!cardId) return { ok: false, msg: '缺少卡号' }

    const [rows] = await pool.query('SELECT * FROM member_cards WHERE id=? LIMIT 1', [cardId])
    const card = rows[0]
    if (!card) return { ok: false, msg: '会员卡不存在' }
    if (card.status === 'deleted') return { ok: false, msg: '这张卡已经删了' }

    if (action === 'delete') {
      let amt = 0
      if (card.status !== 'refunded') {
        amt = refundAmount(card)
        await writeRefund(card, amt, operatorName)
      }
      await pool.query(`UPDATE member_cards SET status='deleted', updated_at=NOW() WHERE id=?`, [cardId])
      try {
        await pool.query(
          `INSERT INTO activity_logs
            (type, user_name, operator_name, phone, detail, venue_id, venue_name, created_at)
           VALUES (?, ?, ?, ?, ?, ?, ?, NOW())`,
          [
            'card_delete',
            card.user_name || '',
            operatorName,
            '',
            '删除卡 ' + (card.card_name || '') + (amt ? ' 并退款' + amt + '元' : ''),
            card.venue_id || '',
            card.venue_name || ''
          ]
        )
      } catch (e) {}
      return { ok: true, deleted: true, refundAmount: amt }
    }

    if (card.status === 'refunded') return { ok: false, msg: '已退卡' }

    const amt = refundAmount(card)
    await writeRefund(card, amt, operatorName)
    return { ok: true, refundAmount: amt }
  } catch (e) {
    console.error(e)
    return { ok: false, msg: e.message || '退卡失败' }
  }
}
