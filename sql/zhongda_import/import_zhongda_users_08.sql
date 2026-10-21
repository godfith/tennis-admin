SET NAMES utf8mb4;
-- 中大店用户导入 part 8 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625810408', 'U15625810408', '咩咩', '', '15625810408', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 00:55:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625810408' LIMIT 1);
UPDATE users SET nick_name='咩咩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625810408';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13244928613', 'U13244928613', '鄭', '', '13244928613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-11 23:27:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13244928613' LIMIT 1);
UPDATE users SET nick_name='鄭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13244928613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588943683', 'U18588943683', 'Vanessa苗苗', '', '18588943683', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2025-08-11 22:26:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588943683' LIMIT 1);
UPDATE users SET nick_name='Vanessa苗苗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='18588943683';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250558355', 'U13250558355', 'Xin Ye', '', '13250558355', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-11 21:53:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250558355' LIMIT 1);
UPDATE users SET nick_name='Xin Ye', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250558355';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711371790', 'U13711371790', '言午', '', '13711371790', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-11 20:29:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711371790' LIMIT 1);
UPDATE users SET nick_name='言午', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711371790';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17736699982', 'U17736699982', '田', '', '17736699982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-11 16:21:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17736699982' LIMIT 1);
UPDATE users SET nick_name='田', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17736699982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520488844', 'U18520488844', 'Kinghins_Cheung', '', '18520488844', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-11 13:43:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520488844' LIMIT 1);
UPDATE users SET nick_name='Kinghins_Cheung', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520488844';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13789223552', 'U13789223552', 'Max婧', '', '13789223552', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-08-11 12:42:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13789223552' LIMIT 1);
UPDATE users SET nick_name='Max婧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13789223552';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813759264', 'U18813759264', 'Joseph', '', '18813759264', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-11 11:40:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813759264' LIMIT 1);
UPDATE users SET nick_name='Joseph', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18813759264';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15347430645', 'U15347430645', '饭米了没', '', '15347430645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-11 09:26:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15347430645' LIMIT 1);
UPDATE users SET nick_name='饭米了没', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15347430645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15819294340', 'U15819294340', 'Ahin', '', '15819294340', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 22:00:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15819294340' LIMIT 1);
UPDATE users SET nick_name='Ahin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15819294340';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13178818801', 'U13178818801', '加宝', '', '13178818801', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 21:33:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13178818801' LIMIT 1);
UPDATE users SET nick_name='加宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13178818801';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19282067856', 'U19282067856', '小马的默默', '', '19282067856', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 20:51:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19282067856' LIMIT 1);
UPDATE users SET nick_name='小马的默默', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19282067856';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316615925', 'U18316615925', '观澜', '', '18316615925', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 20:38:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316615925' LIMIT 1);
UPDATE users SET nick_name='观澜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316615925';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13677794941', 'U13677794941', '雪糕', '', '13677794941', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 19:14:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13677794941' LIMIT 1);
UPDATE users SET nick_name='雪糕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13677794941';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918790275', 'U15918790275', '，，，，', '', '15918790275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 17:58:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918790275' LIMIT 1);
UPDATE users SET nick_name='，，，，', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918790275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632276482', 'U13632276482', '观观🐱', '', '13632276482', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 388, '2025-08-10 17:50:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632276482' LIMIT 1);
UPDATE users SET nick_name='观观🐱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 388) WHERE phone='13632276482';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632277847', 'U13632277847', 'Vera', '', '13632277847', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 17:45:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632277847' LIMIT 1);
UPDATE users SET nick_name='Vera', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632277847';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13413430746', 'U13413430746', '🎃', '', '13413430746', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-08-10 17:30:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13413430746' LIMIT 1);
UPDATE users SET nick_name='🎃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13413430746';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920133447', 'U15920133447', '彬', '', '15920133447', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 17:13:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920133447' LIMIT 1);
UPDATE users SET nick_name='彬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920133447';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15049659222', 'U15049659222', 'Cherette', '', '15049659222', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 14:52:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15049659222' LIMIT 1);
UPDATE users SET nick_name='Cherette', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15049659222';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19564487974', 'U19564487974', '蘑菇', '', '19564487974', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-08-10 14:48:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19564487974' LIMIT 1);
UPDATE users SET nick_name='蘑菇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='19564487974';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825360922', 'U13825360922', 'Zane', '', '13825360922', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 14:06:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825360922' LIMIT 1);
UPDATE users SET nick_name='Zane', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825360922';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666839029', 'U18666839029', '～', '', '18666839029', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 13:58:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666839029' LIMIT 1);
UPDATE users SET nick_name='～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666839029';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826457275', 'U18826457275', '娜', '', '18826457275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 13:37:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826457275' LIMIT 1);
UPDATE users SET nick_name='娜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826457275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520207952', 'U18520207952', '梦梦Mélissa', '', '18520207952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 12:50:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520207952' LIMIT 1);
UPDATE users SET nick_name='梦梦Mélissa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520207952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18607524945', 'U18607524945', '爷', '', '18607524945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 12:48:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18607524945' LIMIT 1);
UPDATE users SET nick_name='爷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18607524945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17710317601', 'U17710317601', 'Felice', '', '17710317601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 12:18:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17710317601' LIMIT 1);
UPDATE users SET nick_name='Felice', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17710317601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15535551919', 'U15535551919', '花生了什么树', '', '15535551919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 11:41:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15535551919' LIMIT 1);
UPDATE users SET nick_name='花生了什么树', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15535551919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18630688259', 'U18630688259', 'Hey', '', '18630688259', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 11:26:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18630688259' LIMIT 1);
UPDATE users SET nick_name='Hey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18630688259';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202075342', 'U15202075342', '楚', '', '15202075342', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 09:29:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202075342' LIMIT 1);
UPDATE users SET nick_name='楚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15202075342';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15621261280', 'U15621261280', '111', '', '15621261280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 09:19:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15621261280' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15621261280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678910016', 'U13678910016', '琪琪', '', '13678910016', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-10 02:21:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678910016' LIMIT 1);
UPDATE users SET nick_name='琪琪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13678910016';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480269630', 'U13480269630', '唐圆圆', '', '13480269630', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 23:08:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480269630' LIMIT 1);
UPDATE users SET nick_name='唐圆圆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480269630';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620006147', 'U18620006147', '18620006147', '', '18620006147', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 21:53:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620006147' LIMIT 1);
UPDATE users SET nick_name='18620006147', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620006147';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13189085701', 'U13189085701', '小宋', '', '13189085701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 21:47:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13189085701' LIMIT 1);
UPDATE users SET nick_name='小宋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13189085701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18681126710', 'U18681126710', '雯叽仔', '', '18681126710', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 21:29:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18681126710' LIMIT 1);
UPDATE users SET nick_name='雯叽仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18681126710';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922298949', 'U13922298949', '文先生', '', '13922298949', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 21:29:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922298949' LIMIT 1);
UPDATE users SET nick_name='文先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922298949';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13910792577', 'U13910792577', '网球小白0.1', '', '13910792577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 21:27:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13910792577' LIMIT 1);
UPDATE users SET nick_name='网球小白0.1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13910792577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427657656', 'U13427657656', 'Going.', '', '13427657656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-08-09 21:26:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427657656' LIMIT 1);
UPDATE users SET nick_name='Going.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13427657656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302761761', 'U13302761761', 'lazy虫', '', '13302761761', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-08-09 21:20:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302761761' LIMIT 1);
UPDATE users SET nick_name='lazy虫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='13302761761';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265196582', 'U13265196582', 'ariariel', '', '13265196582', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 21:08:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265196582' LIMIT 1);
UPDATE users SET nick_name='ariariel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265196582';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15801780561', 'U15801780561', '偶尔会发笑', '', '15801780561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 20:29:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15801780561' LIMIT 1);
UPDATE users SET nick_name='偶尔会发笑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15801780561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242832371', 'U13242832371', '虾米', '', '13242832371', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 20:19:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242832371' LIMIT 1);
UPDATE users SET nick_name='虾米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242832371';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18117117727', 'U18117117727', 'momo', '', '18117117727', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 20:07:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18117117727' LIMIT 1);
UPDATE users SET nick_name='momo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18117117727';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15089154901', 'U15089154901', '15089154901', '', '15089154901', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 19:34:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15089154901' LIMIT 1);
UPDATE users SET nick_name='15089154901', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15089154901';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15296420773', 'U15296420773', '15296420773', '', '15296420773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 18:45:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15296420773' LIMIT 1);
UPDATE users SET nick_name='15296420773', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15296420773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022887623', 'U18022887623', '小猫', '', '18022887623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 18:30:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022887623' LIMIT 1);
UPDATE users SET nick_name='小猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022887623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18675513916', 'U18675513916', 'MintX', '', '18675513916', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 17:25:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18675513916' LIMIT 1);
UPDATE users SET nick_name='MintX', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18675513916';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622746296', 'U13622746296', '13622746296', '', '13622746296', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 17:17:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622746296' LIMIT 1);
UPDATE users SET nick_name='13622746296', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622746296';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19806835958', 'U19806835958', '🕰', '', '19806835958', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 17:08:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19806835958' LIMIT 1);
UPDATE users SET nick_name='🕰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19806835958';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632321795', 'U13632321795', 'D.小霞', '', '13632321795', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 16:48:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632321795' LIMIT 1);
UPDATE users SET nick_name='D.小霞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632321795';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13043490900', 'U13043490900', '谢添Tim', '', '13043490900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 16:03:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13043490900' LIMIT 1);
UPDATE users SET nick_name='谢添Tim', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13043490900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018419653', 'U15018419653', '雯雯', '', '15018419653', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 14:28:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018419653' LIMIT 1);
UPDATE users SET nick_name='雯雯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018419653';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710722533', 'U13710722533', '好得戚', '', '13710722533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 14:25:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710722533' LIMIT 1);
UPDATE users SET nick_name='好得戚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710722533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025166207', 'U13025166207', 'zz', '', '13025166207', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 14:17:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025166207' LIMIT 1);
UPDATE users SET nick_name='zz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025166207';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826151492', 'U13826151492', '王佳', '', '13826151492', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 13:53:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826151492' LIMIT 1);
UPDATE users SET nick_name='王佳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826151492';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017531654', 'U15017531654', 'Yaliz', '', '15017531654', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-08-09 13:26:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017531654' LIMIT 1);
UPDATE users SET nick_name='Yaliz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='15017531654';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665636919', 'U18665636919', '贞贞', '', '18665636919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 13:23:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665636919' LIMIT 1);
UPDATE users SET nick_name='贞贞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665636919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18373604809', 'U18373604809', '七塔蹦', '', '18373604809', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 13:20:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18373604809' LIMIT 1);
UPDATE users SET nick_name='七塔蹦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18373604809';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15916481880', 'U15916481880', '聪', '', '15916481880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 13:08:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15916481880' LIMIT 1);
UPDATE users SET nick_name='聪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15916481880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924028850', 'U18924028850', 'Sunnnnnnnnnny', '', '18924028850', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 13:03:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924028850' LIMIT 1);
UPDATE users SET nick_name='Sunnnnnnnnnny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924028850';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18576760895', 'U18576760895', 'lulu', '', '18576760895', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-08-09 12:49:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18576760895' LIMIT 1);
UPDATE users SET nick_name='lulu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18576760895';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288778191', 'U13288778191', '13288778191', '', '13288778191', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 12:06:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288778191' LIMIT 1);
UPDATE users SET nick_name='13288778191', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288778191';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822293322', 'U13822293322', 'Elon', '', '13822293322', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 11:48:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822293322' LIMIT 1);
UPDATE users SET nick_name='Elon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822293322';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19875979768', 'U19875979768', '肖肖🐰', '', '19875979768', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-09 09:06:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19875979768' LIMIT 1);
UPDATE users SET nick_name='肖肖🐰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19875979768';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610091616', 'U13610091616', 'Flora Hi', '', '13610091616', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 23:20:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610091616' LIMIT 1);
UPDATE users SET nick_name='Flora Hi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610091616';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13437845192', 'U13437845192', 'Bella😝', '', '13437845192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 23:16:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13437845192' LIMIT 1);
UPDATE users SET nick_name='Bella😝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13437845192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922715738', 'U13922715738', '心静事定', '', '13922715738', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 21:19:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922715738' LIMIT 1);
UPDATE users SET nick_name='心静事定', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922715738';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13068612553', 'U13068612553', '🐻小成🐻', '', '13068612553', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 21:09:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13068612553' LIMIT 1);
UPDATE users SET nick_name='🐻小成🐻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13068612553';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929504281', 'U13929504281', '茜茜', '', '13929504281', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-08-08 20:55:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929504281' LIMIT 1);
UPDATE users SET nick_name='茜茜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13929504281';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711298800', 'U13711298800', '文敏', '', '13711298800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 20:19:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711298800' LIMIT 1);
UPDATE users SET nick_name='文敏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711298800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711271971', 'U13711271971', 'a', '', '13711271971', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 19:41:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711271971' LIMIT 1);
UPDATE users SET nick_name='a', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711271971';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565388604', 'U18565388604', 'YING💫', '', '18565388604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 19:05:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565388604' LIMIT 1);
UPDATE users SET nick_name='YING💫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565388604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13702327076', 'U13702327076', '小猪杂', '', '13702327076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 18:17:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13702327076' LIMIT 1);
UPDATE users SET nick_name='小猪杂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13702327076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814124486', 'U18814124486', '露西小姐', '', '18814124486', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 18:03:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814124486' LIMIT 1);
UPDATE users SET nick_name='露西小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814124486';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578730113', 'U18578730113', '老狼小杨', '', '18578730113', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 18:01:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578730113' LIMIT 1);
UPDATE users SET nick_name='老狼小杨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578730113';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711337414', 'U13711337414', 'V.Frank Kong', '', '13711337414', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 15:36:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711337414' LIMIT 1);
UPDATE users SET nick_name='V.Frank Kong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711337414';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15210569557', 'U15210569557', 'Stacy', '', '15210569557', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 14:51:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15210569557' LIMIT 1);
UPDATE users SET nick_name='Stacy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15210569557';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631234951', 'U13631234951', 'Vivian', '', '13631234951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-08-08 14:18:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631234951' LIMIT 1);
UPDATE users SET nick_name='Vivian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13631234951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18899720842', 'U18899720842', '宋宋030', '', '18899720842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 13:46:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18899720842' LIMIT 1);
UPDATE users SET nick_name='宋宋030', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18899720842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352881329', 'U13352881329', 'Cora Ding', '', '13352881329', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 13:45:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352881329' LIMIT 1);
UPDATE users SET nick_name='Cora Ding', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352881329';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660420936', 'U13660420936', '🍫Ng🍼', '', '13660420936', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 13:39:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660420936' LIMIT 1);
UPDATE users SET nick_name='🍫Ng🍼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660420936';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520065564', 'U18520065564', 'Sleepinlunar', '', '18520065564', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 13:30:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520065564' LIMIT 1);
UPDATE users SET nick_name='Sleepinlunar', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520065564';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678918586', 'U13678918586', 'Yay', '', '13678918586', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 13:08:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678918586' LIMIT 1);
UPDATE users SET nick_name='Yay', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13678918586';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18100209390', 'U18100209390', '徐彭飞', '', '18100209390', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 13:05:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18100209390' LIMIT 1);
UPDATE users SET nick_name='徐彭飞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18100209390';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265109866', 'U13265109866', '12.', '', '13265109866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 13:04:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265109866' LIMIT 1);
UPDATE users SET nick_name='12.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265109866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017549560', 'U15017549560', 'hdHedy', '', '15017549560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 11:39:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017549560' LIMIT 1);
UPDATE users SET nick_name='hdHedy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017549560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560391476', 'U13560391476', '一颗栗子🌰', '', '13560391476', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 11:32:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560391476' LIMIT 1);
UPDATE users SET nick_name='一颗栗子🌰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560391476';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632301407', 'U13632301407', 'Louis', '', '13632301407', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-08-08 11:11:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632301407' LIMIT 1);
UPDATE users SET nick_name='Louis', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13632301407';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13054627527', 'U13054627527', 'miiiiiiing', '', '13054627527', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 10:41:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13054627527' LIMIT 1);
UPDATE users SET nick_name='miiiiiiing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13054627527';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632374906', 'U13632374906', '文菲', '', '13632374906', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 10:37:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632374906' LIMIT 1);
UPDATE users SET nick_name='文菲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632374906';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17801020970', 'U17801020970', '咔咔咔', '', '17801020970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 10:27:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17801020970' LIMIT 1);
UPDATE users SET nick_name='咔咔咔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17801020970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025143110', 'U13025143110', 'U2😛', '', '13025143110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 10:20:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025143110' LIMIT 1);
UPDATE users SET nick_name='U2😛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025143110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017548112', 'U15017548112', '阿轩', '', '15017548112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-08 10:11:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017548112' LIMIT 1);
UPDATE users SET nick_name='阿轩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017548112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13860393396', 'U13860393396', 'phainee', '', '13860393396', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-07 19:40:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13860393396' LIMIT 1);
UPDATE users SET nick_name='phainee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13860393396';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819773486', 'U18819773486', '木林森', '', '18819773486', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-07 19:17:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819773486' LIMIT 1);
UPDATE users SET nick_name='木林森', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819773486';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802522641', 'U13802522641', '＝)', '', '13802522641', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-07 18:32:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802522641' LIMIT 1);
UPDATE users SET nick_name='＝)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802522641';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13668993393', 'U13668993393', 'xixixi', '', '13668993393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-07 18:30:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13668993393' LIMIT 1);
UPDATE users SET nick_name='xixixi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13668993393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120639626', 'U19120639626', 'Maymay', '', '19120639626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-07 15:24:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120639626' LIMIT 1);
UPDATE users SET nick_name='Maymay', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120639626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13413687166', 'U13413687166', '121', '', '13413687166', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-08-07 14:58:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13413687166' LIMIT 1);
UPDATE users SET nick_name='121', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13413687166';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017521448', 'U15017521448', '赵先生', '', '15017521448', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 136, '2025-08-07 14:12:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017521448' LIMIT 1);
UPDATE users SET nick_name='赵先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 136) WHERE phone='15017521448';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13543406692', 'U13543406692', '13543406692', '', '13543406692', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-07 13:56:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13543406692' LIMIT 1);
UPDATE users SET nick_name='13543406692', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13543406692';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422039540', 'U13422039540', 'Y', '', '13422039540', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-07 13:55:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422039540' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422039540';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15802032017', 'U15802032017', '臭屎儀', '', '15802032017', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-07 12:57:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15802032017' LIMIT 1);
UPDATE users SET nick_name='臭屎儀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15802032017';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520127320', 'U18520127320', 'lion', '', '18520127320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-07 11:58:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520127320' LIMIT 1);
UPDATE users SET nick_name='lion', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520127320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13713718803', 'U13713718803', 'ཟླ་བ་ལྷ་མོ།🌙 Fiona', '', '13713718803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-07 11:54:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13713718803' LIMIT 1);
UPDATE users SET nick_name='ཟླ་བ་ལྷ་མོ།🌙 Fiona', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13713718803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688452886', 'U18688452886', '好啊二代', '', '18688452886', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-07 11:19:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688452886' LIMIT 1);
UPDATE users SET nick_name='好啊二代', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688452886';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570556052', 'U13570556052', '蔚', '', '13570556052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-08-06 23:03:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570556052' LIMIT 1);
UPDATE users SET nick_name='蔚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13570556052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533332618', 'U13533332618', '佩珊 Carrie', '', '13533332618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 20:21:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533332618' LIMIT 1);
UPDATE users SET nick_name='佩珊 Carrie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533332618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915754834', 'U15915754834', '💎温清清💎', '', '15915754834', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 20:09:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915754834' LIMIT 1);
UPDATE users SET nick_name='💎温清清💎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915754834';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926285566', 'U18926285566', 'czj', '', '18926285566', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 18:06:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926285566' LIMIT 1);
UPDATE users SET nick_name='czj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926285566';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924120852', 'U13924120852', '好彦好语', '', '13924120852', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 16:15:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924120852' LIMIT 1);
UPDATE users SET nick_name='好彦好语', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924120852';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902220060', 'U13902220060', '透透', '', '13902220060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 15:48:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902220060' LIMIT 1);
UPDATE users SET nick_name='透透', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902220060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15112440623', 'U15112440623', '15112440623', '', '15112440623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 15:42:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15112440623' LIMIT 1);
UPDATE users SET nick_name='15112440623', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15112440623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565328497', 'U18565328497', 'Clairechan', '', '18565328497', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-08-06 15:33:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565328497' LIMIT 1);
UPDATE users SET nick_name='Clairechan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18565328497';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18556538437', 'U18556538437', '18556538437', '', '18556538437', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 13:47:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18556538437' LIMIT 1);
UPDATE users SET nick_name='18556538437', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18556538437';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15778866419', 'U15778866419', '白', '', '15778866419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 13:37:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15778866419' LIMIT 1);
UPDATE users SET nick_name='白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15778866419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13078898238', 'U13078898238', 'David', '', '13078898238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 12:02:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13078898238' LIMIT 1);
UPDATE users SET nick_name='David', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13078898238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18675976584', 'U18675976584', '木木', '', '18675976584', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-08-06 11:43:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18675976584' LIMIT 1);
UPDATE users SET nick_name='木木', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18675976584';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15814839119', 'U15814839119', '11', '', '15814839119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 09:46:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15814839119' LIMIT 1);
UPDATE users SET nick_name='11', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15814839119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18756049785', 'U18756049785', '张张', '', '18756049785', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 09:35:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18756049785' LIMIT 1);
UPDATE users SET nick_name='张张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18756049785';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17718772574', 'U17718772574', 'Auheh_H', '', '17718772574', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-06 00:38:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17718772574' LIMIT 1);
UPDATE users SET nick_name='Auheh_H', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17718772574';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013017220', 'U15013017220', 'Ivan 皓', '', '15013017220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-08-05 23:39:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013017220' LIMIT 1);
UPDATE users SET nick_name='Ivan 皓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15013017220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538995748', 'U13538995748', '爽', '', '13538995748', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-05 22:12:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538995748' LIMIT 1);
UPDATE users SET nick_name='爽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538995748';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631388328', 'U13631388328', 'Ivan', '', '13631388328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2025-08-05 21:04:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631388328' LIMIT 1);
UPDATE users SET nick_name='Ivan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='13631388328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925092804', 'U13925092804', '🎡BouBou勤🤗', '', '13925092804', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 73, '2025-08-05 19:28:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925092804' LIMIT 1);
UPDATE users SET nick_name='🎡BouBou勤🤗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 73) WHERE phone='13925092804';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825086986', 'U13825086986', 'Sam Lee', '', '13825086986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-05 19:25:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825086986' LIMIT 1);
UPDATE users SET nick_name='Sam Lee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825086986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917263817', 'U15917263817', '叶', '', '15917263817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-05 18:16:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917263817' LIMIT 1);
UPDATE users SET nick_name='叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917263817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268004465', 'U13268004465', 'Joanna陈映颖', '', '13268004465', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-08-05 17:49:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268004465' LIMIT 1);
UPDATE users SET nick_name='Joanna陈映颖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13268004465';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975355373', 'U15975355373', '杏仁果', '', '15975355373', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-05 16:15:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975355373' LIMIT 1);
UPDATE users SET nick_name='杏仁果', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975355373';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17688425687', 'U17688425687', '17688425687', '', '17688425687', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-05 15:37:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17688425687' LIMIT 1);
UPDATE users SET nick_name='17688425687', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17688425687';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876063416', 'U15876063416', 'olivia', '', '15876063416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-05 15:12:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876063416' LIMIT 1);
UPDATE users SET nick_name='olivia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876063416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926495718', 'U13926495718', '白白', '', '13926495718', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-05 13:42:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926495718' LIMIT 1);
UPDATE users SET nick_name='白白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926495718';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760640465', 'U13760640465', '薇', '', '13760640465', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-05 13:26:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760640465' LIMIT 1);
UPDATE users SET nick_name='薇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760640465';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825372366', 'U18825372366', 'Yang', '', '18825372366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-05 12:09:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825372366' LIMIT 1);
UPDATE users SET nick_name='Yang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825372366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913101935', 'U15913101935', '喂', '', '15913101935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 22:49:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913101935' LIMIT 1);
UPDATE users SET nick_name='喂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913101935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925081248', 'U13925081248', '小丁', '', '13925081248', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 22:45:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925081248' LIMIT 1);
UPDATE users SET nick_name='小丁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925081248';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242885036', 'U13242885036', 'Anna💖林紫颖', '', '13242885036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-08-04 22:20:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242885036' LIMIT 1);
UPDATE users SET nick_name='Anna💖林紫颖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13242885036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268288811', 'U13268288811', '🐬Jasminebbo', '', '13268288811', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 21:26:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268288811' LIMIT 1);
UPDATE users SET nick_name='🐬Jasminebbo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268288811';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710808932', 'U13710808932', '小苹果', '', '13710808932', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 20:48:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710808932' LIMIT 1);
UPDATE users SET nick_name='小苹果', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710808932';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14776105377', 'U14776105377', '14776105377', '', '14776105377', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 17:48:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14776105377' LIMIT 1);
UPDATE users SET nick_name='14776105377', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14776105377';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988917736', 'U18988917736', 'Haley', '', '18988917736', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 17:19:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988917736' LIMIT 1);
UPDATE users SET nick_name='Haley', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988917736';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922737359', 'U18922737359', 'Sagittarius', '', '18922737359', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 17:11:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922737359' LIMIT 1);
UPDATE users SET nick_name='Sagittarius', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922737359';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535029585', 'U13535029585', '13535029585', '', '13535029585', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 16:11:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535029585' LIMIT 1);
UPDATE users SET nick_name='13535029585', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535029585';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13120812429', 'U13120812429', 'liya', '', '13120812429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 15:05:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13120812429' LIMIT 1);
UPDATE users SET nick_name='liya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13120812429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18300196120', 'U18300196120', '北北', '', '18300196120', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 13:21:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18300196120' LIMIT 1);
UPDATE users SET nick_name='北北', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18300196120';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18368105592', 'U18368105592', '添添', '', '18368105592', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 12:25:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18368105592' LIMIT 1);
UPDATE users SET nick_name='添添', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18368105592';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13773084795', 'U13773084795', 'Rachel', '', '13773084795', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-08-04 12:21:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13773084795' LIMIT 1);
UPDATE users SET nick_name='Rachel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13773084795';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19865043112', 'U19865043112', 'Karen', '', '19865043112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-04 11:19:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19865043112' LIMIT 1);
UPDATE users SET nick_name='Karen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19865043112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13670373539', 'U13670373539', '片鸭', '', '13670373539', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-08-04 09:51:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13670373539' LIMIT 1);
UPDATE users SET nick_name='片鸭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13670373539';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622701086', 'U15622701086', '娇娇', '', '15622701086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 156, '2025-08-04 09:47:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622701086' LIMIT 1);
UPDATE users SET nick_name='娇娇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 156) WHERE phone='15622701086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926426128', 'U13926426128', '米虫🐰ིྀ', '', '13926426128', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-08-04 08:29:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926426128' LIMIT 1);
UPDATE users SET nick_name='米虫🐰ིྀ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13926426128';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817358816', 'U17817358816', 'von', '', '17817358816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 20:03:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817358816' LIMIT 1);
UPDATE users SET nick_name='von', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817358816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632426085', 'U13632426085', '张', '', '13632426085', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 18:32:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632426085' LIMIT 1);
UPDATE users SET nick_name='张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632426085';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229413018', 'U13229413018', 'lu', '', '13229413018', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 18:17:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229413018' LIMIT 1);
UPDATE users SET nick_name='lu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229413018';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920453884', 'U15920453884', '🧀HclotMo🍟🌟', '', '15920453884', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 17:43:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920453884' LIMIT 1);
UPDATE users SET nick_name='🧀HclotMo🍟🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920453884';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560368019', 'U13560368019', '林小乖', '', '13560368019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 17:27:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560368019' LIMIT 1);
UPDATE users SET nick_name='林小乖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560368019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13270709497', 'U13270709497', 'Robyn', '', '13270709497', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 17:11:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13270709497' LIMIT 1);
UPDATE users SET nick_name='Robyn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13270709497';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15089158263', 'U15089158263', 'Johnson', '', '15089158263', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-08-03 16:41:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15089158263' LIMIT 1);
UPDATE users SET nick_name='Johnson', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15089158263';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988801022', 'U18988801022', '赖闪闪', '', '18988801022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 15:39:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988801022' LIMIT 1);
UPDATE users SET nick_name='赖闪闪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988801022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632452669', 'U13632452669', 'yayawooo', '', '13632452669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 13:47:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632452669' LIMIT 1);
UPDATE users SET nick_name='yayawooo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632452669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989231116', 'U15989231116', 'susu', '', '15989231116', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 13:46:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989231116' LIMIT 1);
UPDATE users SET nick_name='susu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989231116';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632312454', 'U13632312454', 'sito', '', '13632312454', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 13:38:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632312454' LIMIT 1);
UPDATE users SET nick_name='sito', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632312454';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13414115443', 'U13414115443', 'TT', '', '13414115443', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 13:23:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13414115443' LIMIT 1);
UPDATE users SET nick_name='TT', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13414115443';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18682117792', 'U18682117792', 'Babyface', '', '18682117792', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 13:10:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18682117792' LIMIT 1);
UPDATE users SET nick_name='Babyface', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18682117792';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610122577', 'U13610122577', 'LL', '', '13610122577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 13:10:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610122577' LIMIT 1);
UPDATE users SET nick_name='LL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610122577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247321763', 'U13247321763', 'Dandan^o^🧨', '', '13247321763', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 13:06:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247321763' LIMIT 1);
UPDATE users SET nick_name='Dandan^o^🧨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13247321763';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13106849585', 'U13106849585', 'qbb', '', '13106849585', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 12:57:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13106849585' LIMIT 1);
UPDATE users SET nick_name='qbb', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13106849585';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13018588077', 'U13018588077', '鳴', '', '13018588077', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 12:29:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13018588077' LIMIT 1);
UPDATE users SET nick_name='鳴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13018588077';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249158964', 'U13249158964', '13249158964', '', '13249158964', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 11:46:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249158964' LIMIT 1);
UPDATE users SET nick_name='13249158964', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249158964';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312106359', 'U18312106359', '茶泡', '', '18312106359', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 11:25:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312106359' LIMIT 1);
UPDATE users SET nick_name='茶泡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312106359';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711539540', 'U13711539540', '曾平^_^', '', '13711539540', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-08-03 11:15:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711539540' LIMIT 1);
UPDATE users SET nick_name='曾平^_^', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='13711539540';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320164125', 'U18320164125', 'Yu_L🐟', '', '18320164125', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-08-03 10:46:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320164125' LIMIT 1);
UPDATE users SET nick_name='Yu_L🐟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='18320164125';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588726233', 'U18588726233', 'jjf', '', '18588726233', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 10:37:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588726233' LIMIT 1);
UPDATE users SET nick_name='jjf', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588726233';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18372138383', 'U18372138383', '18372138383', '', '18372138383', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 10:35:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18372138383' LIMIT 1);
UPDATE users SET nick_name='18372138383', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18372138383';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418124033', 'U13418124033', '薄荷绿', '', '13418124033', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-08-03 10:20:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418124033' LIMIT 1);
UPDATE users SET nick_name='薄荷绿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13418124033';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18210888543', 'U18210888543', '18210888543', '', '18210888543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 10:17:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18210888543' LIMIT 1);
UPDATE users SET nick_name='18210888543', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18210888543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15970978831', 'U15970978831', '好好吃饭🍚', '', '15970978831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 09:40:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15970978831' LIMIT 1);
UPDATE users SET nick_name='好好吃饭🍚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15970978831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15850726858', 'U15850726858', '啦啦啦冯凯月', '', '15850726858', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 09:25:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15850726858' LIMIT 1);
UPDATE users SET nick_name='啦啦啦冯凯月', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15850726858';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926716170', 'U18926716170', '李', '', '18926716170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 09:17:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926716170' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926716170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427503365', 'U13427503365', '没事哒没事哒', '', '13427503365', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 09:10:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427503365' LIMIT 1);
UPDATE users SET nick_name='没事哒没事哒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427503365';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666538658', 'U17666538658', '达9', '', '17666538658', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 08:35:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666538658' LIMIT 1);
UPDATE users SET nick_name='达9', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666538658';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632333784', 'U13632333784', '虾饺', '', '13632333784', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 03:57:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632333784' LIMIT 1);
UPDATE users SET nick_name='虾饺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632333784';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18032975968', 'U18032975968', 'mohan', '', '18032975968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-03 00:33:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18032975968' LIMIT 1);
UPDATE users SET nick_name='mohan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18032975968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602411004', 'U13602411004', '余雅静🐠燕窝滋补美学专家', '', '13602411004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 21:40:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602411004' LIMIT 1);
UPDATE users SET nick_name='余雅静🐠燕窝滋补美学专家', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602411004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813750834', 'U18813750834', 'Xiaomei', '', '18813750834', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 21:10:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813750834' LIMIT 1);
UPDATE users SET nick_name='Xiaomei', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18813750834';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602017603', 'U18602017603', 'simin', '', '18602017603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 20:41:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602017603' LIMIT 1);
UPDATE users SET nick_name='simin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602017603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620453168', 'U18620453168', 'Evint', '', '18620453168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 20:11:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620453168' LIMIT 1);
UPDATE users SET nick_name='Evint', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620453168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975622800', 'U15975622800', '_Bill_Li', '', '15975622800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2025-08-02 20:07:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975622800' LIMIT 1);
UPDATE users SET nick_name='_Bill_Li', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='15975622800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622179390', 'U15622179390', '丽清🎐', '', '15622179390', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-08-02 18:30:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622179390' LIMIT 1);
UPDATE users SET nick_name='丽清🎐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15622179390';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808897850', 'U13808897850', '夏天', '', '13808897850', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 18:27:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808897850' LIMIT 1);
UPDATE users SET nick_name='夏天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808897850';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828476916', 'U13828476916', '小白Vegan', '', '13828476916', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 17:55:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828476916' LIMIT 1);
UPDATE users SET nick_name='小白Vegan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828476916';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520083109', 'U18520083109', 'apollo', '', '18520083109', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 17:16:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520083109' LIMIT 1);
UPDATE users SET nick_name='apollo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520083109';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580573369', 'U13580573369', '13580573369', '', '13580573369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 16:34:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580573369' LIMIT 1);
UPDATE users SET nick_name='13580573369', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580573369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13553499290', 'U13553499290', '🙇', '', '13553499290', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 16:14:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13553499290' LIMIT 1);
UPDATE users SET nick_name='🙇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13553499290';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011871040', 'U18011871040', '🐷', '', '18011871040', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-08-02 15:40:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011871040' LIMIT 1);
UPDATE users SET nick_name='🐷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18011871040';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620551088', 'U18620551088', 'zeta', '', '18620551088', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-08-02 15:05:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620551088' LIMIT 1);
UPDATE users SET nick_name='zeta', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18620551088';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18955167193', 'U18955167193', 'R.🍂', '', '18955167193', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 14:02:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18955167193' LIMIT 1);
UPDATE users SET nick_name='R.🍂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18955167193';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922771339', 'U18922771339', 'Isaaaa', '', '18922771339', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 13:55:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922771339' LIMIT 1);
UPDATE users SET nick_name='Isaaaa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922771339';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011765294', 'U18011765294', '晓治', '', '18011765294', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 13:42:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011765294' LIMIT 1);
UPDATE users SET nick_name='晓治', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011765294';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15088051577', 'U15088051577', '15088051577', '', '15088051577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 13:08:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15088051577' LIMIT 1);
UPDATE users SET nick_name='15088051577', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15088051577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312672809', 'U18312672809', 'Z1atan F3ver', '', '18312672809', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 12:43:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312672809' LIMIT 1);
UPDATE users SET nick_name='Z1atan F3ver', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312672809';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18985532074', 'U18985532074', '王一宁', '', '18985532074', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2025-08-02 12:20:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18985532074' LIMIT 1);
UPDATE users SET nick_name='王一宁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18985532074';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710308549', 'U13710308549', '1', '', '13710308549', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 12:03:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710308549' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710308549';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360852844', 'U15360852844', '君子', '', '15360852844', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 12:00:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360852844' LIMIT 1);
UPDATE users SET nick_name='君子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360852844';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450291318', 'U13450291318', '玉俊Young', '', '13450291318', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 11:19:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450291318' LIMIT 1);
UPDATE users SET nick_name='玉俊Young', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450291318';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302073311', 'U18302073311', 'LDM', '', '18302073311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 10:53:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302073311' LIMIT 1);
UPDATE users SET nick_name='LDM', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18302073311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928952346', 'U13928952346', '小娟', '', '13928952346', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-02 10:25:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928952346' LIMIT 1);
UPDATE users SET nick_name='小娟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928952346';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602707311', 'U13602707311', '、', '', '13602707311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 20:23:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602707311' LIMIT 1);
UPDATE users SET nick_name='、', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602707311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662343285', 'U13662343285', '13662343285', '', '13662343285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 17:56:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662343285' LIMIT 1);
UPDATE users SET nick_name='13662343285', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662343285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826410347', 'U13826410347', '千里千寻-Elia', '', '13826410347', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 15:55:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826410347' LIMIT 1);
UPDATE users SET nick_name='千里千寻-Elia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826410347';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15819087277', 'U15819087277', '陈裕峰speaking', '', '15819087277', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 15:43:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15819087277' LIMIT 1);
UPDATE users SET nick_name='陈裕峰speaking', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15819087277';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316166167', 'U13316166167', '车韬', '', '13316166167', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 15:19:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316166167' LIMIT 1);
UPDATE users SET nick_name='车韬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316166167';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711134129', 'U13711134129', 'T', '', '13711134129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-08-01 15:16:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711134129' LIMIT 1);
UPDATE users SET nick_name='T', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13711134129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500225537', 'U13500225537', 'Ophelia Sun', '', '13500225537', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 14:37:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500225537' LIMIT 1);
UPDATE users SET nick_name='Ophelia Sun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500225537';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422200212', 'U13422200212', '13422200212', '', '13422200212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 13:56:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422200212' LIMIT 1);
UPDATE users SET nick_name='13422200212', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422200212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18640431331', 'U18640431331', '元宝🌟', '', '18640431331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 13:08:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18640431331' LIMIT 1);
UPDATE users SET nick_name='元宝🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18640431331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13530038259', 'U13530038259', '1', '', '13530038259', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 11:48:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13530038259' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13530038259';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18347011826', 'U18347011826', '🌸🌸🌸🌸Zoey', '', '18347011826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 11:19:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18347011826' LIMIT 1);
UPDATE users SET nick_name='🌸🌸🌸🌸Zoey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18347011826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724883196', 'U13724883196', 'Linda', '', '13724883196', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 10:23:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724883196' LIMIT 1);
UPDATE users SET nick_name='Linda', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724883196';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148941439', 'U13148941439', '41439西', '', '13148941439', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-01 08:38:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148941439' LIMIT 1);
UPDATE users SET nick_name='41439西', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13148941439';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15069356461', 'U15069356461', 'Aria^🍭', '', '15069356461', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-31 23:10:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15069356461' LIMIT 1);
UPDATE users SET nick_name='Aria^🍭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15069356461';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828407738', 'U13828407738', 'LIANGJIARONG', '', '13828407738', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-07-31 20:16:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828407738' LIMIT 1);
UPDATE users SET nick_name='LIANGJIARONG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13828407738';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025111756', 'U13025111756', 'C', '', '13025111756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-31 19:04:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025111756' LIMIT 1);
UPDATE users SET nick_name='C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025111756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570411552', 'U13570411552', '🐸🐸🐸', '', '13570411552', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-31 18:39:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570411552' LIMIT 1);
UPDATE users SET nick_name='🐸🐸🐸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13570411552';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288891189', 'U13288891189', 'Jasmine', '', '13288891189', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-31 16:23:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288891189' LIMIT 1);
UPDATE users SET nick_name='Jasmine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288891189';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915853610', 'U15915853610', '仙', '', '15915853610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-07-31 16:10:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915853610' LIMIT 1);
UPDATE users SET nick_name='仙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='15915853610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17520413089', 'U17520413089', '丁丁', '', '17520413089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-31 15:56:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17520413089' LIMIT 1);
UPDATE users SET nick_name='丁丁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='17520413089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15802011892', 'U15802011892', 'zpp', '', '15802011892', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-31 15:20:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15802011892' LIMIT 1);
UPDATE users SET nick_name='zpp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15802011892';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15384437153', 'U15384437153', 'Jane💋', '', '15384437153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-07-31 13:48:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15384437153' LIMIT 1);
UPDATE users SET nick_name='Jane💋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15384437153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613173017', 'U18613173017', 'Yu.', '', '18613173017', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-31 13:41:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613173017' LIMIT 1);
UPDATE users SET nick_name='Yu.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613173017';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15119789384', 'U15119789384', '15119789384', '', '15119789384', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-31 13:37:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15119789384' LIMIT 1);
UPDATE users SET nick_name='15119789384', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15119789384';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430293522', 'U13430293522', 'S-JC&', '', '13430293522', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-31 13:22:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430293522' LIMIT 1);
UPDATE users SET nick_name='S-JC&', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430293522';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924135602', 'U18924135602', '💊L-Y-ttttt', '', '18924135602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-31 13:19:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924135602' LIMIT 1);
UPDATE users SET nick_name='💊L-Y-ttttt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924135602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813751682', 'U18813751682', '高嘉水柱', '', '18813751682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-07-31 11:00:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813751682' LIMIT 1);
UPDATE users SET nick_name='高嘉水柱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18813751682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18377330674', 'U18377330674', '蜡笔小新', '', '18377330674', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-31 09:18:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18377330674' LIMIT 1);
UPDATE users SET nick_name='蜡笔小新', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18377330674';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18559842927', 'U18559842927', '🧊', '', '18559842927', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-31 00:03:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18559842927' LIMIT 1);
UPDATE users SET nick_name='🧊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18559842927';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920134052', 'U15920134052', 'NOZOB@5Z', '', '15920134052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-30 23:05:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920134052' LIMIT 1);
UPDATE users SET nick_name='NOZOB@5Z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920134052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688485086', 'U18688485086', 'Shirley', '', '18688485086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-30 21:15:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688485086' LIMIT 1);
UPDATE users SET nick_name='Shirley', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688485086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13878102539', 'U13878102539', '拂晓的星', '', '13878102539', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 388, '2025-07-30 20:05:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13878102539' LIMIT 1);
UPDATE users SET nick_name='拂晓的星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 388) WHERE phone='13878102539';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18718879317', 'U18718879317', 'pink', '', '18718879317', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-30 20:04:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18718879317' LIMIT 1);
UPDATE users SET nick_name='pink', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18718879317';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18810268059', 'U18810268059', '延吉', '', '18810268059', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-30 17:53:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18810268059' LIMIT 1);
UPDATE users SET nick_name='延吉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18810268059';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13576635182', 'U13576635182', '13576635182', '', '13576635182', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-30 17:26:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13576635182' LIMIT 1);
UPDATE users SET nick_name='13576635182', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13576635182';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18018740431', 'U18018740431', '小公主婷宝', '', '18018740431', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-30 16:04:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18018740431' LIMIT 1);
UPDATE users SET nick_name='小公主婷宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18018740431';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998869722', 'U18998869722', '自由的风', '', '18998869722', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-30 15:55:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998869722' LIMIT 1);
UPDATE users SET nick_name='自由的风', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998869722';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128661910', 'U13128661910', '柠檬椰子水🥥', '', '13128661910', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 25, '2025-07-30 15:42:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128661910' LIMIT 1);
UPDATE users SET nick_name='柠檬椰子水🥥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 25) WHERE phone='13128661910';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922276761', 'U13922276761', '覃龙', '', '13922276761', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-30 13:49:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922276761' LIMIT 1);
UPDATE users SET nick_name='覃龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922276761';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15015643017', 'U15015643017', 'Arkok', '', '15015643017', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-30 12:03:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15015643017' LIMIT 1);
UPDATE users SET nick_name='Arkok', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15015643017';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18208108616', 'U18208108616', 'taketime', '', '18208108616', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-30 11:57:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18208108616' LIMIT 1);
UPDATE users SET nick_name='taketime', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18208108616';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18696085988', 'U18696085988', 'Minghao', '', '18696085988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-30 10:56:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18696085988' LIMIT 1);
UPDATE users SET nick_name='Minghao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18696085988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520330911', 'U18520330911', 'Jennie.Choi健恩', '', '18520330911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-30 10:39:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520330911' LIMIT 1);
UPDATE users SET nick_name='Jennie.Choi健恩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520330911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18211404260', 'U18211404260', '陛上', '', '18211404260', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-30 09:15:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18211404260' LIMIT 1);
UPDATE users SET nick_name='陛上', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18211404260';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802815172', 'U13802815172', '明明', '', '13802815172', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 22:35:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802815172' LIMIT 1);
UPDATE users SET nick_name='明明', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802815172';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826294486', 'U18826294486', 'leiyunxia', '', '18826294486', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 22:31:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826294486' LIMIT 1);
UPDATE users SET nick_name='leiyunxia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826294486';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15107680247', 'U15107680247', '你零姐', '', '15107680247', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 22:08:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15107680247' LIMIT 1);
UPDATE users SET nick_name='你零姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15107680247';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570951383', 'U13570951383', 'Eric', '', '13570951383', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 22:02:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570951383' LIMIT 1);
UPDATE users SET nick_name='Eric', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570951383';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682261945', 'U13682261945', 'many', '', '13682261945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 21:39:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682261945' LIMIT 1);
UPDATE users SET nick_name='many', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13682261945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817888967', 'U17817888967', '杨', '', '17817888967', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 20:57:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817888967' LIMIT 1);
UPDATE users SET nick_name='杨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817888967';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512776030', 'U13512776030', '柔和阳光🌞🌞', '', '13512776030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 20:48:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512776030' LIMIT 1);
UPDATE users SET nick_name='柔和阳光🌞🌞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512776030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17278731812', 'U17278731812', '落跑橘子🍊', '', '17278731812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 20:10:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17278731812' LIMIT 1);
UPDATE users SET nick_name='落跑橘子🍊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17278731812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18681541592', 'U18681541592', '范特西', '', '18681541592', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 19:16:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18681541592' LIMIT 1);
UPDATE users SET nick_name='范特西', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18681541592';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802900483', 'U13802900483', 'Amy', '', '13802900483', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 18:40:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802900483' LIMIT 1);
UPDATE users SET nick_name='Amy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802900483';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922773832', 'U18922773832', '🍃椰丝钵仔糕', '', '18922773832', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 18:02:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922773832' LIMIT 1);
UPDATE users SET nick_name='🍃椰丝钵仔糕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922773832';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822672297', 'U13822672297', '13822672297', '', '13822672297', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 16:46:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822672297' LIMIT 1);
UPDATE users SET nick_name='13822672297', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822672297';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922320912', 'U13922320912', 'FaFa', '', '13922320912', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 16:11:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922320912' LIMIT 1);
UPDATE users SET nick_name='FaFa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922320912';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820771421', 'U18820771421', '18820771421', '', '18820771421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 15:39:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820771421' LIMIT 1);
UPDATE users SET nick_name='18820771421', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820771421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17399702030', 'U17399702030', 'M.Matthew', '', '17399702030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 15:19:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17399702030' LIMIT 1);
UPDATE users SET nick_name='M.Matthew', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17399702030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902016987', 'U15902016987', '🍓', '', '15902016987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 15:06:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902016987' LIMIT 1);
UPDATE users SET nick_name='🍓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902016987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13002024028', 'U13002024028', 'Calvin徐', '', '13002024028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 485, '2025-07-29 14:13:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13002024028' LIMIT 1);
UPDATE users SET nick_name='Calvin徐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 485) WHERE phone='13002024028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925983545', 'U13925983545', 'olive', '', '13925983545', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 12:57:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925983545' LIMIT 1);
UPDATE users SET nick_name='olive', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925983545';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13207220336', 'U13207220336', '牛姗疯', '', '13207220336', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 12:43:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13207220336' LIMIT 1);
UPDATE users SET nick_name='牛姗疯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13207220336';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13715596401', 'U13715596401', '嘉嘉', '', '13715596401', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 12:15:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13715596401' LIMIT 1);
UPDATE users SET nick_name='嘉嘉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13715596401';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620009511', 'U18620009511', '刚', '', '18620009511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 12:04:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620009511' LIMIT 1);
UPDATE users SET nick_name='刚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620009511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922323931', 'U18922323931', '狱鹤', '', '18922323931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 10:27:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922323931' LIMIT 1);
UPDATE users SET nick_name='狱鹤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922323931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760727077', 'U13760727077', '放假不够睡', '', '13760727077', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 10:26:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760727077' LIMIT 1);
UPDATE users SET nick_name='放假不够睡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760727077';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19237600519', 'U19237600519', '单薄得小猪', '', '19237600519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 10:19:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19237600519' LIMIT 1);
UPDATE users SET nick_name='单薄得小猪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19237600519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18200745418', 'U18200745418', 'Yanus', '', '18200745418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-29 01:05:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18200745418' LIMIT 1);
UPDATE users SET nick_name='Yanus', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18200745418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502015150', 'U18502015150', 'Jo', '', '18502015150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-28 20:09:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502015150' LIMIT 1);
UPDATE users SET nick_name='Jo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18502015150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876341590', 'U17876341590', '17876341590', '', '17876341590', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-28 20:03:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876341590' LIMIT 1);
UPDATE users SET nick_name='17876341590', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876341590';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631224934', 'U13631224934', '吴', '', '13631224934', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-28 18:26:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631224934' LIMIT 1);
UPDATE users SET nick_name='吴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631224934';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802544277', 'U13802544277', '超人不会飞', '', '13802544277', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-28 16:55:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802544277' LIMIT 1);
UPDATE users SET nick_name='超人不会飞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802544277';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450489248', 'U13450489248', '吴', '', '13450489248', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-28 16:31:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450489248' LIMIT 1);
UPDATE users SET nick_name='吴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450489248';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924176738', 'U18924176738', 'last', '', '18924176738', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-28 15:33:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924176738' LIMIT 1);
UPDATE users SET nick_name='last', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924176738';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626267778', 'U15626267778', 'kk', '', '15626267778', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-28 14:32:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626267778' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626267778';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664876800', 'U18664876800', 'Mason', '', '18664876800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-28 14:26:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664876800' LIMIT 1);
UPDATE users SET nick_name='Mason', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664876800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13437873826', 'U13437873826', '哈哈', '', '13437873826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-28 14:06:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13437873826' LIMIT 1);
UPDATE users SET nick_name='哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13437873826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060602628', 'U13060602628', '晶', '', '13060602628', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-28 13:32:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060602628' LIMIT 1);
UPDATE users SET nick_name='晶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060602628';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011798056', 'U18011798056', '苏苏', '', '18011798056', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-28 08:32:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011798056' LIMIT 1);
UPDATE users SET nick_name='苏苏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011798056';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17704751131', 'U17704751131', '17704751131', '', '17704751131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 20:51:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17704751131' LIMIT 1);
UPDATE users SET nick_name='17704751131', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17704751131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798053443', 'U13798053443', 'L', '', '13798053443', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-07-27 20:50:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798053443' LIMIT 1);
UPDATE users SET nick_name='L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='13798053443';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818412127', 'U18818412127', '广州农商🏦陆66', '', '18818412127', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 20:07:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818412127' LIMIT 1);
UPDATE users SET nick_name='广州农商🏦陆66', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818412127';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265932341', 'U13265932341', '李炎富', '', '13265932341', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 20:04:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265932341' LIMIT 1);
UPDATE users SET nick_name='李炎富', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265932341';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19388244453', 'U19388244453', 'Wan晚', '', '19388244453', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 18:36:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19388244453' LIMIT 1);
UPDATE users SET nick_name='Wan晚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19388244453';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19575170440', 'U19575170440', '19575170440', '', '19575170440', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 18:31:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19575170440' LIMIT 1);
UPDATE users SET nick_name='19575170440', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19575170440';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18123992944', 'U18123992944', '18123992944', '', '18123992944', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 16:10:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18123992944' LIMIT 1);
UPDATE users SET nick_name='18123992944', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18123992944';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15574945930', 'U15574945930', '9', '', '15574945930', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 15:59:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15574945930' LIMIT 1);
UPDATE users SET nick_name='9', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15574945930';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924936080', 'U13924936080', '筱', '', '13924936080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 15:58:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924936080' LIMIT 1);
UPDATE users SET nick_name='筱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924936080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825174493', 'U18825174493', '郑先生', '', '18825174493', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 15:39:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825174493' LIMIT 1);
UPDATE users SET nick_name='郑先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825174493';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17870546867', 'U17870546867', 'Windy', '', '17870546867', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 15:30:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17870546867' LIMIT 1);
UPDATE users SET nick_name='Windy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17870546867';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632253787', 'U13632253787', 'W', '', '13632253787', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 15:28:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632253787' LIMIT 1);
UPDATE users SET nick_name='W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632253787';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632119995', 'U13632119995', 'Jocelyn🌸', '', '13632119995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 15:22:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632119995' LIMIT 1);
UPDATE users SET nick_name='Jocelyn🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632119995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17879536100', 'U17879536100', 'xiaoxiong', '', '17879536100', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 15:21:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17879536100' LIMIT 1);
UPDATE users SET nick_name='xiaoxiong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17879536100';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18879031090', 'U18879031090', 'chen', '', '18879031090', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 14:54:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18879031090' LIMIT 1);
UPDATE users SET nick_name='chen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18879031090';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902491586', 'U18902491586', 'wfbyc', '', '18902491586', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 136, '2025-07-27 14:35:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902491586' LIMIT 1);
UPDATE users SET nick_name='wfbyc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 136) WHERE phone='18902491586';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218018663', 'U18218018663', 'Leung', '', '18218018663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 13:27:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218018663' LIMIT 1);
UPDATE users SET nick_name='Leung', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218018663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622950506', 'U15622950506', 'FD粉丝', '', '15622950506', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 12:36:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622950506' LIMIT 1);
UPDATE users SET nick_name='FD粉丝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622950506';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011722642', 'U15011722642', '欣', '', '15011722642', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 12:21:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011722642' LIMIT 1);
UPDATE users SET nick_name='欣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15011722642';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609788270', 'U13609788270', 'tt', '', '13609788270', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 10:24:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609788270' LIMIT 1);
UPDATE users SET nick_name='tt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609788270';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15875339363', 'U15875339363', '15875339363', '', '15875339363', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 10:14:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15875339363' LIMIT 1);
UPDATE users SET nick_name='15875339363', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15875339363';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928580508', 'U13928580508', 'mr', '', '13928580508', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 10:09:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928580508' LIMIT 1);
UPDATE users SET nick_name='mr', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928580508';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631302216', 'U13631302216', '马', '', '13631302216', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 10:03:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631302216' LIMIT 1);
UPDATE users SET nick_name='马', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631302216';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18723087645', 'U18723087645', '？', '', '18723087645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 09:53:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18723087645' LIMIT 1);
UPDATE users SET nick_name='？', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18723087645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760613707', 'U13760613707', '黛绮', '', '13760613707', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 01:43:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760613707' LIMIT 1);
UPDATE users SET nick_name='黛绮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760613707';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521317884', 'U15521317884', 'cc', '', '15521317884', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 01:17:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521317884' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521317884';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16606688655', 'U16606688655', 'chaos', '', '16606688655', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 01:13:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16606688655' LIMIT 1);
UPDATE users SET nick_name='chaos', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16606688655';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535040930', 'U13535040930', 'wingy', '', '13535040930', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-27 00:57:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535040930' LIMIT 1);
UPDATE users SET nick_name='wingy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535040930';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15577603576', 'U15577603576', 'Xiao', '', '15577603576', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 23:28:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15577603576' LIMIT 1);
UPDATE users SET nick_name='Xiao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15577603576';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808899062', 'U13808899062', '🦄', '', '13808899062', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 22:51:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808899062' LIMIT 1);
UPDATE users SET nick_name='🦄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808899062';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535282323', 'U13535282323', 'GNAUHYUAN', '', '13535282323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 22:20:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535282323' LIMIT 1);
UPDATE users SET nick_name='GNAUHYUAN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535282323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416225997', 'U13416225997', '13416225997', '', '13416225997', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 21:43:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416225997' LIMIT 1);
UPDATE users SET nick_name='13416225997', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416225997';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13044231851', 'U13044231851', 'Vna维维', '', '13044231851', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 21:37:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13044231851' LIMIT 1);
UPDATE users SET nick_name='Vna维维', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13044231851';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521231964', 'U15521231964', 'Davis He', '', '15521231964', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 19:54:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521231964' LIMIT 1);
UPDATE users SET nick_name='Davis He', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521231964';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819163223', 'U18819163223', 'Gavin', '', '18819163223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 19:39:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819163223' LIMIT 1);
UPDATE users SET nick_name='Gavin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819163223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660053355', 'U13660053355', 'KARAKATA', '', '13660053355', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 19:29:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660053355' LIMIT 1);
UPDATE users SET nick_name='KARAKATA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660053355';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127911052', 'U18127911052', '18127911052', '', '18127911052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 18:30:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127911052' LIMIT 1);
UPDATE users SET nick_name='18127911052', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127911052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13002035051', 'U13002035051', '-', '', '13002035051', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 18:27:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13002035051' LIMIT 1);
UPDATE users SET nick_name='-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13002035051';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17675779903', 'U17675779903', 'R', '', '17675779903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 17:44:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17675779903' LIMIT 1);
UPDATE users SET nick_name='R', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17675779903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15336982657', 'U15336982657', 'nnnn', '', '15336982657', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 17:38:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15336982657' LIMIT 1);
UPDATE users SET nick_name='nnnn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15336982657';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15869025882', 'U15869025882', '馋猫', '', '15869025882', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 17:26:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15869025882' LIMIT 1);
UPDATE users SET nick_name='馋猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15869025882';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17775304060', 'U17775304060', '🌮 🌮', '', '17775304060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 16:44:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17775304060' LIMIT 1);
UPDATE users SET nick_name='🌮 🌮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17775304060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570529846', 'U13570529846', 'flashwen', '', '13570529846', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 16:40:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570529846' LIMIT 1);
UPDATE users SET nick_name='flashwen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570529846';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19526277731', 'U19526277731', '🐰咻', '', '19526277731', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 16:15:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19526277731' LIMIT 1);
UPDATE users SET nick_name='🐰咻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19526277731';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15502979396', 'U15502979396', '美兮sherry', '', '15502979396', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 16:10:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15502979396' LIMIT 1);
UPDATE users SET nick_name='美兮sherry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15502979396';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13608693878', 'U13608693878', 'Shawn', '', '13608693878', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 16:04:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13608693878' LIMIT 1);
UPDATE users SET nick_name='Shawn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13608693878';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660787044', 'U13660787044', 'bbq', '', '13660787044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 15:57:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660787044' LIMIT 1);
UPDATE users SET nick_name='bbq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660787044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819245884', 'U18819245884', 'HEI.', '', '18819245884', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 15:52:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819245884' LIMIT 1);
UPDATE users SET nick_name='HEI.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819245884';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13244832113', 'U13244832113', 'Yvonne💋', '', '13244832113', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 15:15:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13244832113' LIMIT 1);
UPDATE users SET nick_name='Yvonne💋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13244832113';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15992943931', 'U15992943931', '。coco', '', '15992943931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 896, '2025-07-26 14:38:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15992943931' LIMIT 1);
UPDATE users SET nick_name='。coco', balance=GREATEST(balance, 0.00), points=GREATEST(points, 896) WHERE phone='15992943931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503095200', 'U13503095200', '13503095200', '', '13503095200', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 14:20:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503095200' LIMIT 1);
UPDATE users SET nick_name='13503095200', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503095200';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710676436', 'U13710676436', 'zt', '', '13710676436', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 14:15:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710676436' LIMIT 1);
UPDATE users SET nick_name='zt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710676436';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533880254', 'U13533880254', 'ii', '', '13533880254', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 12:38:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533880254' LIMIT 1);
UPDATE users SET nick_name='ii', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533880254';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620148937', 'U18620148937', '莫克', '', '18620148937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 12:38:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620148937' LIMIT 1);
UPDATE users SET nick_name='莫克', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620148937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902387925', 'U13902387925', 'Jocelyn🌟', '', '13902387925', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-26 11:49:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902387925' LIMIT 1);
UPDATE users SET nick_name='Jocelyn🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13902387925';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928802690', 'U13928802690', '111', '', '13928802690', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-26 11:48:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928802690' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13928802690';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13543007449', 'U13543007449', '小芯', '', '13543007449', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 11:14:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13543007449' LIMIT 1);
UPDATE users SET nick_name='小芯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13543007449';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610211840', 'U13610211840', '7', '', '13610211840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 10:28:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610211840' LIMIT 1);
UPDATE users SET nick_name='7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610211840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922071763', 'U13922071763', 'Y', '', '13922071763', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 10:13:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922071763' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922071763';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15811898919', 'U15811898919', '左', '', '15811898919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 09:54:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15811898919' LIMIT 1);
UPDATE users SET nick_name='左', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15811898919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819202895', 'U18819202895', '微醺虎皮🍰', '', '18819202895', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 09:37:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819202895' LIMIT 1);
UPDATE users SET nick_name='微醺虎皮🍰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819202895';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15002007027', 'U15002007027', 'Doris', '', '15002007027', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 09:31:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15002007027' LIMIT 1);
UPDATE users SET nick_name='Doris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15002007027';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15185674623', 'U15185674623', 'Dwen', '', '15185674623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 09:25:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15185674623' LIMIT 1);
UPDATE users SET nick_name='Dwen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15185674623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565344475', 'U18565344475', '海虎', '', '18565344475', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-26 00:22:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565344475' LIMIT 1);
UPDATE users SET nick_name='海虎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565344475';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19878700085', 'U19878700085', 'nn', '', '19878700085', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 23:57:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19878700085' LIMIT 1);
UPDATE users SET nick_name='nn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19878700085';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822223600', 'U13822223600', 'pop', '', '13822223600', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 23:37:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822223600' LIMIT 1);
UPDATE users SET nick_name='pop', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822223600';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989891068', 'U15989891068', 'Zep', '', '15989891068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 22:54:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989891068' LIMIT 1);
UPDATE users SET nick_name='Zep', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989891068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18851750475', 'U18851750475', '泰瑞宝', '', '18851750475', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 22:25:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18851750475' LIMIT 1);
UPDATE users SET nick_name='泰瑞宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18851750475';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18245042569', 'U18245042569', '寻梦', '', '18245042569', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 22:25:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18245042569' LIMIT 1);
UPDATE users SET nick_name='寻梦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18245042569';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927454729', 'U19927454729', 'J', '', '19927454729', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 21:42:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927454729' LIMIT 1);
UPDATE users SET nick_name='J', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927454729';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13912989618', 'U13912989618', 'kks', '', '13912989618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 21:32:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13912989618' LIMIT 1);
UPDATE users SET nick_name='kks', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13912989618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13691849701', 'U13691849701', 'JW', '', '13691849701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 20:48:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13691849701' LIMIT 1);
UPDATE users SET nick_name='JW', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13691849701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13420825654', 'U13420825654', 'SoSo', '', '13420825654', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 20:17:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13420825654' LIMIT 1);
UPDATE users SET nick_name='SoSo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13420825654';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826213353', 'U13826213353', 'Joeyqmw', '', '13826213353', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-07-25 20:03:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826213353' LIMIT 1);
UPDATE users SET nick_name='Joeyqmw', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13826213353';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600451534', 'U13600451534', '女神容', '', '13600451534', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-07-25 19:46:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600451534' LIMIT 1);
UPDATE users SET nick_name='女神容', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13600451534';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620048441', 'U18620048441', '18620048441', '', '18620048441', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 18:52:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620048441' LIMIT 1);
UPDATE users SET nick_name='18620048441', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620048441';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929595549', 'U13929595549', '13929595549', '', '13929595549', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 15:49:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929595549' LIMIT 1);
UPDATE users SET nick_name='13929595549', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929595549';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18851842952', 'U18851842952', '18851842952', '', '18851842952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 15:48:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18851842952' LIMIT 1);
UPDATE users SET nick_name='18851842952', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18851842952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600636447', 'U13600636447', 'S8I7', '', '13600636447', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 14:50:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600636447' LIMIT 1);
UPDATE users SET nick_name='S8I7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600636447';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120671102', 'U19120671102', '^O^', '', '19120671102', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 13:35:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120671102' LIMIT 1);
UPDATE users SET nick_name='^O^', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120671102';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13112245734', 'U13112245734', '13112245734', '', '13112245734', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 13:22:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13112245734' LIMIT 1);
UPDATE users SET nick_name='13112245734', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13112245734';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18824113426', 'U18824113426', '18824113426', '', '18824113426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 12:58:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18824113426' LIMIT 1);
UPDATE users SET nick_name='18824113426', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18824113426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570955888', 'U13570955888', '大大猪raymond', '', '13570955888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 12:37:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570955888' LIMIT 1);
UPDATE users SET nick_name='大大猪raymond', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570955888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610312633', 'U13610312633', '陈大力本人', '', '13610312633', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 10:07:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610312633' LIMIT 1);
UPDATE users SET nick_name='陈大力本人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610312633';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820248041', 'U15820248041', '1', '', '15820248041', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-25 09:18:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820248041' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820248041';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13077511730', 'U13077511730', '没信号', '', '13077511730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 23:10:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13077511730' LIMIT 1);
UPDATE users SET nick_name='没信号', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13077511730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427536874', 'U13427536874', 'H.H', '', '13427536874', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 20:38:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427536874' LIMIT 1);
UPDATE users SET nick_name='H.H', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427536874';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660174492', 'U13660174492', 'JY13660174492黄荣榛', '', '13660174492', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 20:28:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660174492' LIMIT 1);
UPDATE users SET nick_name='JY13660174492黄荣榛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660174492';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15814059972', 'U15814059972', '不会打球的凯文', '', '15814059972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 19:40:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15814059972' LIMIT 1);
UPDATE users SET nick_name='不会打球的凯文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15814059972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13017394400', 'U13017394400', 'Rickey', '', '13017394400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 19:22:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13017394400' LIMIT 1);
UPDATE users SET nick_name='Rickey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13017394400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923523336', 'U13923523336', '刘欢', '', '13923523336', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 18:43:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923523336' LIMIT 1);
UPDATE users SET nick_name='刘欢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13923523336';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503002799', 'U13503002799', '腾少', '', '13503002799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 48, '2025-07-24 18:26:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503002799' LIMIT 1);
UPDATE users SET nick_name='腾少', balance=GREATEST(balance, 0.00), points=GREATEST(points, 48) WHERE phone='13503002799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13672837091', 'U13672837091', 'Belle', '', '13672837091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 18:16:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13672837091' LIMIT 1);
UPDATE users SET nick_name='Belle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13672837091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242432185', 'U13242432185', 'Eee', '', '13242432185', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 17:49:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242432185' LIMIT 1);
UPDATE users SET nick_name='Eee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242432185';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680295431', 'U18680295431', '劳志松', '', '18680295431', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2025-07-24 17:45:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680295431' LIMIT 1);
UPDATE users SET nick_name='劳志松', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='18680295431';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19521060956', 'U19521060956', '佳', '', '19521060956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 17:43:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19521060956' LIMIT 1);
UPDATE users SET nick_name='佳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19521060956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202200504', 'U13202200504', '蔡润东', '', '13202200504', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 16:31:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202200504' LIMIT 1);
UPDATE users SET nick_name='蔡润东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202200504';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533888597', 'U13533888597', 'co', '', '13533888597', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 16:29:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533888597' LIMIT 1);
UPDATE users SET nick_name='co', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533888597';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822288928', 'U13822288928', 'Ann', '', '13822288928', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 16:29:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822288928' LIMIT 1);
UPDATE users SET nick_name='Ann', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822288928';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570490871', 'U13570490871', 'superbug', '', '13570490871', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-07-24 16:18:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570490871' LIMIT 1);
UPDATE users SET nick_name='superbug', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='13570490871';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13620406002', 'U13620406002', 'Huining', '', '13620406002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 15:14:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13620406002' LIMIT 1);
UPDATE users SET nick_name='Huining', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13620406002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726231958', 'U13726231958', 'Teddy_Bear', '', '13726231958', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 14:34:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726231958' LIMIT 1);
UPDATE users SET nick_name='Teddy_Bear', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726231958';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660149966', 'U13660149966', 'Sherry🧸', '', '13660149966', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 14:34:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660149966' LIMIT 1);
UPDATE users SET nick_name='Sherry🧸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660149966';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640245385', 'U13640245385', 'Jim', '', '13640245385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 14:26:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640245385' LIMIT 1);
UPDATE users SET nick_name='Jim', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640245385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19928306721', 'U19928306721', 'Siho😬', '', '19928306721', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 14:24:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19928306721' LIMIT 1);
UPDATE users SET nick_name='Siho😬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19928306721';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19240138122', 'U19240138122', '小V', '', '19240138122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 14:06:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19240138122' LIMIT 1);
UPDATE users SET nick_name='小V', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19240138122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631424586', 'U13631424586', '', '', '13631424586', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-07-24 13:53:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631424586' LIMIT 1);
UPDATE users SET nick_name='', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='13631424586';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521167313', 'U15521167313', 'Li', '', '15521167313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-24 13:09:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521167313' LIMIT 1);
UPDATE users SET nick_name='Li', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15521167313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13959956379', 'U13959956379', 'Jeff 「梓榕」', '', '13959956379', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 12:43:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13959956379' LIMIT 1);
UPDATE users SET nick_name='Jeff 「梓榕」', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13959956379';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876364325', 'U17876364325', '咸鱼不粘锅', '', '17876364325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 12:37:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876364325' LIMIT 1);
UPDATE users SET nick_name='咸鱼不粘锅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876364325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392142886', 'U13392142886', '星', '', '13392142886', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 12:24:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392142886' LIMIT 1);
UPDATE users SET nick_name='星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392142886';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760629119', 'U13760629119', 'YING', '', '13760629119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 11:39:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760629119' LIMIT 1);
UPDATE users SET nick_name='YING', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760629119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922757447', 'U13922757447', '番薯', '', '13922757447', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 11:33:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922757447' LIMIT 1);
UPDATE users SET nick_name='番薯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922757447';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15767886109', 'U15767886109', '温度', '', '15767886109', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 11:17:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15767886109' LIMIT 1);
UPDATE users SET nick_name='温度', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15767886109';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18532022193', 'U18532022193', 'Future...', '', '18532022193', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-24 10:43:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18532022193' LIMIT 1);
UPDATE users SET nick_name='Future...', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18532022193';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602039186', 'U18602039186', 'Martin宸宸', '', '18602039186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-23 21:51:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602039186' LIMIT 1);
UPDATE users SET nick_name='Martin宸宸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602039186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560029801', 'U13560029801', '大娘🤪', '', '13560029801', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-23 20:40:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560029801' LIMIT 1);
UPDATE users SET nick_name='大娘🤪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560029801';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920134054', 'U15920134054', 'ETOW-TIM UUP .', '', '15920134054', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-07-23 19:54:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920134054' LIMIT 1);
UPDATE users SET nick_name='ETOW-TIM UUP .', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='15920134054';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826161084', 'U13826161084', '板栗少年橙', '', '13826161084', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-23 18:19:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826161084' LIMIT 1);
UPDATE users SET nick_name='板栗少年橙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826161084';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18344575168', 'U18344575168', '小c在睡觉', '', '18344575168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-23 18:13:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18344575168' LIMIT 1);
UPDATE users SET nick_name='小c在睡觉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18344575168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022686756', 'U18022686756', '周周', '', '18022686756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-23 17:55:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022686756' LIMIT 1);
UPDATE users SET nick_name='周周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022686756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697700601', 'U13697700601', 'jiu1', '', '13697700601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-23 16:36:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697700601' LIMIT 1);
UPDATE users SET nick_name='jiu1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697700601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15767025528', 'U15767025528', '蔡', '', '15767025528', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-23 15:43:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15767025528' LIMIT 1);
UPDATE users SET nick_name='蔡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15767025528';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13910909532', 'U13910909532', 'gavin', '', '13910909532', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-23 15:20:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13910909532' LIMIT 1);
UPDATE users SET nick_name='gavin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13910909532';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710767749', 'U13710767749', 'Dragon', '', '13710767749', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-23 15:12:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710767749' LIMIT 1);
UPDATE users SET nick_name='Dragon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710767749';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622167601', 'U15622167601', 'Manornasa', '', '15622167601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-23 10:29:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622167601' LIMIT 1);
UPDATE users SET nick_name='Manornasa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622167601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660418794', 'U13660418794', 'Julia', '', '13660418794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-22 22:17:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660418794' LIMIT 1);
UPDATE users SET nick_name='Julia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660418794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13117126530', 'U13117126530', '谢', '', '13117126530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-22 21:42:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13117126530' LIMIT 1);
UPDATE users SET nick_name='谢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13117126530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15810052292', 'U15810052292', 'HEBE ·赫柏-春夏🍃', '', '15810052292', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-22 18:59:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15810052292' LIMIT 1);
UPDATE users SET nick_name='HEBE ·赫柏-春夏🍃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15810052292';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14743568270', 'U14743568270', '14743568270', '', '14743568270', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-22 18:57:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14743568270' LIMIT 1);
UPDATE users SET nick_name='14743568270', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14743568270';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13672472391', 'U13672472391', '大军哥', '', '13672472391', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-22 18:51:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13672472391' LIMIT 1);
UPDATE users SET nick_name='大军哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13672472391';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544503391', 'U13544503391', 'jeanie', '', '13544503391', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-22 15:19:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544503391' LIMIT 1);
UPDATE users SET nick_name='jeanie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544503391';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18627022444', 'U18627022444', '18627022444', '', '18627022444', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-22 14:28:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18627022444' LIMIT 1);
UPDATE users SET nick_name='18627022444', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18627022444';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13620410380', 'U13620410380', 'uu妹', '', '13620410380', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 21:52:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13620410380' LIMIT 1);
UPDATE users SET nick_name='uu妹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13620410380';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18050696121', 'U18050696121', 'ff', '', '18050696121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 19:06:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18050696121' LIMIT 1);
UPDATE users SET nick_name='ff', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18050696121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620252299', 'U18620252299', 'Rain', '', '18620252299', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 18:46:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620252299' LIMIT 1);
UPDATE users SET nick_name='Rain', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620252299';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026217977', 'U18026217977', '18026217977', '', '18026217977', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 18:29:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026217977' LIMIT 1);
UPDATE users SET nick_name='18026217977', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026217977';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13226617532', 'U13226617532', 'Ivy_Cheung', '', '13226617532', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 18:10:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13226617532' LIMIT 1);
UPDATE users SET nick_name='Ivy_Cheung', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13226617532';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544595871', 'U13544595871', '领', '', '13544595871', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 17:19:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544595871' LIMIT 1);
UPDATE users SET nick_name='领', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544595871';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18551855976', 'U18551855976', 'Mengty.', '', '18551855976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 17:15:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18551855976' LIMIT 1);
UPDATE users SET nick_name='Mengty.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18551855976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102041771', 'U15102041771', '.', '', '15102041771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 16:55:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102041771' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15102041771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620284316', 'U18620284316', 'zzzhu', '', '18620284316', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 16:41:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620284316' LIMIT 1);
UPDATE users SET nick_name='zzzhu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620284316';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18968457086', 'U18968457086', '18968457086', '', '18968457086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 16:33:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18968457086' LIMIT 1);
UPDATE users SET nick_name='18968457086', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18968457086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640899334', 'U13640899334', 'zhaaangyaaan', '', '13640899334', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 16:22:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640899334' LIMIT 1);
UPDATE users SET nick_name='zhaaangyaaan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640899334';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622192269', 'U15622192269', '未明', '', '15622192269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 16:08:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622192269' LIMIT 1);
UPDATE users SET nick_name='未明', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622192269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13432021186', 'U13432021186', 'zwz', '', '13432021186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 15:48:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13432021186' LIMIT 1);
UPDATE users SET nick_name='zwz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13432021186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560223683', 'U13560223683', '13560223683', '', '13560223683', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 14:46:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560223683' LIMIT 1);
UPDATE users SET nick_name='13560223683', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560223683';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533642862', 'U13533642862', '婻婻', '', '13533642862', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 14:35:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533642862' LIMIT 1);
UPDATE users SET nick_name='婻婻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533642862';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13048821614', 'U13048821614', '_Jonty', '', '13048821614', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 656, '2025-07-21 14:30:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13048821614' LIMIT 1);
UPDATE users SET nick_name='_Jonty', balance=GREATEST(balance, 0.00), points=GREATEST(points, 656) WHERE phone='13048821614';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13411459225', 'U13411459225', '飞马律師', '', '13411459225', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 14:25:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13411459225' LIMIT 1);
UPDATE users SET nick_name='飞马律師', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13411459225';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826138627', 'U18826138627', '林生', '', '18826138627', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 14:14:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826138627' LIMIT 1);
UPDATE users SET nick_name='林生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826138627';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711103723', 'U13711103723', 'YY', '', '13711103723', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 13:35:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711103723' LIMIT 1);
UPDATE users SET nick_name='YY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711103723';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662289425', 'U13662289425', '勤哥哥~', '', '13662289425', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 11:51:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662289425' LIMIT 1);
UPDATE users SET nick_name='勤哥哥~', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662289425';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18757184096', 'U18757184096', '飞呀', '', '18757184096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 11:10:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18757184096' LIMIT 1);
UPDATE users SET nick_name='飞呀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18757184096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15089879643', 'U15089879643', 'Estelle', '', '15089879643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 11:02:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15089879643' LIMIT 1);
UPDATE users SET nick_name='Estelle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15089879643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535201533', 'U13535201533', '日佳', '', '13535201533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 10:19:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535201533' LIMIT 1);
UPDATE users SET nick_name='日佳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535201533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918600565', 'U15918600565', 'JKGDF', '', '15918600565', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 10:18:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918600565' LIMIT 1);
UPDATE users SET nick_name='JKGDF', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918600565';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724066778', 'U13724066778', '沃富林：曹生', '', '13724066778', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 09:55:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724066778' LIMIT 1);
UPDATE users SET nick_name='沃富林：曹生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724066778';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826262292', 'U13826262292', 'XIAO', '', '13826262292', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 09:46:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826262292' LIMIT 1);
UPDATE users SET nick_name='XIAO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826262292';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620854788', 'U18620854788', 'Gorden', '', '18620854788', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-21 08:40:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620854788' LIMIT 1);
UPDATE users SET nick_name='Gorden', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620854788';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247373226', 'U13247373226', '13247373226', '', '13247373226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 21:11:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247373226' LIMIT 1);
UPDATE users SET nick_name='13247373226', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13247373226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018441031', 'U15018441031', '紫琪', '', '15018441031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 18:37:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018441031' LIMIT 1);
UPDATE users SET nick_name='紫琪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018441031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312023168', 'U18312023168', '墩墩', '', '18312023168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 17:49:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312023168' LIMIT 1);
UPDATE users SET nick_name='墩墩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312023168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520719941', 'U18520719941', '彭彭鸭', '', '18520719941', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 17:13:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520719941' LIMIT 1);
UPDATE users SET nick_name='彭彭鸭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520719941';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580558960', 'U13580558960', '洋洋', '', '13580558960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 17:08:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580558960' LIMIT 1);
UPDATE users SET nick_name='洋洋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580558960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920582265', 'U15920582265', '智文', '', '15920582265', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 16:22:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920582265' LIMIT 1);
UPDATE users SET nick_name='智文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920582265';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18824108698', 'U18824108698', '18824108698', '', '18824108698', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 16:17:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18824108698' LIMIT 1);
UPDATE users SET nick_name='18824108698', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18824108698';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560146815', 'U13560146815', '小强', '', '13560146815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 16:09:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560146815' LIMIT 1);
UPDATE users SET nick_name='小强', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560146815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430355901', 'U13430355901', '林兆启', '', '13430355901', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 16:08:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430355901' LIMIT 1);
UPDATE users SET nick_name='林兆启', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430355901';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316123089', 'U13316123089', '🍃', '', '13316123089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-20 16:05:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316123089' LIMIT 1);
UPDATE users SET nick_name='🍃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13316123089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18344303097', 'U18344303097', '兔啊兔', '', '18344303097', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 14:16:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18344303097' LIMIT 1);
UPDATE users SET nick_name='兔啊兔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18344303097';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18211475827', 'U18211475827', 'Kkeii.', '', '18211475827', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 13:29:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18211475827' LIMIT 1);
UPDATE users SET nick_name='Kkeii.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18211475827';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818822625', 'U15818822625', '阿威', '', '15818822625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 12:52:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818822625' LIMIT 1);
UPDATE users SET nick_name='阿威', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818822625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025187942', 'U13025187942', 'dd', '', '13025187942', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 12:33:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025187942' LIMIT 1);
UPDATE users SET nick_name='dd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025187942';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122357892', 'U18122357892', 'dd', '', '18122357892', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 12:30:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122357892' LIMIT 1);
UPDATE users SET nick_name='dd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122357892';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535158405', 'U13535158405', '13535158405', '', '13535158405', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 12:28:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535158405' LIMIT 1);
UPDATE users SET nick_name='13535158405', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535158405';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427567139', 'U13427567139', 'K', '', '13427567139', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 12:15:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427567139' LIMIT 1);
UPDATE users SET nick_name='K', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427567139';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13112389275', 'U13112389275', 'woy', '', '13112389275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 11:13:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13112389275' LIMIT 1);
UPDATE users SET nick_name='woy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13112389275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15170141072', 'U15170141072', '春夏桉', '', '15170141072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 11:03:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15170141072' LIMIT 1);
UPDATE users SET nick_name='春夏桉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15170141072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533971972', 'U13533971972', '小小珠', '', '13533971972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2025-07-20 10:58:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533971972' LIMIT 1);
UPDATE users SET nick_name='小小珠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='13533971972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19326432681', 'U19326432681', 'ZZYaaa', '', '19326432681', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-07-20 10:37:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19326432681' LIMIT 1);
UPDATE users SET nick_name='ZZYaaa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='19326432681';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13026799007', 'U13026799007', 'tt', '', '13026799007', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 10:27:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13026799007' LIMIT 1);
UPDATE users SET nick_name='tt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13026799007';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318844674', 'U13318844674', 'Eira', '', '13318844674', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 10:25:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318844674' LIMIT 1);
UPDATE users SET nick_name='Eira', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318844674';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19530204636', 'U19530204636', '你好', '', '19530204636', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-20 10:04:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19530204636' LIMIT 1);
UPDATE users SET nick_name='你好', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19530204636';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18042876673', 'U18042876673', '啊啊啊啊', '', '18042876673', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 22:45:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18042876673' LIMIT 1);
UPDATE users SET nick_name='啊啊啊啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18042876673';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13927823399', 'U13927823399', '小梅', '', '13927823399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 22:28:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13927823399' LIMIT 1);
UPDATE users SET nick_name='小梅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13927823399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18318472729', 'U18318472729', '例牌冻柠茶', '', '18318472729', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 21:28:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18318472729' LIMIT 1);
UPDATE users SET nick_name='例牌冻柠茶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18318472729';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889989376', 'U15889989376', 'hao', '', '15889989376', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 20:28:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889989376' LIMIT 1);
UPDATE users SET nick_name='hao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889989376';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18684958256', 'U18684958256', 'Jim2', '', '18684958256', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 20:14:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18684958256' LIMIT 1);
UPDATE users SET nick_name='Jim2', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18684958256';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826237181', 'U18826237181', 'JIM', '', '18826237181', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 20:05:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826237181' LIMIT 1);
UPDATE users SET nick_name='JIM', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826237181';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620429775', 'U16620429775', 'Takken', '', '16620429775', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 19:08:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620429775' LIMIT 1);
UPDATE users SET nick_name='Takken', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620429775';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18676068874', 'U18676068874', '懒得标准', '', '18676068874', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 18:55:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18676068874' LIMIT 1);
UPDATE users SET nick_name='懒得标准', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18676068874';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113469048', 'U15113469048', '追风→17', '', '15113469048', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 18:25:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113469048' LIMIT 1);
UPDATE users SET nick_name='追风→17', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113469048';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828488352', 'U13828488352', '蚊滋仔🌈', '', '13828488352', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 17:16:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828488352' LIMIT 1);
UPDATE users SET nick_name='蚊滋仔🌈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828488352';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631273968', 'U13631273968', 'q', '', '13631273968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 16:21:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631273968' LIMIT 1);
UPDATE users SET nick_name='q', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631273968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560125034', 'U13560125034', '海棠', '', '13560125034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 16:11:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560125034' LIMIT 1);
UPDATE users SET nick_name='海棠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560125034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15767755278', 'U15767755278', 'zo', '', '15767755278', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 16:02:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15767755278' LIMIT 1);
UPDATE users SET nick_name='zo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15767755278';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246427929', 'U13246427929', 'Zwing', '', '13246427929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 16:01:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246427929' LIMIT 1);
UPDATE users SET nick_name='Zwing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246427929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924595819', 'U18924595819', '君', '', '18924595819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 15:37:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924595819' LIMIT 1);
UPDATE users SET nick_name='君', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924595819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922201552', 'U13922201552', '晓晓2号', '', '13922201552', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 15:09:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922201552' LIMIT 1);
UPDATE users SET nick_name='晓晓2号', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922201552';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13187217747', 'U13187217747', 'Love_Xiao', '', '13187217747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 14:15:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13187217747' LIMIT 1);
UPDATE users SET nick_name='Love_Xiao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13187217747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826100080', 'U18826100080', '瓜', '', '18826100080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 14:01:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826100080' LIMIT 1);
UPDATE users SET nick_name='瓜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826100080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682293723', 'U13682293723', 'Tracy', '', '13682293723', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 13:54:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682293723' LIMIT 1);
UPDATE users SET nick_name='Tracy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13682293723';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620109632', 'U16620109632', 'mhfvhhvv', '', '16620109632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 13:35:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620109632' LIMIT 1);
UPDATE users SET nick_name='mhfvhhvv', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620109632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527861989', 'U13527861989', 'Doris', '', '13527861989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 13:05:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527861989' LIMIT 1);
UPDATE users SET nick_name='Doris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527861989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13226234511', 'U13226234511', 'James🐯', '', '13226234511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 12:55:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13226234511' LIMIT 1);
UPDATE users SET nick_name='James🐯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13226234511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678999226', 'U13678999226', 'Iiiiris', '', '13678999226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 12:42:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678999226' LIMIT 1);
UPDATE users SET nick_name='Iiiiris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13678999226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632396434', 'U13632396434', '烟烟', '', '13632396434', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 12:19:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632396434' LIMIT 1);
UPDATE users SET nick_name='烟烟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632396434';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926468372', 'U13926468372', '欣', '', '13926468372', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 11:56:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926468372' LIMIT 1);
UPDATE users SET nick_name='欣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926468372';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520255334', 'U18520255334', 'Gaki🧃', '', '18520255334', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 10:52:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520255334' LIMIT 1);
UPDATE users SET nick_name='Gaki🧃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520255334';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725246418', 'U13725246418', '77', '', '13725246418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 10:50:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725246418' LIMIT 1);
UPDATE users SET nick_name='77', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725246418';
