SET NAMES utf8mb4;
-- 中大店用户导入 part 2 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828210071', 'U13828210071', '13828210071', '', '13828210071', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-19 19:42:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828210071' LIMIT 1);
UPDATE users SET nick_name='13828210071', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828210071';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632388899', 'U13632388899', 'Mersara영흔', '', '13632388899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-19 15:27:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632388899' LIMIT 1);
UPDATE users SET nick_name='Mersara영흔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632388899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902329307', 'U13902329307', '13902329307', '', '13902329307', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-19 14:40:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902329307' LIMIT 1);
UPDATE users SET nick_name='13902329307', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902329307';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17276497756', 'U17276497756', '顾里', '', '17276497756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-19 11:48:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17276497756' LIMIT 1);
UPDATE users SET nick_name='顾里', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17276497756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535335203', 'U13535335203', '13535335203', '', '13535335203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-18 19:13:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535335203' LIMIT 1);
UPDATE users SET nick_name='13535335203', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535335203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14754545416', 'U14754545416', 'YOYO', '', '14754545416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-18 18:23:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14754545416' LIMIT 1);
UPDATE users SET nick_name='YOYO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14754545416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13794338055', 'U13794338055', '13794338055', '', '13794338055', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-18 18:22:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13794338055' LIMIT 1);
UPDATE users SET nick_name='13794338055', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13794338055';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711557673', 'U13711557673', 'YOYO', '', '13711557673', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-18 18:06:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711557673' LIMIT 1);
UPDATE users SET nick_name='YOYO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711557673';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217691664', 'U15217691664', '15217691664', '', '15217691664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-18 14:54:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217691664' LIMIT 1);
UPDATE users SET nick_name='15217691664', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217691664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18111585175', 'U18111585175', 'Ben', '', '18111585175', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-17 15:18:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18111585175' LIMIT 1);
UPDATE users SET nick_name='Ben', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18111585175';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17600807169', 'U17600807169', 'J', '', '17600807169', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2026-08-17 10:56:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17600807169' LIMIT 1);
UPDATE users SET nick_name='J', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='17600807169';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760811058', 'U13760811058', '萱', '', '13760811058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-16 21:25:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760811058' LIMIT 1);
UPDATE users SET nick_name='萱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760811058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500037053', 'U13500037053', 'Janet', '', '13500037053', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-16 20:12:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500037053' LIMIT 1);
UPDATE users SET nick_name='Janet', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500037053';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268236840', 'U13268236840', '🧡ྀི咖喱', '', '13268236840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-16 17:29:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268236840' LIMIT 1);
UPDATE users SET nick_name='🧡ྀི咖喱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268236840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866723645', 'U19866723645', '19866723645', '', '19866723645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-16 14:41:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866723645' LIMIT 1);
UPDATE users SET nick_name='19866723645', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19866723645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922183869', 'U13922183869', '13922183869', '', '13922183869', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-16 13:22:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922183869' LIMIT 1);
UPDATE users SET nick_name='13922183869', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922183869';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15805192152', 'U15805192152', 'I好', '', '15805192152', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-16 13:20:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15805192152' LIMIT 1);
UPDATE users SET nick_name='I好', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15805192152';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13169642830', 'U13169642830', 'Julie👼', '', '13169642830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-16 11:56:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13169642830' LIMIT 1);
UPDATE users SET nick_name='Julie👼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13169642830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556080676', 'U13556080676', 'Carmen.', '', '13556080676', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-16 10:11:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556080676' LIMIT 1);
UPDATE users SET nick_name='Carmen.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556080676';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249164477', 'U13249164477', '咖啡哲理', '', '13249164477', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-16 09:00:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249164477' LIMIT 1);
UPDATE users SET nick_name='咖啡哲理', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249164477';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520203542', 'U18520203542', 'Soso', '', '18520203542', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 21:22:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520203542' LIMIT 1);
UPDATE users SET nick_name='Soso', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520203542';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642693327', 'U13642693327', 'connie', '', '13642693327', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 18:24:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642693327' LIMIT 1);
UPDATE users SET nick_name='connie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642693327';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682221235', 'U13682221235', '13682221235', '', '13682221235', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 18:20:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682221235' LIMIT 1);
UPDATE users SET nick_name='13682221235', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13682221235';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13066359243', 'U13066359243', '13066359243', '', '13066359243', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 17:24:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13066359243' LIMIT 1);
UPDATE users SET nick_name='13066359243', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13066359243';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570434037', 'U13570434037', 'PANDORA', '', '13570434037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 16:19:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570434037' LIMIT 1);
UPDATE users SET nick_name='PANDORA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570434037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902002977', 'U15902002977', '15902002977', '', '15902002977', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 14:35:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902002977' LIMIT 1);
UPDATE users SET nick_name='15902002977', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902002977';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622377223', 'U15622377223', 'Comet🌠', '', '15622377223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 13:40:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622377223' LIMIT 1);
UPDATE users SET nick_name='Comet🌠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622377223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18198952168', 'U18198952168', '18198952168', '', '18198952168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 13:35:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18198952168' LIMIT 1);
UPDATE users SET nick_name='18198952168', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18198952168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664704610', 'U18664704610', '18664704610', '', '18664704610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 13:32:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664704610' LIMIT 1);
UPDATE users SET nick_name='18664704610', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664704610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13342213588', 'U13342213588', '江', '', '13342213588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 12:22:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13342213588' LIMIT 1);
UPDATE users SET nick_name='江', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13342213588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312016970', 'U18312016970', 'Jòyce', '', '18312016970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 12:03:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312016970' LIMIT 1);
UPDATE users SET nick_name='Jòyce', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312016970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631442862', 'U13631442862', '13631442862', '', '13631442862', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 11:28:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631442862' LIMIT 1);
UPDATE users SET nick_name='13631442862', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631442862';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662720323', 'U13662720323', 'Devin', '', '13662720323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 11:14:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662720323' LIMIT 1);
UPDATE users SET nick_name='Devin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662720323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18213035353', 'U18213035353', 'pz', '', '18213035353', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-15 11:06:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18213035353' LIMIT 1);
UPDATE users SET nick_name='pz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18213035353';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13059180403', 'U13059180403', '💋 宸.  💋 josh', '', '13059180403', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-14 20:50:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13059180403' LIMIT 1);
UPDATE users SET nick_name='💋 宸.  💋 josh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13059180403';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18582584204', 'U18582584204', '闵泓朴', '', '18582584204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-14 19:00:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18582584204' LIMIT 1);
UPDATE users SET nick_name='闵泓朴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18582584204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15374075002', 'U15374075002', '15374075002', '', '15374075002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-14 17:14:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15374075002' LIMIT 1);
UPDATE users SET nick_name='15374075002', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15374075002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19306644388', 'U19306644388', '19306644388', '', '19306644388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-14 15:32:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19306644388' LIMIT 1);
UPDATE users SET nick_name='19306644388', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19306644388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13209020634', 'U13209020634', '13209020634', '', '13209020634', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-14 14:34:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13209020634' LIMIT 1);
UPDATE users SET nick_name='13209020634', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13209020634';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918902201', 'U15918902201', 'Angst', '', '15918902201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-14 14:31:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918902201' LIMIT 1);
UPDATE users SET nick_name='Angst', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918902201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288613234', 'U13288613234', '啦啦', '', '13288613234', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-14 13:41:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288613234' LIMIT 1);
UPDATE users SET nick_name='啦啦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288613234';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922202119', 'U13922202119', '13922202119', '', '13922202119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-14 13:00:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922202119' LIMIT 1);
UPDATE users SET nick_name='13922202119', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922202119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18824928227', 'U18824928227', 'Tr', '', '18824928227', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-14 12:11:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18824928227' LIMIT 1);
UPDATE users SET nick_name='Tr', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18824928227';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826144934', 'U13826144934', '13826144934', '', '13826144934', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-13 19:32:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826144934' LIMIT 1);
UPDATE users SET nick_name='13826144934', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826144934';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919330423', 'U15919330423', '15919330423', '', '15919330423', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-13 13:35:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919330423' LIMIT 1);
UPDATE users SET nick_name='15919330423', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919330423';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450749431', 'U13450749431', '13450749431', '', '13450749431', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-13 12:38:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450749431' LIMIT 1);
UPDATE users SET nick_name='13450749431', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450749431';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913197207', 'U15913197207', 's', '', '15913197207', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-13 11:46:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913197207' LIMIT 1);
UPDATE users SET nick_name='s', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913197207';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19875986825', 'U19875986825', '19875986825', '', '19875986825', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-13 10:09:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19875986825' LIMIT 1);
UPDATE users SET nick_name='19875986825', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19875986825';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825106705', 'U18825106705', '俊俊', '', '18825106705', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-12 21:53:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825106705' LIMIT 1);
UPDATE users SET nick_name='俊俊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825106705';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876668184', 'U17876668184', 'cat', '', '17876668184', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-12 20:20:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876668184' LIMIT 1);
UPDATE users SET nick_name='cat', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876668184';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13910711863', 'U13910711863', 'Bianca', '', '13910711863', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-12 19:14:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13910711863' LIMIT 1);
UPDATE users SET nick_name='Bianca', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13910711863';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218590934', 'U18218590934', 'xxx', '', '18218590934', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-12 16:24:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218590934' LIMIT 1);
UPDATE users SET nick_name='xxx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218590934';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18779687015', 'U18779687015', '咕噜', '', '18779687015', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-11 19:43:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18779687015' LIMIT 1);
UPDATE users SET nick_name='咕噜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18779687015';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631366780', 'U13631366780', 'Scarlett', '', '13631366780', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-11 19:26:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631366780' LIMIT 1);
UPDATE users SET nick_name='Scarlett', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631366780';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13978040634', 'U13978040634', 'J1rry', '', '13978040634', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-11 16:48:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13978040634' LIMIT 1);
UPDATE users SET nick_name='J1rry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13978040634';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13607908928', 'U13607908928', 'star', '', '13607908928', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-11 15:50:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13607908928' LIMIT 1);
UPDATE users SET nick_name='star', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13607908928';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975451156', 'U15975451156', '中仔', '', '15975451156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-11 14:41:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975451156' LIMIT 1);
UPDATE users SET nick_name='中仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975451156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18719376906', 'U18719376906', '18719376906', '', '18719376906', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-11 11:27:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18719376906' LIMIT 1);
UPDATE users SET nick_name='18719376906', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18719376906';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710332338', 'U13710332338', '黄晖平', '', '13710332338', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-11 10:28:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710332338' LIMIT 1);
UPDATE users SET nick_name='黄晖平', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710332338';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15976539977', 'U15976539977', '啦啦啦阿里', '', '15976539977', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1, '2026-08-10 23:57:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15976539977' LIMIT 1);
UPDATE users SET nick_name='啦啦啦阿里', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1) WHERE phone='15976539977';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18927572201', 'U18927572201', 'Lzhy', '', '18927572201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-10 21:33:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18927572201' LIMIT 1);
UPDATE users SET nick_name='Lzhy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18927572201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922211997', 'U18922211997', 'Jackey', '', '18922211997', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-10 20:37:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922211997' LIMIT 1);
UPDATE users SET nick_name='Jackey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922211997';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15817136062', 'U15817136062', '肥嘟嘟', '', '15817136062', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-10 19:04:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15817136062' LIMIT 1);
UPDATE users SET nick_name='肥嘟嘟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15817136062';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433771581', 'U13433771581', '黄黄', '', '13433771581', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-10 11:41:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433771581' LIMIT 1);
UPDATE users SET nick_name='黄黄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433771581';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889973502', 'U15889973502', '酒馆打了杨同学🍻', '', '15889973502', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-10 09:40:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889973502' LIMIT 1);
UPDATE users SET nick_name='酒馆打了杨同学🍻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889973502';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688888279', 'U18688888279', '柯欣妤', '', '18688888279', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 20:36:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688888279' LIMIT 1);
UPDATE users SET nick_name='柯欣妤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688888279';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602690330', 'U13602690330', 'Baker', '', '13602690330', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 20:27:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602690330' LIMIT 1);
UPDATE users SET nick_name='Baker', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602690330';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013413589', 'U15013413589', '葉桐彤🍁', '', '15013413589', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-08-09 20:25:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013413589' LIMIT 1);
UPDATE users SET nick_name='葉桐彤🍁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15013413589';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533266689', 'U13533266689', '11', '', '13533266689', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 18:10:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533266689' LIMIT 1);
UPDATE users SET nick_name='11', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533266689';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17728043538', 'U17728043538', '17728043538', '', '17728043538', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 17:57:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17728043538' LIMIT 1);
UPDATE users SET nick_name='17728043538', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17728043538';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826102713', 'U18826102713', '饼饼', '', '18826102713', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 17:37:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826102713' LIMIT 1);
UPDATE users SET nick_name='饼饼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826102713';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17713762724', 'U17713762724', 'yang', '', '17713762724', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 17:26:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17713762724' LIMIT 1);
UPDATE users SET nick_name='yang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17713762724';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13532928887', 'U13532928887', 'nice(^з^)', '', '13532928887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 15:15:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13532928887' LIMIT 1);
UPDATE users SET nick_name='nice(^з^)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13532928887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16621376667', 'U16621376667', 'Chillfy', '', '16621376667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 14:58:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16621376667' LIMIT 1);
UPDATE users SET nick_name='Chillfy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16621376667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13049621414', 'U13049621414', '🐥Lún ®', '', '13049621414', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 14:58:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13049621414' LIMIT 1);
UPDATE users SET nick_name='🐥Lún ®', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13049621414';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697446078', 'U13697446078', '方', '', '13697446078', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 14:56:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697446078' LIMIT 1);
UPDATE users SET nick_name='方', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697446078';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15542010813', 'U15542010813', '11', '', '15542010813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 14:56:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15542010813' LIMIT 1);
UPDATE users SET nick_name='11', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15542010813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102253289', 'U18102253289', 'Yeeopuuo', '', '18102253289', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 14:03:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102253289' LIMIT 1);
UPDATE users SET nick_name='Yeeopuuo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102253289';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711392374', 'U13711392374', '13711392374', '', '13711392374', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 13:39:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711392374' LIMIT 1);
UPDATE users SET nick_name='13711392374', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711392374';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915737547', 'U15915737547', '15915737547', '', '15915737547', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 13:26:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915737547' LIMIT 1);
UPDATE users SET nick_name='15915737547', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915737547';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917437146', 'U15917437146', '严依敏', '', '15917437146', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 13:18:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917437146' LIMIT 1);
UPDATE users SET nick_name='严依敏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917437146';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570244239', 'U13570244239', '13570244239', '', '13570244239', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 11:25:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570244239' LIMIT 1);
UPDATE users SET nick_name='13570244239', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570244239';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631468939', 'U13631468939', '13631468939', '', '13631468939', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 11:22:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631468939' LIMIT 1);
UPDATE users SET nick_name='13631468939', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631468939';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913032803', 'U15913032803', '15913032803', '', '15913032803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 10:13:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913032803' LIMIT 1);
UPDATE users SET nick_name='15913032803', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913032803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802564781', 'U18802564781', 'Frank Antonio', '', '18802564781', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-08-09 10:04:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802564781' LIMIT 1);
UPDATE users SET nick_name='Frank Antonio', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18802564781';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826132025', 'U18826132025', '18826132025', '', '18826132025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 09:23:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826132025' LIMIT 1);
UPDATE users SET nick_name='18826132025', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826132025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533977500', 'U13533977500', 'Emmmmaa_zzz😌', '', '13533977500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-09 02:12:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533977500' LIMIT 1);
UPDATE users SET nick_name='Emmmmaa_zzz😌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533977500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688883493', 'U18688883493', '王轲', '', '18688883493', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 23:48:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688883493' LIMIT 1);
UPDATE users SET nick_name='王轲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688883493';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600082471', 'U13600082471', '小lui', '', '13600082471', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 18:56:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600082471' LIMIT 1);
UPDATE users SET nick_name='小lui', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600082471';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18214880039', 'U18214880039', '大', '', '18214880039', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 18:11:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18214880039' LIMIT 1);
UPDATE users SET nick_name='大', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18214880039';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19928386836', 'U19928386836', '19928386836', '', '19928386836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 17:31:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19928386836' LIMIT 1);
UPDATE users SET nick_name='19928386836', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19928386836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889131978', 'U15889131978', '15889131978', '', '15889131978', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 17:26:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889131978' LIMIT 1);
UPDATE users SET nick_name='15889131978', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889131978';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16616662666', 'U16616662666', '经纬之间', '', '16616662666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 17:18:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16616662666' LIMIT 1);
UPDATE users SET nick_name='经纬之间', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16616662666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622267377', 'U15622267377', 'steven', '', '15622267377', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 16:34:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622267377' LIMIT 1);
UPDATE users SET nick_name='steven', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622267377';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820280010', 'U15820280010', '15820280010', '', '15820280010', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 16:33:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820280010' LIMIT 1);
UPDATE users SET nick_name='15820280010', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820280010';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622143644', 'U15622143644', 'Irene', '', '15622143644', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 16:05:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622143644' LIMIT 1);
UPDATE users SET nick_name='Irene', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622143644';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602262904', 'U15602262904', '15602262904', '', '15602262904', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 15:16:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602262904' LIMIT 1);
UPDATE users SET nick_name='15602262904', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602262904';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18758554334', 'U18758554334', '深深', '', '18758554334', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 12:46:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18758554334' LIMIT 1);
UPDATE users SET nick_name='深深', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18758554334';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422123428', 'U13422123428', '13422123428', '', '13422123428', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 12:39:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422123428' LIMIT 1);
UPDATE users SET nick_name='13422123428', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422123428';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751817391', 'U13751817391', 'gyaoer', '', '13751817391', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 12:35:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751817391' LIMIT 1);
UPDATE users SET nick_name='gyaoer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751817391';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926134850', 'U18926134850', '18926134850', '', '18926134850', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 11:54:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926134850' LIMIT 1);
UPDATE users SET nick_name='18926134850', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926134850';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813307363', 'U15813307363', '15813307363', '', '15813307363', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 11:41:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813307363' LIMIT 1);
UPDATE users SET nick_name='15813307363', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813307363';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18810920128', 'U18810920128', 'YZ', '', '18810920128', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 11:25:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18810920128' LIMIT 1);
UPDATE users SET nick_name='YZ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18810920128';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18817709727', 'U18817709727', 'Skylar', '', '18817709727', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 10:03:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18817709727' LIMIT 1);
UPDATE users SET nick_name='Skylar', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18817709727';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18575772558', 'U18575772558', '海上马车夫', '', '18575772558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-08 07:36:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18575772558' LIMIT 1);
UPDATE users SET nick_name='海上马车夫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18575772558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533303576', 'U13533303576', '奥利', '', '13533303576', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-07 18:47:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533303576' LIMIT 1);
UPDATE users SET nick_name='奥利', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533303576';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642323606', 'U13642323606', '13642323606', '', '13642323606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-07 17:43:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642323606' LIMIT 1);
UPDATE users SET nick_name='13642323606', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642323606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422146129', 'U13422146129', '琪', '', '13422146129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-07 17:42:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422146129' LIMIT 1);
UPDATE users SET nick_name='琪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422146129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560051510', 'U13560051510', 'Yi°', '', '13560051510', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-07 17:25:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560051510' LIMIT 1);
UPDATE users SET nick_name='Yi°', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560051510';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902289442', 'U13902289442', '13902289442', '', '13902289442', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-07 16:32:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902289442' LIMIT 1);
UPDATE users SET nick_name='13902289442', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902289442';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18002245571', 'U18002245571', '_z', '', '18002245571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-07 16:22:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18002245571' LIMIT 1);
UPDATE users SET nick_name='_z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18002245571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13066422232', 'U13066422232', '13066422232', '', '13066422232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-07 16:11:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13066422232' LIMIT 1);
UPDATE users SET nick_name='13066422232', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13066422232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15309277397', 'U15309277397', '🀄', '', '15309277397', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-07 14:49:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15309277397' LIMIT 1);
UPDATE users SET nick_name='🀄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15309277397';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565426620', 'U18565426620', '18565426620', '', '18565426620', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-07 14:14:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565426620' LIMIT 1);
UPDATE users SET nick_name='18565426620', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565426620';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13875940823', 'U13875940823', '13875940823', '', '13875940823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-07 13:24:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13875940823' LIMIT 1);
UPDATE users SET nick_name='13875940823', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13875940823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580557860', 'U13580557860', '13580557860', '', '13580557860', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-06 18:01:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580557860' LIMIT 1);
UPDATE users SET nick_name='13580557860', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580557860';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017577970', 'U15017577970', '蔡伟业', '', '15017577970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-06 17:46:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017577970' LIMIT 1);
UPDATE users SET nick_name='蔡伟业', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017577970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820124545', 'U15820124545', '15820124545', '', '15820124545', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-06 15:35:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820124545' LIMIT 1);
UPDATE users SET nick_name='15820124545', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820124545';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917359228', 'U15917359228', '15917359228', '', '15917359228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-06 15:33:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917359228' LIMIT 1);
UPDATE users SET nick_name='15917359228', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917359228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817347017', 'U17817347017', 'Ketchup', '', '17817347017', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-06 14:37:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817347017' LIMIT 1);
UPDATE users SET nick_name='Ketchup', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817347017';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602887294', 'U13602887294', 'FCB', '', '13602887294', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-06 14:23:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602887294' LIMIT 1);
UPDATE users SET nick_name='FCB', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602887294';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288735747', 'U13288735747', 'Zzz', '', '13288735747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-06 13:43:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288735747' LIMIT 1);
UPDATE users SET nick_name='Zzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288735747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18543132110', 'U18543132110', '阿里巴巴买手刘荣旭', '', '18543132110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-06 11:10:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18543132110' LIMIT 1);
UPDATE users SET nick_name='阿里巴巴买手刘荣旭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18543132110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13122899886', 'U13122899886', '13122899886', '', '13122899886', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-06 10:00:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13122899886' LIMIT 1);
UPDATE users SET nick_name='13122899886', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13122899886';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13732928223', 'U13732928223', 'BYF', '', '13732928223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-06 09:54:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13732928223' LIMIT 1);
UPDATE users SET nick_name='BYF', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13732928223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302280725', 'U13302280725', '13302280725', '', '13302280725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-05 19:00:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302280725' LIMIT 1);
UPDATE users SET nick_name='13302280725', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302280725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18202086719', 'U18202086719', '小小.Cassidy', '', '18202086719', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-05 15:56:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18202086719' LIMIT 1);
UPDATE users SET nick_name='小小.Cassidy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18202086719';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18573167512', 'U18573167512', '18573167512', '', '18573167512', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-05 15:51:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18573167512' LIMIT 1);
UPDATE users SET nick_name='18573167512', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18573167512';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920175063', 'U15920175063', '邬邬', '', '15920175063', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 108, '2026-08-05 15:23:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920175063' LIMIT 1);
UPDATE users SET nick_name='邬邬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 108) WHERE phone='15920175063';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688465286', 'U18688465286', '18688465286', '', '18688465286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-05 15:17:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688465286' LIMIT 1);
UPDATE users SET nick_name='18688465286', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688465286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660305715', 'U13660305715', '13660305715', '', '13660305715', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-05 14:28:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660305715' LIMIT 1);
UPDATE users SET nick_name='13660305715', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660305715';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751856153', 'U13751856153', 'Iris', '', '13751856153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-05 11:09:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751856153' LIMIT 1);
UPDATE users SET nick_name='Iris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751856153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625793606', 'U15625793606', 'Katherine紫如', '', '15625793606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-04 20:57:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625793606' LIMIT 1);
UPDATE users SET nick_name='Katherine紫如', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625793606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316087258', 'U13316087258', '13316087258', '', '13316087258', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-04 20:20:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316087258' LIMIT 1);
UPDATE users SET nick_name='13316087258', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316087258';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556044781', 'U13556044781', 'Cathy(づ￣ ³￣)づ', '', '13556044781', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-04 19:29:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556044781' LIMIT 1);
UPDATE users SET nick_name='Cathy(づ￣ ³￣)づ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556044781';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13827252475', 'U13827252475', 'KELI', '', '13827252475', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-04 18:27:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13827252475' LIMIT 1);
UPDATE users SET nick_name='KELI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13827252475';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710220516', 'U13710220516', 'plex', '', '13710220516', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-04 16:05:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710220516' LIMIT 1);
UPDATE users SET nick_name='plex', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710220516';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13690516526', 'U13690516526', 'Grace', '', '13690516526', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-04 14:35:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13690516526' LIMIT 1);
UPDATE users SET nick_name='Grace', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13690516526';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928997183', 'U13928997183', '刘寸心', '', '13928997183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-04 14:27:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928997183' LIMIT 1);
UPDATE users SET nick_name='刘寸心', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928997183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622147008', 'U15622147008', '15622147008', '', '15622147008', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-04 14:19:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622147008' LIMIT 1);
UPDATE users SET nick_name='15622147008', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622147008';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13672455957', 'U13672455957', 'Xiao～TING', '', '13672455957', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-04 13:53:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13672455957' LIMIT 1);
UPDATE users SET nick_name='Xiao～TING', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13672455957';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902203732', 'U13902203732', '通达', '', '13902203732', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-04 12:55:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902203732' LIMIT 1);
UPDATE users SET nick_name='通达', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902203732';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15814521271', 'U15814521271', 'Hxy🔟', '', '15814521271', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-04 11:12:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15814521271' LIMIT 1);
UPDATE users SET nick_name='Hxy🔟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15814521271';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922412134', 'U13922412134', '13922412134', '', '13922412134', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-03 23:41:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922412134' LIMIT 1);
UPDATE users SET nick_name='13922412134', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922412134';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13999018562', 'U13999018562', 'NEO', '', '13999018562', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2026-08-03 16:33:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13999018562' LIMIT 1);
UPDATE users SET nick_name='NEO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13999018562';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13990828601', 'U13990828601', '13990828601', '', '13990828601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-03 15:09:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13990828601' LIMIT 1);
UPDATE users SET nick_name='13990828601', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13990828601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13119553116', 'U13119553116', 'Azzz', '', '13119553116', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-03 15:00:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13119553116' LIMIT 1);
UPDATE users SET nick_name='Azzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13119553116';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610086076', 'U13610086076', '13610086076', '', '13610086076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-03 13:11:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610086076' LIMIT 1);
UPDATE users SET nick_name='13610086076', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610086076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660369121', 'U13660369121', '钟', '', '13660369121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-03 10:31:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660369121' LIMIT 1);
UPDATE users SET nick_name='钟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660369121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15008003765', 'U15008003765', '臻些', '', '15008003765', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 19:37:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15008003765' LIMIT 1);
UPDATE users SET nick_name='臻些', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15008003765';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620011083', 'U17620011083', '17620011083', '', '17620011083', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 18:29:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620011083' LIMIT 1);
UPDATE users SET nick_name='17620011083', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620011083';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433715260', 'U13433715260', '13433715260', '', '13433715260', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 17:51:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433715260' LIMIT 1);
UPDATE users SET nick_name='13433715260', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433715260';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602263243', 'U15602263243', '㌥(ง ˙˘˙ )ว', '', '15602263243', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 17:37:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602263243' LIMIT 1);
UPDATE users SET nick_name='㌥(ง ˙˘˙ )ว', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602263243';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480260969', 'U13480260969', 'Annearan', '', '13480260969', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 16:41:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480260969' LIMIT 1);
UPDATE users SET nick_name='Annearan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480260969';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665730267', 'U18665730267', '18665730267', '', '18665730267', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 15:26:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665730267' LIMIT 1);
UPDATE users SET nick_name='18665730267', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665730267';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915899228', 'U15915899228', 'Flora', '', '15915899228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 15:08:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915899228' LIMIT 1);
UPDATE users SET nick_name='Flora', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915899228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17707373159', 'U17707373159', '17707373159', '', '17707373159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 15:04:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17707373159' LIMIT 1);
UPDATE users SET nick_name='17707373159', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17707373159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19068573725', 'U19068573725', '19068573725', '', '19068573725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 14:47:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19068573725' LIMIT 1);
UPDATE users SET nick_name='19068573725', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19068573725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18229849931', 'U18229849931', '111', '', '18229849931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2026-08-02 14:37:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18229849931' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='18229849931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17875700320', 'U17875700320', '17875700320', '', '17875700320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 14:07:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17875700320' LIMIT 1);
UPDATE users SET nick_name='17875700320', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17875700320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18719147879', 'U18719147879', 'v', '', '18719147879', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 14:02:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18719147879' LIMIT 1);
UPDATE users SET nick_name='v', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18719147879';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18506917710', 'U18506917710', '18506917710', '', '18506917710', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 13:53:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18506917710' LIMIT 1);
UPDATE users SET nick_name='18506917710', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18506917710';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15942694396', 'U15942694396', '15942694396', '', '15942694396', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 13:48:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15942694396' LIMIT 1);
UPDATE users SET nick_name='15942694396', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15942694396';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435603636', 'U13435603636', '你好', '', '13435603636', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 13:36:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435603636' LIMIT 1);
UPDATE users SET nick_name='你好', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13435603636';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664663727', 'U18664663727', '小怪', '', '18664663727', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 12:27:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664663727' LIMIT 1);
UPDATE users SET nick_name='小怪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664663727';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710129992', 'U13710129992', 'Mr.S', '', '13710129992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 12:22:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710129992' LIMIT 1);
UPDATE users SET nick_name='Mr.S', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710129992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922166866', 'U18922166866', '111', '', '18922166866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 12:10:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922166866' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922166866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17695646582', 'U17695646582', '17695646582', '', '17695646582', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 11:25:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17695646582' LIMIT 1);
UPDATE users SET nick_name='17695646582', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17695646582';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622814047', 'U13622814047', '小绵羊', '', '13622814047', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 11:11:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622814047' LIMIT 1);
UPDATE users SET nick_name='小绵羊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622814047';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826168518', 'U13826168518', '黑土', '', '13826168518', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 09:21:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826168518' LIMIT 1);
UPDATE users SET nick_name='黑土', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826168518';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560351916', 'U13560351916', '李敏', '', '13560351916', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-02 07:47:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560351916' LIMIT 1);
UPDATE users SET nick_name='李敏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560351916';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060800571', 'U13060800571', '李盛材', '', '13060800571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-01 18:19:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060800571' LIMIT 1);
UPDATE users SET nick_name='李盛材', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060800571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17346938721', 'U17346938721', '17346938721', '', '17346938721', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-01 17:40:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17346938721' LIMIT 1);
UPDATE users SET nick_name='17346938721', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17346938721';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512771041', 'U13512771041', '佑蓝', '', '13512771041', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-01 17:21:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512771041' LIMIT 1);
UPDATE users SET nick_name='佑蓝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512771041';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19872902697', 'U19872902697', '19872902697', '', '19872902697', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-01 16:14:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19872902697' LIMIT 1);
UPDATE users SET nick_name='19872902697', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19872902697';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802445079', 'U13802445079', '米拉Mila', '', '13802445079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-01 15:56:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802445079' LIMIT 1);
UPDATE users SET nick_name='米拉Mila', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802445079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18124919449', 'U18124919449', 'cc', '', '18124919449', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-08-01 15:27:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18124919449' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18124919449';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19586400263', 'U19586400263', 'YY', '', '19586400263', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-01 14:40:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19586400263' LIMIT 1);
UPDATE users SET nick_name='YY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19586400263';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13261666598', 'U13261666598', '饽饽掉渣儿', '', '13261666598', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-01 14:36:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13261666598' LIMIT 1);
UPDATE users SET nick_name='饽饽掉渣儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13261666598';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13867537358', 'U13867537358', '13867537358', '', '13867537358', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-01 14:16:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13867537358' LIMIT 1);
UPDATE users SET nick_name='13867537358', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13867537358';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17702094806', 'U17702094806', '17702094806', '', '17702094806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-01 11:33:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17702094806' LIMIT 1);
UPDATE users SET nick_name='17702094806', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17702094806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610093385', 'U13610093385', '13610093385', '', '13610093385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-01 10:49:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610093385' LIMIT 1);
UPDATE users SET nick_name='13610093385', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610093385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13690702998', 'U13690702998', 'Christina', '', '13690702998', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-31 19:36:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13690702998' LIMIT 1);
UPDATE users SET nick_name='Christina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13690702998';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18701988233', 'U18701988233', '18701988233', '', '18701988233', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-31 19:14:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18701988233' LIMIT 1);
UPDATE users SET nick_name='18701988233', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18701988233';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026064208', 'U18026064208', 'En.²⁷', '', '18026064208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-31 18:41:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026064208' LIMIT 1);
UPDATE users SET nick_name='En.²⁷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026064208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18016804827', 'U18016804827', '脑袋里都是小豆腐', '', '18016804827', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-31 16:43:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18016804827' LIMIT 1);
UPDATE users SET nick_name='脑袋里都是小豆腐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18016804827';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19128948014', 'U19128948014', '林乙生', '', '19128948014', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-31 16:12:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19128948014' LIMIT 1);
UPDATE users SET nick_name='林乙生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19128948014';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727020204', 'U13727020204', '荔枝', '', '13727020204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-31 15:35:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727020204' LIMIT 1);
UPDATE users SET nick_name='荔枝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13727020204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268075269', 'U13268075269', 'Stanley', '', '13268075269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-31 15:23:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268075269' LIMIT 1);
UPDATE users SET nick_name='Stanley', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268075269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622223835', 'U13622223835', 'MAD', '', '13622223835', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-07-31 14:09:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622223835' LIMIT 1);
UPDATE users SET nick_name='MAD', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13622223835';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535545549', 'U13535545549', '13535545549', '', '13535545549', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-31 13:37:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535545549' LIMIT 1);
UPDATE users SET nick_name='13535545549', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535545549';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13076794653', 'U13076794653', 'Joey', '', '13076794653', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-30 18:49:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13076794653' LIMIT 1);
UPDATE users SET nick_name='Joey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13076794653';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13553466314', 'U13553466314', '13553466314', '', '13553466314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-30 15:13:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13553466314' LIMIT 1);
UPDATE users SET nick_name='13553466314', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13553466314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631097323', 'U13631097323', 'yy', '', '13631097323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-30 14:02:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631097323' LIMIT 1);
UPDATE users SET nick_name='yy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631097323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13553633684', 'U13553633684', 'Vezel', '', '13553633684', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-30 12:50:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13553633684' LIMIT 1);
UPDATE users SET nick_name='Vezel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13553633684';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18540232055', 'U18540232055', '🍣WW', '', '18540232055', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-29 16:13:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18540232055' LIMIT 1);
UPDATE users SET nick_name='🍣WW', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18540232055';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15819475805', 'U15819475805', '15819475805', '', '15819475805', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-28 20:56:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15819475805' LIMIT 1);
UPDATE users SET nick_name='15819475805', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15819475805';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13431081678', 'U13431081678', '13431081678', '', '13431081678', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-28 17:21:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13431081678' LIMIT 1);
UPDATE users SET nick_name='13431081678', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13431081678';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622239423', 'U13622239423', '楊yvonne', '', '13622239423', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-27 22:20:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622239423' LIMIT 1);
UPDATE users SET nick_name='楊yvonne', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622239423';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632390923', 'U13632390923', 'Z', '', '13632390923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-27 22:19:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632390923' LIMIT 1);
UPDATE users SET nick_name='Z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632390923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18617334266', 'U18617334266', '淼淼', '', '18617334266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-27 22:12:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18617334266' LIMIT 1);
UPDATE users SET nick_name='淼淼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18617334266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922277705', 'U18922277705', '@iimanna^🤍', '', '18922277705', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-27 19:53:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922277705' LIMIT 1);
UPDATE users SET nick_name='@iimanna^🤍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922277705';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17612283889', 'U17612283889', 'ss', '', '17612283889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-27 18:19:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17612283889' LIMIT 1);
UPDATE users SET nick_name='ss', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17612283889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538804953', 'U13538804953', '13538804953', '', '13538804953', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-27 17:30:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538804953' LIMIT 1);
UPDATE users SET nick_name='13538804953', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538804953';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13009821221', 'U13009821221', '苏打饼干', '', '13009821221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-27 16:55:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13009821221' LIMIT 1);
UPDATE users SET nick_name='苏打饼干', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13009821221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926018588', 'U13926018588', '13926018588', '', '13926018588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-27 13:39:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926018588' LIMIT 1);
UPDATE users SET nick_name='13926018588', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926018588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18898826183', 'U18898826183', 'Lihong', '', '18898826183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-27 12:06:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18898826183' LIMIT 1);
UPDATE users SET nick_name='Lihong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18898826183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914391137', 'U15914391137', '天佑我们', '', '15914391137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 120, '2026-07-26 22:17:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914391137' LIMIT 1);
UPDATE users SET nick_name='天佑我们', balance=GREATEST(balance, 0.00), points=GREATEST(points, 120) WHERE phone='15914391137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529220625', 'U18529220625', '18529220625', '', '18529220625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 20:15:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529220625' LIMIT 1);
UPDATE users SET nick_name='18529220625', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529220625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820008343', 'U18820008343', '海瑞特', '', '18820008343', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 20:05:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820008343' LIMIT 1);
UPDATE users SET nick_name='海瑞特', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820008343';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580306322', 'U13580306322', '林木', '', '13580306322', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 18:41:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580306322' LIMIT 1);
UPDATE users SET nick_name='林木', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580306322';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13479830690', 'U13479830690', '13479830690', '', '13479830690', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 18:36:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13479830690' LIMIT 1);
UPDATE users SET nick_name='13479830690', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13479830690';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433741191', 'U13433741191', '13433741191', '', '13433741191', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 17:38:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433741191' LIMIT 1);
UPDATE users SET nick_name='13433741191', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433741191';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928927111', 'U18928927111', '18928927111', '', '18928927111', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 16:02:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928927111' LIMIT 1);
UPDATE users SET nick_name='18928927111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928927111';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120482026', 'U19120482026', '19120482026', '', '19120482026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 15:31:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120482026' LIMIT 1);
UPDATE users SET nick_name='19120482026', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120482026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18100203805', 'U18100203805', '喵喵', '', '18100203805', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 14:35:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18100203805' LIMIT 1);
UPDATE users SET nick_name='喵喵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18100203805';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15804085490', 'U15804085490', 'hamham', '', '15804085490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 14:09:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15804085490' LIMIT 1);
UPDATE users SET nick_name='hamham', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15804085490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15804086490', 'U15804086490', '15804086490', '', '15804086490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 11:25:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15804086490' LIMIT 1);
UPDATE users SET nick_name='15804086490', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15804086490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920425410', 'U15920425410', '15920425410', '', '15920425410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 10:46:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920425410' LIMIT 1);
UPDATE users SET nick_name='15920425410', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920425410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918426516', 'U15918426516', '灵怡', '', '15918426516', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-26 10:27:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918426516' LIMIT 1);
UPDATE users SET nick_name='灵怡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918426516';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710772558', 'U13710772558', '紫冰', '', '13710772558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-07-26 10:08:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710772558' LIMIT 1);
UPDATE users SET nick_name='紫冰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13710772558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160670890', 'U13160670890', '忠正🤔', '', '13160670890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 23:04:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160670890' LIMIT 1);
UPDATE users SET nick_name='忠正🤔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13160670890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427616840', 'U13427616840', '垚🌈Daisy😊', '', '13427616840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 22:08:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427616840' LIMIT 1);
UPDATE users SET nick_name='垚🌈Daisy😊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427616840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13657258071', 'U13657258071', 'Twinkle', '', '13657258071', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 18:44:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13657258071' LIMIT 1);
UPDATE users SET nick_name='Twinkle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13657258071';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19933956112', 'U19933956112', 'HY', '', '19933956112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 17:21:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19933956112' LIMIT 1);
UPDATE users SET nick_name='HY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19933956112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626167122', 'U15626167122', '15626167122', '', '15626167122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 17:12:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626167122' LIMIT 1);
UPDATE users SET nick_name='15626167122', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626167122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13612391506', 'U13612391506', 'hhh', '', '13612391506', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 16:36:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13612391506' LIMIT 1);
UPDATE users SET nick_name='hhh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13612391506';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18643339914', 'U18643339914', '18643339914', '', '18643339914', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 16:27:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18643339914' LIMIT 1);
UPDATE users SET nick_name='18643339914', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18643339914';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570388099', 'U13570388099', '发球机（已核销）', '', '13570388099', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 16:05:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570388099' LIMIT 1);
UPDATE users SET nick_name='发球机（已核销）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570388099';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918764636', 'U15918764636', 'Marson', '', '15918764636', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 15:43:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918764636' LIMIT 1);
UPDATE users SET nick_name='Marson', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918764636';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13411997703', 'U13411997703', '路人甲.', '', '13411997703', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 14:49:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13411997703' LIMIT 1);
UPDATE users SET nick_name='路人甲.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13411997703';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18781938812', 'U18781938812', '18781938812', '', '18781938812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 14:34:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18781938812' LIMIT 1);
UPDATE users SET nick_name='18781938812', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18781938812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16603029892', 'U16603029892', 'M.Z', '', '16603029892', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 14:30:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16603029892' LIMIT 1);
UPDATE users SET nick_name='M.Z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16603029892';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798998651', 'U13798998651', 'June', '', '13798998651', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 13:51:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798998651' LIMIT 1);
UPDATE users SET nick_name='June', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798998651';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622103295', 'U15622103295', 'Chaos', '', '15622103295', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 12:22:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622103295' LIMIT 1);
UPDATE users SET nick_name='Chaos', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622103295';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570370785', 'U13570370785', 'Will', '', '13570370785', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 12:02:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570370785' LIMIT 1);
UPDATE users SET nick_name='Will', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570370785';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13070217892', 'U13070217892', '13070217892', '', '13070217892', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-25 10:59:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13070217892' LIMIT 1);
UPDATE users SET nick_name='13070217892', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13070217892';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265891932', 'U13265891932', '13265891932', '', '13265891932', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-24 19:55:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265891932' LIMIT 1);
UPDATE users SET nick_name='13265891932', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265891932';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565090180', 'U18565090180', '18565090180', '', '18565090180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-24 19:31:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565090180' LIMIT 1);
UPDATE users SET nick_name='18565090180', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565090180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18927515298', 'U18927515298', 'Hayley', '', '18927515298', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-24 17:27:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18927515298' LIMIT 1);
UPDATE users SET nick_name='Hayley', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18927515298';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15817166458', 'U15817166458', '15817166458', '', '15817166458', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-24 14:51:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15817166458' LIMIT 1);
UPDATE users SET nick_name='15817166458', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15817166458';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760743930', 'U13760743930', '13760743930', '', '13760743930', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-24 14:13:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760743930' LIMIT 1);
UPDATE users SET nick_name='13760743930', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760743930';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15938357275', 'U15938357275', 'Sunny', '', '15938357275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-24 14:08:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15938357275' LIMIT 1);
UPDATE users SET nick_name='Sunny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15938357275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560074318', 'U13560074318', 'Jasmine', '', '13560074318', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-24 13:06:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560074318' LIMIT 1);
UPDATE users SET nick_name='Jasmine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560074318';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986294653', 'U15986294653', 'H-U-A', '', '15986294653', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-24 12:09:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986294653' LIMIT 1);
UPDATE users SET nick_name='H-U-A', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15986294653';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580503534', 'U13580503534', '13580503534', '', '13580503534', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-23 21:52:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580503534' LIMIT 1);
UPDATE users SET nick_name='13580503534', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580503534';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688867280', 'U13688867280', '亮亮👏🐎', '', '13688867280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-23 15:54:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688867280' LIMIT 1);
UPDATE users SET nick_name='亮亮👏🐎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13688867280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826029089', 'U13826029089', '嘉', '', '13826029089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-23 13:40:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826029089' LIMIT 1);
UPDATE users SET nick_name='嘉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826029089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15859598868', 'U15859598868', '15859598868', '', '15859598868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-23 13:22:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15859598868' LIMIT 1);
UPDATE users SET nick_name='15859598868', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15859598868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521506068', 'U15521506068', '15521506068', '', '15521506068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-22 20:38:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521506068' LIMIT 1);
UPDATE users SET nick_name='15521506068', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521506068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18971610771', 'U18971610771', '馒头', '', '18971610771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-22 20:35:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18971610771' LIMIT 1);
UPDATE users SET nick_name='馒头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18971610771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18887047573', 'U18887047573', '18887047573', '', '18887047573', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-22 19:53:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18887047573' LIMIT 1);
UPDATE users SET nick_name='18887047573', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18887047573';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320243669', 'U18320243669', 'xyh', '', '18320243669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-22 18:16:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320243669' LIMIT 1);
UPDATE users SET nick_name='xyh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320243669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17172125280', 'U17172125280', '小锤Faye', '', '17172125280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-22 17:26:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17172125280' LIMIT 1);
UPDATE users SET nick_name='小锤Faye', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17172125280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922362239', 'U18922362239', '🍥Yozoh米尔🍥', '', '18922362239', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-22 16:29:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922362239' LIMIT 1);
UPDATE users SET nick_name='🍥Yozoh米尔🍥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922362239';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15320308202', 'U15320308202', 'SLYD ww', '', '15320308202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-22 15:58:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15320308202' LIMIT 1);
UPDATE users SET nick_name='SLYD ww', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15320308202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632253650', 'U13632253650', '13632253650', '', '13632253650', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-22 15:19:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632253650' LIMIT 1);
UPDATE users SET nick_name='13632253650', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632253650';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18996131180', 'U18996131180', '18996131180', '', '18996131180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-22 13:43:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18996131180' LIMIT 1);
UPDATE users SET nick_name='18996131180', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18996131180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828420898', 'U13828420898', '许佳贝', '', '13828420898', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-22 12:20:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828420898' LIMIT 1);
UPDATE users SET nick_name='许佳贝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828420898';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418138509', 'U13418138509', '_Annaqq🦦', '', '13418138509', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2026-07-22 10:39:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418138509' LIMIT 1);
UPDATE users SET nick_name='_Annaqq🦦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13418138509';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302022575', 'U18302022575', 'kk', '', '18302022575', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-22 10:30:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302022575' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18302022575';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13734241351', 'U13734241351', '13734241351', '', '13734241351', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-21 16:41:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13734241351' LIMIT 1);
UPDATE users SET nick_name='13734241351', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13734241351';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17328001387', 'U17328001387', '七七', '', '17328001387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-21 16:20:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17328001387' LIMIT 1);
UPDATE users SET nick_name='七七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17328001387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18124207100', 'U18124207100', '18124207100', '', '18124207100', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-21 14:32:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18124207100' LIMIT 1);
UPDATE users SET nick_name='18124207100', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18124207100';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719452540', 'U13719452540', '13719452540', '', '13719452540', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-21 11:54:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719452540' LIMIT 1);
UPDATE users SET nick_name='13719452540', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719452540';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620947003', 'U18620947003', 'fc', '', '18620947003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-21 11:22:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620947003' LIMIT 1);
UPDATE users SET nick_name='fc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620947003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622235095', 'U15622235095', 'Takho', '', '15622235095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-20 21:55:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622235095' LIMIT 1);
UPDATE users SET nick_name='Takho', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622235095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19868588986', 'U19868588986', 'Eisenach.', '', '19868588986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-20 20:53:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19868588986' LIMIT 1);
UPDATE users SET nick_name='Eisenach.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19868588986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902000989', 'U15902000989', 'Yoli', '', '15902000989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2026-07-20 19:33:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902000989' LIMIT 1);
UPDATE users SET nick_name='Yoli', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='15902000989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920337739', 'U15920337739', 'fion', '', '15920337739', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2026-07-20 17:38:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920337739' LIMIT 1);
UPDATE users SET nick_name='fion', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='15920337739';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570028588', 'U13570028588', '大头', '', '13570028588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-20 17:03:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570028588' LIMIT 1);
UPDATE users SET nick_name='大头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570028588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013363619', 'U15013363619', '15013363619', '', '15013363619', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-20 15:54:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013363619' LIMIT 1);
UPDATE users SET nick_name='15013363619', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013363619';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19575198565', 'U19575198565', 'Mandy', '', '19575198565', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-20 15:28:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19575198565' LIMIT 1);
UPDATE users SET nick_name='Mandy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19575198565';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798175684', 'U13798175684', '🎀诺_茜茜🎀', '', '13798175684', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-19 20:46:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798175684' LIMIT 1);
UPDATE users SET nick_name='🎀诺_茜茜🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798175684';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268017217', 'U13268017217', '13268017217', '', '13268017217', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-19 20:06:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268017217' LIMIT 1);
UPDATE users SET nick_name='13268017217', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268017217';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13267079404', 'U13267079404', '🐡', '', '13267079404', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-19 16:25:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13267079404' LIMIT 1);
UPDATE users SET nick_name='🐡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13267079404';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13469971587', 'U13469971587', '13469971587', '', '13469971587', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-19 15:04:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13469971587' LIMIT 1);
UPDATE users SET nick_name='13469971587', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13469971587';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825150261', 'U13825150261', '13825150261', '', '13825150261', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-19 12:25:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825150261' LIMIT 1);
UPDATE users SET nick_name='13825150261', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825150261';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640219700', 'U13640219700', 'Teresa', '', '13640219700', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-19 12:19:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640219700' LIMIT 1);
UPDATE users SET nick_name='Teresa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640219700';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975621706', 'U15975621706', 'YES🌊', '', '15975621706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-19 11:37:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975621706' LIMIT 1);
UPDATE users SET nick_name='YES🌊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975621706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160899697', 'U13160899697', 'Miato', '', '13160899697', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-19 10:54:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160899697' LIMIT 1);
UPDATE users SET nick_name='Miato', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13160899697';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19874240427', 'U19874240427', 'CC', '', '19874240427', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-19 07:58:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19874240427' LIMIT 1);
UPDATE users SET nick_name='CC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19874240427';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13680399039', 'U13680399039', 'H.y', '', '13680399039', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-19 01:51:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13680399039' LIMIT 1);
UPDATE users SET nick_name='H.y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13680399039';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998161015', 'U18998161015', '乔治王', '', '18998161015', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 19:43:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998161015' LIMIT 1);
UPDATE users SET nick_name='乔治王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998161015';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533018334', 'U13533018334', '13533018334', '', '13533018334', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 19:17:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533018334' LIMIT 1);
UPDATE users SET nick_name='13533018334', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533018334';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18344052163', 'U18344052163', '18344052163', '', '18344052163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 19:12:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18344052163' LIMIT 1);
UPDATE users SET nick_name='18344052163', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18344052163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168048749', 'U13168048749', '13168048749', '', '13168048749', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 19:04:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168048749' LIMIT 1);
UPDATE users SET nick_name='13168048749', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13168048749';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13262636801', 'U13262636801', 'Carson卡森', '', '13262636801', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 17:54:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13262636801' LIMIT 1);
UPDATE users SET nick_name='Carson卡森', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13262636801';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631247493', 'U13631247493', '“外星种”', '', '13631247493', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 17:49:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631247493' LIMIT 1);
UPDATE users SET nick_name='“外星种”', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631247493';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15605218813', 'U15605218813', '15605218813', '', '15605218813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 16:56:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15605218813' LIMIT 1);
UPDATE users SET nick_name='15605218813', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15605218813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18024932737', 'U18024932737', 'A欧文', '', '18024932737', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 15:58:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18024932737' LIMIT 1);
UPDATE users SET nick_name='A欧文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18024932737';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920523325', 'U15920523325', '🎐', '', '15920523325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 15:57:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920523325' LIMIT 1);
UPDATE users SET nick_name='🎐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920523325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15112129494', 'U15112129494', '周磊', '', '15112129494', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 15:37:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15112129494' LIMIT 1);
UPDATE users SET nick_name='周磊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15112129494';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521391800', 'U15521391800', '。Aggie', '', '15521391800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 15:27:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521391800' LIMIT 1);
UPDATE users SET nick_name='。Aggie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521391800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15557216256', 'U15557216256', 'Li.', '', '15557216256', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 13:53:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15557216256' LIMIT 1);
UPDATE users SET nick_name='Li.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15557216256';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751815381', 'U13751815381', '杰斯', '', '13751815381', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 13:08:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751815381' LIMIT 1);
UPDATE users SET nick_name='杰斯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751815381';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622250222', 'U13622250222', '梁', '', '13622250222', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 12:11:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622250222' LIMIT 1);
UPDATE users SET nick_name='梁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622250222';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13057590632', 'U13057590632', 'Aurelia', '', '13057590632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 10:38:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13057590632' LIMIT 1);
UPDATE users SET nick_name='Aurelia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13057590632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926181460', 'U18926181460', 'creep', '', '18926181460', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2026-07-18 10:31:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926181460' LIMIT 1);
UPDATE users SET nick_name='creep', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='18926181460';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18702038912', 'U18702038912', 'sir', '', '18702038912', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 10:22:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18702038912' LIMIT 1);
UPDATE users SET nick_name='sir', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18702038912';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620036068', 'U16620036068', '荣斌', '', '16620036068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-18 10:18:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620036068' LIMIT 1);
UPDATE users SET nick_name='荣斌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620036068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666763232', 'U18666763232', '小琬', '', '18666763232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 23:39:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666763232' LIMIT 1);
UPDATE users SET nick_name='小琬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666763232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660180497', 'U13660180497', 'David Cheung', '', '13660180497', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 23:17:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660180497' LIMIT 1);
UPDATE users SET nick_name='David Cheung', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660180497';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15383551234', 'U15383551234', '三星', '', '15383551234', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-07-17 20:44:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15383551234' LIMIT 1);
UPDATE users SET nick_name='三星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15383551234';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13713577466', 'U13713577466', '买一筐', '', '13713577466', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 19:38:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13713577466' LIMIT 1);
UPDATE users SET nick_name='买一筐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13713577466';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246828174', 'U13246828174', '13246828174', '', '13246828174', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 19:33:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246828174' LIMIT 1);
UPDATE users SET nick_name='13246828174', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246828174';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915884688', 'U15915884688', '15915884688', '', '15915884688', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 19:02:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915884688' LIMIT 1);
UPDATE users SET nick_name='15915884688', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915884688';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13358542849', 'U13358542849', '13358542849', '', '13358542849', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 17:30:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13358542849' LIMIT 1);
UPDATE users SET nick_name='13358542849', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13358542849';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13119512842', 'U13119512842', '黄东东', '', '13119512842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 16:41:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13119512842' LIMIT 1);
UPDATE users SET nick_name='黄东东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13119512842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829738317', 'U13829738317', 'Nickylee', '', '13829738317', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 16:00:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829738317' LIMIT 1);
UPDATE users SET nick_name='Nickylee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829738317';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640606825', 'U13640606825', 'Ryan', '', '13640606825', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 14:35:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640606825' LIMIT 1);
UPDATE users SET nick_name='Ryan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640606825';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13006699616', 'U13006699616', '13006699616', '', '13006699616', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 13:36:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13006699616' LIMIT 1);
UPDATE users SET nick_name='13006699616', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13006699616';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925254182', 'U18925254182', '18925254182', '', '18925254182', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 10:41:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925254182' LIMIT 1);
UPDATE users SET nick_name='18925254182', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925254182';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694258352', 'U13694258352', '🍒', '', '13694258352', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-17 08:44:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694258352' LIMIT 1);
UPDATE users SET nick_name='🍒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13694258352';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19880965080', 'U19880965080', 'KKYee', '', '19880965080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-16 22:14:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19880965080' LIMIT 1);
UPDATE users SET nick_name='KKYee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19880965080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826079974', 'U18826079974', 'KK', '', '18826079974', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-16 22:13:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826079974' LIMIT 1);
UPDATE users SET nick_name='KK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826079974';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316250344', 'U18316250344', '18316250344', '', '18316250344', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-16 20:39:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316250344' LIMIT 1);
UPDATE users SET nick_name='18316250344', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316250344';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17737313879', 'U17737313879', '17737313879', '', '17737313879', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-16 18:16:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17737313879' LIMIT 1);
UPDATE users SET nick_name='17737313879', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17737313879';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814136724', 'U18814136724', 'abby', '', '18814136724', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-16 18:10:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814136724' LIMIT 1);
UPDATE users SET nick_name='abby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814136724';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13011036235', 'U13011036235', '13011036235', '', '13011036235', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-16 17:19:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13011036235' LIMIT 1);
UPDATE users SET nick_name='13011036235', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13011036235';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826048502', 'U13826048502', '天天', '', '13826048502', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-16 17:06:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826048502' LIMIT 1);
UPDATE users SET nick_name='天天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826048502';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17828196301', 'U17828196301', '鱼饱饱', '', '17828196301', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-16 10:32:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17828196301' LIMIT 1);
UPDATE users SET nick_name='鱼饱饱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17828196301';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19867576276', 'U19867576276', 'V', '', '19867576276', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-15 22:15:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19867576276' LIMIT 1);
UPDATE users SET nick_name='V', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19867576276';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802090522', 'U18802090522', '18802090522', '', '18802090522', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-15 18:30:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802090522' LIMIT 1);
UPDATE users SET nick_name='18802090522', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802090522';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202069923', 'U15202069923', 'un_0', '', '15202069923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-15 15:50:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202069923' LIMIT 1);
UPDATE users SET nick_name='un_0', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15202069923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18822932021', 'U18822932021', 'Coisini 🌸', '', '18822932021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-15 13:54:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18822932021' LIMIT 1);
UPDATE users SET nick_name='Coisini 🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18822932021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826191911', 'U13826191911', 'Jenni', '', '13826191911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-15 10:36:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826191911' LIMIT 1);
UPDATE users SET nick_name='Jenni', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826191911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18569605565', 'U18569605565', '尤里', '', '18569605565', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 20:42:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18569605565' LIMIT 1);
UPDATE users SET nick_name='尤里', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18569605565';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710330297', 'U13710330297', '🦖BANANA', '', '13710330297', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 20:39:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710330297' LIMIT 1);
UPDATE users SET nick_name='🦖BANANA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710330297';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13794338495', 'U13794338495', '1', '', '13794338495', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2026-07-14 20:31:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13794338495' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13794338495';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312855558', 'U13312855558', 'JH', '', '13312855558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 17:09:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312855558' LIMIT 1);
UPDATE users SET nick_name='JH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13312855558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18056115870', 'U18056115870', '高立', '', '18056115870', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 16:24:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18056115870' LIMIT 1);
UPDATE users SET nick_name='高立', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18056115870';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025949713', 'U13025949713', 'Moneta Huang😋', '', '13025949713', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 15:48:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025949713' LIMIT 1);
UPDATE users SET nick_name='Moneta Huang😋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025949713';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14716855531', 'U14716855531', 'Dicky D', '', '14716855531', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 15:07:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14716855531' LIMIT 1);
UPDATE users SET nick_name='Dicky D', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14716855531';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15138787921', 'U15138787921', '郭郭', '', '15138787921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 15:04:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15138787921' LIMIT 1);
UPDATE users SET nick_name='郭郭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15138787921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825175531', 'U18825175531', 'Dicky', '', '18825175531', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 15:01:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825175531' LIMIT 1);
UPDATE users SET nick_name='Dicky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825175531';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143000201', 'U13143000201', '13143000201', '', '13143000201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 14:21:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143000201' LIMIT 1);
UPDATE users SET nick_name='13143000201', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143000201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620320129', 'U17620320129', 'Zenith Journey', '', '17620320129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 14:16:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620320129' LIMIT 1);
UPDATE users SET nick_name='Zenith Journey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620320129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14718104413', 'U14718104413', '今天也要开心地度过呀', '', '14718104413', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 11:55:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14718104413' LIMIT 1);
UPDATE users SET nick_name='今天也要开心地度过呀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14718104413';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818875901', 'U15818875901', 'ᰔ H.QJ', '', '15818875901', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-14 11:40:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818875901' LIMIT 1);
UPDATE users SET nick_name='ᰔ H.QJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818875901';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268379201', 'U13268379201', '官方回答', '', '13268379201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-13 21:08:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268379201' LIMIT 1);
UPDATE users SET nick_name='官方回答', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268379201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798197902', 'U13798197902', 'A达', '', '13798197902', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-13 19:59:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798197902' LIMIT 1);
UPDATE users SET nick_name='A达', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798197902';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168359666', 'U13168359666', 'VINYA', '', '13168359666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-13 19:30:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168359666' LIMIT 1);
UPDATE users SET nick_name='VINYA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13168359666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122210605', 'U18122210605', 'chloe', '', '18122210605', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-13 19:30:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122210605' LIMIT 1);
UPDATE users SET nick_name='chloe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122210605';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18923258826', 'U18923258826', '18923258826', '', '18923258826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-13 18:01:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18923258826' LIMIT 1);
UPDATE users SET nick_name='18923258826', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18923258826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13011293933', 'U13011293933', 'Dlores.', '', '13011293933', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-13 14:52:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13011293933' LIMIT 1);
UPDATE users SET nick_name='Dlores.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13011293933';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825056836', 'U13825056836', '（^_^）傻瓜蛋（^_^）', '', '13825056836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-13 13:56:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825056836' LIMIT 1);
UPDATE users SET nick_name='（^_^）傻瓜蛋（^_^）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825056836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920660192', 'U15920660192', '15920660192', '', '15920660192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-13 11:53:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920660192' LIMIT 1);
UPDATE users SET nick_name='15920660192', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920660192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15504722665', 'U15504722665', '15504722665', '', '15504722665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-13 11:22:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15504722665' LIMIT 1);
UPDATE users SET nick_name='15504722665', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15504722665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760894818', 'U13760894818', 'nico🥨', '', '13760894818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-13 10:19:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760894818' LIMIT 1);
UPDATE users SET nick_name='nico🥨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760894818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13589299191', 'U13589299191', '梦之蓝', '', '13589299191', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 22:10:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13589299191' LIMIT 1);
UPDATE users SET nick_name='梦之蓝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13589299191';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626173906', 'U15626173906', '15626173906', '', '15626173906', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 18:09:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626173906' LIMIT 1);
UPDATE users SET nick_name='15626173906', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626173906';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802525565', 'U13802525565', '13802525565', '', '13802525565', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 18:08:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802525565' LIMIT 1);
UPDATE users SET nick_name='13802525565', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802525565';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580438190', 'U13580438190', 'Monkey23', '', '13580438190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-07-12 16:59:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580438190' LIMIT 1);
UPDATE users SET nick_name='Monkey23', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13580438190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19925837932', 'U19925837932', '🍑', '', '19925837932', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 15:39:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19925837932' LIMIT 1);
UPDATE users SET nick_name='🍑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19925837932';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102887486', 'U18102887486', '18102887486', '', '18102887486', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 15:24:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102887486' LIMIT 1);
UPDATE users SET nick_name='18102887486', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102887486';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19966338268', 'U19966338268', '19966338268', '', '19966338268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 15:23:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19966338268' LIMIT 1);
UPDATE users SET nick_name='19966338268', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19966338268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560191419', 'U13560191419', '13560191419', '', '13560191419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 13:43:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560191419' LIMIT 1);
UPDATE users SET nick_name='13560191419', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560191419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626267122', 'U15626267122', '15626267122', '', '15626267122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 13:21:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626267122' LIMIT 1);
UPDATE users SET nick_name='15626267122', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626267122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925928165', 'U18925928165', 'wanwan', '', '18925928165', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 11:36:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925928165' LIMIT 1);
UPDATE users SET nick_name='wanwan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925928165';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631321039', 'U13631321039', '郭', '', '13631321039', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 10:52:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631321039' LIMIT 1);
UPDATE users SET nick_name='郭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631321039';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866966654', 'U19866966654', '19866966654', '', '19866966654', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 10:48:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866966654' LIMIT 1);
UPDATE users SET nick_name='19866966654', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19866966654';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627284464', 'U15627284464', '郭', '', '15627284464', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-12 10:29:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627284464' LIMIT 1);
UPDATE users SET nick_name='郭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627284464';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15587321092', 'U15587321092', '樱桃小如🍒', '', '15587321092', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 23:33:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15587321092' LIMIT 1);
UPDATE users SET nick_name='樱桃小如🍒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15587321092';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15700377957', 'U15700377957', 'heize黑泽', '', '15700377957', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 23:09:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15700377957' LIMIT 1);
UPDATE users SET nick_name='heize黑泽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15700377957';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929583428', 'U13929583428', 'Grace.Wen', '', '13929583428', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 21:36:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929583428' LIMIT 1);
UPDATE users SET nick_name='Grace.Wen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929583428';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602283775', 'U15602283775', '15602283775', '', '15602283775', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 21:36:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602283775' LIMIT 1);
UPDATE users SET nick_name='15602283775', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602283775';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925073299', 'U18925073299', '怪兽獸', '', '18925073299', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 20:41:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925073299' LIMIT 1);
UPDATE users SET nick_name='怪兽獸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925073299';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538771981', 'U13538771981', '大蚊飞', '', '13538771981', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 20:09:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538771981' LIMIT 1);
UPDATE users SET nick_name='大蚊飞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538771981';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665775375', 'U17665775375', '寧', '', '17665775375', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 19:09:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665775375' LIMIT 1);
UPDATE users SET nick_name='寧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665775375';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15652990121', 'U15652990121', '15652990121', '', '15652990121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 18:35:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15652990121' LIMIT 1);
UPDATE users SET nick_name='15652990121', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15652990121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19965265603', 'U19965265603', '3738', '', '19965265603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 17:08:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19965265603' LIMIT 1);
UPDATE users SET nick_name='3738', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19965265603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13414135980', 'U13414135980', 'Jw.Wong', '', '13414135980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 17:02:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13414135980' LIMIT 1);
UPDATE users SET nick_name='Jw.Wong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13414135980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819423179', 'U18819423179', '18819423179', '', '18819423179', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 16:53:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819423179' LIMIT 1);
UPDATE users SET nick_name='18819423179', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819423179';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18522356204', 'U18522356204', '祛毒(好运降临)', '', '18522356204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 16:46:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18522356204' LIMIT 1);
UPDATE users SET nick_name='祛毒(好运降临)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18522356204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352862575', 'U13352862575', '13352862575', '', '13352862575', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 15:38:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352862575' LIMIT 1);
UPDATE users SET nick_name='13352862575', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352862575';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18822303748', 'U18822303748', '18822303748', '', '18822303748', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 15:08:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18822303748' LIMIT 1);
UPDATE users SET nick_name='18822303748', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18822303748';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711279806', 'U13711279806', '13711279806', '', '13711279806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 14:49:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711279806' LIMIT 1);
UPDATE users SET nick_name='13711279806', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711279806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664640085', 'U18664640085', 'Liuu', '', '18664640085', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 13:23:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664640085' LIMIT 1);
UPDATE users SET nick_name='Liuu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664640085';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18900824364', 'U18900824364', '18900824364', '', '18900824364', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 12:47:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18900824364' LIMIT 1);
UPDATE users SET nick_name='18900824364', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18900824364';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626157751', 'U15626157751', '15626157751', '', '15626157751', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 12:22:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626157751' LIMIT 1);
UPDATE users SET nick_name='15626157751', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626157751';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18801118587', 'U18801118587', '生来自由', '', '18801118587', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-11 01:14:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18801118587' LIMIT 1);
UPDATE users SET nick_name='生来自由', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18801118587';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822166842', 'U13822166842', 'Lea', '', '13822166842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-10 21:37:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822166842' LIMIT 1);
UPDATE users SET nick_name='Lea', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822166842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13360558701', 'U13360558701', '蕉', '', '13360558701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-10 21:32:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13360558701' LIMIT 1);
UPDATE users SET nick_name='蕉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13360558701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013255867', 'U15013255867', '李漂亮', '', '15013255867', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-10 21:14:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013255867' LIMIT 1);
UPDATE users SET nick_name='李漂亮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013255867';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13026875310', 'U13026875310', 'ssd', '', '13026875310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-07-10 20:32:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13026875310' LIMIT 1);
UPDATE users SET nick_name='ssd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13026875310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13510841351', 'U13510841351', '13510841351', '', '13510841351', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-10 20:29:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13510841351' LIMIT 1);
UPDATE users SET nick_name='13510841351', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13510841351';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632223455', 'U13632223455', '13632223455', '', '13632223455', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-10 14:15:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632223455' LIMIT 1);
UPDATE users SET nick_name='13632223455', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632223455';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924284126', 'U18924284126', '18924284126', '', '18924284126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-10 11:17:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924284126' LIMIT 1);
UPDATE users SET nick_name='18924284126', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924284126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719304796', 'U13719304796', 'KINLEUNGYEAH', '', '13719304796', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-10 11:15:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719304796' LIMIT 1);
UPDATE users SET nick_name='KINLEUNGYEAH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719304796';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18229310533', 'U18229310533', '18229310533', '', '18229310533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-10 10:28:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18229310533' LIMIT 1);
UPDATE users SET nick_name='18229310533', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18229310533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620032920', 'U16620032920', '零点半', '', '16620032920', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-10 09:17:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620032920' LIMIT 1);
UPDATE users SET nick_name='零点半', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620032920';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920533668', 'U15920533668', '徐樱桐', '', '15920533668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2026-07-10 09:09:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920533668' LIMIT 1);
UPDATE users SET nick_name='徐樱桐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='15920533668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920129145', 'U15920129145', 'Carmen🎏🔑🔝', '', '15920129145', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-10 02:05:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920129145' LIMIT 1);
UPDATE users SET nick_name='Carmen🎏🔑🔝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920129145';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915736360', 'U15915736360', 'cherry🌻', '', '15915736360', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-10 02:02:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915736360' LIMIT 1);
UPDATE users SET nick_name='cherry🌻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915736360';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320064944', 'U18320064944', 'Z1614', '', '18320064944', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 22:35:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320064944' LIMIT 1);
UPDATE users SET nick_name='Z1614', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320064944';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15645120563', 'U15645120563', 'Bonjour°', '', '15645120563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 21:07:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15645120563' LIMIT 1);
UPDATE users SET nick_name='Bonjour°', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15645120563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15796325890', 'U15796325890', '热心市民凡先生', '', '15796325890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 18:47:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15796325890' LIMIT 1);
UPDATE users SET nick_name='热心市民凡先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15796325890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711388169', 'U13711388169', 'jj', '', '13711388169', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 17:02:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711388169' LIMIT 1);
UPDATE users SET nick_name='jj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711388169';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680470611', 'U18680470611', 'yy', '', '18680470611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 16:58:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680470611' LIMIT 1);
UPDATE users SET nick_name='yy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680470611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013101289', 'U15013101289', '无忧', '', '15013101289', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 16:16:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013101289' LIMIT 1);
UPDATE users SET nick_name='无忧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013101289';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602030472', 'U18602030472', '18602030472', '', '18602030472', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 14:44:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602030472' LIMIT 1);
UPDATE users SET nick_name='18602030472', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602030472';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570311119', 'U13570311119', 'Emma Leung🌟', '', '13570311119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 14:25:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570311119' LIMIT 1);
UPDATE users SET nick_name='Emma Leung🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570311119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535144735', 'U13535144735', 'Charles Lo', '', '13535144735', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 13:57:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535144735' LIMIT 1);
UPDATE users SET nick_name='Charles Lo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535144735';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122263754', 'U18122263754', 'Junyí ᐝ', '', '18122263754', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 12:34:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122263754' LIMIT 1);
UPDATE users SET nick_name='Junyí ᐝ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122263754';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922490801', 'U18922490801', '🍰 Kawhi咔咔咔', '', '18922490801', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 10:11:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922490801' LIMIT 1);
UPDATE users SET nick_name='🍰 Kawhi咔咔咔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922490801';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13809889988', 'U13809889988', '李铭浩', '', '13809889988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-09 09:24:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13809889988' LIMIT 1);
UPDATE users SET nick_name='李铭浩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13809889988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521468520', 'U15521468520', '15521468520', '', '15521468520', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-08 19:23:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521468520' LIMIT 1);
UPDATE users SET nick_name='15521468520', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521468520';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17793538454', 'U17793538454', '模棱', '', '17793538454', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-08 19:08:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17793538454' LIMIT 1);
UPDATE users SET nick_name='模棱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17793538454';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17815962202', 'U17815962202', '17815962202', '', '17815962202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-08 17:55:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17815962202' LIMIT 1);
UPDATE users SET nick_name='17815962202', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17815962202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818416219', 'U18818416219', 'oe', '', '18818416219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-08 17:17:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818416219' LIMIT 1);
UPDATE users SET nick_name='oe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818416219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14748912629', 'U14748912629', '14748912629', '', '14748912629', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-08 16:21:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14748912629' LIMIT 1);
UPDATE users SET nick_name='14748912629', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14748912629';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922359468', 'U18922359468', '指尖笑', '', '18922359468', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-08 14:44:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922359468' LIMIT 1);
UPDATE users SET nick_name='指尖笑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922359468';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102489551', 'U18102489551', '菜园小丙', '', '18102489551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-08 13:23:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102489551' LIMIT 1);
UPDATE users SET nick_name='菜园小丙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102489551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588570993', 'U18588570993', '18588570993', '', '18588570993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-08 12:20:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588570993' LIMIT 1);
UPDATE users SET nick_name='18588570993', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588570993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13149384656', 'U13149384656', 'Bianca', '', '13149384656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-08 11:32:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13149384656' LIMIT 1);
UPDATE users SET nick_name='Bianca', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13149384656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13428840669', 'U13428840669', '233', '', '13428840669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-08 00:58:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13428840669' LIMIT 1);
UPDATE users SET nick_name='233', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13428840669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288662241', 'U13288662241', 'RouDuu🐽', '', '13288662241', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-07 22:31:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288662241' LIMIT 1);
UPDATE users SET nick_name='RouDuu🐽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288662241';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18800418179', 'U18800418179', '18800418179', '', '18800418179', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-07 20:50:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18800418179' LIMIT 1);
UPDATE users SET nick_name='18800418179', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18800418179';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620012181', 'U18620012181', '18620012181', '', '18620012181', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-07 16:19:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620012181' LIMIT 1);
UPDATE users SET nick_name='18620012181', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620012181';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15665739070', 'U15665739070', '15665739070', '', '15665739070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-07 15:31:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15665739070' LIMIT 1);
UPDATE users SET nick_name='15665739070', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15665739070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876090180', 'U17876090180', '博肖', '', '17876090180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-07 15:30:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876090180' LIMIT 1);
UPDATE users SET nick_name='博肖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876090180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18583978447', 'U18583978447', '18583978447', '', '18583978447', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-07 15:15:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18583978447' LIMIT 1);
UPDATE users SET nick_name='18583978447', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18583978447';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570364417', 'U13570364417', 'sasa', '', '13570364417', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-07 13:20:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570364417' LIMIT 1);
UPDATE users SET nick_name='sasa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570364417';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18319088943', 'U18319088943', '18319088943', '', '18319088943', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-07 11:04:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18319088943' LIMIT 1);
UPDATE users SET nick_name='18319088943', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18319088943';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13423667596', 'U13423667596', '13423667596', '', '13423667596', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-07 10:37:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13423667596' LIMIT 1);
UPDATE users SET nick_name='13423667596', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13423667596';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751551101', 'U13751551101', '13751551101', '', '13751551101', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-07 09:56:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751551101' LIMIT 1);
UPDATE users SET nick_name='13751551101', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751551101';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18559303236', 'U18559303236', '菜鸟', '', '18559303236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-06 19:20:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18559303236' LIMIT 1);
UPDATE users SET nick_name='菜鸟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18559303236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332858150', 'U13332858150', 'A达', '', '13332858150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-06 18:53:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332858150' LIMIT 1);
UPDATE users SET nick_name='A达', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13332858150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926156603', 'U18926156603', 'Ÿuolo', '', '18926156603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-06 10:11:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926156603' LIMIT 1);
UPDATE users SET nick_name='Ÿuolo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926156603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556190982', 'U13556190982', '徐头头😺', '', '13556190982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 19:13:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556190982' LIMIT 1);
UPDATE users SET nick_name='徐头头😺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556190982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588662249', 'U18588662249', 'cc', '', '18588662249', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 18:10:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588662249' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588662249';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18993056217', 'U18993056217', '是鱼饼 (๑´ڡ`๑)', '', '18993056217', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 18:09:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18993056217' LIMIT 1);
UPDATE users SET nick_name='是鱼饼 (๑´ڡ`๑)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18993056217';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14749353489', 'U14749353489', '田径', '', '14749353489', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 17:34:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14749353489' LIMIT 1);
UPDATE users SET nick_name='田径', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14749353489';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666620270', 'U18666620270', '三两木', '', '18666620270', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-07-05 16:19:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666620270' LIMIT 1);
UPDATE users SET nick_name='三两木', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18666620270';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688817806', 'U13688817806', '喵喵', '', '13688817806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 16:05:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688817806' LIMIT 1);
UPDATE users SET nick_name='喵喵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13688817806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923204880', 'U13923204880', '一🍣', '', '13923204880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 15:49:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923204880' LIMIT 1);
UPDATE users SET nick_name='一🍣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13923204880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129055766', 'U13129055766', '13129055766', '', '13129055766', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 14:21:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129055766' LIMIT 1);
UPDATE users SET nick_name='13129055766', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13129055766';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826049507', 'U13826049507', '13826049507', '', '13826049507', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 13:54:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826049507' LIMIT 1);
UPDATE users SET nick_name='13826049507', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826049507';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027923536', 'U18027923536', 'HOLY', '', '18027923536', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 13:41:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027923536' LIMIT 1);
UPDATE users SET nick_name='HOLY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027923536';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316243310', 'U13316243310', '13316243310', '', '13316243310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 13:24:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316243310' LIMIT 1);
UPDATE users SET nick_name='13316243310', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316243310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825606192', 'U18825606192', 'Frans', '', '18825606192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 12:57:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825606192' LIMIT 1);
UPDATE users SET nick_name='Frans', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825606192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15268188363', 'U15268188363', '开开', '', '15268188363', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 12:53:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15268188363' LIMIT 1);
UPDATE users SET nick_name='开开', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15268188363';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288633199', 'U13288633199', '🥑Keith.', '', '13288633199', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 12:27:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288633199' LIMIT 1);
UPDATE users SET nick_name='🥑Keith.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288633199';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352800303', 'U13352800303', '大鬼', '', '13352800303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 10:47:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352800303' LIMIT 1);
UPDATE users SET nick_name='大鬼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352800303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18038688618', 'U18038688618', '18038688618', '', '18038688618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-05 10:42:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18038688618' LIMIT 1);
UPDATE users SET nick_name='18038688618', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18038688618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13903000500', 'U13903000500', '陈文瑛', '', '13903000500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 180, '2026-07-05 10:23:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13903000500' LIMIT 1);
UPDATE users SET nick_name='陈文瑛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 180) WHERE phone='13903000500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13172559940', 'U13172559940', '🔨', '', '13172559940', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 21:57:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13172559940' LIMIT 1);
UPDATE users SET nick_name='🔨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13172559940';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15814527356', 'U15814527356', '心', '', '15814527356', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 20:45:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15814527356' LIMIT 1);
UPDATE users SET nick_name='心', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15814527356';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665123747', 'U17665123747', '17665123747', '', '17665123747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 20:18:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665123747' LIMIT 1);
UPDATE users SET nick_name='17665123747', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665123747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13421140201', 'U13421140201', '13421140201', '', '13421140201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 20:16:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13421140201' LIMIT 1);
UPDATE users SET nick_name='13421140201', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13421140201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726796039', 'U13726796039', '13726796039', '', '13726796039', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 20:08:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726796039' LIMIT 1);
UPDATE users SET nick_name='13726796039', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726796039';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533575233', 'U13533575233', 'Hans', '', '13533575233', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 17:51:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533575233' LIMIT 1);
UPDATE users SET nick_name='Hans', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533575233';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544566256', 'U13544566256', 'Fan', '', '13544566256', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 16:45:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544566256' LIMIT 1);
UPDATE users SET nick_name='Fan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544566256';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17318756876', 'U17318756876', '以宁', '', '17318756876', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 15:31:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17318756876' LIMIT 1);
UPDATE users SET nick_name='以宁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17318756876';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18903008624', 'U18903008624', '18903008624', '', '18903008624', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 14:50:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18903008624' LIMIT 1);
UPDATE users SET nick_name='18903008624', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18903008624';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430201083', 'U13430201083', '周周', '', '13430201083', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 13:45:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430201083' LIMIT 1);
UPDATE users SET nick_name='周周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430201083';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610072013', 'U13610072013', '13610072013', '', '13610072013', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 13:21:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610072013' LIMIT 1);
UPDATE users SET nick_name='13610072013', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610072013';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18975858720', 'U18975858720', '🍉', '', '18975858720', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 12:48:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18975858720' LIMIT 1);
UPDATE users SET nick_name='🍉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18975858720';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503033089', 'U13503033089', '卢', '', '13503033089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 10:41:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503033089' LIMIT 1);
UPDATE users SET nick_name='卢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503033089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18614081810', 'U18614081810', 'hello ?itty', '', '18614081810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 09:54:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18614081810' LIMIT 1);
UPDATE users SET nick_name='hello ?itty', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18614081810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18601060285', 'U18601060285', '陶曦_Simon', '', '18601060285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-04 09:50:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18601060285' LIMIT 1);
UPDATE users SET nick_name='陶曦_Simon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18601060285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922297701', 'U13922297701', 'polly', '', '13922297701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-03 21:55:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922297701' LIMIT 1);
UPDATE users SET nick_name='polly', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922297701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760768075', 'U13760768075', 'HUILI_', '', '13760768075', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-03 20:52:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760768075' LIMIT 1);
UPDATE users SET nick_name='HUILI_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760768075';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18514527356', 'U18514527356', '18514527356', '', '18514527356', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-03 20:24:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18514527356' LIMIT 1);
UPDATE users SET nick_name='18514527356', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18514527356';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15680638832', 'U15680638832', '15680638832', '', '15680638832', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-03 13:42:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15680638832' LIMIT 1);
UPDATE users SET nick_name='15680638832', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15680638832';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19524141320', 'U19524141320', '白梦真（土匪女王版）', '', '19524141320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-03 13:34:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19524141320' LIMIT 1);
UPDATE users SET nick_name='白梦真（土匪女王版）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19524141320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19821277558', 'U19821277558', '19821277558', '', '19821277558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-02 18:29:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19821277558' LIMIT 1);
UPDATE users SET nick_name='19821277558', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19821277558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640894478', 'U13640894478', '13640894478', '', '13640894478', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-02 12:24:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640894478' LIMIT 1);
UPDATE users SET nick_name='13640894478', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640894478';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318834133', 'U13318834133', '13318834133', '', '13318834133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-02 12:00:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318834133' LIMIT 1);
UPDATE users SET nick_name='13318834133', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318834133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13001112342', 'U13001112342', '木土石', '', '13001112342', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-02 11:54:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13001112342' LIMIT 1);
UPDATE users SET nick_name='木土石', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13001112342';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060907972', 'U13060907972', 'M', '', '13060907972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-02 11:03:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060907972' LIMIT 1);
UPDATE users SET nick_name='M', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060907972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018493400', 'U15018493400', 'ham', '', '15018493400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-02 09:24:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018493400' LIMIT 1);
UPDATE users SET nick_name='ham', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018493400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666137789', 'U18666137789', 'mine', '', '18666137789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-07-01 13:11:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666137789' LIMIT 1);
UPDATE users SET nick_name='mine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666137789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710356949', 'U13710356949', '🧋', '', '13710356949', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-30 21:33:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710356949' LIMIT 1);
UPDATE users SET nick_name='🧋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710356949';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17888631405', 'U17888631405', '17888631405', '', '17888631405', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-30 15:35:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17888631405' LIMIT 1);
UPDATE users SET nick_name='17888631405', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17888631405';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678998641', 'U13678998641', '13678998641', '', '13678998641', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-30 14:51:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678998641' LIMIT 1);
UPDATE users SET nick_name='13678998641', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13678998641';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217337261', 'U15217337261', '15217337261', '', '15217337261', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-30 14:42:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217337261' LIMIT 1);
UPDATE users SET nick_name='15217337261', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217337261';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826629919', 'U18826629919', 'Háooooooo', '', '18826629919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-30 11:32:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826629919' LIMIT 1);
UPDATE users SET nick_name='Háooooooo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826629919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17614633053', 'U17614633053', '夏蝉不烦', '', '17614633053', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-30 11:31:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17614633053' LIMIT 1);
UPDATE users SET nick_name='夏蝉不烦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17614633053';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915163792', 'U15915163792', 'Damen', '', '15915163792', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-30 11:08:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915163792' LIMIT 1);
UPDATE users SET nick_name='Damen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915163792';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027319080', 'U18027319080', 'ccc', '', '18027319080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 22:08:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027319080' LIMIT 1);
UPDATE users SET nick_name='ccc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027319080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570357994', 'U13570357994', '大肥猫🍯', '', '13570357994', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 21:34:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570357994' LIMIT 1);
UPDATE users SET nick_name='大肥猫🍯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570357994';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19867944117', 'U19867944117', '是小豪阿', '', '19867944117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 17:36:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19867944117' LIMIT 1);
UPDATE users SET nick_name='是小豪阿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19867944117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15185897209', 'U15185897209', '木木安', '', '15185897209', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 15:11:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15185897209' LIMIT 1);
UPDATE users SET nick_name='木木安', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15185897209';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18899733789', 'U18899733789', 'Vincent_Whb', '', '18899733789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 15:08:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18899733789' LIMIT 1);
UPDATE users SET nick_name='Vincent_Whb', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18899733789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13581370682', 'U13581370682', '特别周', '', '13581370682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 14:54:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13581370682' LIMIT 1);
UPDATE users SET nick_name='特别周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13581370682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14743260698', 'U14743260698', '14743260698', '', '14743260698', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 13:37:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14743260698' LIMIT 1);
UPDATE users SET nick_name='14743260698', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14743260698';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802799562', 'U13802799562', '· Yeᴗo·ᰔᩚ', '', '13802799562', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 13:22:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802799562' LIMIT 1);
UPDATE users SET nick_name='· Yeᴗo·ᰔᩚ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802799562';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622129890', 'U15622129890', '15622129890', '', '15622129890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 13:20:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622129890' LIMIT 1);
UPDATE users SET nick_name='15622129890', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622129890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625118204', 'U15625118204', '茂茂', '', '15625118204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 13:03:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625118204' LIMIT 1);
UPDATE users SET nick_name='茂茂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625118204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889914503', 'U15889914503', '15889914503', '', '15889914503', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 13:03:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889914503' LIMIT 1);
UPDATE users SET nick_name='15889914503', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889914503';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013216689', 'U15013216689', '网球高手', '', '15013216689', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 13:02:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013216689' LIMIT 1);
UPDATE users SET nick_name='网球高手', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013216689';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332850722', 'U13332850722', 'max', '', '13332850722', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-06-29 10:59:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332850722' LIMIT 1);
UPDATE users SET nick_name='max', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13332850722';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14749316925', 'U14749316925', '水云身', '', '14749316925', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 08:27:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14749316925' LIMIT 1);
UPDATE users SET nick_name='水云身', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14749316925';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18958185157', 'U18958185157', 'Cherry', '', '18958185157', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-29 07:06:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18958185157' LIMIT 1);
UPDATE users SET nick_name='Cherry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18958185157';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914545432', 'U15914545432', 'Don', '', '15914545432', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 20:52:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914545432' LIMIT 1);
UPDATE users SET nick_name='Don', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914545432';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15766776194', 'U15766776194', '15766776194', '', '15766776194', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 19:37:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15766776194' LIMIT 1);
UPDATE users SET nick_name='15766776194', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15766776194';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556506057', 'U13556506057', '威', '', '13556506057', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-06-28 19:17:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556506057' LIMIT 1);
UPDATE users SET nick_name='威', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13556506057';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13862135330', 'U13862135330', '13862135330', '', '13862135330', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 18:25:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13862135330' LIMIT 1);
UPDATE users SET nick_name='13862135330', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13862135330';
