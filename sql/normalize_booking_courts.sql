-- Optional: normalize historical booking.court values (strip trailing 场)
-- Safe to preview first. Do NOT rely on a partial unique index alone for race safety;
-- application uses GET_LOCK('book:venue:date:time:court') around busy-check + insert.

-- Preview duplicates that would collide after normalize:
-- SELECT venue_id, date, time, TRIM(TRAILING '场' FROM court) AS c, COUNT(*) cnt
-- FROM bookings
-- WHERE status IN ('booked','locked')
-- GROUP BY venue_id, date, time, TRIM(TRAILING '场' FROM court)
-- HAVING cnt > 1;

-- Normalize rows (MySQL 8+ TRIM TRAILING; fallback UPDATE with LIKE):
UPDATE bookings
   SET court = TRIM(TRAILING '场' FROM court)
 WHERE court LIKE '%场';

-- Optional generated-column unique idea (RISKY if legacy conflicts exist; review preview first):
-- ALTER TABLE bookings
--   ADD COLUMN court_norm VARCHAR(32)
--     GENERATED ALWAYS AS (TRIM(TRAILING '场' FROM court)) STORED,
--   ADD COLUMN slot_active TINYINT
--     GENERATED ALWAYS AS (IF(status IN ('booked','locked'), 1, NULL)) STORED;
-- -- Unique only works for one active row per slot if slot_active is NULL for cancelled:
-- -- CREATE UNIQUE INDEX uk_booking_slot_active
-- --   ON bookings (venue_id, date, time, court_norm, slot_active);
-- Rollback: DROP INDEX uk_booking_slot_active; ALTER TABLE bookings DROP COLUMN slot_active, DROP COLUMN court_norm;

-- Primary defense remains GET_LOCK in userApi / adminSaveBooking / pay (20261104a).
