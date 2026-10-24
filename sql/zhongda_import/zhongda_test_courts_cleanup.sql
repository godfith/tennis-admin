-- 删除中大店测试场地及价格
DELETE FROM court_prices WHERE venue_id='venue_zhongda' AND court IN ('测试1号场','测试2号场','测试发球机');
DELETE FROM courts WHERE venue_id='venue_zhongda' AND name IN ('测试1号场','测试2号场','测试发球机');
SELECT 'courts left' AS what, COUNT(*) AS cnt FROM courts WHERE venue_id='venue_zhongda'
UNION ALL
SELECT 'prices left', COUNT(*) FROM court_prices WHERE venue_id='venue_zhongda';
