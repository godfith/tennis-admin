const mysql = require('mysql2/promise')
async function main() {
  const pool = mysql.createPool({
    host: 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
    port: 26462, user: 'root', password: 'Admin123.', database: 'goat_prod',
    connectionLimit: 2, connectTimeout: 15000
  })
  const q = async (label, sql) => {
    const [rows] = await pool.query(sql)
    console.log(label + ' => ' + JSON.stringify(rows))
  }
  await q('A_cancel_zero_with_pos', `SELECT COUNT(*) n FROM finance_ledger c JOIN finance_ledger u ON u.booking_id=c.booking_id AND u.type IN ('card_use','issue_card') AND u.amount>0 WHERE c.type='card_use_cancel' AND c.amount=0 AND c.booking_id IS NOT NULL`)
  await q('B_cancel_no_nonzero_cancel_30d', `SELECT COUNT(*) n FROM bookings b WHERE b.status='cancelled' AND b.card_id IS NOT NULL AND EXISTS (SELECT 1 FROM finance_ledger f WHERE f.booking_id=b.id AND f.type IN ('card_use','issue_card') AND f.amount>0) AND NOT EXISTS (SELECT 1 FROM finance_ledger f2 WHERE f2.booking_id=b.id AND f2.type IN ('card_use_cancel','court_cancel','court_refund','refund_card') AND f2.amount<>0) AND b.updated_at >= CURDATE() - INTERVAL 30 DAY`)
  await q('C_short_court_future', `SELECT id,court,DATE_FORMAT(date,'%Y-%m-%d') d,time,status,venue_id FROM bookings WHERE status IN ('booked','locked') AND date>=CURDATE() AND court NOT LIKE '%场'`)
  await q('D_active_times_zero', `SELECT COUNT(*) n FROM member_cards WHERE status='active' AND type IN ('times','coach') AND IFNULL(remaining_times,0)<=0`)
  await q('E_expired_active', `SELECT COUNT(*) n FROM member_cards WHERE status='active' AND valid_to IS NOT NULL AND valid_to < CURDATE()`)
  await q('F_amount0_booked_pos_ledger', `SELECT COUNT(*) n FROM bookings b WHERE b.status='booked' AND IFNULL(b.amount,0)=0 AND EXISTS (SELECT 1 FROM finance_ledger f WHERE f.booking_id=b.id AND f.amount>0 AND f.type IN ('card_use','issue_card','court_pay','court_book'))`)
  await q('G_locked_future', `SELECT COUNT(*) n FROM bookings WHERE status='locked' AND date>=CURDATE()`)
  await q('H_lock_intents', `SHOW TABLES LIKE 'lock_intents'`)
  await q('I_prod_fn_note', `SELECT 'local 20261105b undeployed; prod userApi/saveBooking still 20261105a' AS note`)
  await q('J_chenjiaci_variants_30d', `SELECT court, COUNT(*) n FROM bookings WHERE venue_id='venue_chenjiaci' AND date>=CURDATE()-INTERVAL 30 DAY GROUP BY court`)
  await q('K_pending_pay_7d', `SELECT COUNT(*) n FROM pay_orders WHERE status='pending' AND created_at < NOW()-INTERVAL 7 DAY`)
  await q('L_booked_after_expiry', `SELECT COUNT(*) n FROM bookings b JOIN member_cards c ON c.id=b.card_id WHERE b.status='booked' AND c.valid_to IS NOT NULL AND b.date > c.valid_to`)
  await pool.end()
}
main().catch(e=>{console.error(e);process.exit(1)})
