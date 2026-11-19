const mysql = require('mysql2/promise')
async function main() {
  const pool = mysql.createPool({
    host: 'sh-cynosdbmysql-grp-94l9er02.sql.tencentcdb.com',
    port: 26462, user: 'root', password: 'Admin123.', database: 'goat_prod',
    connectionLimit: 2, connectTimeout: 15000
  })
  const [rows] = await pool.query(`
    SELECT id, court, HEX(court) hexc, CHAR_LENGTH(court) len,
      DATE_FORMAT(date,'%Y-%m-%d') d, time, status
    FROM bookings WHERE id IN (1992,2018,2024,2039)
  `)
  console.log(JSON.stringify(rows,null,2))
  const [r2] = await pool.query(`
    SELECT court, HEX(court) hexc, COUNT(*) n
    FROM bookings WHERE venue_id='venue_chenjiaci' AND date>=CURDATE()-INTERVAL 30 DAY
    GROUP BY court ORDER BY n DESC
  `)
  console.log('variants', JSON.stringify(r2,null,2))
  const [r3] = await pool.query(`
    SELECT status, COUNT(*) n FROM pay_orders GROUP BY status
  `)
  console.log('pay_orders', JSON.stringify(r3))
  const [r4] = await pool.query(`
    SELECT COUNT(*) n FROM pay_orders WHERE status IN ('pending','CREATED','created','unpaid') OR status IS NULL
  `)
  console.log('pendingish', JSON.stringify(r4))
  const [r5] = await pool.query(`SHOW COLUMNS FROM pay_orders`)
  console.log('pay_cols', r5.map(x=>x.Field).join(','))
  // cards used after valid_to
  const [r6] = await pool.query(`
    SELECT COUNT(*) n FROM bookings b
    JOIN member_cards c ON c.id=b.card_id
    WHERE b.status='booked' AND c.valid_to IS NOT NULL AND b.date > c.valid_to
  `)
  console.log('booked_after_card_expiry', JSON.stringify(r6))
  await pool.end()
}
main().catch(e=>{console.error(e);process.exit(1)})
