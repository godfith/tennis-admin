const mysql = require('mysql2/promise')
async function main() {
  const pool = mysql.createPool({
    host: 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
    port: 26462, user: 'root', password: 'Admin123.', database: 'goat_prod',
    connectionLimit: 3, connectTimeout: 15000
  })
  const q = async (label, sql) => {
    try {
      const [rows] = await pool.query(sql)
      console.log('\n### ' + label)
      console.log(JSON.stringify(rows).slice(0, 4500))
    } catch (e) { console.log('\n### ' + label + ' ERROR: ' + e.message) }
  }
  await q('expired_valid_to_active', `
    SELECT COUNT(*) n FROM member_cards
    WHERE status='active' AND valid_to IS NOT NULL AND valid_to < CURDATE()`)
  await q('expired_sample', `
    SELECT id,user_id,card_name,type,remaining_times,valid_to,price
    FROM member_cards WHERE status='active' AND valid_to < CURDATE()
    ORDER BY valid_to LIMIT 10`)
  await q('active_times0_sample', `
    SELECT id,user_id,card_name,type,remaining_times,price,valid_to
    FROM member_cards WHERE status='active' AND IFNULL(remaining_times,0)<=0 AND type!='stored'
    ORDER BY id DESC LIMIT 10`)
  await q('amount0_booked_sample', `
    SELECT b.id,b.venue_id,b.court,DATE_FORMAT(b.date,'%Y-%m-%d') d,b.time,b.amount,b.card_id,b.user_id,b.source,
      (SELECT GROUP_CONCAT(CONCAT(f.type,':',f.amount) ORDER BY f.id) FROM finance_ledger f WHERE f.booking_id=b.id) ledgers
    FROM bookings b
    WHERE b.status='booked' AND IFNULL(b.amount,0)=0
      AND EXISTS (SELECT 1 FROM finance_ledger f WHERE f.booking_id=b.id AND f.amount>0 AND f.type IN ('card_use','issue_card','court_pay','court_book'))
    ORDER BY b.id DESC LIMIT 12`)
  await q('courts_names', `SELECT venue_id, name FROM courts WHERE venue_id IN ('venue_chenjiaci','venue_zhongda') ORDER BY venue_id, id`)
  await q('chenjiaci_short_court_future', `
    SELECT id,court,DATE_FORMAT(date,'%Y-%m-%d') d,time,status FROM bookings
    WHERE venue_id='venue_chenjiaci' AND status IN ('booked','locked') AND date>=CURDATE()
      AND court NOT LIKE '%场%' AND court NOT LIKE '%发球%'
    LIMIT 20`)
  await q('chenjiaci_short_court_recent', `
    SELECT id,court,DATE_FORMAT(date,'%Y-%m-%d') d,time,status FROM bookings
    WHERE venue_id='venue_chenjiaci' AND date>=CURDATE()-INTERVAL 14 DAY
      AND (court IN ('1','2','3','4') OR court REGEXP '^[0-9]+$')
    LIMIT 30`)
  await q('refund_card_without_status', `
    SELECT COUNT(*) n FROM finance_ledger f
    LEFT JOIN member_cards c ON c.id=f.card_id
    WHERE f.type='refund_card' AND (c.id IS NULL OR c.status NOT IN ('refunded','cancelled','used_up'))`)
  await q('double_issue_same_booking', `
    SELECT booking_id, COUNT(*) n, SUM(amount) s FROM finance_ledger
    WHERE type='issue_card' AND booking_id IS NOT NULL
    GROUP BY booking_id HAVING COUNT(*)>1 LIMIT 20`)
  await q('pay_orders_pending', `
    SHOW TABLES LIKE '%pay%'`)
  await q('tables', `SHOW TABLES`)
  await pool.end()
}
main().catch(e=>{console.error(e);process.exit(1)})
