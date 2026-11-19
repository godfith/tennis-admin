const mysql = require('mysql2/promise')
async function main() {
  const pool = mysql.createPool({
    host: 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
    port: 26462, user: 'root', password: 'Admin123.', database: 'goat_prod',
    connectionLimit: 2, connectTimeout: 15000
  })
  const q = async (label, sql) => {
    const [rows] = await pool.query(sql)
    console.log('\n### '+label+'\n'+JSON.stringify(rows).slice(0,3000))
  }
  await q('pending_pay_old', `
    SELECT COUNT(*) n,
      SUM(CASE WHEN created_at < NOW()-INTERVAL 1 DAY THEN 1 ELSE 0 END) older_1d,
      SUM(CASE WHEN created_at < NOW()-INTERVAL 7 DAY THEN 1 ELSE 0 END) older_7d
    FROM pay_orders WHERE status='pending'`)
  await q('pending_with_booking', `
    SELECT COUNT(*) n FROM pay_orders p
    WHERE status='pending' AND booking_id IS NOT NULL
      AND EXISTS (SELECT 1 FROM bookings b WHERE b.id=p.booking_id AND b.status='booked')`)
  await q('paid_no_booking', `
    SELECT COUNT(*) n FROM pay_orders WHERE status='paid' AND (booking_id IS NULL OR booking_id=0)`)
  await q('short_court_future_count', `
    SELECT COUNT(*) n FROM bookings
    WHERE status IN ('booked','locked') AND date>=CURDATE()
      AND court NOT LIKE '%场'`)
  await q('admin_plaintext', `SELECT COUNT(*) n FROM admins`)
  // used_up not set when remaining 0
  await q('active_zero_by_type', `
    SELECT type, COUNT(*) n FROM member_cards
    WHERE status='active' AND IFNULL(remaining_times,0)<=0
    GROUP BY type`)
  // cancel zeros last 7d
  await q('cancel_zero_7d', `
    SELECT COUNT(*) n FROM finance_ledger
    WHERE type='card_use_cancel' AND amount=0 AND created_at>=NOW()-INTERVAL 7 DAY`)
  await q('users_with_negative_balance', `
    SHOW COLUMNS FROM users LIKE '%balance%'`)
  await q('neg_balance', `
    SELECT COUNT(*) n FROM users WHERE balance < 0`)
  await pool.end()
}
main().catch(e=>{console.error(e);process.exit(1)})
