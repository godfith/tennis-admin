-- Restore booking.court / pay_orders.court to courts.name (with 场) for mini-program display.
-- Prefer this over normalize_booking_courts.sql which strips trailing 场.
-- Run Preview first in CloudBase MySQL.

-- Preview
SELECT b.id, b.venue_id, b.court AS old_court, c.name AS new_court, b.date, b.time, b.status
FROM bookings b
JOIN courts c ON c.venue_id = b.venue_id
  AND TRIM(TRAILING '场' FROM c.name) = TRIM(TRAILING '场' FROM b.court)
  AND IFNULL(c.status,'open') NOT IN ('disabled','closed','停用')
WHERE b.court <> c.name;

-- Apply
UPDATE bookings b
JOIN courts c ON c.venue_id = b.venue_id
  AND TRIM(TRAILING '场' FROM c.name) = TRIM(TRAILING '场' FROM b.court)
  AND IFNULL(c.status,'open') NOT IN ('disabled','closed','停用')
SET b.court = c.name
WHERE b.court <> c.name;

-- Optional pay_orders too
UPDATE pay_orders p
JOIN courts c ON c.venue_id = p.venue_id
  AND TRIM(TRAILING '场' FROM c.name) = TRIM(TRAILING '场' FROM p.court)
SET p.court = c.name
WHERE p.court IS NOT NULL AND p.court <> '' AND p.court <> c.name;
