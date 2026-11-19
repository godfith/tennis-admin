const mysql = require('mysql2/promise')
async function main() {
  const pool = mysql.createPool({
    host: process.env.DB_HOST || 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
    port: Number(process.env.DB_PORT || 26462),
    user: process.env.DB_USER || 'root',
    password: process.env.DB_PASSWORD || 'Admin123.',
    database: process.env.DB_NAME || 'goat_prod',
    waitForConnections: true,
    connectionLimit: 3,
    connectTimeout: 15000
  })
  const q = async (label, sql) => {
    try {
      const [rows] = await pool.query(sql)
      console.log('\n### ' + label)
      console.log(JSON.stringify(rows, null, 0).slice(0, 4000))
    } catch (e) {
      console.log('\n### ' + label + ' ERROR: ' + e.message)
    }
  }
  await q('venues', `SELECT id,name FROM venues LIMIT 20`)
  await q('court_name_mismatch_prices', `
    SELECT cp.venue_id, cp.court AS price_court, c.name AS court_name, COUNT(*) cnt
    FROM court_prices cp
    LEFT JOIN courts c ON c.venue_id=cp.venue_id AND (c.name=cp.court OR c.name=CONCAT(TRIM(TRAILING '场' FROM cp.court),'场') OR TRIM(TRAILING '场' FROM c.name)=TRIM(TRAILING '场' FROM cp.court))
    WHERE c.id IS NULL
    GROUP BY cp.venue_id, cp.court, c.name
    LIMIT 50`)
  await q('booking_court_vs_courts', `
    SELECT b.venue_id, b.court, COUNT(*) cnt,
      SUM(CASE WHEN EXISTS(SELECT 1 FROM courts c WHERE c.venue_id=b.venue_id AND c.name=b.court) THEN 0 ELSE 1 END) as exact_miss
    FROM bookings b
    WHERE b.status IN ('booked','locked') AND b.date >= CURDATE() - INTERVAL 7 DAY
    GROUP BY b.venue_id, b.court
    ORDER BY cnt DESC LIMIT 40`)
  await q('card_use_cancel_zero', `
    SELECT COUNT(*) AS n_zero,
      SUM(CASE WHEN amount=0 THEN 1 ELSE 0 END) AS zeros,
      SUM(CASE WHEN amount<>0 THEN 1 ELSE 0 END) AS nonzero
    FROM finance_ledger WHERE type='card_use_cancel'`)
  await q('card_use_cancel_zero_with_positive_use', `
    SELECT COUNT(*) AS n
    FROM finance_ledger c
    JOIN finance_ledger u ON u.booking_id=c.booking_id AND u.type IN ('card_use','issue_card') AND u.amount>0
    WHERE c.type='card_use_cancel' AND c.amount=0 AND c.booking_id IS NOT NULL
  `)
  await q('amount0_booked_with_positive_ledger', `
    SELECT COUNT(*) AS n FROM bookings b
    WHERE b.status='booked' AND IFNULL(b.amount,0)=0
      AND EXISTS (
        SELECT 1 FROM finance_ledger f
        WHERE f.booking_id=b.id AND f.amount>0 AND f.type IN ('card_use','issue_card','court_pay','wallet_pay')
      )`)
  await q('amount0_booked_sample', `
    SELECT b.id,b.venue_id,b.court,b.date,b.time,b.amount,b.card_id,b.user_id,b.pay_method
    FROM bookings b
    WHERE b.status='booked' AND IFNULL(b.amount,0)=0
      AND EXISTS (
        SELECT 1 FROM finance_ledger f
        WHERE f.booking_id=b.id AND f.amount>0 AND f.type IN ('card_use','issue_card','court_pay','wallet_pay')
      )
    ORDER BY b.id DESC LIMIT 15`)
  await q('duplicate_active_slots', `
    SELECT venue_id, date, time,
      TRIM(TRAILING '场' FROM court) AS court_norm,
      COUNT(*) AS n,
      GROUP_CONCAT(CONCAT(id,':',court,':',status) ORDER BY id) AS ids
    FROM bookings
    WHERE status IN ('booked','locked') AND date >= CURDATE() - INTERVAL 3 DAY
    GROUP BY venue_id, date, time, TRIM(TRAILING '场' FROM court)
    HAVING COUNT(*) > 1
    ORDER BY date DESC, n DESC
    LIMIT 30`)
  await q('locked_without_intent_table', `
    SELECT COUNT(*) AS locked_future FROM bookings
    WHERE status='locked' AND date >= CURDATE()`)
  await q('orphan_bookings_no_user', `
    SELECT COUNT(*) AS n FROM bookings b
    LEFT JOIN users u ON u.id=b.user_id
    WHERE b.status='booked' AND b.user_id IS NOT NULL AND u.id IS NULL`)
  await q('ledger_types', `
    SELECT type, COUNT(*) n, SUM(amount) sum_amt,
      SUM(CASE WHEN amount=0 THEN 1 ELSE 0 END) zeros
    FROM finance_ledger
    GROUP BY type ORDER BY n DESC`)
  await q('cards_expired_still_active', `
    SELECT COUNT(*) AS n FROM member_cards
    WHERE status='active' AND expire_date IS NOT NULL AND expire_date < CURDATE()`)
  await q('cards_negative_remaining', `
    SELECT COUNT(*) AS n, MIN(remaining_times) mn FROM member_cards
    WHERE remaining_times < 0`)
  await q('duplicate_court_prices', `
    SELECT venue_id, weekday, time_slot,
      TRIM(TRAILING '场' FROM court) AS court_norm,
      COUNT(*) n, GROUP_CONCAT(DISTINCT court) courts, GROUP_CONCAT(DISTINCT price) prices
    FROM court_prices
    GROUP BY venue_id, weekday, time_slot, TRIM(TRAILING '场' FROM court)
    HAVING COUNT(*)>1 OR COUNT(DISTINCT price)>1
    LIMIT 40`)
  await q('group_vs_booking_overlap_future', `
    SELECT g.id AS gid, g.venue_id, g.date, g.time, g.court AS gcourt, b.id AS bid, b.court AS bcourt, b.status
    FROM group_classes g
    JOIN bookings b ON b.venue_id=g.venue_id AND b.date=g.date AND b.time=g.time
      AND TRIM(TRAILING '场' FROM b.court)=TRIM(TRAILING '场' FROM g.court)
      AND b.status IN ('booked','locked')
    WHERE g.status!='cancelled' AND g.date >= CURDATE()
    LIMIT 30`)
  await q('court_name_variants_in_bookings', `
    SELECT venue_id, TRIM(TRAILING '场' FROM court) AS n,
      GROUP_CONCAT(DISTINCT court) variants, COUNT(*) cnt
    FROM bookings
    WHERE date >= CURDATE() - INTERVAL 30 DAY
    GROUP BY venue_id, TRIM(TRAILING '场' FROM court)
    HAVING COUNT(DISTINCT court) > 1
    LIMIT 40`)
  await q('finance_missing_labels_sample_types', `
    SELECT DISTINCT type FROM finance_ledger
    WHERE type NOT IN (
      'court_pay','court_refund','card_use','card_use_cancel','issue_card','refund_card',
      'wallet_pay','wallet_refund','wallet_recharge','wallet_adjust','gift','extend_card',
      'admin_adjust','points'
    )
    LIMIT 50`)
  await pool.end()
}
main().catch(e => { console.error(e); process.exit(1) })
