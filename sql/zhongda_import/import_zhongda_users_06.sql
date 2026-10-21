SET NAMES utf8mb4;
-- 中大店用户导入 part 6 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538935931', 'U13538935931', '温', '', '13538935931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-29 17:00:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538935931' LIMIT 1);
UPDATE users SET nick_name='温', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538935931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18672114493', 'U18672114493', 'ZzZoc', '', '18672114493', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-29 16:58:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18672114493' LIMIT 1);
UPDATE users SET nick_name='ZzZoc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18672114493';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813308339', 'U15813308339', '15813308339', '', '15813308339', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-29 15:51:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813308339' LIMIT 1);
UPDATE users SET nick_name='15813308339', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813308339';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926210201', 'U18926210201', 'Lionelxie', '', '18926210201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 70, '2025-11-29 15:11:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926210201' LIMIT 1);
UPDATE users SET nick_name='Lionelxie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 70) WHERE phone='18926210201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15302508904', 'U15302508904', '15302508904', '', '15302508904', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-29 15:06:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15302508904' LIMIT 1);
UPDATE users SET nick_name='15302508904', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15302508904';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15976327338', 'U15976327338', '陈栩', '', '15976327338', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-29 14:57:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15976327338' LIMIT 1);
UPDATE users SET nick_name='陈栩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15976327338';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18574723480', 'U18574723480', '八九', '', '18574723480', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-29 11:19:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18574723480' LIMIT 1);
UPDATE users SET nick_name='八九', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18574723480';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13530412326', 'U13530412326', '13530412326', '', '13530412326', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-29 11:17:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13530412326' LIMIT 1);
UPDATE users SET nick_name='13530412326', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13530412326';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265935670', 'U13265935670', '喂稀饭', '', '13265935670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-28 23:39:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265935670' LIMIT 1);
UPDATE users SET nick_name='喂稀饭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265935670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521152821', 'U15521152821', '楠', '', '15521152821', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-27 22:00:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521152821' LIMIT 1);
UPDATE users SET nick_name='楠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521152821';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666098450', 'U18666098450', '18666098450', '', '18666098450', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-27 19:46:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666098450' LIMIT 1);
UPDATE users SET nick_name='18666098450', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666098450';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17820559711', 'U17820559711', 'Usher', '', '17820559711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-27 17:56:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17820559711' LIMIT 1);
UPDATE users SET nick_name='Usher', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17820559711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026269812', 'U18026269812', '岁月静好', '', '18026269812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-27 11:44:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026269812' LIMIT 1);
UPDATE users SET nick_name='岁月静好', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026269812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480676891', 'U13480676891', 'VXPM', '', '13480676891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-11-26 23:02:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480676891' LIMIT 1);
UPDATE users SET nick_name='VXPM', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13480676891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13368406565', 'U13368406565', 'vi', '', '13368406565', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-26 19:30:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13368406565' LIMIT 1);
UPDATE users SET nick_name='vi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13368406565';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631404515', 'U13631404515', '13631404515', '', '13631404515', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-26 17:06:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631404515' LIMIT 1);
UPDATE users SET nick_name='13631404515', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631404515';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19904473106', 'U19904473106', '梁', '', '19904473106', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-26 16:18:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19904473106' LIMIT 1);
UPDATE users SET nick_name='梁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19904473106';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19876898032', 'U19876898032', '企服Dora', '', '19876898032', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-26 14:57:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19876898032' LIMIT 1);
UPDATE users SET nick_name='企服Dora', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19876898032';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18318889432', 'U18318889432', '18318889432', '', '18318889432', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-26 13:31:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18318889432' LIMIT 1);
UPDATE users SET nick_name='18318889432', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18318889432';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13016047557', 'U13016047557', '谢谢', '', '13016047557', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-26 11:28:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13016047557' LIMIT 1);
UPDATE users SET nick_name='谢谢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13016047557';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560053818', 'U13560053818', '野生yhh', '', '13560053818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-25 22:24:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560053818' LIMIT 1);
UPDATE users SET nick_name='野生yhh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560053818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18401664831', 'U18401664831', '曲和', '', '18401664831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-25 16:13:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18401664831' LIMIT 1);
UPDATE users SET nick_name='曲和', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18401664831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570188266', 'U13570188266', '雪花', '', '13570188266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-25 16:03:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570188266' LIMIT 1);
UPDATE users SET nick_name='雪花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570188266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13543824745', 'U13543824745', 'C', '', '13543824745', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-25 13:58:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13543824745' LIMIT 1);
UPDATE users SET nick_name='C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13543824745';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13424054757', 'U13424054757', 'vivi', '', '13424054757', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-24 18:53:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13424054757' LIMIT 1);
UPDATE users SET nick_name='vivi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13424054757';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19737960203', 'U19737960203', 'UmBella', '', '19737960203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-24 18:52:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19737960203' LIMIT 1);
UPDATE users SET nick_name='UmBella', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19737960203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18132389972', 'U18132389972', 'Río', '', '18132389972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-24 18:35:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18132389972' LIMIT 1);
UPDATE users SET nick_name='Río', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18132389972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322008586', 'U17322008586', 'Hygge', '', '17322008586', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-24 16:36:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322008586' LIMIT 1);
UPDATE users SET nick_name='Hygge', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322008586';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011704826', 'U15011704826', 'Chloe', '', '15011704826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-24 13:03:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011704826' LIMIT 1);
UPDATE users SET nick_name='Chloe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15011704826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922738163', 'U18922738163', '18922738163', '', '18922738163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-23 16:26:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922738163' LIMIT 1);
UPDATE users SET nick_name='18922738163', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922738163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727524386', 'U13727524386', '13727524386', '', '13727524386', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-23 14:19:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727524386' LIMIT 1);
UPDATE users SET nick_name='13727524386', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13727524386';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13823969372', 'U13823969372', '13823969372', '', '13823969372', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-23 12:49:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13823969372' LIMIT 1);
UPDATE users SET nick_name='13823969372', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13823969372';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588703353', 'U18588703353', 'CHIU', '', '18588703353', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-23 12:05:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588703353' LIMIT 1);
UPDATE users SET nick_name='CHIU', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588703353';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15208207528', 'U15208207528', 'Oscar', '', '15208207528', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-23 10:22:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15208207528' LIMIT 1);
UPDATE users SET nick_name='Oscar', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15208207528';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247595225', 'U13247595225', '13247595225', '', '13247595225', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-23 10:03:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247595225' LIMIT 1);
UPDATE users SET nick_name='13247595225', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13247595225';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600455948', 'U13600455948', 'Sherry X.💫', '', '13600455948', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 20:25:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600455948' LIMIT 1);
UPDATE users SET nick_name='Sherry X.💫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600455948';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688383726', 'U18688383726', 'yoki', '', '18688383726', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 19:27:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688383726' LIMIT 1);
UPDATE users SET nick_name='yoki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688383726';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665032833', 'U17665032833', '17665032833', '', '17665032833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 18:13:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665032833' LIMIT 1);
UPDATE users SET nick_name='17665032833', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665032833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751770355', 'U13751770355', '13751770355', '', '13751770355', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 16:33:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751770355' LIMIT 1);
UPDATE users SET nick_name='13751770355', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751770355';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102034912', 'U15102034912', '老邓', '', '15102034912', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 16:06:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102034912' LIMIT 1);
UPDATE users SET nick_name='老邓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15102034912';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928812821', 'U18928812821', 'Noah', '', '18928812821', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 14:57:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928812821' LIMIT 1);
UPDATE users SET nick_name='Noah', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928812821';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17875139148', 'U17875139148', '.', '', '17875139148', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 13:52:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17875139148' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17875139148';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18298566890', 'U18298566890', '也是春天', '', '18298566890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 13:47:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18298566890' LIMIT 1);
UPDATE users SET nick_name='也是春天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18298566890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18942659457', 'U18942659457', '18942659457', '', '18942659457', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 13:45:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18942659457' LIMIT 1);
UPDATE users SET nick_name='18942659457', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18942659457';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902277393', 'U13902277393', 'esther', '', '13902277393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2025-11-22 13:41:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902277393' LIMIT 1);
UPDATE users SET nick_name='esther', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='13902277393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19076079862', 'U19076079862', '19076079862', '', '19076079862', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 13:38:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19076079862' LIMIT 1);
UPDATE users SET nick_name='19076079862', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19076079862';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15162865995', 'U15162865995', 'Vicky', '', '15162865995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 13:34:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15162865995' LIMIT 1);
UPDATE users SET nick_name='Vicky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15162865995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632281203', 'U13632281203', 'Ray', '', '13632281203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 12:13:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632281203' LIMIT 1);
UPDATE users SET nick_name='Ray', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632281203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613181841', 'U18613181841', '欧', '', '18613181841', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 12:08:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613181841' LIMIT 1);
UPDATE users SET nick_name='欧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613181841';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828410108', 'U13828410108', '肥婷婷', '', '13828410108', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-22 09:11:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828410108' LIMIT 1);
UPDATE users SET nick_name='肥婷婷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828410108';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17722850327', 'U17722850327', 'perrey', '', '17722850327', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-21 22:29:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17722850327' LIMIT 1);
UPDATE users SET nick_name='perrey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17722850327';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318701320', 'U13318701320', '晴', '', '13318701320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-21 20:50:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318701320' LIMIT 1);
UPDATE users SET nick_name='晴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318701320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422110056', 'U13422110056', 'g', '', '13422110056', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-21 20:50:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422110056' LIMIT 1);
UPDATE users SET nick_name='g', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422110056';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666091866', 'U18666091866', '就', '', '18666091866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-21 20:09:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666091866' LIMIT 1);
UPDATE users SET nick_name='就', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666091866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825029312', 'U13825029312', '陆陆', '', '13825029312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-21 17:07:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825029312' LIMIT 1);
UPDATE users SET nick_name='陆陆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825029312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620441819', 'U18620441819', '子子子子子良', '', '18620441819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-11-20 19:11:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620441819' LIMIT 1);
UPDATE users SET nick_name='子子子子子良', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='18620441819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15084965205', 'U15084965205', '拉普拉斯', '', '15084965205', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-20 17:40:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15084965205' LIMIT 1);
UPDATE users SET nick_name='拉普拉斯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15084965205';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13630132981', 'U13630132981', '13630132981', '', '13630132981', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-20 15:22:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13630132981' LIMIT 1);
UPDATE users SET nick_name='13630132981', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13630132981';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826438107', 'U18826438107', 'Da〽on', '', '18826438107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-19 14:29:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826438107' LIMIT 1);
UPDATE users SET nick_name='Da〽on', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826438107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217714535', 'U15217714535', '快乐🐑仔', '', '15217714535', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-19 13:29:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217714535' LIMIT 1);
UPDATE users SET nick_name='快乐🐑仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217714535';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662479032', 'U13662479032', 'yves.', '', '13662479032', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-18 21:10:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662479032' LIMIT 1);
UPDATE users SET nick_name='yves.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662479032';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19106616699', 'U19106616699', 'Sssi思🍃', '', '19106616699', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-18 18:13:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19106616699' LIMIT 1);
UPDATE users SET nick_name='Sssi思🍃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19106616699';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622882523', 'U13622882523', '请靠边等待', '', '13622882523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-18 18:07:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622882523' LIMIT 1);
UPDATE users SET nick_name='请靠边等待', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622882523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13536199635', 'U13536199635', 'BIN 👿', '', '13536199635', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-18 18:03:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13536199635' LIMIT 1);
UPDATE users SET nick_name='BIN 👿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13536199635';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18170322383', 'U18170322383', 'Chen', '', '18170322383', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-18 18:03:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18170322383' LIMIT 1);
UPDATE users SET nick_name='Chen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18170322383';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13051831202', 'U13051831202', '13051831202', '', '13051831202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-18 16:28:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13051831202' LIMIT 1);
UPDATE users SET nick_name='13051831202', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13051831202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822099275', 'U13822099275', '*blooming', '', '13822099275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-18 15:53:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822099275' LIMIT 1);
UPDATE users SET nick_name='*blooming', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822099275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613148170', 'U18613148170', '18613148170', '', '18613148170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-18 14:11:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613148170' LIMIT 1);
UPDATE users SET nick_name='18613148170', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613148170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926143931', 'U13926143931', 'Kaylee', '', '13926143931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-18 14:08:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926143931' LIMIT 1);
UPDATE users SET nick_name='Kaylee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926143931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662408151', 'U13662408151', 'Xia', '', '13662408151', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-17 19:53:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662408151' LIMIT 1);
UPDATE users SET nick_name='Xia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662408151';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822278044', 'U13822278044', 'Windbё', '', '13822278044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-17 19:28:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822278044' LIMIT 1);
UPDATE users SET nick_name='Windbё', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822278044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18986981969', 'U18986981969', '18986981969', '', '18986981969', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-17 16:42:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18986981969' LIMIT 1);
UPDATE users SET nick_name='18986981969', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18986981969';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13413635400', 'U13413635400', 'e', '', '13413635400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-17 16:25:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13413635400' LIMIT 1);
UPDATE users SET nick_name='e', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13413635400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521131828', 'U15521131828', '梁恭喜', '', '15521131828', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-17 15:03:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521131828' LIMIT 1);
UPDATE users SET nick_name='梁恭喜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521131828';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533306155', 'U13533306155', '13533306155', '', '13533306155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-17 13:29:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533306155' LIMIT 1);
UPDATE users SET nick_name='13533306155', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533306155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17710241520', 'U17710241520', '￴￴ ￴￴ ￴', '', '17710241520', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-11-17 11:18:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17710241520' LIMIT 1);
UPDATE users SET nick_name='￴￴ ￴￴ ￴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='17710241520';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122481404', 'U18122481404', 'Alexander²⁰²⁵', '', '18122481404', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-16 15:29:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122481404' LIMIT 1);
UPDATE users SET nick_name='Alexander²⁰²⁵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122481404';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15806392150', 'U15806392150', '15806392150', '', '15806392150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-16 13:44:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15806392150' LIMIT 1);
UPDATE users SET nick_name='15806392150', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15806392150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17304019751', 'U17304019751', 'Joss.', '', '17304019751', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-16 11:25:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17304019751' LIMIT 1);
UPDATE users SET nick_name='Joss.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17304019751';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631246439', 'U13631246439', 'ChungWingtone', '', '13631246439', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-16 10:56:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631246439' LIMIT 1);
UPDATE users SET nick_name='ChungWingtone', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631246439';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632330412', 'U13632330412', '猫猫', '', '13632330412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-16 10:55:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632330412' LIMIT 1);
UPDATE users SET nick_name='猫猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632330412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802934109', 'U13802934109', '低碳人生', '', '13802934109', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 23:29:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802934109' LIMIT 1);
UPDATE users SET nick_name='低碳人生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802934109';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622126899', 'U15622126899', '雪花啤酒鸭', '', '15622126899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 20:51:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622126899' LIMIT 1);
UPDATE users SET nick_name='雪花啤酒鸭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622126899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710532568', 'U13710532568', 'Ken', '', '13710532568', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 20:26:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710532568' LIMIT 1);
UPDATE users SET nick_name='Ken', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710532568';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920863168', 'U15920863168', 'Bonnie智雯💓', '', '15920863168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 20:24:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920863168' LIMIT 1);
UPDATE users SET nick_name='Bonnie智雯💓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920863168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727872539', 'U13727872539', '13727872539', '', '13727872539', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 19:03:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727872539' LIMIT 1);
UPDATE users SET nick_name='13727872539', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13727872539';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13364836515', 'U13364836515', 'Stone', '', '13364836515', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 15:38:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13364836515' LIMIT 1);
UPDATE users SET nick_name='Stone', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13364836515';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17724030623', 'U17724030623', 'Quill', '', '17724030623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-11-15 14:43:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17724030623' LIMIT 1);
UPDATE users SET nick_name='Quill', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='17724030623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17820569183', 'U17820569183', '苏正辉-Kten.Sue', '', '17820569183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 14:29:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17820569183' LIMIT 1);
UPDATE users SET nick_name='苏正辉-Kten.Sue', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17820569183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318800430', 'U13318800430', 'T', '', '13318800430', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 13:22:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318800430' LIMIT 1);
UPDATE users SET nick_name='T', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318800430';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318653098', 'U13318653098', 'Puff余泡芙', '', '13318653098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 12:57:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318653098' LIMIT 1);
UPDATE users SET nick_name='Puff余泡芙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318653098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418106429', 'U13418106429', 'puff', '', '13418106429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 12:55:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418106429' LIMIT 1);
UPDATE users SET nick_name='puff', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13418106429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815771089', 'U15815771089', 'jy', '', '15815771089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 12:46:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815771089' LIMIT 1);
UPDATE users SET nick_name='jy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815771089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18089846133', 'U18089846133', '🌄', '', '18089846133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 12:33:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18089846133' LIMIT 1);
UPDATE users SET nick_name='🌄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18089846133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17733143079', 'U17733143079', 'Jason', '', '17733143079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 12:17:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17733143079' LIMIT 1);
UPDATE users SET nick_name='Jason', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17733143079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19898000709', 'U19898000709', 'lyyyyyy', '', '19898000709', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 12:13:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19898000709' LIMIT 1);
UPDATE users SET nick_name='lyyyyyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19898000709';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914460439', 'U15914460439', 'W', '', '15914460439', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 12:13:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914460439' LIMIT 1);
UPDATE users SET nick_name='W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914460439';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926097692', 'U13926097692', 'dearxxk🥐', '', '13926097692', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 11:58:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926097692' LIMIT 1);
UPDATE users SET nick_name='dearxxk🥐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926097692';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18594917071', 'U18594917071', '18594917071', '', '18594917071', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 11:50:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18594917071' LIMIT 1);
UPDATE users SET nick_name='18594917071', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18594917071';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503025088', 'U13503025088', '东方深蓝', '', '13503025088', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 09:00:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503025088' LIMIT 1);
UPDATE users SET nick_name='东方深蓝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503025088';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622260843', 'U13622260843', 'jyy', '', '13622260843', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-15 08:33:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622260843' LIMIT 1);
UPDATE users SET nick_name='jyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622260843';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18249999795', 'U18249999795', '嘎？', '', '18249999795', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-14 21:04:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18249999795' LIMIT 1);
UPDATE users SET nick_name='嘎？', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18249999795';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15108073752', 'U15108073752', 'Lotus', '', '15108073752', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-14 20:42:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15108073752' LIMIT 1);
UPDATE users SET nick_name='Lotus', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15108073752';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17310125127', 'U17310125127', '康妮', '', '17310125127', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-11-14 18:02:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17310125127' LIMIT 1);
UPDATE users SET nick_name='康妮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='17310125127';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18062047700', 'U18062047700', 'H', '', '18062047700', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-14 18:01:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18062047700' LIMIT 1);
UPDATE users SET nick_name='H', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18062047700';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13212412410', 'U13212412410', 'Monday', '', '13212412410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-14 16:46:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13212412410' LIMIT 1);
UPDATE users SET nick_name='Monday', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13212412410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922200255', 'U13922200255', '肖戆', '', '13922200255', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-14 15:47:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922200255' LIMIT 1);
UPDATE users SET nick_name='肖戆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922200255';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660010259', 'U13660010259', '13660010259', '', '13660010259', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-14 14:39:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660010259' LIMIT 1);
UPDATE users SET nick_name='13660010259', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660010259';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664627429', 'U18664627429', '打不到的小乖兽💋', '', '18664627429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-14 13:34:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664627429' LIMIT 1);
UPDATE users SET nick_name='打不到的小乖兽💋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664627429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13414121738', 'U13414121738', '🐑VV', '', '13414121738', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-13 19:13:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13414121738' LIMIT 1);
UPDATE users SET nick_name='🐑VV', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13414121738';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824422868', 'U13824422868', '罐头', '', '13824422868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-13 18:29:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824422868' LIMIT 1);
UPDATE users SET nick_name='罐头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824422868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19855379132', 'U19855379132', '蓝鲸零🐋', '', '19855379132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-13 12:46:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19855379132' LIMIT 1);
UPDATE users SET nick_name='蓝鲸零🐋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19855379132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18621399216', 'U18621399216', 'zi', '', '18621399216', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-11-13 11:41:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18621399216' LIMIT 1);
UPDATE users SET nick_name='zi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18621399216';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922303180', 'U13922303180', 'xy-321', '', '13922303180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-13 11:17:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922303180' LIMIT 1);
UPDATE users SET nick_name='xy-321', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922303180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13408009715', 'U13408009715', '悦城兴平号', '', '13408009715', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-13 09:26:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13408009715' LIMIT 1);
UPDATE users SET nick_name='悦城兴平号', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13408009715';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600928989', 'U13600928989', '13600928989', '', '13600928989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-12 19:45:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600928989' LIMIT 1);
UPDATE users SET nick_name='13600928989', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600928989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924679146', 'U18924679146', 'cici', '', '18924679146', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-12 17:50:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924679146' LIMIT 1);
UPDATE users SET nick_name='cici', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924679146';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202640418', 'U13202640418', '13202640418', '', '13202640418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-12 17:22:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202640418' LIMIT 1);
UPDATE users SET nick_name='13202640418', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202640418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15806067582', 'U15806067582', 'Jean', '', '15806067582', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-12 17:18:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15806067582' LIMIT 1);
UPDATE users SET nick_name='Jean', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15806067582';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602828901', 'U13602828901', '悠优', '', '13602828901', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-12 14:55:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602828901' LIMIT 1);
UPDATE users SET nick_name='悠优', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602828901';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819465310', 'U18819465310', '难道是意识📣😉', '', '18819465310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-12 14:12:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819465310' LIMIT 1);
UPDATE users SET nick_name='难道是意识📣😉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819465310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17675660441', 'U17675660441', 'Arya', '', '17675660441', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-12 13:25:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17675660441' LIMIT 1);
UPDATE users SET nick_name='Arya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17675660441';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13880228399', 'U13880228399', 'YEY', '', '13880228399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-12 11:28:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13880228399' LIMIT 1);
UPDATE users SET nick_name='YEY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13880228399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15340830463', 'U15340830463', '15340830463', '', '15340830463', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-11 19:14:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15340830463' LIMIT 1);
UPDATE users SET nick_name='15340830463', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15340830463';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13036635710', 'U13036635710', '13036635710', '', '13036635710', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-11 19:06:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13036635710' LIMIT 1);
UPDATE users SET nick_name='13036635710', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13036635710';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820500601', 'U15820500601', '15820500601', '', '15820500601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-11 13:56:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820500601' LIMIT 1);
UPDATE users SET nick_name='15820500601', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820500601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535510024', 'U13535510024', '馮寶寶', '', '13535510024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-11 12:02:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535510024' LIMIT 1);
UPDATE users SET nick_name='馮寶寶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535510024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15071492987', 'U15071492987', 'morehair', '', '15071492987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-10 20:25:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15071492987' LIMIT 1);
UPDATE users SET nick_name='morehair', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15071492987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818958372', 'U15818958372', 'mia', '', '15818958372', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-10 17:43:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818958372' LIMIT 1);
UPDATE users SET nick_name='mia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818958372';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15814827215', 'U15814827215', 'Y', '', '15814827215', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-10 17:38:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15814827215' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15814827215';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17868143331', 'U17868143331', 'x', '', '17868143331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-11-10 15:50:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17868143331' LIMIT 1);
UPDATE users SET nick_name='x', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='17868143331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822350095', 'U13822350095', 'Lydia King', '', '13822350095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-10 15:20:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822350095' LIMIT 1);
UPDATE users SET nick_name='Lydia King', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822350095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798053986', 'U13798053986', 'lee', '', '13798053986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-10 11:30:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798053986' LIMIT 1);
UPDATE users SET nick_name='lee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798053986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15228877899', 'U15228877899', '网事', '', '15228877899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-11-10 10:20:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15228877899' LIMIT 1);
UPDATE users SET nick_name='网事', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='15228877899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915862526', 'U15915862526', 'Jenny🦖', '', '15915862526', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-11-09 18:07:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915862526' LIMIT 1);
UPDATE users SET nick_name='Jenny🦖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15915862526';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18223598491', 'U18223598491', '18223598491', '', '18223598491', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-09 17:22:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18223598491' LIMIT 1);
UPDATE users SET nick_name='18223598491', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18223598491';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13106181580', 'U13106181580', 'Bleu.X', '', '13106181580', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-09 17:02:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13106181580' LIMIT 1);
UPDATE users SET nick_name='Bleu.X', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13106181580';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556000004', 'U13556000004', 'yd', '', '13556000004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-09 15:42:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556000004' LIMIT 1);
UPDATE users SET nick_name='yd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556000004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450277543', 'U13450277543', '滢', '', '13450277543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-11-09 15:39:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450277543' LIMIT 1);
UPDATE users SET nick_name='滢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13450277543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580469181', 'U13580469181', 'ChrisWu', '', '13580469181', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-09 15:14:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580469181' LIMIT 1);
UPDATE users SET nick_name='ChrisWu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580469181';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13417149889', 'U13417149889', 'yana', '', '13417149889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-09 14:11:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13417149889' LIMIT 1);
UPDATE users SET nick_name='yana', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13417149889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588225886', 'U18588225886', 'Vikki🥕', '', '18588225886', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-11-09 14:05:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588225886' LIMIT 1);
UPDATE users SET nick_name='Vikki🥕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='18588225886';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15905059591', 'U15905059591', '张华斌', '', '15905059591', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-11-09 12:56:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15905059591' LIMIT 1);
UPDATE users SET nick_name='张华斌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15905059591';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392698986', 'U13392698986', 'SIg_', '', '13392698986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-09 12:47:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392698986' LIMIT 1);
UPDATE users SET nick_name='SIg_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392698986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18986246367', 'U18986246367', 'ursa', '', '18986246367', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-09 10:04:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18986246367' LIMIT 1);
UPDATE users SET nick_name='ursa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18986246367';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15180466226', 'U15180466226', '15180466226', '', '15180466226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-08 20:40:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15180466226' LIMIT 1);
UPDATE users SET nick_name='15180466226', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15180466226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986437931', 'U15986437931', '谭', '', '15986437931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-08 19:47:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986437931' LIMIT 1);
UPDATE users SET nick_name='谭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15986437931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17319030593', 'U17319030593', '17319030593', '', '17319030593', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-08 17:14:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17319030593' LIMIT 1);
UPDATE users SET nick_name='17319030593', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17319030593';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18685125398', 'U18685125398', 'Sue', '', '18685125398', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-08 15:15:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18685125398' LIMIT 1);
UPDATE users SET nick_name='Sue', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18685125398';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15607106995', 'U15607106995', '彬彬', '', '15607106995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-08 13:49:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15607106995' LIMIT 1);
UPDATE users SET nick_name='彬彬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15607106995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320056240', 'U18320056240', 'lie', '', '18320056240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-08 12:25:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320056240' LIMIT 1);
UPDATE users SET nick_name='lie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320056240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19874024278', 'U19874024278', '一一', '', '19874024278', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-08 10:48:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19874024278' LIMIT 1);
UPDATE users SET nick_name='一一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19874024278';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320093978', 'U18320093978', '18320093978', '', '18320093978', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-08 10:04:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320093978' LIMIT 1);
UPDATE users SET nick_name='18320093978', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320093978';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450492980', 'U13450492980', 'sikun', '', '13450492980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-08 09:28:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450492980' LIMIT 1);
UPDATE users SET nick_name='sikun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450492980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120593752', 'U19120593752', '19120593752', '', '19120593752', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-07 20:18:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120593752' LIMIT 1);
UPDATE users SET nick_name='19120593752', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120593752';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620623266', 'U18620623266', 'Tracy猫大人', '', '18620623266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-07 18:06:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620623266' LIMIT 1);
UPDATE users SET nick_name='Tracy猫大人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620623266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268900513', 'U13268900513', '93', '', '13268900513', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-07 17:50:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268900513' LIMIT 1);
UPDATE users SET nick_name='93', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268900513';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113107388', 'U15113107388', '番茄酱大王🍟', '', '15113107388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-07 17:49:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113107388' LIMIT 1);
UPDATE users SET nick_name='番茄酱大王🍟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113107388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820140527', 'U18820140527', '良', '', '18820140527', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-07 16:06:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820140527' LIMIT 1);
UPDATE users SET nick_name='良', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820140527';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610310281', 'U13610310281', '宇', '', '13610310281', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-07 16:04:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610310281' LIMIT 1);
UPDATE users SET nick_name='宇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610310281';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13380196068', 'U13380196068', 'my', '', '13380196068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-11-07 15:03:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13380196068' LIMIT 1);
UPDATE users SET nick_name='my', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13380196068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18485784004', 'U18485784004', '欧', '', '18485784004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-07 12:16:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18485784004' LIMIT 1);
UPDATE users SET nick_name='欧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18485784004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902229938', 'U13902229938', '鱼', '', '13902229938', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-07 11:03:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902229938' LIMIT 1);
UPDATE users SET nick_name='鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902229938';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819300730', 'U18819300730', '吴Joey', '', '18819300730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-06 18:43:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819300730' LIMIT 1);
UPDATE users SET nick_name='吴Joey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819300730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825047627', 'U18825047627', '杨鱼胶', '', '18825047627', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-06 17:50:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825047627' LIMIT 1);
UPDATE users SET nick_name='杨鱼胶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825047627';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664872756', 'U18664872756', '刘效忠', '', '18664872756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-06 13:09:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664872756' LIMIT 1);
UPDATE users SET nick_name='刘效忠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664872756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13809772601', 'U13809772601', 'Lucas', '', '13809772601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-06 12:18:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13809772601' LIMIT 1);
UPDATE users SET nick_name='Lucas', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13809772601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802425851', 'U13802425851', 'Kkdzn', '', '13802425851', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-06 11:33:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802425851' LIMIT 1);
UPDATE users SET nick_name='Kkdzn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802425851';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318306975', 'U13318306975', '13318306975', '', '13318306975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-05 20:38:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318306975' LIMIT 1);
UPDATE users SET nick_name='13318306975', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318306975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122735581', 'U18122735581', '驴友者', '', '18122735581', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-05 13:56:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122735581' LIMIT 1);
UPDATE users SET nick_name='驴友者', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122735581';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642797868', 'U13642797868', '肯肯', '', '13642797868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-05 11:46:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642797868' LIMIT 1);
UPDATE users SET nick_name='肯肯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642797868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682222311', 'U13682222311', '谭子然', '', '13682222311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-11-05 08:24:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682222311' LIMIT 1);
UPDATE users SET nick_name='谭子然', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13682222311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15717347690', 'U15717347690', 'L', '', '15717347690', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-04 21:41:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15717347690' LIMIT 1);
UPDATE users SET nick_name='L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15717347690';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15205156150', 'U15205156150', '15205156150', '', '15205156150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-04 21:18:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15205156150' LIMIT 1);
UPDATE users SET nick_name='15205156150', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15205156150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819310730', 'U18819310730', '18819310730', '', '18819310730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-04 21:07:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819310730' LIMIT 1);
UPDATE users SET nick_name='18819310730', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819310730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889986434', 'U15889986434', '✨ DD ✨', '', '15889986434', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-04 17:29:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889986434' LIMIT 1);
UPDATE users SET nick_name='✨ DD ✨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889986434';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011728293', 'U18011728293', 'W', '', '18011728293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-04 17:28:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011728293' LIMIT 1);
UPDATE users SET nick_name='W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011728293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913177821', 'U15913177821', '刘仲仲', '', '15913177821', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2025-11-04 17:27:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913177821' LIMIT 1);
UPDATE users SET nick_name='刘仲仲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='15913177821';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18889300730', 'U18889300730', '18889300730', '', '18889300730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-04 16:50:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18889300730' LIMIT 1);
UPDATE users SET nick_name='18889300730', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18889300730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18575617370', 'U18575617370', 'Johnson', '', '18575617370', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-04 15:08:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18575617370' LIMIT 1);
UPDATE users SET nick_name='Johnson', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18575617370';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128665962', 'U13128665962', 'lc', '', '13128665962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-04 15:02:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128665962' LIMIT 1);
UPDATE users SET nick_name='lc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128665962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631430753', 'U13631430753', '13631430753', '', '13631430753', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-04 14:20:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631430753' LIMIT 1);
UPDATE users SET nick_name='13631430753', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631430753';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560332793', 'U13560332793', '13560332793', '', '13560332793', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-04 14:19:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560332793' LIMIT 1);
UPDATE users SET nick_name='13560332793', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560332793';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250703212', 'U13250703212', 'cj', '', '13250703212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-03 17:51:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250703212' LIMIT 1);
UPDATE users SET nick_name='cj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250703212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126196282', 'U18126196282', 'Lay', '', '18126196282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-03 16:27:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126196282' LIMIT 1);
UPDATE users SET nick_name='Lay', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18126196282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560362028', 'U13560362028', '強qIaNg🍃', '', '13560362028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-02 18:53:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560362028' LIMIT 1);
UPDATE users SET nick_name='強qIaNg🍃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560362028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13269015151', 'U13269015151', '13269015151', '', '13269015151', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-02 15:11:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13269015151' LIMIT 1);
UPDATE users SET nick_name='13269015151', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13269015151';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249286281', 'U13249286281', '13249286281', '', '13249286281', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-02 13:54:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249286281' LIMIT 1);
UPDATE users SET nick_name='13249286281', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249286281';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899721942', 'U15899721942', 'Vince_文华', '', '15899721942', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-02 13:22:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899721942' LIMIT 1);
UPDATE users SET nick_name='Vince_文华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15899721942';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915964588', 'U15915964588', 'q', '', '15915964588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-02 13:06:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915964588' LIMIT 1);
UPDATE users SET nick_name='q', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915964588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18344574672', 'U18344574672', '人间富贵🌸', '', '18344574672', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-02 13:03:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18344574672' LIMIT 1);
UPDATE users SET nick_name='人间富贵🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18344574672';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680157313', 'U18680157313', 'uu', '', '18680157313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-11-02 12:48:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680157313' LIMIT 1);
UPDATE users SET nick_name='uu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18680157313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580495276', 'U13580495276', 'Nathan', '', '13580495276', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 560, '2025-11-01 21:43:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580495276' LIMIT 1);
UPDATE users SET nick_name='Nathan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 560) WHERE phone='13580495276';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13702812949', 'U13702812949', 'LANG', '', '13702812949', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 19:28:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13702812949' LIMIT 1);
UPDATE users SET nick_name='LANG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13702812949';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18948778845', 'U18948778845', 'LeonLin', '', '18948778845', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 19:01:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18948778845' LIMIT 1);
UPDATE users SET nick_name='LeonLin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18948778845';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15770864677', 'U15770864677', '15770864677', '', '15770864677', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 18:26:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15770864677' LIMIT 1);
UPDATE users SET nick_name='15770864677', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15770864677';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15001398789', 'U15001398789', 'Rita', '', '15001398789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 18:13:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15001398789' LIMIT 1);
UPDATE users SET nick_name='Rita', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15001398789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028005389', 'U18028005389', 'Paul', '', '18028005389', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 17:43:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028005389' LIMIT 1);
UPDATE users SET nick_name='Paul', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028005389';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19379923962', 'U19379923962', '柒', '', '19379923962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 17:19:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19379923962' LIMIT 1);
UPDATE users SET nick_name='柒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19379923962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19124368857', 'U19124368857', 'Diary', '', '19124368857', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-11-01 16:31:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19124368857' LIMIT 1);
UPDATE users SET nick_name='Diary', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='19124368857';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16675761744', 'U16675761744', '文杰', '', '16675761744', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 16:29:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16675761744' LIMIT 1);
UPDATE users SET nick_name='文杰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16675761744';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246826809', 'U13246826809', '👑琪琪·伊莉莎白·戴安娜👑', '', '13246826809', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 15:41:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246826809' LIMIT 1);
UPDATE users SET nick_name='👑琪琪·伊莉莎白·戴安娜👑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246826809';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18023330198', 'U18023330198', '洋芋饭', '', '18023330198', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 15:04:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18023330198' LIMIT 1);
UPDATE users SET nick_name='洋芋饭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18023330198';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929935596', 'U13929935596', '大象', '', '13929935596', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 14:19:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929935596' LIMIT 1);
UPDATE users SET nick_name='大象', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929935596';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17859261609', 'U17859261609', '我炒菜超菜', '', '17859261609', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 14:13:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17859261609' LIMIT 1);
UPDATE users SET nick_name='我炒菜超菜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17859261609';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17302220757', 'U17302220757', '飞鸟', '', '17302220757', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 14:13:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17302220757' LIMIT 1);
UPDATE users SET nick_name='飞鸟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17302220757';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570499907', 'U13570499907', 'pp', '', '13570499907', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 12:32:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570499907' LIMIT 1);
UPDATE users SET nick_name='pp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570499907';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819285523', 'U18819285523', '文思～～', '', '18819285523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-01 11:47:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819285523' LIMIT 1);
UPDATE users SET nick_name='文思～～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819285523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18859224231', 'U18859224231', '哈哈哈哈哈', '', '18859224231', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-31 21:30:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18859224231' LIMIT 1);
UPDATE users SET nick_name='哈哈哈哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18859224231';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580475782', 'U13580475782', '🖤迌嘢 兎💖', '', '13580475782', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-31 21:21:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580475782' LIMIT 1);
UPDATE users SET nick_name='🖤迌嘢 兎💖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580475782';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13959741638', 'U13959741638', 'Jack', '', '13959741638', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-31 19:17:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13959741638' LIMIT 1);
UPDATE users SET nick_name='Jack', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13959741638';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520271995', 'U18520271995', 'FU', '', '18520271995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-31 18:19:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520271995' LIMIT 1);
UPDATE users SET nick_name='FU', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520271995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18938429287', 'U18938429287', '燕子舟', '', '18938429287', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-31 15:10:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18938429287' LIMIT 1);
UPDATE users SET nick_name='燕子舟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18938429287';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13818828685', 'U13818828685', 'SZ', '', '13818828685', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-10-31 14:56:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13818828685' LIMIT 1);
UPDATE users SET nick_name='SZ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13818828685';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18023456001', 'U18023456001', '18023456001', '', '18023456001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-31 14:30:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18023456001' LIMIT 1);
UPDATE users SET nick_name='18023456001', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18023456001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710919240', 'U13710919240', '细蚊仔早滴瞓', '', '13710919240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-31 11:50:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710919240' LIMIT 1);
UPDATE users SET nick_name='细蚊仔早滴瞓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710919240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13809771169', 'U13809771169', '周', '', '13809771169', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-30 23:02:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13809771169' LIMIT 1);
UPDATE users SET nick_name='周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13809771169';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18276525002', 'U18276525002', 'kivaᰔᩚ', '', '18276525002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-30 15:17:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18276525002' LIMIT 1);
UPDATE users SET nick_name='kivaᰔᩚ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18276525002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13452452366', 'U13452452366', '13452452366', '', '13452452366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-30 13:42:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13452452366' LIMIT 1);
UPDATE users SET nick_name='13452452366', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13452452366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925180540', 'U18925180540', '18925180540', '', '18925180540', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-30 11:06:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925180540' LIMIT 1);
UPDATE users SET nick_name='18925180540', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925180540';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725155786', 'U13725155786', '竹子🎋', '', '13725155786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-10-30 00:49:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725155786' LIMIT 1);
UPDATE users SET nick_name='竹子🎋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13725155786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450381072', 'U13450381072', '13450381072', '', '13450381072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-29 15:12:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450381072' LIMIT 1);
UPDATE users SET nick_name='13450381072', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450381072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929554483', 'U13929554483', 'echo', '', '13929554483', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-29 13:55:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929554483' LIMIT 1);
UPDATE users SET nick_name='echo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929554483';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15271888410', 'U15271888410', '一只特立独行的猫', '', '15271888410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-28 20:39:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15271888410' LIMIT 1);
UPDATE users SET nick_name='一只特立独行的猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15271888410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19908983199', 'U19908983199', 'Tubo', '', '19908983199', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-28 18:40:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19908983199' LIMIT 1);
UPDATE users SET nick_name='Tubo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19908983199';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13672472832', 'U13672472832', '13672472832', '', '13672472832', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-28 18:02:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13672472832' LIMIT 1);
UPDATE users SET nick_name='13672472832', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13672472832';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011731568', 'U18011731568', '18011731568', '', '18011731568', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-28 16:09:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011731568' LIMIT 1);
UPDATE users SET nick_name='18011731568', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011731568';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660263320', 'U13660263320', '李瑞钿', '', '13660263320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-28 15:58:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660263320' LIMIT 1);
UPDATE users SET nick_name='李瑞钿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660263320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011927755', 'U15011927755', 'Vv', '', '15011927755', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-28 15:53:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011927755' LIMIT 1);
UPDATE users SET nick_name='Vv', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15011927755';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902301944', 'U13902301944', '阿军', '', '13902301944', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-28 15:41:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902301944' LIMIT 1);
UPDATE users SET nick_name='阿军', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902301944';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818894770', 'U15818894770', 'ZPP', '', '15818894770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-28 13:20:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818894770' LIMIT 1);
UPDATE users SET nick_name='ZPP', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818894770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15106926253', 'U15106926253', 'ood', '', '15106926253', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-28 12:08:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15106926253' LIMIT 1);
UPDATE users SET nick_name='ood', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15106926253';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602765312', 'U13602765312', 'Bob', '', '13602765312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-10-28 10:32:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602765312' LIMIT 1);
UPDATE users SET nick_name='Bob', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13602765312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128260137', 'U13128260137', '13128260137', '', '13128260137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-27 19:13:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128260137' LIMIT 1);
UPDATE users SET nick_name='13128260137', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128260137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15014714772', 'U15014714772', '🌶', '', '15014714772', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-27 18:36:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15014714772' LIMIT 1);
UPDATE users SET nick_name='🌶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15014714772';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15201788995', 'U15201788995', '七七', '', '15201788995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-27 15:49:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15201788995' LIMIT 1);
UPDATE users SET nick_name='七七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15201788995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011940085', 'U18011940085', 'ㅤC.', '', '18011940085', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-27 15:30:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011940085' LIMIT 1);
UPDATE users SET nick_name='ㅤC.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011940085';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025193275', 'U13025193275', '&', '', '13025193275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-27 15:04:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025193275' LIMIT 1);
UPDATE users SET nick_name='&', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025193275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915710107', 'U15915710107', '廖镇杰', '', '15915710107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-27 13:18:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915710107' LIMIT 1);
UPDATE users SET nick_name='廖镇杰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915710107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922226880', 'U13922226880', 'zjz', '', '13922226880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-26 23:05:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922226880' LIMIT 1);
UPDATE users SET nick_name='zjz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922226880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113808206', 'U15113808206', 'Brian and Carol', '', '15113808206', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-26 20:20:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113808206' LIMIT 1);
UPDATE users SET nick_name='Brian and Carol', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113808206';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680009069', 'U18680009069', 'Ruoo', '', '18680009069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-26 19:57:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680009069' LIMIT 1);
UPDATE users SET nick_name='Ruoo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680009069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521041023', 'U15521041023', '15521041023', '', '15521041023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-26 17:51:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521041023' LIMIT 1);
UPDATE users SET nick_name='15521041023', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521041023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924771120', 'U19924771120', '憨豆先生', '', '19924771120', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-26 17:44:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924771120' LIMIT 1);
UPDATE users SET nick_name='憨豆先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924771120';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688621122', 'U18688621122', '马克', '', '18688621122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-26 16:27:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688621122' LIMIT 1);
UPDATE users SET nick_name='马克', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688621122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450467544', 'U13450467544', 'Tse.ts', '', '13450467544', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-10-26 15:26:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450467544' LIMIT 1);
UPDATE users SET nick_name='Tse.ts', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13450467544';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18088669169', 'U18088669169', 'JK', '', '18088669169', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-26 13:46:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18088669169' LIMIT 1);
UPDATE users SET nick_name='JK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18088669169';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902262506', 'U13902262506', '天策', '', '13902262506', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-26 11:57:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902262506' LIMIT 1);
UPDATE users SET nick_name='天策', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902262506';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512702407', 'U13512702407', '少年', '', '13512702407', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-26 08:12:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512702407' LIMIT 1);
UPDATE users SET nick_name='少年', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512702407';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924199126', 'U13924199126', '小文', '', '13924199126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-25 22:12:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924199126' LIMIT 1);
UPDATE users SET nick_name='小文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924199126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13702883893', 'U13702883893', '13702883893', '', '13702883893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-25 20:35:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13702883893' LIMIT 1);
UPDATE users SET nick_name='13702883893', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13702883893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927707891', 'U19927707891', '吖吖', '', '19927707891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-25 17:18:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927707891' LIMIT 1);
UPDATE users SET nick_name='吖吖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927707891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826238461', 'U18826238461', 'loong', '', '18826238461', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-25 15:35:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826238461' LIMIT 1);
UPDATE users SET nick_name='loong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826238461';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802038697', 'U18802038697', 'angela', '', '18802038697', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-25 13:14:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802038697' LIMIT 1);
UPDATE users SET nick_name='angela', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802038697';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480231543', 'U13480231543', '13480231543', '', '13480231543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-25 11:59:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480231543' LIMIT 1);
UPDATE users SET nick_name='13480231543', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480231543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613395538', 'U18613395538', 'Sy', '', '18613395538', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-25 11:48:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613395538' LIMIT 1);
UPDATE users SET nick_name='Sy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613395538';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631390220', 'U13631390220', 'YKIWNS', '', '13631390220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-25 10:07:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631390220' LIMIT 1);
UPDATE users SET nick_name='YKIWNS', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631390220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19264071771', 'U19264071771', '琳', '', '19264071771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-24 21:48:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19264071771' LIMIT 1);
UPDATE users SET nick_name='琳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19264071771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392670866', 'U13392670866', '钟芳松', '', '13392670866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-24 21:23:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392670866' LIMIT 1);
UPDATE users SET nick_name='钟芳松', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392670866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14750016230', 'U14750016230', 'Angel Chen', '', '14750016230', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-24 14:16:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14750016230' LIMIT 1);
UPDATE users SET nick_name='Angel Chen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14750016230';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17513315661', 'U17513315661', 'lari', '', '17513315661', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-24 12:24:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17513315661' LIMIT 1);
UPDATE users SET nick_name='lari', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17513315661';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602756911', 'U13602756911', '州：Xu', '', '13602756911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-10-24 10:10:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602756911' LIMIT 1);
UPDATE users SET nick_name='州：Xu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13602756911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13897466317', 'U13897466317', 'GortonHsu-', '', '13897466317', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-23 19:40:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13897466317' LIMIT 1);
UPDATE users SET nick_name='GortonHsu-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13897466317';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102837018', 'U18102837018', '(_ _).｡o（养猫版）', '', '18102837018', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-23 15:33:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102837018' LIMIT 1);
UPDATE users SET nick_name='(_ _).｡o（养猫版）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102837018';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626201050', 'U15626201050', 'Z', '', '15626201050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-22 23:09:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626201050' LIMIT 1);
UPDATE users SET nick_name='Z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626201050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926209909', 'U13926209909', 'ayong', '', '13926209909', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-10-22 22:32:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926209909' LIMIT 1);
UPDATE users SET nick_name='ayong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13926209909';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15399991422', 'U15399991422', 'Lorraine Hu', '', '15399991422', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-22 18:04:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15399991422' LIMIT 1);
UPDATE users SET nick_name='Lorraine Hu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15399991422';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914289635', 'U15914289635', '黄', '', '15914289635', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-22 14:54:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914289635' LIMIT 1);
UPDATE users SET nick_name='黄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914289635';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15881678168', 'U15881678168', '阿鑫', '', '15881678168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-10-22 14:36:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15881678168' LIMIT 1);
UPDATE users SET nick_name='阿鑫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15881678168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819256141', 'U18819256141', '安仔', '', '18819256141', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-21 17:04:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819256141' LIMIT 1);
UPDATE users SET nick_name='安仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819256141';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825019199', 'U13825019199', '大雨', '', '13825019199', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-21 17:03:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825019199' LIMIT 1);
UPDATE users SET nick_name='大雨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825019199';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13161736156', 'U13161736156', 'hõi🦦', '', '13161736156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-21 16:54:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13161736156' LIMIT 1);
UPDATE users SET nick_name='hõi🦦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13161736156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17324297219', 'U17324297219', '艾文', '', '17324297219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-21 16:30:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17324297219' LIMIT 1);
UPDATE users SET nick_name='艾文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17324297219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13927130333', 'U13927130333', '大少', '', '13927130333', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-21 14:36:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13927130333' LIMIT 1);
UPDATE users SET nick_name='大少', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13927130333';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18503008771', 'U18503008771', 'Enzo', '', '18503008771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-21 11:53:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18503008771' LIMIT 1);
UPDATE users SET nick_name='Enzo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18503008771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622339162', 'U15622339162', '林丰🍋', '', '15622339162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-10-20 17:08:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622339162' LIMIT 1);
UPDATE users SET nick_name='林丰🍋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15622339162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798199438', 'U13798199438', '🍀Sarah🍀', '', '13798199438', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-20 01:39:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798199438' LIMIT 1);
UPDATE users SET nick_name='🍀Sarah🍀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798199438';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18289439062', 'U18289439062', '一页书', '', '18289439062', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-19 23:06:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18289439062' LIMIT 1);
UPDATE users SET nick_name='一页书', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18289439062';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527727725', 'U13527727725', '13527727725', '', '13527727725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-19 19:07:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527727725' LIMIT 1);
UPDATE users SET nick_name='13527727725', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527727725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521338517', 'U15521338517', 'Iee', '', '15521338517', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-19 18:38:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521338517' LIMIT 1);
UPDATE users SET nick_name='Iee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521338517';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122780362', 'U18122780362', '18122780362', '', '18122780362', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-19 16:17:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122780362' LIMIT 1);
UPDATE users SET nick_name='18122780362', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122780362';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19584085208', 'U19584085208', '文', '', '19584085208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-19 15:04:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19584085208' LIMIT 1);
UPDATE users SET nick_name='文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19584085208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688889648', 'U18688889648', 'Maggie lai', '', '18688889648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-10-19 14:01:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688889648' LIMIT 1);
UPDATE users SET nick_name='Maggie lai', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18688889648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15595736220', 'U15595736220', '大陈', '', '15595736220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-19 13:13:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15595736220' LIMIT 1);
UPDATE users SET nick_name='大陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15595736220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017513938', 'U15017513938', '我', '', '15017513938', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-19 12:52:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017513938' LIMIT 1);
UPDATE users SET nick_name='我', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017513938';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13679760489', 'U13679760489', 'Funine', '', '13679760489', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-19 12:48:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13679760489' LIMIT 1);
UPDATE users SET nick_name='Funine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13679760489';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915799998', 'U15915799998', '🐻Tiiing🐻', '', '15915799998', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-19 12:48:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915799998' LIMIT 1);
UPDATE users SET nick_name='🐻Tiiing🐻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915799998';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427568531', 'U13427568531', '周芷若', '', '13427568531', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-19 11:39:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427568531' LIMIT 1);
UPDATE users SET nick_name='周芷若', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427568531';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928559733', 'U13928559733', '13928559733', '', '13928559733', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-18 22:05:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928559733' LIMIT 1);
UPDATE users SET nick_name='13928559733', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928559733';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920838028', 'U15920838028', '15920838028', '', '15920838028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-18 16:14:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920838028' LIMIT 1);
UPDATE users SET nick_name='15920838028', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920838028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578356563', 'U18578356563', '纪', '', '18578356563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-18 16:09:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578356563' LIMIT 1);
UPDATE users SET nick_name='纪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578356563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665669360', 'U18665669360', '18665669360', '', '18665669360', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-18 15:29:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665669360' LIMIT 1);
UPDATE users SET nick_name='18665669360', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665669360';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632345840', 'U13632345840', '13632345840', '', '13632345840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-18 14:45:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632345840' LIMIT 1);
UPDATE users SET nick_name='13632345840', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632345840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13692349840', 'U13692349840', '13692349840', '', '13692349840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-18 12:14:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13692349840' LIMIT 1);
UPDATE users SET nick_name='13692349840', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13692349840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829164128', 'U13829164128', '13829164128', '', '13829164128', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-18 10:42:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829164128' LIMIT 1);
UPDATE users SET nick_name='13829164128', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829164128';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312809428', 'U13312809428', 'ʚ🌙ɞ', '', '13312809428', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-17 21:38:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312809428' LIMIT 1);
UPDATE users SET nick_name='ʚ🌙ɞ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13312809428';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15717493777', 'U15717493777', 'Sylvie Luo', '', '15717493777', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-17 21:22:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15717493777' LIMIT 1);
UPDATE users SET nick_name='Sylvie Luo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15717493777';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915181400', 'U15915181400', '15915181400', '', '15915181400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-17 20:27:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915181400' LIMIT 1);
UPDATE users SET nick_name='15915181400', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915181400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798164293', 'U13798164293', 'Donna', '', '13798164293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-17 18:46:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798164293' LIMIT 1);
UPDATE users SET nick_name='Donna', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798164293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19042588262', 'U19042588262', '刘德华', '', '19042588262', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-17 17:38:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19042588262' LIMIT 1);
UPDATE users SET nick_name='刘德华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19042588262';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727662059', 'U13727662059', '13727662059', '', '13727662059', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-17 16:56:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727662059' LIMIT 1);
UPDATE users SET nick_name='13727662059', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13727662059';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15112887101', 'U15112887101', 'Siri', '', '15112887101', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-17 16:19:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15112887101' LIMIT 1);
UPDATE users SET nick_name='Siri', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15112887101';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17302093074', 'U17302093074', '1', '', '17302093074', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-16 20:29:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17302093074' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17302093074';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922134756', 'U18922134756', '高S', '', '18922134756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-16 14:28:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922134756' LIMIT 1);
UPDATE users SET nick_name='高S', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922134756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578631470', 'U18578631470', '111', '', '18578631470', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-16 10:16:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578631470' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578631470';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15280625665', 'U15280625665', '15280625665', '', '15280625665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-15 20:35:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15280625665' LIMIT 1);
UPDATE users SET nick_name='15280625665', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15280625665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751883321', 'U13751883321', '13751883321', '', '13751883321', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-15 17:00:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751883321' LIMIT 1);
UPDATE users SET nick_name='13751883321', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751883321';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625006181', 'U15625006181', '邓小姐', '', '15625006181', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-14 23:17:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625006181' LIMIT 1);
UPDATE users SET nick_name='邓小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625006181';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19576017903', 'U19576017903', '19576017903', '', '19576017903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-14 20:47:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19576017903' LIMIT 1);
UPDATE users SET nick_name='19576017903', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19576017903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18969837837', 'U18969837837', 'xtt', '', '18969837837', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-14 17:59:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18969837837' LIMIT 1);
UPDATE users SET nick_name='xtt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18969837837';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15210875910', 'U15210875910', '15210875910', '', '15210875910', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-14 17:06:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15210875910' LIMIT 1);
UPDATE users SET nick_name='15210875910', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15210875910';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660857049', 'U13660857049', '_Li', '', '13660857049', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-14 16:02:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660857049' LIMIT 1);
UPDATE users SET nick_name='_Li', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660857049';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17795981728', 'U17795981728', '宝宝最棒', '', '17795981728', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-14 15:11:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17795981728' LIMIT 1);
UPDATE users SET nick_name='宝宝最棒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17795981728';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18773147670', 'U18773147670', 'nana', '', '18773147670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-14 13:09:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18773147670' LIMIT 1);
UPDATE users SET nick_name='nana', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18773147670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13888598679', 'U13888598679', '小马奔腾', '', '13888598679', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-14 11:21:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13888598679' LIMIT 1);
UPDATE users SET nick_name='小马奔腾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13888598679';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15726824977', 'U15726824977', '小李', '', '15726824977', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-14 10:31:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15726824977' LIMIT 1);
UPDATE users SET nick_name='小李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15726824977';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026448588', 'U18026448588', 'Don Mak', '', '18026448588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-13 15:56:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026448588' LIMIT 1);
UPDATE users SET nick_name='Don Mak', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026448588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822158483', 'U13822158483', '13822158483', '', '13822158483', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-13 13:12:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822158483' LIMIT 1);
UPDATE users SET nick_name='13822158483', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822158483';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013392935', 'U15013392935', 'Lena-Liang', '', '15013392935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-13 12:01:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013392935' LIMIT 1);
UPDATE users SET nick_name='Lena-Liang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013392935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13407231342', 'U13407231342', '13407231342', '', '13407231342', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-12 20:15:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13407231342' LIMIT 1);
UPDATE users SET nick_name='13407231342', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13407231342';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818907738', 'U18818907738', 'celine', '', '18818907738', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-12 19:58:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818907738' LIMIT 1);
UPDATE users SET nick_name='celine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818907738';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918716516', 'U15918716516', '老虎鱼', '', '15918716516', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-12 14:18:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918716516' LIMIT 1);
UPDATE users SET nick_name='老虎鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918716516';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570251226', 'U13570251226', 'oc', '', '13570251226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-12 13:17:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570251226' LIMIT 1);
UPDATE users SET nick_name='oc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570251226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18923782847', 'U18923782847', '杨ewe', '', '18923782847', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-12 11:35:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18923782847' LIMIT 1);
UPDATE users SET nick_name='杨ewe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18923782847';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565347112', 'U18565347112', '18565347112', '', '18565347112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-12 11:31:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565347112' LIMIT 1);
UPDATE users SET nick_name='18565347112', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565347112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922293067', 'U18922293067', 'Alen©', '', '18922293067', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-12 10:22:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922293067' LIMIT 1);
UPDATE users SET nick_name='Alen©', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922293067';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15012648532', 'U15012648532', 'kun', '', '15012648532', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 178, '2025-10-12 00:14:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15012648532' LIMIT 1);
UPDATE users SET nick_name='kun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 178) WHERE phone='15012648532';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533130466', 'U13533130466', 'wans。', '', '13533130466', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-11 21:02:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533130466' LIMIT 1);
UPDATE users SET nick_name='wans。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533130466';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622261530', 'U15622261530', 'JEREMY', '', '15622261530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-11 20:51:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622261530' LIMIT 1);
UPDATE users SET nick_name='JEREMY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622261530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13670563663', 'U13670563663', 'jiaer', '', '13670563663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-11 20:38:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13670563663' LIMIT 1);
UPDATE users SET nick_name='jiaer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13670563663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622734808', 'U15622734808', '小陳鸭🐥', '', '15622734808', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-11 20:00:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622734808' LIMIT 1);
UPDATE users SET nick_name='小陳鸭🐥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622734808';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17680414607', 'U17680414607', 'beikedebei', '', '17680414607', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-11 17:50:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17680414607' LIMIT 1);
UPDATE users SET nick_name='beikedebei', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17680414607';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570816334', 'U13570816334', '13570816334', '', '13570816334', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-11 17:28:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570816334' LIMIT 1);
UPDATE users SET nick_name='13570816334', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570816334';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218886823', 'U15218886823', '15218886823', '', '15218886823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-11 14:59:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218886823' LIMIT 1);
UPDATE users SET nick_name='15218886823', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218886823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928728316', 'U13928728316', '陈彦蓁Chanel🐱👼', '', '13928728316', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-11 12:36:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928728316' LIMIT 1);
UPDATE users SET nick_name='陈彦蓁Chanel🐱👼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928728316';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521079569', 'U15521079569', '小陈同学', '', '15521079569', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-10 22:53:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521079569' LIMIT 1);
UPDATE users SET nick_name='小陈同学', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521079569';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18822810303', 'U18822810303', '宫玺', '', '18822810303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-10 19:31:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18822810303' LIMIT 1);
UPDATE users SET nick_name='宫玺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18822810303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626051529', 'U15626051529', '四月', '', '15626051529', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-10 18:24:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626051529' LIMIT 1);
UPDATE users SET nick_name='四月', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626051529';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13267969170', 'U13267969170', 'harris', '', '13267969170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-10-10 17:10:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13267969170' LIMIT 1);
UPDATE users SET nick_name='harris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13267969170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18515182905', 'U18515182905', '😃Coo', '', '18515182905', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-10 16:29:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18515182905' LIMIT 1);
UPDATE users SET nick_name='😃Coo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18515182905';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920151328', 'U15920151328', '吴沙胆', '', '15920151328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-10 11:20:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920151328' LIMIT 1);
UPDATE users SET nick_name='吴沙胆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920151328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802080008', 'U18802080008', '金强', '', '18802080008', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 252, '2025-10-10 10:17:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802080008' LIMIT 1);
UPDATE users SET nick_name='金强', balance=GREATEST(balance, 0.00), points=GREATEST(points, 252) WHERE phone='18802080008';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18776271665', 'U18776271665', '18776271665', '', '18776271665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-09 19:33:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18776271665' LIMIT 1);
UPDATE users SET nick_name='18776271665', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18776271665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808820917', 'U13808820917', 'catcat', '', '13808820917', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-09 18:52:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808820917' LIMIT 1);
UPDATE users SET nick_name='catcat', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808820917';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560246112', 'U13560246112', '美肚鲨🦈', '', '13560246112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-09 17:28:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560246112' LIMIT 1);
UPDATE users SET nick_name='美肚鲨🦈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560246112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544586228', 'U13544586228', '楠曦 💃', '', '13544586228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-09 15:22:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544586228' LIMIT 1);
UPDATE users SET nick_name='楠曦 💃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544586228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19802033381', 'U19802033381', '贾越', '', '19802033381', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-10-08 16:22:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19802033381' LIMIT 1);
UPDATE users SET nick_name='贾越', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='19802033381';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751827750', 'U13751827750', '海宜', '', '13751827750', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-08 15:07:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751827750' LIMIT 1);
UPDATE users SET nick_name='海宜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751827750';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18406606816', 'U18406606816', '与玉', '', '18406606816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-08 13:12:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18406606816' LIMIT 1);
UPDATE users SET nick_name='与玉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18406606816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826232494', 'U18826232494', 'ting', '', '18826232494', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-10-08 10:28:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826232494' LIMIT 1);
UPDATE users SET nick_name='ting', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18826232494';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665046255', 'U18665046255', '義', '', '18665046255', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-07 21:33:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665046255' LIMIT 1);
UPDATE users SET nick_name='義', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665046255';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18670776919', 'U18670776919', '卷卷', '', '18670776919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-07 18:55:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18670776919' LIMIT 1);
UPDATE users SET nick_name='卷卷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18670776919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622067767', 'U13622067767', '太会早', '', '13622067767', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-07 18:07:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622067767' LIMIT 1);
UPDATE users SET nick_name='太会早', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622067767';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928960907', 'U13928960907', '金', '', '13928960907', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-10-07 17:27:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928960907' LIMIT 1);
UPDATE users SET nick_name='金', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13928960907';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13816656665', 'U13816656665', '13816656665', '', '13816656665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-07 16:57:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13816656665' LIMIT 1);
UPDATE users SET nick_name='13816656665', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13816656665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102822889', 'U18102822889', '🇨🇳周工👀', '', '18102822889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-07 13:14:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102822889' LIMIT 1);
UPDATE users SET nick_name='🇨🇳周工👀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102822889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302255797', 'U13302255797', '葵', '', '13302255797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-07 13:05:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302255797' LIMIT 1);
UPDATE users SET nick_name='葵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302255797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148905547', 'U13148905547', 'HowHow', '', '13148905547', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-10-07 09:13:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148905547' LIMIT 1);
UPDATE users SET nick_name='HowHow', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13148905547';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926416121', 'U13926416121', '13926416121', '', '13926416121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-06 14:52:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926416121' LIMIT 1);
UPDATE users SET nick_name='13926416121', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926416121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609794609', 'U13609794609', '红果果g', '', '13609794609', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-10-06 11:51:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609794609' LIMIT 1);
UPDATE users SET nick_name='红果果g', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13609794609';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822589364', 'U13822589364', '月光小张', '', '13822589364', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-06 08:23:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822589364' LIMIT 1);
UPDATE users SET nick_name='月光小张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822589364';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928888464', 'U13928888464', '邓生', '', '13928888464', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-05 20:53:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928888464' LIMIT 1);
UPDATE users SET nick_name='邓生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928888464';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13794395771', 'U13794395771', '勇哥', '', '13794395771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-10-05 16:51:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13794395771' LIMIT 1);
UPDATE users SET nick_name='勇哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13794395771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418411351', 'U13418411351', 'Olivia', '', '13418411351', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-05 14:02:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418411351' LIMIT 1);
UPDATE users SET nick_name='Olivia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13418411351';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631318616', 'U13631318616', '👑Vivi晕👠💎', '', '13631318616', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-10-05 12:19:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631318616' LIMIT 1);
UPDATE users SET nick_name='👑Vivi晕👠💎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13631318616';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15810302187', 'U15810302187', '一介粗人', '', '15810302187', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 179, '2025-10-05 12:13:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15810302187' LIMIT 1);
UPDATE users SET nick_name='一介粗人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 179) WHERE phone='15810302187';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013219303', 'U15013219303', '15013219303', '', '15013219303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-03 23:47:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013219303' LIMIT 1);
UPDATE users SET nick_name='15013219303', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013219303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632381688', 'U13632381688', '13632381688', '', '13632381688', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-03 12:48:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632381688' LIMIT 1);
UPDATE users SET nick_name='13632381688', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632381688';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539865442', 'U13539865442', '13539865442', '', '13539865442', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-02 21:12:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539865442' LIMIT 1);
UPDATE users SET nick_name='13539865442', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539865442';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13910508375', 'U13910508375', '非有想', '', '13910508375', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-02 20:08:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13910508375' LIMIT 1);
UPDATE users SET nick_name='非有想', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13910508375';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242867516', 'U13242867516', 'Anton B', '', '13242867516', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-02 16:34:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242867516' LIMIT 1);
UPDATE users SET nick_name='Anton B', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242867516';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922151092', 'U13922151092', '13922151092', '', '13922151092', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-02 10:42:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922151092' LIMIT 1);
UPDATE users SET nick_name='13922151092', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922151092';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13178847657', 'U13178847657', '13178847657', '', '13178847657', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-10-01 12:11:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13178847657' LIMIT 1);
UPDATE users SET nick_name='13178847657', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13178847657';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902210916', 'U13902210916', 'ue', '', '13902210916', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-30 14:23:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902210916' LIMIT 1);
UPDATE users SET nick_name='ue', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902210916';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825073623', 'U13825073623', '💕伍老劍🐤', '', '13825073623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-30 14:04:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825073623' LIMIT 1);
UPDATE users SET nick_name='💕伍老劍🐤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825073623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826003627', 'U13826003627', '美丽', '', '13826003627', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-30 13:04:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826003627' LIMIT 1);
UPDATE users SET nick_name='美丽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826003627';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632451274', 'U13632451274', 'kitwah🐹', '', '13632451274', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-30 12:12:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632451274' LIMIT 1);
UPDATE users SET nick_name='kitwah🐹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632451274';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13424026046', 'U13424026046', '鲤鱼仔', '', '13424026046', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 149, '2025-09-29 21:48:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13424026046' LIMIT 1);
UPDATE users SET nick_name='鲤鱼仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 149) WHERE phone='13424026046';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19520998621', 'U19520998621', '19520998621', '', '19520998621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 20:36:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19520998621' LIMIT 1);
UPDATE users SET nick_name='19520998621', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19520998621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622259153', 'U13622259153', '13622259153', '', '13622259153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 20:00:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622259153' LIMIT 1);
UPDATE users SET nick_name='13622259153', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622259153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922203611', 'U13922203611', '纪卉昕Gigi🎀', '', '13922203611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 18:04:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922203611' LIMIT 1);
UPDATE users SET nick_name='纪卉昕Gigi🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922203611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19928380848', 'U19928380848', 'Jade🎀', '', '19928380848', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 16:48:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19928380848' LIMIT 1);
UPDATE users SET nick_name='Jade🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19928380848';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665677216', 'U18665677216', '宇宙大西瓜', '', '18665677216', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 15:39:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665677216' LIMIT 1);
UPDATE users SET nick_name='宇宙大西瓜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665677216';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143775569', 'U13143775569', '13143775569', '', '13143775569', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 14:47:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143775569' LIMIT 1);
UPDATE users SET nick_name='13143775569', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143775569';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15875686037', 'U15875686037', '15875686037', '', '15875686037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 14:14:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15875686037' LIMIT 1);
UPDATE users SET nick_name='15875686037', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15875686037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580536183', 'U13580536183', '13580536183', '', '13580536183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 13:25:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580536183' LIMIT 1);
UPDATE users SET nick_name='13580536183', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580536183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13616652963', 'U13616652963', '啊啊啊瑶💨', '', '13616652963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 12:28:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13616652963' LIMIT 1);
UPDATE users SET nick_name='啊啊啊瑶💨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13616652963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920893379', 'U15920893379', 'albee', '', '15920893379', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 07:42:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920893379' LIMIT 1);
UPDATE users SET nick_name='albee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920893379';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18033187735', 'U18033187735', 'i', '', '18033187735', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 01:01:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18033187735' LIMIT 1);
UPDATE users SET nick_name='i', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18033187735';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13360699515', 'U13360699515', '有有', '', '13360699515', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-29 00:59:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13360699515' LIMIT 1);
UPDATE users SET nick_name='有有', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13360699515';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18307572838', 'U18307572838', '大表姐', '', '18307572838', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-28 20:58:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18307572838' LIMIT 1);
UPDATE users SET nick_name='大表姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18307572838';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17806770235', 'U17806770235', '洋', '', '17806770235', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-28 20:47:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17806770235' LIMIT 1);
UPDATE users SET nick_name='洋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17806770235';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13376713539', 'U13376713539', '。', '', '13376713539', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-28 15:27:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13376713539' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13376713539';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17827057020', 'U17827057020', '🍑', '', '17827057020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-27 21:29:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17827057020' LIMIT 1);
UPDATE users SET nick_name='🍑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17827057020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246807328', 'U13246807328', 'Hou', '', '13246807328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-27 20:04:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246807328' LIMIT 1);
UPDATE users SET nick_name='Hou', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246807328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521269930', 'U15521269930', '冬花', '', '15521269930', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-27 14:42:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521269930' LIMIT 1);
UPDATE users SET nick_name='冬花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521269930';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602407905', 'U15602407905', 'Jessie🍌', '', '15602407905', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 8, '2025-09-27 13:06:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602407905' LIMIT 1);
UPDATE users SET nick_name='Jessie🍌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 8) WHERE phone='15602407905';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600018246', 'U13600018246', '王先生', '', '13600018246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-26 21:41:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600018246' LIMIT 1);
UPDATE users SET nick_name='王先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600018246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392633639', 'U13392633639', '水冰心', '', '13392633639', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-26 20:00:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392633639' LIMIT 1);
UPDATE users SET nick_name='水冰心', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392633639';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265164137', 'U13265164137', 'Chris🏂', '', '13265164137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-26 09:54:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265164137' LIMIT 1);
UPDATE users SET nick_name='Chris🏂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265164137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560036574', 'U13560036574', '孫嘉文', '', '13560036574', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-26 09:48:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560036574' LIMIT 1);
UPDATE users SET nick_name='孫嘉文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560036574';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15012839335', 'U15012839335', '0103 218', '', '15012839335', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-25 20:53:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15012839335' LIMIT 1);
UPDATE users SET nick_name='0103 218', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15012839335';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920612413', 'U15920612413', '15920612413', '', '15920612413', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-25 20:47:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920612413' LIMIT 1);
UPDATE users SET nick_name='15920612413', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920612413';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694229386', 'U13694229386', 'ry', '', '13694229386', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-25 16:21:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694229386' LIMIT 1);
UPDATE users SET nick_name='ry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13694229386';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626493676', 'U15626493676', '楠楠楠', '', '15626493676', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-25 13:02:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626493676' LIMIT 1);
UPDATE users SET nick_name='楠楠楠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626493676';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631321020', 'U13631321020', '健雯Fifi', '', '13631321020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-09-23 21:18:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631321020' LIMIT 1);
UPDATE users SET nick_name='健雯Fifi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13631321020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922730513', 'U13922730513', '13922730513', '', '13922730513', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-23 15:59:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922730513' LIMIT 1);
UPDATE users SET nick_name='13922730513', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922730513';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751880190', 'U13751880190', '13751880190', '', '13751880190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-23 13:15:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751880190' LIMIT 1);
UPDATE users SET nick_name='13751880190', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751880190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102776025', 'U18102776025', '张乐', '', '18102776025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-23 13:06:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102776025' LIMIT 1);
UPDATE users SET nick_name='张乐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102776025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13307566077', 'U13307566077', '13307566077', '', '13307566077', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-23 13:04:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13307566077' LIMIT 1);
UPDATE users SET nick_name='13307566077', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13307566077';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15755920907', 'U15755920907', '15755920907', '', '15755920907', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-22 18:19:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15755920907' LIMIT 1);
UPDATE users SET nick_name='15755920907', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15755920907';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988917054', 'U18988917054', 'VC', '', '18988917054', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-22 18:14:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988917054' LIMIT 1);
UPDATE users SET nick_name='VC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988917054';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620797476', 'U18620797476', '民', '', '18620797476', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-22 18:14:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620797476' LIMIT 1);
UPDATE users SET nick_name='民', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620797476';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13672648725', 'U13672648725', 'Zzzzzzzyy', '', '13672648725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 20, '2025-09-22 18:14:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13672648725' LIMIT 1);
UPDATE users SET nick_name='Zzzzzzzyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 20) WHERE phone='13672648725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18138721021', 'U18138721021', 'W', '', '18138721021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-22 17:00:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18138721021' LIMIT 1);
UPDATE users SET nick_name='W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18138721021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650870162', 'U13650870162', 'Junior', '', '13650870162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-22 15:31:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650870162' LIMIT 1);
UPDATE users SET nick_name='Junior', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13650870162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660394430', 'U13660394430', '水冰心', '', '13660394430', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-22 14:54:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660394430' LIMIT 1);
UPDATE users SET nick_name='水冰心', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660394430';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18911672808', 'U18911672808', 'June', '', '18911672808', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 210, '2025-09-22 14:20:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18911672808' LIMIT 1);
UPDATE users SET nick_name='June', balance=GREATEST(balance, 0.00), points=GREATEST(points, 210) WHERE phone='18911672808';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18516014792', 'U18516014792', '18516014792', '', '18516014792', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-22 14:00:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18516014792' LIMIT 1);
UPDATE users SET nick_name='18516014792', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18516014792';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915772409', 'U15915772409', 'N_', '', '15915772409', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-22 13:49:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915772409' LIMIT 1);
UPDATE users SET nick_name='N_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915772409';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989089693', 'U15989089693', '15989089693', '', '15989089693', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-22 13:43:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989089693' LIMIT 1);
UPDATE users SET nick_name='15989089693', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989089693';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688415488', 'U18688415488', '18688415488', '', '18688415488', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 20:03:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688415488' LIMIT 1);
UPDATE users SET nick_name='18688415488', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688415488';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302306835', 'U13302306835', 'ijwlitmf', '', '13302306835', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 16:19:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302306835' LIMIT 1);
UPDATE users SET nick_name='ijwlitmf', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302306835';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18553642945', 'U18553642945', '源', '', '18553642945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 16:08:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18553642945' LIMIT 1);
UPDATE users SET nick_name='源', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18553642945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246820919', 'U13246820919', '💤', '', '13246820919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 15:49:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246820919' LIMIT 1);
UPDATE users SET nick_name='💤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246820919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922458903', 'U13922458903', '加多多油', '', '13922458903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 14:44:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922458903' LIMIT 1);
UPDATE users SET nick_name='加多多油', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922458903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521080550', 'U15521080550', 'DKM 🥕', '', '15521080550', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 14:39:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521080550' LIMIT 1);
UPDATE users SET nick_name='DKM 🥕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521080550';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660350749', 'U13660350749', '13660350749', '', '13660350749', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 14:24:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660350749' LIMIT 1);
UPDATE users SET nick_name='13660350749', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660350749';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322066079', 'U17322066079', 'Lorge', '', '17322066079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 14:08:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322066079' LIMIT 1);
UPDATE users SET nick_name='Lorge', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322066079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19102073573', 'U19102073573', '19102073573', '', '19102073573', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 12:30:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19102073573' LIMIT 1);
UPDATE users SET nick_name='19102073573', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19102073573';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620011773', 'U18620011773', 'Joe', '', '18620011773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-09-21 11:37:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620011773' LIMIT 1);
UPDATE users SET nick_name='Joe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18620011773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625005573', 'U15625005573', '辛', '', '15625005573', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 10:03:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625005573' LIMIT 1);
UPDATE users SET nick_name='辛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625005573';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18402907081', 'U18402907081', '18402907081', '', '18402907081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 09:59:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18402907081' LIMIT 1);
UPDATE users SET nick_name='18402907081', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18402907081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926179999', 'U18926179999', '18926179999', '', '18926179999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-21 09:49:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926179999' LIMIT 1);
UPDATE users SET nick_name='18926179999', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926179999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520230300', 'U18520230300', 'Tracy', '', '18520230300', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-20 15:52:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520230300' LIMIT 1);
UPDATE users SET nick_name='Tracy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520230300';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242876228', 'U13242876228', '晴晴晴子Silvia', '', '13242876228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-20 15:52:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242876228' LIMIT 1);
UPDATE users SET nick_name='晴晴晴子Silvia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242876228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925011399', 'U18925011399', 'Winta🌟 明星经纪', '', '18925011399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-20 14:13:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925011399' LIMIT 1);
UPDATE users SET nick_name='Winta🌟 明星经纪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925011399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632363581', 'U13632363581', '3.1415926', '', '13632363581', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-20 13:19:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632363581' LIMIT 1);
UPDATE users SET nick_name='3.1415926', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632363581';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17720108135', 'U17720108135', 'Elijah', '', '17720108135', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-20 11:37:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17720108135' LIMIT 1);
UPDATE users SET nick_name='Elijah', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17720108135';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632276174', 'U13632276174', 'Owen', '', '13632276174', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-09-20 11:31:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632276174' LIMIT 1);
UPDATE users SET nick_name='Owen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13632276174';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512726281', 'U13512726281', '13512726281', '', '13512726281', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-20 10:54:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512726281' LIMIT 1);
UPDATE users SET nick_name='13512726281', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512726281';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922796008', 'U13922796008', 'KT', '', '13922796008', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-20 10:21:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922796008' LIMIT 1);
UPDATE users SET nick_name='KT', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922796008';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17328674723', 'U17328674723', 'Sienna👼', '', '17328674723', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-09-20 01:38:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17328674723' LIMIT 1);
UPDATE users SET nick_name='Sienna👼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='17328674723';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13518081442', 'U13518081442', '龙', '', '13518081442', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-19 20:31:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13518081442' LIMIT 1);
UPDATE users SET nick_name='龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13518081442';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602267712', 'U15602267712', 'Elijah', '', '15602267712', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-19 16:49:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602267712' LIMIT 1);
UPDATE users SET nick_name='Elijah', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602267712';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316905146', 'U18316905146', '㊙', '', '18316905146', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-19 16:04:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316905146' LIMIT 1);
UPDATE users SET nick_name='㊙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316905146';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17612046101', 'U17612046101', 'Claire', '', '17612046101', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-19 12:42:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17612046101' LIMIT 1);
UPDATE users SET nick_name='Claire', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17612046101';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17661608762', 'U17661608762', '魔力小美', '', '17661608762', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-19 12:29:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17661608762' LIMIT 1);
UPDATE users SET nick_name='魔力小美', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17661608762';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711529165', 'U13711529165', 'ylh', '', '13711529165', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-19 10:13:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711529165' LIMIT 1);
UPDATE users SET nick_name='ylh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711529165';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710578083', 'U13710578083', '13710578083', '', '13710578083', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-18 20:54:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710578083' LIMIT 1);
UPDATE users SET nick_name='13710578083', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710578083';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928943005', 'U18928943005', '锋🏸', '', '18928943005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-18 18:46:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928943005' LIMIT 1);
UPDATE users SET nick_name='锋🏸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928943005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18789552831', 'U18789552831', '18789552831', '', '18789552831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-18 16:30:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18789552831' LIMIT 1);
UPDATE users SET nick_name='18789552831', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18789552831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102268812', 'U18102268812', '秀秀-', '', '18102268812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-18 14:58:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102268812' LIMIT 1);
UPDATE users SET nick_name='秀秀-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102268812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666093620', 'U18666093620', '鱼_鱼', '', '18666093620', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 45, '2025-09-18 14:03:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666093620' LIMIT 1);
UPDATE users SET nick_name='鱼_鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 45) WHERE phone='18666093620';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580519311', 'U13580519311', 'ET', '', '13580519311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-09-18 11:53:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580519311' LIMIT 1);
UPDATE users SET nick_name='ET', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13580519311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710880888', 'U13710880888', '热心市民陈先生', '', '13710880888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2025-09-18 10:41:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710880888' LIMIT 1);
UPDATE users SET nick_name='热心市民陈先生', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='13710880888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922370747', 'U18922370747', 'Tracy Chan👒', '', '18922370747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-18 10:24:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922370747' LIMIT 1);
UPDATE users SET nick_name='Tracy Chan👒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922370747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392133713', 'U13392133713', '璐璐', '', '13392133713', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-09-17 21:52:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392133713' LIMIT 1);
UPDATE users SET nick_name='璐璐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13392133713';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665174014', 'U17665174014', '17665174014', '', '17665174014', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-17 18:44:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665174014' LIMIT 1);
UPDATE users SET nick_name='17665174014', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665174014';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918739201', 'U15918739201', '15918739201', '', '15918739201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-17 17:48:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918739201' LIMIT 1);
UPDATE users SET nick_name='15918739201', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918739201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660611366', 'U13660611366', '陈', '', '13660611366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-17 17:23:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660611366' LIMIT 1);
UPDATE users SET nick_name='陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660611366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242762660', 'U13242762660', '99', '', '13242762660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-17 14:00:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242762660' LIMIT 1);
UPDATE users SET nick_name='99', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242762660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16624606818', 'U16624606818', 'a.a Gwon 🧸®', '', '16624606818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-17 11:51:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16624606818' LIMIT 1);
UPDATE users SET nick_name='a.a Gwon 🧸®', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16624606818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710548385', 'U13710548385', '敏敏美女', '', '13710548385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-17 11:28:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710548385' LIMIT 1);
UPDATE users SET nick_name='敏敏美女', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710548385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919345044', 'U15919345044', '摄影老师 龙导', '', '15919345044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-17 10:25:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919345044' LIMIT 1);
UPDATE users SET nick_name='摄影老师 龙导', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919345044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602880186', 'U13602880186', '陈生', '', '13602880186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-17 09:12:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602880186' LIMIT 1);
UPDATE users SET nick_name='陈生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602880186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18646992999', 'U18646992999', 'Z.sn', '', '18646992999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-16 21:50:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18646992999' LIMIT 1);
UPDATE users SET nick_name='Z.sn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18646992999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13542996643', 'U13542996643', 'Robigie', '', '13542996643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-16 21:46:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13542996643' LIMIT 1);
UPDATE users SET nick_name='Robigie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13542996643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13380026972', 'U13380026972', 'Hydeng', '', '13380026972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-09-16 18:59:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13380026972' LIMIT 1);
UPDATE users SET nick_name='Hydeng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13380026972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627761089', 'U15627761089', '15627761089', '', '15627761089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-16 18:32:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627761089' LIMIT 1);
UPDATE users SET nick_name='15627761089', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627761089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17797223235', 'U17797223235', '🎾 绿茵抛物线🎾', '', '17797223235', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-16 16:53:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17797223235' LIMIT 1);
UPDATE users SET nick_name='🎾 绿茵抛物线🎾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17797223235';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665450201', 'U17665450201', '小仙女', '', '17665450201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-16 13:57:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665450201' LIMIT 1);
UPDATE users SET nick_name='小仙女', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665450201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18771104338', 'U18771104338', '18771104338', '', '18771104338', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-16 13:18:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18771104338' LIMIT 1);
UPDATE users SET nick_name='18771104338', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18771104338';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13112378929', 'U13112378929', '13112378929', '', '13112378929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-16 10:57:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13112378929' LIMIT 1);
UPDATE users SET nick_name='13112378929', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13112378929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18088812132', 'U18088812132', '赖赖唧唧', '', '18088812132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-16 10:23:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18088812132' LIMIT 1);
UPDATE users SET nick_name='赖赖唧唧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18088812132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13620432491', 'U13620432491', '快乐那么多', '', '13620432491', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-16 09:53:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13620432491' LIMIT 1);
UPDATE users SET nick_name='快乐那么多', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13620432491';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246242610', 'U13246242610', '1', '', '13246242610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-15 20:04:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246242610' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246242610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19537923685', 'U19537923685', '琪琪', '', '19537923685', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-15 19:16:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19537923685' LIMIT 1);
UPDATE users SET nick_name='琪琪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19537923685';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102682523', 'U18102682523', 'Frankie', '', '18102682523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-15 16:55:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102682523' LIMIT 1);
UPDATE users SET nick_name='Frankie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102682523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15802025245', 'U15802025245', '15802025245', '', '15802025245', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-15 15:00:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15802025245' LIMIT 1);
UPDATE users SET nick_name='15802025245', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15802025245';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520688975', 'U18520688975', 'hYUNXUAN🧸', '', '18520688975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-15 13:19:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520688975' LIMIT 1);
UPDATE users SET nick_name='hYUNXUAN🧸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520688975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662424680', 'U13662424680', '郭辣辣🌶', '', '13662424680', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-15 12:56:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662424680' LIMIT 1);
UPDATE users SET nick_name='郭辣辣🌶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662424680';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102020605', 'U15102020605', 'Carey🤎', '', '15102020605', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 136, '2025-09-15 11:54:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102020605' LIMIT 1);
UPDATE users SET nick_name='Carey🤎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 136) WHERE phone='15102020605';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922182418', 'U18922182418', 'HLulu', '', '18922182418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 21:38:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922182418' LIMIT 1);
UPDATE users SET nick_name='HLulu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922182418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915884905', 'U15915884905', '15915884905', '', '15915884905', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 20:09:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915884905' LIMIT 1);
UPDATE users SET nick_name='15915884905', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915884905';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113530973', 'U15113530973', '小陈', '', '15113530973', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 18:26:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113530973' LIMIT 1);
UPDATE users SET nick_name='小陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113530973';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102255559', 'U18102255559', '18102255559', '', '18102255559', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 15:40:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102255559' LIMIT 1);
UPDATE users SET nick_name='18102255559', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102255559';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13071608678', 'U13071608678', '醒醒', '', '13071608678', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 15:28:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13071608678' LIMIT 1);
UPDATE users SET nick_name='醒醒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13071608678';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822103720', 'U13822103720', 'Betty', '', '13822103720', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 15:24:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822103720' LIMIT 1);
UPDATE users SET nick_name='Betty', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822103720';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521189921', 'U15521189921', '蔡坤霖', '', '15521189921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 15:11:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521189921' LIMIT 1);
UPDATE users SET nick_name='蔡坤霖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521189921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822135821', 'U13822135821', '13822135821', '', '13822135821', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 14:45:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822135821' LIMIT 1);
UPDATE users SET nick_name='13822135821', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822135821';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18571318411', 'U18571318411', '18571318411', '', '18571318411', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 14:08:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18571318411' LIMIT 1);
UPDATE users SET nick_name='18571318411', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18571318411';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570988075', 'U13570988075', '13570988075', '', '13570988075', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 14:03:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570988075' LIMIT 1);
UPDATE users SET nick_name='13570988075', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570988075';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520026083', 'U18520026083', 'DoDo他爹', '', '18520026083', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-09-14 13:27:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520026083' LIMIT 1);
UPDATE users SET nick_name='DoDo他爹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='18520026083';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122317198', 'U18122317198', '李会长', '', '18122317198', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 12:07:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122317198' LIMIT 1);
UPDATE users SET nick_name='李会长', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122317198';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17688520469', 'U17688520469', '...', '', '17688520469', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 12:00:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17688520469' LIMIT 1);
UPDATE users SET nick_name='...', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17688520469';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17724725301', 'U17724725301', '1111', '', '17724725301', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 11:59:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17724725301' LIMIT 1);
UPDATE users SET nick_name='1111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17724725301';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917570391', 'U15917570391', '🙈', '', '15917570391', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-14 11:59:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917570391' LIMIT 1);
UPDATE users SET nick_name='🙈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917570391';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19849940445', 'U19849940445', 'lfffff', '', '19849940445', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 21:48:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19849940445' LIMIT 1);
UPDATE users SET nick_name='lfffff', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19849940445';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620008559', 'U18620008559', 'Nicky🇺🇳', '', '18620008559', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 21:47:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620008559' LIMIT 1);
UPDATE users SET nick_name='Nicky🇺🇳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620008559';
