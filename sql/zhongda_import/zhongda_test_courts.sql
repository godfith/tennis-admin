-- 中大店测试场地（微信支付测试用）
-- 可重复执行，已有的跳过

INSERT INTO courts (venue_id, name, type, status, sort)
SELECT 'venue_zhongda', '测试1号场', 'tennis', 'open', 1
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM courts WHERE venue_id='venue_zhongda' AND name='测试1号场');

INSERT INTO courts (venue_id, name, type, status, sort)
SELECT 'venue_zhongda', '测试2号场', 'tennis', 'open', 2
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM courts WHERE venue_id='venue_zhongda' AND name='测试2号场');

INSERT INTO courts (venue_id, name, type, status, sort)
SELECT 'venue_zhongda', '测试发球机', 'machine', 'open', 3
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM courts WHERE venue_id='venue_zhongda' AND name='测试发球机');

-- 测试价格：周一到周日 08:00-22:00 都是 90 元（方便微信支付测试）
-- 先清掉旧的测试价格再插（可选，注释掉如果你不想清）
-- DELETE FROM court_prices WHERE venue_id='venue_zhongda' AND court IN ('测试1号场','测试2号场','测试发球机');

INSERT INTO court_prices (venue_id, court, time_slot, weekday, price)
SELECT 'venue_zhongda', c.name, t.slot, w.wd, 90
FROM (
  SELECT '测试1号场' AS name UNION SELECT '测试2号场' UNION SELECT '测试发球机'
) c
CROSS JOIN (
  SELECT '08:00-09:00' AS slot UNION SELECT '09:00-10:00' UNION SELECT '10:00-11:00'
  UNION SELECT '11:00-12:00' UNION SELECT '12:00-13:00' UNION SELECT '13:00-14:00'
  UNION SELECT '14:00-15:00' UNION SELECT '15:00-16:00' UNION SELECT '16:00-17:00'
  UNION SELECT '17:00-18:00' UNION SELECT '18:00-19:00' UNION SELECT '19:00-20:00'
  UNION SELECT '20:00-21:00' UNION SELECT '21:00-22:00'
) t
CROSS JOIN (
  SELECT 1 AS wd UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7
) w
WHERE NOT EXISTS (
  SELECT 1 FROM court_prices p
  WHERE p.venue_id='venue_zhongda' AND p.court=c.name AND p.time_slot=t.slot AND p.weekday=w.wd
);

SELECT 'courts' AS what, COUNT(*) AS cnt FROM courts WHERE venue_id='venue_zhongda'
UNION ALL
SELECT 'prices', COUNT(*) FROM court_prices WHERE venue_id='venue_zhongda';
