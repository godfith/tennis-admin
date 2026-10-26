-- 中大店预约场地名统一成 courts 表的短名
-- 1号场-发球机 → 1号, 2号场-发球机 → 2号, 等等

UPDATE bookings SET court='1号' WHERE venue_id='venue_zhongda' AND court='1号场-发球机';
UPDATE bookings SET court='2号' WHERE venue_id='venue_zhongda' AND court='2号场-发球机';
UPDATE bookings SET court='3号' WHERE venue_id='venue_zhongda' AND court='3号场-发球机';
UPDATE bookings SET court='4号' WHERE venue_id='venue_zhongda' AND court='4号场-发球机/匹克球';
UPDATE bookings SET court='5号' WHERE venue_id='venue_zhongda' AND court='5号场-发球机/匹克球';
UPDATE bookings SET court='8号' WHERE venue_id='venue_zhongda' AND court='8号场-发球机/匹克球';

-- 确认
SELECT court, COUNT(*) AS cnt FROM bookings WHERE venue_id='venue_zhongda' AND date='2026-10-26' AND status='booked' GROUP BY court;
