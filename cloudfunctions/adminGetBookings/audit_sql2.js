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
      console.log(JSON.stringify(rows).slice(0, 5000))
    } catch (e) { console.log('\n### ' + label + ' ERROR: ' + e.message) }
  }
  // member_cards schema
  await q('member_cards_cols', `SHOW COLUMNS FROM member_cards`)
  await q('bookings_cols_pay', `SHOW COLUMNS FROM bookings LIKE '%pay%'`)
  await q('bookings_cols_amount', `SHOW COLUMNS FROM bookings LIKE '%amount%'`)
  await q('lock_intents_exists', `SHOW TABLES LIKE 'lock_intents'`)
  await q('expired_cards', `
    SELECT COUNT(*) n FROM member_cards
    WHERE status='active' AND (
      (expires_at IS NOT NULL AND expires_at < NOW())
      OR (expire_at IS NOT NULL AND expire_at < NOW())
      OR (end_date IS NOT NULL AND end_date < CURDATE())
      OR (valid_to IS NOT NULL AND valid_to < CURDATE())
    )`)
  await q('card_date_cols_sample', `
    SELECT id, status, remaining_times, price, type, card_name,
      created_at, updated_at
    FROM member_cards ORDER BY id DESC LIMIT 3`)
  await q('amount0_booked_sample', `
    SELECT b.id,b.venue_id,b.court,b.date,b.time,b.amount,b.card_id,b.user_id,b.pay_type,b.payment_type,b.status
    FROM bookings b
    WHERE b.status='booked' AND IFNULL(b.amount,0)=0
      AND EXISTS (SELECT 1 FROM finance_ledger f WHERE f.booking_id=b.id AND f.amount>0 AND f.type IN ('card_use','issue_card','court_pay','wallet_pay','court_book'))
    ORDER BY b.id DESC LIMIT 10`)
  await q('bookings_all_cols', `SHOW COLUMNS FROM bookings`)
  await q('cancelled_with_no_cancel_ledger', `
    SELECT COUNT(*) n FROM bookings b
    WHERE b.status='cancelled' AND b.card_id IS NOT NULL
      AND EXISTS (SELECT 1 FROM finance_ledger f WHERE f.booking_id=b.id AND f.type IN ('card_use','issue_card') AND f.amount>0)
      AND NOT EXISTS (SELECT 1 FROM finance_ledger f2 WHERE f2.booking_id=b.id AND f2.type IN ('card_use_cancel','court_cancel','court_refund','refund_card') AND f2.amount<>0)
      AND b.updated_at >= CURDATE() - INTERVAL 30 DAY`)
  await q('cancelled_no_cancel_sample', `
    SELECT b.id,b.venue_id,b.user_id,b.date,b.time,b.court,b.amount,b.card_id,b.updated_at
    FROM bookings b
    WHERE b.status='cancelled' AND b.card_id IS NOT NULL
      AND EXISTS (SELECT 1 FROM finance_ledger f WHERE f.booking_id=b.id AND f.type IN ('card_use','issue_card') AND f.amount>0)
      AND NOT EXISTS (SELECT 1 FROM finance_ledger f2 WHERE f2.booking_id=b.id AND f2.type IN ('card_use_cancel','court_cancel','court_refund','refund_card') AND f2.amount<>0)
      AND b.updated_at >= CURDATE() - INTERVAL 30 DAY
    ORDER BY b.id DESC LIMIT 15`)
  await q('future_dup_slots_chenjiaci', `
    SELECT venue_id, date, time, TRIM(TRAILING '场' FROM court) AS court_norm, COUNT(*) n,
      GROUP_CONCAT(CONCAT(id,':',court,':',status) ORDER BY id) ids
    FROM bookings
    WHERE status IN ('booked','locked') AND date >= CURDATE() AND venue_id='venue_chenjiaci'
    GROUP BY venue_id, date, time, TRIM(TRAILING '场' FROM court)
    HAVING COUNT(*)>1 LIMIT 20`)
  await q('future_dup_any', `
    SELECT venue_id, date, time, TRIM(TRAILING '场' FROM court) AS court_norm, COUNT(*) n,
      GROUP_CONCAT(CONCAT(id,':',court,':',status) ORDER BY id) ids
    FROM bookings
    WHERE status IN ('booked','locked') AND date >= CURDATE()
    GROUP BY venue_id, date, time, TRIM(TRAILING '场' FROM court)
    HAVING COUNT(*)>1 LIMIT 30`)
  await q('active_cards_times0', `
    SELECT COUNT(*) n FROM member_cards WHERE status='active' AND IFNULL(remaining_times,0)<=0 AND type!='stored'`)
  await q('issue_card_zero', `
    SELECT COUNT(*) n FROM finance_ledger WHERE type='issue_card' AND amount=0`)
  await q('court_cancel_zero', `
    SELECT COUNT(*) n, SUM(ABS(amount)) s FROM finance_ledger WHERE type='court_cancel' AND amount=0`)
  await q('wallet_vs_balance_types', `
    SELECT type, COUNT(*) n, ROUND(SUM(amount),2) s FROM finance_ledger
    WHERE type LIKE '%balance%' OR type LIKE '%wallet%' GROUP BY type`)
  await q('locked_sample', `
    SELECT id,venue_id,court,date,time,user_name,remark,created_at
    FROM bookings WHERE status='locked' AND date>=CURDATE() ORDER BY date,time LIMIT 20`)
  await q('courts_names', `
    SELECT venue_id, name FROM courts WHERE venue_id IN ('venue_chenjiaci','venue_zhongda') ORDER BY venue_id, sort_order, id`)
  await pool.end()
}
main().catch(e=>{console.error(e);process.exit(1)})
