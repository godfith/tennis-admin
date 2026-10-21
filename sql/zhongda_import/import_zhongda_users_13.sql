SET NAMES utf8mb4;
-- 中大店用户导入 part 13 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18582465609', 'U18582465609', 'Neil', '', '18582465609', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-04-09 19:19:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18582465609' LIMIT 1);
UPDATE users SET nick_name='Neil', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18582465609';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17727602010', 'U17727602010', '🌸 Daney.Lee🍒', '', '17727602010', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 19:18:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17727602010' LIMIT 1);
UPDATE users SET nick_name='🌸 Daney.Lee🍒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17727602010';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15336558259', 'U15336558259', '15336558259', '', '15336558259', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 19:08:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15336558259' LIMIT 1);
UPDATE users SET nick_name='15336558259', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15336558259';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18629682156', 'U18629682156', '默', '', '18629682156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 18:25:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18629682156' LIMIT 1);
UPDATE users SET nick_name='默', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18629682156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988745163', 'U18988745163', '番茄旦', '', '18988745163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 17:59:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988745163' LIMIT 1);
UPDATE users SET nick_name='番茄旦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988745163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928737400', 'U18928737400', '汪苏米', '', '18928737400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 17:58:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928737400' LIMIT 1);
UPDATE users SET nick_name='汪苏米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928737400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632380818', 'U13632380818', '中大网球搭子', '', '13632380818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 17:35:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632380818' LIMIT 1);
UPDATE users SET nick_name='中大网球搭子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632380818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825088498', 'U13825088498', '不要艺谋要耶', '', '13825088498', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 16:49:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825088498' LIMIT 1);
UPDATE users SET nick_name='不要艺谋要耶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825088498';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680274280', 'U18680274280', 'Ally', '', '18680274280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 16:47:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680274280' LIMIT 1);
UPDATE users SET nick_name='Ally', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680274280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15180403174', 'U15180403174', 'Turdidae南山', '', '15180403174', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 14:24:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15180403174' LIMIT 1);
UPDATE users SET nick_name='Turdidae南山', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15180403174';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416473363', 'U13416473363', '咿呀咿呀哟', '', '13416473363', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 11:00:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416473363' LIMIT 1);
UPDATE users SET nick_name='咿呀咿呀哟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416473363';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18621651983', 'U18621651983', '青华', '', '18621651983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 09:45:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18621651983' LIMIT 1);
UPDATE users SET nick_name='青华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18621651983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826478805', 'U13826478805', '会说话的K线📈', '', '13826478805', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 09:34:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826478805' LIMIT 1);
UPDATE users SET nick_name='会说话的K线📈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826478805';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217084496', 'U15217084496', '15217084496', '', '15217084496', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-08 20:38:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217084496' LIMIT 1);
UPDATE users SET nick_name='15217084496', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217084496';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18087986699', 'U18087986699', '张', '', '18087986699', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-08 19:45:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18087986699' LIMIT 1);
UPDATE users SET nick_name='张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18087986699';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17771585935', 'U17771585935', '17771585935', '', '17771585935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-08 19:22:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17771585935' LIMIT 1);
UPDATE users SET nick_name='17771585935', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17771585935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826074686', 'U18826074686', '过来', '', '18826074686', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-04-08 18:32:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826074686' LIMIT 1);
UPDATE users SET nick_name='过来', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='18826074686';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15827843588', 'U15827843588', '祥年Abby', '', '15827843588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-08 17:55:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15827843588' LIMIT 1);
UPDATE users SET nick_name='祥年Abby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15827843588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626274667', 'U15626274667', '波妞妞学球', '', '15626274667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-08 16:36:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626274667' LIMIT 1);
UPDATE users SET nick_name='波妞妞学球', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626274667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711764048', 'U13711764048', '13711764048', '', '13711764048', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-08 15:58:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711764048' LIMIT 1);
UPDATE users SET nick_name='13711764048', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711764048';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989123842', 'U15989123842', 'JimJ', '', '15989123842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-08 15:35:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989123842' LIMIT 1);
UPDATE users SET nick_name='JimJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989123842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503025004', 'U13503025004', '13503025004', '', '13503025004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-08 15:24:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503025004' LIMIT 1);
UPDATE users SET nick_name='13503025004', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503025004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613954814', 'U18613954814', '薛定谔的rrrose', '', '18613954814', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-08 14:29:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613954814' LIMIT 1);
UPDATE users SET nick_name='薛定谔的rrrose', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613954814';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539483184', 'U13539483184', '13539483184', '', '13539483184', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-08 13:45:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539483184' LIMIT 1);
UPDATE users SET nick_name='13539483184', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539483184';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427580404', 'U13427580404', 'Mei', '', '13427580404', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-08 13:34:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427580404' LIMIT 1);
UPDATE users SET nick_name='Mei', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427580404';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120580337', 'U19120580337', 'nono', '', '19120580337', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 999, '2025-04-08 13:12:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120580337' LIMIT 1);
UPDATE users SET nick_name='nono', balance=GREATEST(balance, 0.00), points=GREATEST(points, 999) WHERE phone='19120580337';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533668018', 'U13533668018', '悦', '', '13533668018', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-04-08 12:53:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533668018' LIMIT 1);
UPDATE users SET nick_name='悦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13533668018';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18501743608', 'U18501743608', '陈星妤', '', '18501743608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 675, '2025-04-08 12:49:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18501743608' LIMIT 1);
UPDATE users SET nick_name='陈星妤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 675) WHERE phone='18501743608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829798630', 'U13829798630', '不知道', '', '13829798630', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-08 12:43:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829798630' LIMIT 1);
UPDATE users SET nick_name='不知道', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829798630';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928883382', 'U13928883382', '乐融融', '', '13928883382', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 22:38:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928883382' LIMIT 1);
UPDATE users SET nick_name='乐融融', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928883382';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18579068268', 'U18579068268', '18579068268', '', '18579068268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 19:25:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18579068268' LIMIT 1);
UPDATE users SET nick_name='18579068268', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18579068268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143660063', 'U13143660063', 'jiayu.', '', '13143660063', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 19:14:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143660063' LIMIT 1);
UPDATE users SET nick_name='jiayu.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143660063';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989274144', 'U15989274144', '15989274144', '', '15989274144', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 17:38:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989274144' LIMIT 1);
UPDATE users SET nick_name='15989274144', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989274144';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724170527', 'U13724170527', '13724170527', '', '13724170527', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 15:44:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724170527' LIMIT 1);
UPDATE users SET nick_name='13724170527', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724170527';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632350109', 'U13632350109', '海帆Heaven', '', '13632350109', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 15:40:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632350109' LIMIT 1);
UPDATE users SET nick_name='海帆Heaven', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632350109';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520321602', 'U18520321602', '18520321602', '', '18520321602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 14:56:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520321602' LIMIT 1);
UPDATE users SET nick_name='18520321602', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520321602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919663690', 'U15919663690', '15919663690', '', '15919663690', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 14:33:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919663690' LIMIT 1);
UPDATE users SET nick_name='15919663690', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919663690';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13413483134', 'U13413483134', '蓉蓉', '', '13413483134', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 14:14:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13413483134' LIMIT 1);
UPDATE users SET nick_name='蓉蓉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13413483134';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626496563', 'U15626496563', '15626496563', '', '15626496563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 12:46:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626496563' LIMIT 1);
UPDATE users SET nick_name='15626496563', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626496563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17818200344', 'U17818200344', '伍六七', '', '17818200344', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 11:46:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17818200344' LIMIT 1);
UPDATE users SET nick_name='伍六七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17818200344';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620007333', 'U18620007333', '18620007333', '', '18620007333', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-07 11:00:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620007333' LIMIT 1);
UPDATE users SET nick_name='18620007333', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620007333';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13266162613', 'U13266162613', '悦悦', '', '13266162613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 18:06:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13266162613' LIMIT 1);
UPDATE users SET nick_name='悦悦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13266162613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923819946', 'U13923819946', 'zhh', '', '13923819946', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-06 17:45:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923819946' LIMIT 1);
UPDATE users SET nick_name='zhh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13923819946';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13424111139', 'U13424111139', 'nielskiki', '', '13424111139', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 16:47:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13424111139' LIMIT 1);
UPDATE users SET nick_name='nielskiki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13424111139';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538940328', 'U13538940328', 'Macy吖', '', '13538940328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 16:41:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538940328' LIMIT 1);
UPDATE users SET nick_name='Macy吖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538940328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824061412', 'U13824061412', 'Leah', '', '13824061412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 15:20:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824061412' LIMIT 1);
UPDATE users SET nick_name='Leah', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824061412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13789152556', 'U13789152556', '13789152556', '', '13789152556', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 15:04:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13789152556' LIMIT 1);
UPDATE users SET nick_name='13789152556', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13789152556';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924393810', 'U13924393810', '椰椰跳水里游过海🌊', '', '13924393810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 14:39:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924393810' LIMIT 1);
UPDATE users SET nick_name='椰椰跳水里游过海🌊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924393810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450247212', 'U13450247212', '喔喔庄', '', '13450247212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 14:12:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450247212' LIMIT 1);
UPDATE users SET nick_name='喔喔庄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450247212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018431361', 'U15018431361', 'Zeng666', '', '15018431361', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 13:59:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018431361' LIMIT 1);
UPDATE users SET nick_name='Zeng666', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018431361';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17369588133', 'U17369588133', '小兔快跑', '', '17369588133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 13:37:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17369588133' LIMIT 1);
UPDATE users SET nick_name='小兔快跑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17369588133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600055548', 'U13600055548', '13600055548', '', '13600055548', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 13:32:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600055548' LIMIT 1);
UPDATE users SET nick_name='13600055548', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600055548';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18328584857', 'U18328584857', 'Julia', '', '18328584857', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 13:19:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18328584857' LIMIT 1);
UPDATE users SET nick_name='Julia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18328584857';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17673283920', 'U17673283920', 'Pinky', '', '17673283920', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 12:54:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17673283920' LIMIT 1);
UPDATE users SET nick_name='Pinky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17673283920';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929576053', 'U13929576053', '天园', '', '13929576053', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-06 12:10:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929576053' LIMIT 1);
UPDATE users SET nick_name='天园', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13929576053';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160822085', 'U13160822085', '13160822085', '', '13160822085', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 11:47:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160822085' LIMIT 1);
UPDATE users SET nick_name='13160822085', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13160822085';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927559175', 'U19927559175', 'Peekaboo', '', '19927559175', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 10:37:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927559175' LIMIT 1);
UPDATE users SET nick_name='Peekaboo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927559175';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13122288288', 'U13122288288', 'ZZ', '', '13122288288', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-06 10:18:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13122288288' LIMIT 1);
UPDATE users SET nick_name='ZZ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13122288288';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521116307', 'U15521116307', '🍚F.f.🍚', '', '15521116307', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 22:59:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521116307' LIMIT 1);
UPDATE users SET nick_name='🍚F.f.🍚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521116307';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626183644', 'U15626183644', '🐢', '', '15626183644', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 22:57:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626183644' LIMIT 1);
UPDATE users SET nick_name='🐢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626183644';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512768337', 'U13512768337', '雯', '', '13512768337', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 22:50:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512768337' LIMIT 1);
UPDATE users SET nick_name='雯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512768337';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570315244', 'U13570315244', '🌸梁小WING同志的微信🌸', '', '13570315244', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 18:00:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570315244' LIMIT 1);
UPDATE users SET nick_name='🌸梁小WING同志的微信🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570315244';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18501363145', 'U18501363145', '暴躁的翻车鱼', '', '18501363145', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 16:44:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18501363145' LIMIT 1);
UPDATE users SET nick_name='暴躁的翻车鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18501363145';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719231022', 'U13719231022', 'King.ice', '', '13719231022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 15:26:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719231022' LIMIT 1);
UPDATE users SET nick_name='King.ice', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719231022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13720254955', 'U13720254955', '13720254955', '', '13720254955', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 15:11:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13720254955' LIMIT 1);
UPDATE users SET nick_name='13720254955', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13720254955';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502050960', 'U18502050960', 'devilvivi', '', '18502050960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 15:08:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502050960' LIMIT 1);
UPDATE users SET nick_name='devilvivi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18502050960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620409769', 'U16620409769', '16620409769', '', '16620409769', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 15:03:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620409769' LIMIT 1);
UPDATE users SET nick_name='16620409769', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620409769';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688903062', 'U18688903062', 'devilvivi', '', '18688903062', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 15:02:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688903062' LIMIT 1);
UPDATE users SET nick_name='devilvivi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688903062';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665661142', 'U18665661142', 'chiketa', '', '18665661142', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 14:38:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665661142' LIMIT 1);
UPDATE users SET nick_name='chiketa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665661142';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18274962502', 'U18274962502', 'Qqfire', '', '18274962502', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 14:38:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18274962502' LIMIT 1);
UPDATE users SET nick_name='Qqfire', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18274962502';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520647071', 'U18520647071', '叶', '', '18520647071', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 66, '2025-04-05 13:49:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520647071' LIMIT 1);
UPDATE users SET nick_name='叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 66) WHERE phone='18520647071';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914238303', 'U15914238303', 'Irina', '', '15914238303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 13:20:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914238303' LIMIT 1);
UPDATE users SET nick_name='Irina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914238303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922320002', 'U13922320002', 'Hank Liu', '', '13922320002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 13:19:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922320002' LIMIT 1);
UPDATE users SET nick_name='Hank Liu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922320002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521134796', 'U15521134796', '莱妮🐻🐻', '', '15521134796', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 13:09:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521134796' LIMIT 1);
UPDATE users SET nick_name='莱妮🐻🐻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521134796';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15768556624', 'U15768556624', '谁敢闻', '', '15768556624', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 12:38:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15768556624' LIMIT 1);
UPDATE users SET nick_name='谁敢闻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15768556624';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926281775', 'U13926281775', 'ツ', '', '13926281775', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 12:15:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926281775' LIMIT 1);
UPDATE users SET nick_name='ツ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926281775';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18501760256', 'U18501760256', 'YX', '', '18501760256', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 11:42:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18501760256' LIMIT 1);
UPDATE users SET nick_name='YX', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18501760256';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620260143', 'U18620260143', 'Ck', '', '18620260143', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 11:18:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620260143' LIMIT 1);
UPDATE users SET nick_name='Ck', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620260143';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725479980', 'U13725479980', 'pauline', '', '13725479980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 10:46:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725479980' LIMIT 1);
UPDATE users SET nick_name='pauline', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725479980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521228698', 'U15521228698', 'ChirsH', '', '15521228698', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 10:38:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521228698' LIMIT 1);
UPDATE users SET nick_name='ChirsH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521228698';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15992490569', 'U15992490569', '15992490569', '', '15992490569', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 09:52:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15992490569' LIMIT 1);
UPDATE users SET nick_name='15992490569', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15992490569';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13891359577', 'U13891359577', '简单就快乐', '', '13891359577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 08:52:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13891359577' LIMIT 1);
UPDATE users SET nick_name='简单就快乐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13891359577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580525477', 'U13580525477', 'DaX-l', '', '13580525477', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-05 06:42:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580525477' LIMIT 1);
UPDATE users SET nick_name='DaX-l', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580525477';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113346730', 'U13113346730', '水禾田', '', '13113346730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 23:38:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113346730' LIMIT 1);
UPDATE users SET nick_name='水禾田', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13113346730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13026894709', 'U13026894709', '阿芬', '', '13026894709', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 23:35:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13026894709' LIMIT 1);
UPDATE users SET nick_name='阿芬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13026894709';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814102139', 'U18814102139', '呀呀呀', '', '18814102139', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 21:01:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814102139' LIMIT 1);
UPDATE users SET nick_name='呀呀呀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814102139';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13080809080', 'U13080809080', '放空', '', '13080809080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 399, '2025-04-04 20:56:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13080809080' LIMIT 1);
UPDATE users SET nick_name='放空', balance=GREATEST(balance, 0.00), points=GREATEST(points, 399) WHERE phone='13080809080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18211200786', 'U18211200786', 'Arrebol', '', '18211200786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-04-04 19:42:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18211200786' LIMIT 1);
UPDATE users SET nick_name='Arrebol', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18211200786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521209440', 'U15521209440', '15521209440', '', '15521209440', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 19:35:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521209440' LIMIT 1);
UPDATE users SET nick_name='15521209440', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521209440';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19902441893', 'U19902441893', '19902441893', '', '19902441893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 18:55:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19902441893' LIMIT 1);
UPDATE users SET nick_name='19902441893', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19902441893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18559797828', 'U18559797828', 'z', '', '18559797828', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 59, '2025-04-04 17:42:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18559797828' LIMIT 1);
UPDATE users SET nick_name='z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 59) WHERE phone='18559797828';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18719407232', 'U18719407232', 'Lexie', '', '18719407232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 16:56:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18719407232' LIMIT 1);
UPDATE users SET nick_name='Lexie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18719407232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19843487515', 'U19843487515', '19843487515', '', '19843487515', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 15:40:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19843487515' LIMIT 1);
UPDATE users SET nick_name='19843487515', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19843487515';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602777623', 'U13602777623', '13602777623', '', '13602777623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 15:39:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602777623' LIMIT 1);
UPDATE users SET nick_name='13602777623', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602777623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19879173044', 'U19879173044', '银河落九天', '', '19879173044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 15:31:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19879173044' LIMIT 1);
UPDATE users SET nick_name='银河落九天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19879173044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18382089962', 'U18382089962', 'Shelby', '', '18382089962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 14:40:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18382089962' LIMIT 1);
UPDATE users SET nick_name='Shelby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18382089962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817887549', 'U17817887549', 'Sally', '', '17817887549', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 14:22:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817887549' LIMIT 1);
UPDATE users SET nick_name='Sally', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817887549';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626428070', 'U15626428070', '波子爸爸', '', '15626428070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 13:03:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626428070' LIMIT 1);
UPDATE users SET nick_name='波子爸爸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626428070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570784880', 'U13570784880', '蕉香了绿', '', '13570784880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 12:55:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570784880' LIMIT 1);
UPDATE users SET nick_name='蕉香了绿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570784880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666551125', 'U17666551125', 'lili', '', '17666551125', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 12:18:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666551125' LIMIT 1);
UPDATE users SET nick_name='lili', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666551125';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18720686354', 'U18720686354', 'Christine', '', '18720686354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 11:43:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18720686354' LIMIT 1);
UPDATE users SET nick_name='Christine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18720686354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818861275', 'U18818861275', 'smay', '', '18818861275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 11:29:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818861275' LIMIT 1);
UPDATE users SET nick_name='smay', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818861275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544317492', 'U13544317492', 'Fa～Fa', '', '13544317492', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 11:27:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544317492' LIMIT 1);
UPDATE users SET nick_name='Fa～Fa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544317492';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560093406', 'U13560093406', '陆viga', '', '13560093406', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 11:14:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560093406' LIMIT 1);
UPDATE users SET nick_name='陆viga', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560093406';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620102838', 'U16620102838', 'Wee', '', '16620102838', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 10:52:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620102838' LIMIT 1);
UPDATE users SET nick_name='Wee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620102838';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011911887', 'U15011911887', '.', '', '15011911887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 10:49:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011911887' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15011911887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544331880', 'U13544331880', '我和你说', '', '13544331880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 10:47:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544331880' LIMIT 1);
UPDATE users SET nick_name='我和你说', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544331880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15118618086', 'U15118618086', '子涵', '', '15118618086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 10:37:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15118618086' LIMIT 1);
UPDATE users SET nick_name='子涵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15118618086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13553724849', 'U13553724849', '滴滴滴哒哒哒', '', '13553724849', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-04 00:02:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13553724849' LIMIT 1);
UPDATE users SET nick_name='滴滴滴哒哒哒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13553724849';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160676028', 'U13160676028', '-li26🥃', '', '13160676028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-03 23:20:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160676028' LIMIT 1);
UPDATE users SET nick_name='-li26🥃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13160676028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18627582729', 'U18627582729', 'Tang·左右', '', '18627582729', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-04-03 22:58:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18627582729' LIMIT 1);
UPDATE users SET nick_name='Tang·左右', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18627582729';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928972531', 'U13928972531', 'Carmen', '', '13928972531', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 20:41:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928972531' LIMIT 1);
UPDATE users SET nick_name='Carmen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928972531';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15207128401', 'U15207128401', 'Connie', '', '15207128401', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 20:26:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15207128401' LIMIT 1);
UPDATE users SET nick_name='Connie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15207128401';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665695482', 'U17665695482', '小美', '', '17665695482', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 20:12:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665695482' LIMIT 1);
UPDATE users SET nick_name='小美', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665695482';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600452711', 'U13600452711', '13600452711', '', '13600452711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 19:57:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600452711' LIMIT 1);
UPDATE users SET nick_name='13600452711', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600452711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17801080246', 'U17801080246', 'LittlePanPan', '', '17801080246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 19:34:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17801080246' LIMIT 1);
UPDATE users SET nick_name='LittlePanPan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17801080246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610055080', 'U13610055080', '周生', '', '13610055080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 19:18:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610055080' LIMIT 1);
UPDATE users SET nick_name='周生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610055080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588660692', 'U18588660692', 'yaya', '', '18588660692', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 19:09:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588660692' LIMIT 1);
UPDATE users SET nick_name='yaya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588660692';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820096155', 'U18820096155', '浪的虚名', '', '18820096155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 18:07:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820096155' LIMIT 1);
UPDATE users SET nick_name='浪的虚名', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820096155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819483695', 'U18819483695', '嘎嘎', '', '18819483695', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 16:07:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819483695' LIMIT 1);
UPDATE users SET nick_name='嘎嘎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819483695';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128252201', 'U13128252201', 'CHEW', '', '13128252201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 15:41:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128252201' LIMIT 1);
UPDATE users SET nick_name='CHEW', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128252201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920435830', 'U15920435830', 'shoukarin', '', '15920435830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 15:32:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920435830' LIMIT 1);
UPDATE users SET nick_name='shoukarin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920435830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18696171225', 'U18696171225', '18696171225', '', '18696171225', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 15:29:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18696171225' LIMIT 1);
UPDATE users SET nick_name='18696171225', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18696171225';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268268324', 'U13268268324', '周杰啤', '', '13268268324', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 13:41:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268268324' LIMIT 1);
UPDATE users SET nick_name='周杰啤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268268324';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18624066913', 'U18624066913', '18624066913', '', '18624066913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 12:55:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18624066913' LIMIT 1);
UPDATE users SET nick_name='18624066913', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18624066913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818517910', 'U15818517910', 'kk', '', '15818517910', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 12:16:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818517910' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818517910';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16603015568', 'U16603015568', 'killen.（工作回复慢版）', '', '16603015568', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 12:15:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16603015568' LIMIT 1);
UPDATE users SET nick_name='killen.（工作回复慢版）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16603015568';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18878729715', 'U18878729715', 'clear.', '', '18878729715', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 11:01:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18878729715' LIMIT 1);
UPDATE users SET nick_name='clear.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18878729715';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13841335963', 'U13841335963', '无咎', '', '13841335963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-03 10:46:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13841335963' LIMIT 1);
UPDATE users SET nick_name='无咎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13841335963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924275929', 'U13924275929', '珍珠✨', '', '13924275929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 22:14:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924275929' LIMIT 1);
UPDATE users SET nick_name='珍珠✨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924275929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544393571', 'U13544393571', 'Phoebe  ', '', '13544393571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 22:12:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544393571' LIMIT 1);
UPDATE users SET nick_name='Phoebe  ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544393571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988975178', 'U18988975178', '💨', '', '18988975178', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 19:49:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988975178' LIMIT 1);
UPDATE users SET nick_name='💨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988975178';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926256789', 'U18926256789', 'Minney晓', '', '18926256789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 19:32:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926256789' LIMIT 1);
UPDATE users SET nick_name='Minney晓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926256789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503018121', 'U13503018121', '鲩鱼', '', '13503018121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 18:55:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503018121' LIMIT 1);
UPDATE users SET nick_name='鲩鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503018121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876548928', 'U15876548928', 'Liang', '', '15876548928', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 18:43:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876548928' LIMIT 1);
UPDATE users SET nick_name='Liang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876548928';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18307523380', 'U18307523380', 'winston', '', '18307523380', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 18:31:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18307523380' LIMIT 1);
UPDATE users SET nick_name='winston', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18307523380';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416316237', 'U13416316237', 'Doo黄兰特🔥', '', '13416316237', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 18:29:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416316237' LIMIT 1);
UPDATE users SET nick_name='Doo黄兰特🔥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416316237';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13076878379', 'U13076878379', 'Angel Lau🥕', '', '13076878379', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 18:18:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13076878379' LIMIT 1);
UPDATE users SET nick_name='Angel Lau🥕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13076878379';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565215529', 'U18565215529', '18565215529', '', '18565215529', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 17:56:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565215529' LIMIT 1);
UPDATE users SET nick_name='18565215529', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565215529';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922106987', 'U18922106987', '18922106987', '', '18922106987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 16:25:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922106987' LIMIT 1);
UPDATE users SET nick_name='18922106987', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922106987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18124219902', 'U18124219902', 'Tse 2.0', '', '18124219902', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 16:06:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18124219902' LIMIT 1);
UPDATE users SET nick_name='Tse 2.0', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18124219902';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352802131', 'U13352802131', '13352802131', '', '13352802131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 15:17:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352802131' LIMIT 1);
UPDATE users SET nick_name='13352802131', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352802131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316204060', 'U13316204060', '13316204060', '', '13316204060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 14:53:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316204060' LIMIT 1);
UPDATE users SET nick_name='13316204060', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316204060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631483048', 'U13631483048', '13631483048', '', '13631483048', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 13:02:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631483048' LIMIT 1);
UPDATE users SET nick_name='13631483048', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631483048';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15112104183', 'U15112104183', 'Becca🐕', '', '15112104183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 10:42:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15112104183' LIMIT 1);
UPDATE users SET nick_name='Becca🐕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15112104183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14737623036', 'U14737623036', '睛亮眼镜店', '', '14737623036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-02 10:00:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14737623036' LIMIT 1);
UPDATE users SET nick_name='睛亮眼镜店', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14737623036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521499727', 'U15521499727', 'miga', '', '15521499727', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-02 00:32:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521499727' LIMIT 1);
UPDATE users SET nick_name='miga', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15521499727';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18779532242', 'U18779532242', '123号', '', '18779532242', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-01 21:02:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18779532242' LIMIT 1);
UPDATE users SET nick_name='123号', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18779532242';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265961376', 'U13265961376', '六一', '', '13265961376', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 20:44:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265961376' LIMIT 1);
UPDATE users SET nick_name='六一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265961376';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826100982', 'U18826100982', '万万', '', '18826100982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 19:14:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826100982' LIMIT 1);
UPDATE users SET nick_name='万万', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826100982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18721506856', 'U18721506856', '18721506856', '', '18721506856', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 18:07:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18721506856' LIMIT 1);
UPDATE users SET nick_name='18721506856', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18721506856';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17818664230', 'U17818664230', '發財小錦鯉Li -', '', '17818664230', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 18:04:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17818664230' LIMIT 1);
UPDATE users SET nick_name='發財小錦鯉Li -', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17818664230';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18607512268', 'U18607512268', '桃桃子', '', '18607512268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 17:38:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18607512268' LIMIT 1);
UPDATE users SET nick_name='桃桃子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18607512268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924218123', 'U13924218123', 'Tanya🧡谭', '', '13924218123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-01 15:38:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924218123' LIMIT 1);
UPDATE users SET nick_name='Tanya🧡谭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13924218123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392533374', 'U13392533374', '1', '', '13392533374', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 15:07:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392533374' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392533374';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822233328', 'U13822233328', '大海', '', '13822233328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 107, '2025-04-01 15:00:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822233328' LIMIT 1);
UPDATE users SET nick_name='大海', balance=GREATEST(balance, 0.00), points=GREATEST(points, 107) WHERE phone='13822233328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16624709615', 'U16624709615', 'W·', '', '16624709615', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 14:18:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16624709615' LIMIT 1);
UPDATE users SET nick_name='W·', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16624709615';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19700232932', 'U19700232932', '卿', '', '19700232932', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 14:17:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19700232932' LIMIT 1);
UPDATE users SET nick_name='卿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19700232932';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14758657426', 'U14758657426', '佳佳', '', '14758657426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 13:57:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14758657426' LIMIT 1);
UPDATE users SET nick_name='佳佳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14758657426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160826169', 'U13160826169', 'Kathy', '', '13160826169', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 13:55:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160826169' LIMIT 1);
UPDATE users SET nick_name='Kathy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13160826169';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288343900', 'U13288343900', '噜噜', '', '13288343900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 13:51:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288343900' LIMIT 1);
UPDATE users SET nick_name='噜噜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288343900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17820512028', 'U17820512028', '果果', '', '17820512028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 12:37:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17820512028' LIMIT 1);
UPDATE users SET nick_name='果果', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17820512028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750480609', 'U13750480609', 'ddd', '', '13750480609', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 12:02:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750480609' LIMIT 1);
UPDATE users SET nick_name='ddd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13750480609';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13415624609', 'U13415624609', 'x', '', '13415624609', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-04-01 11:51:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13415624609' LIMIT 1);
UPDATE users SET nick_name='x', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13415624609';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18916105317', 'U18916105317', '鸭蛋秋', '', '18916105317', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 11:38:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18916105317' LIMIT 1);
UPDATE users SET nick_name='鸭蛋秋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18916105317';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18843185225', 'U18843185225', '18843185225', '', '18843185225', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 11:35:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18843185225' LIMIT 1);
UPDATE users SET nick_name='18843185225', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18843185225';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902234303', 'U13902234303', 'David', '', '13902234303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 11:18:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902234303' LIMIT 1);
UPDATE users SET nick_name='David', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902234303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818908850', 'U18818908850', 'Knis', '', '18818908850', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-04-01 10:12:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818908850' LIMIT 1);
UPDATE users SET nick_name='Knis', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='18818908850';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15305518800', 'U15305518800', '今生无悔', '', '15305518800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 09:49:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15305518800' LIMIT 1);
UPDATE users SET nick_name='今生无悔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15305518800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503052998', 'U13503052998', '万', '', '13503052998', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-01 08:37:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503052998' LIMIT 1);
UPDATE users SET nick_name='万', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503052998';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435661005', 'U13435661005', '13435661005', '', '13435661005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 21:28:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435661005' LIMIT 1);
UPDATE users SET nick_name='13435661005', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13435661005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975576122', 'U15975576122', '15975576122', '', '15975576122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 19:24:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975576122' LIMIT 1);
UPDATE users SET nick_name='15975576122', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975576122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435693994', 'U13435693994', 'Charlie小方醫生', '', '13435693994', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 19:21:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435693994' LIMIT 1);
UPDATE users SET nick_name='Charlie小方醫生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13435693994';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824460848', 'U13824460848', '腊肠', '', '13824460848', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 19:14:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824460848' LIMIT 1);
UPDATE users SET nick_name='腊肠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824460848';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18800160917', 'U18800160917', '18800160917', '', '18800160917', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 18:58:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18800160917' LIMIT 1);
UPDATE users SET nick_name='18800160917', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18800160917';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538818521', 'U13538818521', 'Lawrence', '', '13538818521', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 17:39:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538818521' LIMIT 1);
UPDATE users SET nick_name='Lawrence', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538818521';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13420551939', 'U13420551939', 'Beyou', '', '13420551939', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 17:06:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13420551939' LIMIT 1);
UPDATE users SET nick_name='Beyou', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13420551939';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18845787860', 'U18845787860', 'syzzz', '', '18845787860', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 13:03:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18845787860' LIMIT 1);
UPDATE users SET nick_name='syzzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18845787860';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802016246', 'U18802016246', 'Panda', '', '18802016246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 11:23:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802016246' LIMIT 1);
UPDATE users SET nick_name='Panda', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802016246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13153200733', 'U13153200733', '13153200733', '', '13153200733', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 10:56:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13153200733' LIMIT 1);
UPDATE users SET nick_name='13153200733', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13153200733';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725962942', 'U13725962942', '🔅sss🔅', '', '13725962942', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 10:52:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725962942' LIMIT 1);
UPDATE users SET nick_name='🔅sss🔅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725962942';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242722261', 'U13242722261', '带', '', '13242722261', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 10:41:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242722261' LIMIT 1);
UPDATE users SET nick_name='带', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242722261';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416273839', 'U13416273839', '周壹', '', '13416273839', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 10:33:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416273839' LIMIT 1);
UPDATE users SET nick_name='周壹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416273839';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914463074', 'U15914463074', 'and', '', '15914463074', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 00:29:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914463074' LIMIT 1);
UPDATE users SET nick_name='and', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914463074';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302000994', 'U18302000994', 'cc', '', '18302000994', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-31 00:27:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302000994' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18302000994';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19868666669', 'U19868666669', '姚鹏', '', '19868666669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 19:59:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19868666669' LIMIT 1);
UPDATE users SET nick_name='姚鹏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19868666669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580488414', 'U13580488414', '大漠横川', '', '13580488414', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 19:05:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580488414' LIMIT 1);
UPDATE users SET nick_name='大漠横川', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580488414';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18004301896', 'U18004301896', '🤯', '', '18004301896', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 18:40:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18004301896' LIMIT 1);
UPDATE users SET nick_name='🤯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18004301896';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17688408926', 'U17688408926', 'rosy', '', '17688408926', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 17:45:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17688408926' LIMIT 1);
UPDATE users SET nick_name='rosy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17688408926';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312026363', 'U18312026363', '清风', '', '18312026363', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 17:44:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312026363' LIMIT 1);
UPDATE users SET nick_name='清风', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312026363';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802427711', 'U13802427711', '老泡', '', '13802427711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 17:27:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802427711' LIMIT 1);
UPDATE users SET nick_name='老泡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802427711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710777522', 'U13710777522', 'Jing🍑', '', '13710777522', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 16:32:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710777522' LIMIT 1);
UPDATE users SET nick_name='Jing🍑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710777522';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622297997', 'U13622297997', '13622297997', '', '13622297997', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 16:14:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622297997' LIMIT 1);
UPDATE users SET nick_name='13622297997', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622297997';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535303451', 'U13535303451', '131', '', '13535303451', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 15:10:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535303451' LIMIT 1);
UPDATE users SET nick_name='131', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535303451';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218590977', 'U18218590977', 'W.', '', '18218590977', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 14:54:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218590977' LIMIT 1);
UPDATE users SET nick_name='W.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218590977';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15002022401', 'U15002022401', '腾', '', '15002022401', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 14:47:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15002022401' LIMIT 1);
UPDATE users SET nick_name='腾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15002022401';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613149544', 'U18613149544', 'Michelle李米米', '', '18613149544', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 13:31:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613149544' LIMIT 1);
UPDATE users SET nick_name='Michelle李米米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613149544';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17166563419', 'U17166563419', '17166563419', '', '17166563419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 13:21:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17166563419' LIMIT 1);
UPDATE users SET nick_name='17166563419', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17166563419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15868182194', 'U15868182194', '15868182194', '', '15868182194', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 13:20:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15868182194' LIMIT 1);
UPDATE users SET nick_name='15868182194', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15868182194';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620908038', 'U18620908038', '18620908038', '', '18620908038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 13:11:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620908038' LIMIT 1);
UPDATE users SET nick_name='18620908038', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620908038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533800906', 'U13533800906', 'obacn', '', '13533800906', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 11:58:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533800906' LIMIT 1);
UPDATE users SET nick_name='obacn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533800906';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533299131', 'U13533299131', 'Cc', '', '13533299131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 11:49:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533299131' LIMIT 1);
UPDATE users SET nick_name='Cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533299131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989003290', 'U15989003290', '加肥猫猫', '', '15989003290', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 560, '2025-03-30 11:37:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989003290' LIMIT 1);
UPDATE users SET nick_name='加肥猫猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 560) WHERE phone='15989003290';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122765779', 'U18122765779', '18122765779', '', '18122765779', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 10:58:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122765779' LIMIT 1);
UPDATE users SET nick_name='18122765779', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122765779';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822255260', 'U13822255260', '友', '', '13822255260', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-30 10:39:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822255260' LIMIT 1);
UPDATE users SET nick_name='友', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822255260';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666550201', 'U17666550201', 'Ricki', '', '17666550201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 23:38:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666550201' LIMIT 1);
UPDATE users SET nick_name='Ricki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666550201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13712187060', 'U13712187060', '13712187060', '', '13712187060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 21:48:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13712187060' LIMIT 1);
UPDATE users SET nick_name='13712187060', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13712187060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711343690', 'U13711343690', 'Jane', '', '13711343690', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 18:03:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711343690' LIMIT 1);
UPDATE users SET nick_name='Jane', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711343690';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13055299363', 'U13055299363', '清补梁', '', '13055299363', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 17:27:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13055299363' LIMIT 1);
UPDATE users SET nick_name='清补梁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13055299363';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17681109388', 'U17681109388', '17681109388', '', '17681109388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 16:58:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17681109388' LIMIT 1);
UPDATE users SET nick_name='17681109388', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17681109388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15819940708', 'U15819940708', '15819940708', '', '15819940708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 16:43:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15819940708' LIMIT 1);
UPDATE users SET nick_name='15819940708', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15819940708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600026266', 'U13600026266', '宇明', '', '13600026266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1099, '2025-03-29 16:43:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600026266' LIMIT 1);
UPDATE users SET nick_name='宇明', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1099) WHERE phone='13600026266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13015612923', 'U13015612923', '何涓', '', '13015612923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-03-29 15:59:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13015612923' LIMIT 1);
UPDATE users SET nick_name='何涓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13015612923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15118869955', 'U15118869955', '15118869955', '', '15118869955', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 15:23:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15118869955' LIMIT 1);
UPDATE users SET nick_name='15118869955', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15118869955';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013325123', 'U15013325123', '河鱼', '', '15013325123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 14:57:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013325123' LIMIT 1);
UPDATE users SET nick_name='河鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013325123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18078825980', 'U18078825980', 'S小冉', '', '18078825980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 14:47:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18078825980' LIMIT 1);
UPDATE users SET nick_name='S小冉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18078825980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18573937625', 'U18573937625', '小v', '', '18573937625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 14:35:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18573937625' LIMIT 1);
UPDATE users SET nick_name='小v', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18573937625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120303867', 'U19120303867', '星', '', '19120303867', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 13:55:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120303867' LIMIT 1);
UPDATE users SET nick_name='星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120303867';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975331990', 'U15975331990', '15975331990', '', '15975331990', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 11:59:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975331990' LIMIT 1);
UPDATE users SET nick_name='15975331990', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975331990';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15779568528', 'U15779568528', 'Koi', '', '15779568528', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 11:42:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15779568528' LIMIT 1);
UPDATE users SET nick_name='Koi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15779568528';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899543603', 'U15899543603', 'AKK', '', '15899543603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 11:25:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899543603' LIMIT 1);
UPDATE users SET nick_name='AKK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15899543603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18397619155', 'U18397619155', '你就是答案', '', '18397619155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 11:13:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18397619155' LIMIT 1);
UPDATE users SET nick_name='你就是答案', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18397619155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143530097', 'U13143530097', '木易楊.℡。🐾', '', '13143530097', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 11:06:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143530097' LIMIT 1);
UPDATE users SET nick_name='木易楊.℡。🐾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143530097';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18903836575', 'U18903836575', '华仔', '', '18903836575', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 10:57:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18903836575' LIMIT 1);
UPDATE users SET nick_name='华仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18903836575';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625046691', 'U15625046691', 'Lathan', '', '15625046691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 10:52:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625046691' LIMIT 1);
UPDATE users SET nick_name='Lathan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625046691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18219813768', 'U18219813768', '18219813768', '', '18219813768', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 10:51:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18219813768' LIMIT 1);
UPDATE users SET nick_name='18219813768', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18219813768';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926265915', 'U18926265915', '18926265915', '', '18926265915', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 10:48:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926265915' LIMIT 1);
UPDATE users SET nick_name='18926265915', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926265915';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819422469', 'U18819422469', '18819422469', '', '18819422469', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 10:14:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819422469' LIMIT 1);
UPDATE users SET nick_name='18819422469', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819422469';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18505008840', 'U18505008840', 'x', '', '18505008840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-29 10:10:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18505008840' LIMIT 1);
UPDATE users SET nick_name='x', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18505008840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622206331', 'U15622206331', '罗红锋', '', '15622206331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 23:08:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622206331' LIMIT 1);
UPDATE users SET nick_name='罗红锋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622206331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18811843262', 'U18811843262', 'Mcfly', '', '18811843262', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 22:56:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18811843262' LIMIT 1);
UPDATE users SET nick_name='Mcfly', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18811843262';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560415806', 'U13560415806', '13560415806', '', '13560415806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 20:32:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560415806' LIMIT 1);
UPDATE users SET nick_name='13560415806', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560415806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570517877', 'U13570517877', '岳CL', '', '13570517877', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 19:17:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570517877' LIMIT 1);
UPDATE users SET nick_name='岳CL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570517877';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826258215', 'U13826258215', 'QAQ', '', '13826258215', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 17:32:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826258215' LIMIT 1);
UPDATE users SET nick_name='QAQ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826258215';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15979377540', 'U15979377540', '🔵', '', '15979377540', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 15:36:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15979377540' LIMIT 1);
UPDATE users SET nick_name='🔵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15979377540';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218763719', 'U18218763719', 'lsm', '', '18218763719', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 14:24:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218763719' LIMIT 1);
UPDATE users SET nick_name='lsm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218763719';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680494003', 'U18680494003', '18680494003', '', '18680494003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 13:45:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680494003' LIMIT 1);
UPDATE users SET nick_name='18680494003', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680494003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570571375', 'U13570571375', '13570571375', '', '13570571375', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 13:42:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570571375' LIMIT 1);
UPDATE users SET nick_name='13570571375', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570571375';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422295898', 'U13422295898', '是11111', '', '13422295898', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 13:12:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422295898' LIMIT 1);
UPDATE users SET nick_name='是11111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422295898';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15211035874', 'U15211035874', '眯糊', '', '15211035874', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 10:32:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15211035874' LIMIT 1);
UPDATE users SET nick_name='眯糊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15211035874';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825032203', 'U13825032203', 'ZL', '', '13825032203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 10:22:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825032203' LIMIT 1);
UPDATE users SET nick_name='ZL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825032203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914373162', 'U15914373162', '堇鱼', '', '15914373162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 10:18:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914373162' LIMIT 1);
UPDATE users SET nick_name='堇鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914373162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680533082', 'U18680533082', 'Win', '', '18680533082', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 10:14:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680533082' LIMIT 1);
UPDATE users SET nick_name='Win', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680533082';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19533534925', 'U19533534925', 'Riley', '', '19533534925', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 09:06:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19533534925' LIMIT 1);
UPDATE users SET nick_name='Riley', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19533534925';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13326408214', 'U13326408214', '数二', '', '13326408214', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 08:53:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13326408214' LIMIT 1);
UPDATE users SET nick_name='数二', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13326408214';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15811865714', 'U15811865714', 'Long。', '', '15811865714', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-28 00:48:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15811865714' LIMIT 1);
UPDATE users SET nick_name='Long。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15811865714';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15118819705', 'U15118819705', '戴戴', '', '15118819705', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 19:51:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15118819705' LIMIT 1);
UPDATE users SET nick_name='戴戴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15118819705';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620064928', 'U18620064928', 'Jennifer', '', '18620064928', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 19:39:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620064928' LIMIT 1);
UPDATE users SET nick_name='Jennifer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620064928';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925180866', 'U13925180866', 'lisp', '', '13925180866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-27 17:49:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925180866' LIMIT 1);
UPDATE users SET nick_name='lisp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13925180866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16676579276', 'U16676579276', '.', '', '16676579276', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 17:03:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16676579276' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16676579276';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920189090', 'U15920189090', '东东', '', '15920189090', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-03-27 16:18:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920189090' LIMIT 1);
UPDATE users SET nick_name='东东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15920189090';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15314094364', 'U15314094364', '郭', '', '15314094364', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 16:04:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15314094364' LIMIT 1);
UPDATE users SET nick_name='郭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15314094364';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922134455', 'U13922134455', '13922134455', '', '13922134455', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 15:41:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922134455' LIMIT 1);
UPDATE users SET nick_name='13922134455', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922134455';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826843157', 'U13826843157', 'mak', '', '13826843157', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 15:13:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826843157' LIMIT 1);
UPDATE users SET nick_name='mak', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826843157';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998490758', 'U18998490758', '钟钟', '', '18998490758', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 14:21:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998490758' LIMIT 1);
UPDATE users SET nick_name='钟钟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998490758';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229276186', 'U13229276186', '13229276186', '', '13229276186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 13:48:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229276186' LIMIT 1);
UPDATE users SET nick_name='13229276186', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229276186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022878794', 'U18022878794', '奇奇', '', '18022878794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 11:22:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022878794' LIMIT 1);
UPDATE users SET nick_name='奇奇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022878794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18555015091', 'U18555015091', '稳稳', '', '18555015091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 10:17:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18555015091' LIMIT 1);
UPDATE users SET nick_name='稳稳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18555015091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265957613', 'U13265957613', '潘菲', '', '13265957613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 10:04:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265957613' LIMIT 1);
UPDATE users SET nick_name='潘菲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265957613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247550820', 'U13247550820', '李炳文', '', '13247550820', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 09:58:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247550820' LIMIT 1);
UPDATE users SET nick_name='李炳文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13247550820';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813004580', 'U15813004580', '唐果', '', '15813004580', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 09:30:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813004580' LIMIT 1);
UPDATE users SET nick_name='唐果', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813004580';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620608038', 'U18620608038', '费达拿度', '', '18620608038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-27 08:27:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620608038' LIMIT 1);
UPDATE users SET nick_name='费达拿度', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620608038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18957086272', 'U18957086272', 'Jeca_', '', '18957086272', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 22:46:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18957086272' LIMIT 1);
UPDATE users SET nick_name='Jeca_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18957086272';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427474864', 'U13427474864', 'huamy', '', '13427474864', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 22:42:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427474864' LIMIT 1);
UPDATE users SET nick_name='huamy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427474864';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128285202', 'U13128285202', '13128285202', '', '13128285202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 20:20:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128285202' LIMIT 1);
UPDATE users SET nick_name='13128285202', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128285202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820072061', 'U18820072061', '啊悦.zip', '', '18820072061', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 20:07:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820072061' LIMIT 1);
UPDATE users SET nick_name='啊悦.zip', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820072061';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570545273', 'U13570545273', '13570545273', '', '13570545273', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 15:55:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570545273' LIMIT 1);
UPDATE users SET nick_name='13570545273', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570545273';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726243022', 'U13726243022', '老头', '', '13726243022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 15:52:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726243022' LIMIT 1);
UPDATE users SET nick_name='老头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726243022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320055473', 'U18320055473', 'Raison', '', '18320055473', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 15:18:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320055473' LIMIT 1);
UPDATE users SET nick_name='Raison', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320055473';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600062862', 'U13600062862', 'Soc', '', '13600062862', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2025-03-26 14:16:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600062862' LIMIT 1);
UPDATE users SET nick_name='Soc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='13600062862';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18676598153', 'U18676598153', '18676598153', '', '18676598153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 14:04:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18676598153' LIMIT 1);
UPDATE users SET nick_name='18676598153', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18676598153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922201732', 'U13922201732', '甄小姐', '', '13922201732', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 13:04:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922201732' LIMIT 1);
UPDATE users SET nick_name='甄小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922201732';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18903067380', 'U18903067380', 'seeking', '', '18903067380', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 12:51:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18903067380' LIMIT 1);
UPDATE users SET nick_name='seeking', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18903067380';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820026100', 'U18820026100', '633', '', '18820026100', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 11:08:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820026100' LIMIT 1);
UPDATE users SET nick_name='633', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820026100';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613066160', 'U18613066160', 'ᴅᴀɴʀɪsᴇ', '', '18613066160', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 10:47:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613066160' LIMIT 1);
UPDATE users SET nick_name='ᴅᴀɴʀɪsᴇ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613066160';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922151647', 'U18922151647', 'k', '', '18922151647', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 10:45:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922151647' LIMIT 1);
UPDATE users SET nick_name='k', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922151647';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521218671', 'U15521218671', '奶昔酱', '', '15521218671', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 10:42:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521218671' LIMIT 1);
UPDATE users SET nick_name='奶昔酱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521218671';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631302706', 'U13631302706', 'kathy', '', '13631302706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-26 10:21:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631302706' LIMIT 1);
UPDATE users SET nick_name='kathy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631302706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918713353', 'U15918713353', 'KarenXian', '', '15918713353', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 22:06:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918713353' LIMIT 1);
UPDATE users SET nick_name='KarenXian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918713353';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13350381529', 'U13350381529', '？？？', '', '13350381529', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 20:30:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13350381529' LIMIT 1);
UPDATE users SET nick_name='？？？', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13350381529';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17512057144', 'U17512057144', '17512057144', '', '17512057144', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 17:29:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17512057144' LIMIT 1);
UPDATE users SET nick_name='17512057144', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17512057144';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013950126', 'U15013950126', 'wing', '', '15013950126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 17:09:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013950126' LIMIT 1);
UPDATE users SET nick_name='wing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013950126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14716807980', 'U14716807980', '星|||', '', '14716807980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 16:03:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14716807980' LIMIT 1);
UPDATE users SET nick_name='星|||', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14716807980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16670125838', 'U16670125838', '果', '', '16670125838', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 16:01:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16670125838' LIMIT 1);
UPDATE users SET nick_name='果', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16670125838';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802443593', 'U13802443593', '七七', '', '13802443593', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 15:02:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802443593' LIMIT 1);
UPDATE users SET nick_name='七七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802443593';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18154041489', 'U18154041489', 'mo', '', '18154041489', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 12:22:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18154041489' LIMIT 1);
UPDATE users SET nick_name='mo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18154041489';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580343166', 'U13580343166', '13580343166', '', '13580343166', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 12:19:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580343166' LIMIT 1);
UPDATE users SET nick_name='13580343166', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580343166';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915777418', 'U15915777418', '小鱼儿', '', '15915777418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 11:46:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915777418' LIMIT 1);
UPDATE users SET nick_name='小鱼儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915777418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627859196', 'U15627859196', '15627859196', '', '15627859196', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 11:43:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627859196' LIMIT 1);
UPDATE users SET nick_name='15627859196', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627859196';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760630296', 'U13760630296', '33', '', '13760630296', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 11:22:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760630296' LIMIT 1);
UPDATE users SET nick_name='33', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760630296';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18641182869', 'U18641182869', 'Plus', '', '18641182869', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 11:21:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18641182869' LIMIT 1);
UPDATE users SET nick_name='Plus', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18641182869';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19520933091', 'U19520933091', '肖', '', '19520933091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 10:25:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19520933091' LIMIT 1);
UPDATE users SET nick_name='肖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19520933091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918770057', 'U15918770057', '肖', '', '15918770057', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-25 10:22:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918770057' LIMIT 1);
UPDATE users SET nick_name='肖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918770057';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626239477', 'U15626239477', 'K.T.', '', '15626239477', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 20:59:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626239477' LIMIT 1);
UPDATE users SET nick_name='K.T.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626239477';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18443172453', 'U18443172453', 'SpongeBob', '', '18443172453', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 388, '2025-03-24 20:30:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18443172453' LIMIT 1);
UPDATE users SET nick_name='SpongeBob', balance=GREATEST(balance, 0.00), points=GREATEST(points, 388) WHERE phone='18443172453';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18500803805', 'U18500803805', '苏', '', '18500803805', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 20:21:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18500803805' LIMIT 1);
UPDATE users SET nick_name='苏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18500803805';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13155524595', 'U13155524595', '丁家辉ㅤ', '', '13155524595', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 20:09:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13155524595' LIMIT 1);
UPDATE users SET nick_name='丁家辉ㅤ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13155524595';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011870440', 'U18011870440', 'AshLin', '', '18011870440', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 19:56:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011870440' LIMIT 1);
UPDATE users SET nick_name='AshLin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011870440';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760880274', 'U13760880274', '13760880274', '', '13760880274', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 19:52:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760880274' LIMIT 1);
UPDATE users SET nick_name='13760880274', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760880274';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13094211672', 'U13094211672', '13094211672', '', '13094211672', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 19:19:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13094211672' LIMIT 1);
UPDATE users SET nick_name='13094211672', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13094211672';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122194489', 'U18122194489', 'yang', '', '18122194489', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 19:08:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122194489' LIMIT 1);
UPDATE users SET nick_name='yang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122194489';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632436634', 'U13632436634', '。', '', '13632436634', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-03-24 19:04:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632436634' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13632436634';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128306880', 'U13128306880', 'Yik-', '', '13128306880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 18:44:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128306880' LIMIT 1);
UPDATE users SET nick_name='Yik-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128306880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826005068', 'U13826005068', '13826005068', '', '13826005068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 18:00:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826005068' LIMIT 1);
UPDATE users SET nick_name='13826005068', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826005068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626235641', 'U15626235641', 'King Chan', '', '15626235641', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-24 16:54:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626235641' LIMIT 1);
UPDATE users SET nick_name='King Chan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15626235641';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18718919927', 'U18718919927', 'Audrey', '', '18718919927', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 16:36:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18718919927' LIMIT 1);
UPDATE users SET nick_name='Audrey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18718919927';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533318810', 'U13533318810', 'ㅤㅤㅤㅤㅤㅤㅤㅤ🤫', '', '13533318810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 16:32:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533318810' LIMIT 1);
UPDATE users SET nick_name='ㅤㅤㅤㅤㅤㅤㅤㅤ🤫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533318810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751775275', 'U13751775275', '13751775275', '', '13751775275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 16:11:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751775275' LIMIT 1);
UPDATE users SET nick_name='13751775275', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751775275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15816524238', 'U15816524238', '15816524238', '', '15816524238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 16:06:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15816524238' LIMIT 1);
UPDATE users SET nick_name='15816524238', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15816524238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626404844', 'U15626404844', 'Felicia-桦', '', '15626404844', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 14:12:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626404844' LIMIT 1);
UPDATE users SET nick_name='Felicia-桦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626404844';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626130659', 'U15626130659', 'zjw', '', '15626130659', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-03-24 12:08:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626130659' LIMIT 1);
UPDATE users SET nick_name='zjw', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='15626130659';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19324641770', 'U19324641770', 'lulu', '', '19324641770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 11:59:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19324641770' LIMIT 1);
UPDATE users SET nick_name='lulu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19324641770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535184490', 'U13535184490', 'dan', '', '13535184490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-24 11:55:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535184490' LIMIT 1);
UPDATE users SET nick_name='dan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13535184490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626498929', 'U15626498929', '狼', '', '15626498929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 11:05:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626498929' LIMIT 1);
UPDATE users SET nick_name='狼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626498929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19876701824', 'U19876701824', 'Wingg', '', '19876701824', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-24 10:43:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19876701824' LIMIT 1);
UPDATE users SET nick_name='Wingg', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19876701824';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802944138', 'U13802944138', '13802944138', '', '13802944138', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 21:14:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802944138' LIMIT 1);
UPDATE users SET nick_name='13802944138', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802944138';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022466928', 'U18022466928', 'Yan', '', '18022466928', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 20:55:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022466928' LIMIT 1);
UPDATE users SET nick_name='Yan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022466928';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666538656', 'U17666538656', '何小姐', '', '17666538656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 19:52:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666538656' LIMIT 1);
UPDATE users SET nick_name='何小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666538656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500032239', 'U13500032239', '13500032239', '', '13500032239', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 19:39:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500032239' LIMIT 1);
UPDATE users SET nick_name='13500032239', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500032239';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15078823858', 'U15078823858', 'Lumina', '', '15078823858', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 19:26:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15078823858' LIMIT 1);
UPDATE users SET nick_name='Lumina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15078823858';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19921133319', 'U19921133319', '特', '', '19921133319', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 19:16:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19921133319' LIMIT 1);
UPDATE users SET nick_name='特', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19921133319';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802880943', 'U13802880943', '星', '', '13802880943', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 18:39:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802880943' LIMIT 1);
UPDATE users SET nick_name='星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802880943';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620518462', 'U18620518462', 'ZYH', '', '18620518462', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 18:12:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620518462' LIMIT 1);
UPDATE users SET nick_name='ZYH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620518462';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560099487', 'U13560099487', '孙好运', '', '13560099487', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 17:53:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560099487' LIMIT 1);
UPDATE users SET nick_name='孙好运', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560099487';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920513839', 'U15920513839', 'KARYICHAN', '', '15920513839', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 17:39:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920513839' LIMIT 1);
UPDATE users SET nick_name='KARYICHAN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920513839';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15844124399', 'U15844124399', '15844124399', '', '15844124399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 16:33:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15844124399' LIMIT 1);
UPDATE users SET nick_name='15844124399', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15844124399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632382570', 'U13632382570', 'David', '', '13632382570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 16:24:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632382570' LIMIT 1);
UPDATE users SET nick_name='David', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632382570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622257810', 'U15622257810', 'kk', '', '15622257810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 16:22:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622257810' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622257810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18476563559', 'U18476563559', '18476563559', '', '18476563559', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 15:47:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18476563559' LIMIT 1);
UPDATE users SET nick_name='18476563559', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18476563559';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918727633', 'U15918727633', 'Charles', '', '15918727633', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 15:41:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918727633' LIMIT 1);
UPDATE users SET nick_name='Charles', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918727633';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580427813', 'U13580427813', '13580427813', '', '13580427813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 15:15:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580427813' LIMIT 1);
UPDATE users SET nick_name='13580427813', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580427813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724737651', 'U13724737651', 'Ccc', '', '13724737651', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 15:08:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724737651' LIMIT 1);
UPDATE users SET nick_name='Ccc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724737651';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422149312', 'U13422149312', '13422149312', '', '13422149312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 14:52:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422149312' LIMIT 1);
UPDATE users SET nick_name='13422149312', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422149312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15992133786', 'U15992133786', '15992133786', '', '15992133786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 13:26:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15992133786' LIMIT 1);
UPDATE users SET nick_name='15992133786', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15992133786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697436151', 'U13697436151', '13697436151', '', '13697436151', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 12:27:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697436151' LIMIT 1);
UPDATE users SET nick_name='13697436151', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697436151';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535835394', 'U13535835394', 'mona', '', '13535835394', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 12:17:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535835394' LIMIT 1);
UPDATE users SET nick_name='mona', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535835394';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316048018', 'U13316048018', '宝少、', '', '13316048018', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 12:00:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316048018' LIMIT 1);
UPDATE users SET nick_name='宝少、', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316048018';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928261833', 'U13928261833', 'Karlene९🍃', '', '13928261833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 11:51:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928261833' LIMIT 1);
UPDATE users SET nick_name='Karlene९🍃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928261833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15924215945', 'U15924215945', '15924215945', '', '15924215945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 11:49:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15924215945' LIMIT 1);
UPDATE users SET nick_name='15924215945', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15924215945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318808166', 'U13318808166', '大海', '', '13318808166', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-23 11:47:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318808166' LIMIT 1);
UPDATE users SET nick_name='大海', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13318808166';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218346827', 'U18218346827', 'Bbilibala', '', '18218346827', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 10:23:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218346827' LIMIT 1);
UPDATE users SET nick_name='Bbilibala', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218346827';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15811839672', 'U15811839672', 'dxy', '', '15811839672', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 10:19:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15811839672' LIMIT 1);
UPDATE users SET nick_name='dxy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15811839672';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143344174', 'U13143344174', '周树人', '', '13143344174', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 10:14:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143344174' LIMIT 1);
UPDATE users SET nick_name='周树人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143344174';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535443720', 'U13535443720', '四季🌴', '', '13535443720', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 00:23:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535443720' LIMIT 1);
UPDATE users SET nick_name='四季🌴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535443720';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521155873', 'U15521155873', '知行并进', '', '15521155873', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-23 00:20:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521155873' LIMIT 1);
UPDATE users SET nick_name='知行并进', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521155873';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028590912', 'U18028590912', '郑小姐', '', '18028590912', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 22:42:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028590912' LIMIT 1);
UPDATE users SET nick_name='郑小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028590912';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13035836495', 'U13035836495', '安静', '', '13035836495', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 22:39:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13035836495' LIMIT 1);
UPDATE users SET nick_name='安静', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13035836495';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999682399', 'U15999682399', 'LISA', '', '15999682399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 21:40:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999682399' LIMIT 1);
UPDATE users SET nick_name='LISA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999682399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570115205', 'U13570115205', '40🐈', '', '13570115205', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 21:17:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570115205' LIMIT 1);
UPDATE users SET nick_name='40🐈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570115205';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915917580', 'U15915917580', '🍼  盧少爷 ', '', '15915917580', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 20:08:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915917580' LIMIT 1);
UPDATE users SET nick_name='🍼  盧少爷 ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915917580';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17820590754', 'U17820590754', 'Elva', '', '17820590754', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 20:03:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17820590754' LIMIT 1);
UPDATE users SET nick_name='Elva', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17820590754';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535608219', 'U13535608219', 'nuhes', '', '13535608219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 19:52:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535608219' LIMIT 1);
UPDATE users SET nick_name='nuhes', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535608219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565549798', 'U18565549798', '陈', '', '18565549798', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 19:26:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565549798' LIMIT 1);
UPDATE users SET nick_name='陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565549798';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18804898726', 'U18804898726', '18804898726', '', '18804898726', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 18:53:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18804898726' LIMIT 1);
UPDATE users SET nick_name='18804898726', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18804898726';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17688802016', 'U17688802016', '橘子', '', '17688802016', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 17:32:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17688802016' LIMIT 1);
UPDATE users SET nick_name='橘子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17688802016';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13918448717', 'U13918448717', '13918448717', '', '13918448717', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 17:21:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13918448717' LIMIT 1);
UPDATE users SET nick_name='13918448717', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13918448717';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578420026', 'U18578420026', 'NANA', '', '18578420026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 17:00:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578420026' LIMIT 1);
UPDATE users SET nick_name='NANA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578420026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360404338', 'U15360404338', 'KONG', '', '15360404338', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 16:29:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360404338' LIMIT 1);
UPDATE users SET nick_name='KONG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360404338';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13668998400', 'U13668998400', '李明成  Lee', '', '13668998400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 16:20:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13668998400' LIMIT 1);
UPDATE users SET nick_name='李明成  Lee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13668998400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560103842', 'U13560103842', '大大大宁宁', '', '13560103842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 15:20:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560103842' LIMIT 1);
UPDATE users SET nick_name='大大大宁宁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560103842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013211347', 'U15013211347', '祖', '', '15013211347', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 15:11:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013211347' LIMIT 1);
UPDATE users SET nick_name='祖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013211347';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580331436', 'U13580331436', '林小姐', '', '13580331436', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 15:03:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580331436' LIMIT 1);
UPDATE users SET nick_name='林小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580331436';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819825505', 'U18819825505', '山朋', '', '18819825505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 14:00:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819825505' LIMIT 1);
UPDATE users SET nick_name='山朋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819825505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15527291529', 'U15527291529', '潘小姐', '', '15527291529', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 13:53:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15527291529' LIMIT 1);
UPDATE users SET nick_name='潘小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15527291529';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060937796', 'U13060937796', 'Kayee 🍖', '', '13060937796', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 13:41:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060937796' LIMIT 1);
UPDATE users SET nick_name='Kayee 🍖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060937796';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013043038', 'U15013043038', '15013043038', '', '15013043038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 13:16:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013043038' LIMIT 1);
UPDATE users SET nick_name='15013043038', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013043038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13380040717', 'U13380040717', 'dou.', '', '13380040717', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 12:55:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13380040717' LIMIT 1);
UPDATE users SET nick_name='dou.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13380040717';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819457693', 'U18819457693', '咩啊', '', '18819457693', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 12:37:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819457693' LIMIT 1);
UPDATE users SET nick_name='咩啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819457693';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602040024', 'U18602040024', 'Leo🐳', '', '18602040024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 12:36:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602040024' LIMIT 1);
UPDATE users SET nick_name='Leo🐳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602040024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520368966', 'U18520368966', 'Dylan', '', '18520368966', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 12:22:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520368966' LIMIT 1);
UPDATE users SET nick_name='Dylan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520368966';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17359437042', 'U17359437042', '11', '', '17359437042', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 12:12:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17359437042' LIMIT 1);
UPDATE users SET nick_name='11', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17359437042';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680165074', 'U18680165074', '吃个翅尖', '', '18680165074', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 12:08:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680165074' LIMIT 1);
UPDATE users SET nick_name='吃个翅尖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680165074';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760833142', 'U13760833142', '🐤 Cinderella', '', '13760833142', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 12:06:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760833142' LIMIT 1);
UPDATE users SET nick_name='🐤 Cinderella', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760833142';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128625081', 'U13128625081', 'KK', '', '13128625081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 11:58:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128625081' LIMIT 1);
UPDATE users SET nick_name='KK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128625081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917395994', 'U15917395994', 'ziven', '', '15917395994', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 11:56:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917395994' LIMIT 1);
UPDATE users SET nick_name='ziven', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917395994';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828403122', 'U13828403122', 'gassy_lin', '', '13828403122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 11:22:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828403122' LIMIT 1);
UPDATE users SET nick_name='gassy_lin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828403122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819461637', 'U18819461637', 'vvv', '', '18819461637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-22 09:31:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819461637' LIMIT 1);
UPDATE users SET nick_name='vvv', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819461637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631480873', 'U13631480873', 'JohnnyYiu', '', '13631480873', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 22:58:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631480873' LIMIT 1);
UPDATE users SET nick_name='JohnnyYiu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631480873';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360858130', 'U15360858130', '阿司匹林', '', '15360858130', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 22:58:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360858130' LIMIT 1);
UPDATE users SET nick_name='阿司匹林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360858130';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520741236', 'U18520741236', 'hellhins', '', '18520741236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 22:46:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520741236' LIMIT 1);
UPDATE users SET nick_name='hellhins', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520741236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533318690', 'U13533318690', '13533318690', '', '13533318690', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 20:54:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533318690' LIMIT 1);
UPDATE users SET nick_name='13533318690', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533318690';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660242678', 'U13660242678', '13660242678', '', '13660242678', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 18:54:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660242678' LIMIT 1);
UPDATE users SET nick_name='13660242678', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660242678';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17681811698', 'U17681811698', '炎', '', '17681811698', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 18:06:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17681811698' LIMIT 1);
UPDATE users SET nick_name='炎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17681811698';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028513637', 'U18028513637', '木頭°、', '', '18028513637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 17:35:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028513637' LIMIT 1);
UPDATE users SET nick_name='木頭°、', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028513637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600468186', 'U13600468186', 'baoooooo', '', '13600468186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 17:32:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600468186' LIMIT 1);
UPDATE users SET nick_name='baoooooo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600468186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902384365', 'U18902384365', 'Yoki 🍅', '', '18902384365', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 17:30:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902384365' LIMIT 1);
UPDATE users SET nick_name='Yoki 🍅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18902384365';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664254845', 'U18664254845', '猫南北', '', '18664254845', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 15:45:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664254845' LIMIT 1);
UPDATE users SET nick_name='猫南北', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664254845';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622147547', 'U15622147547', '15622147547', '', '15622147547', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 15:01:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622147547' LIMIT 1);
UPDATE users SET nick_name='15622147547', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622147547';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813758115', 'U18813758115', '18813758115', '', '18813758115', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 14:41:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813758115' LIMIT 1);
UPDATE users SET nick_name='18813758115', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18813758115';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13146206028', 'U13146206028', 'vic', '', '13146206028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 14:28:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13146206028' LIMIT 1);
UPDATE users SET nick_name='vic', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13146206028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128224087', 'U13128224087', '13128224087', '', '13128224087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 12:20:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128224087' LIMIT 1);
UPDATE users SET nick_name='13128224087', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128224087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660037188', 'U13660037188', '123', '', '13660037188', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 12:16:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660037188' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660037188';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751809990', 'U13751809990', '贝塔', '', '13751809990', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 399, '2025-03-21 10:53:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751809990' LIMIT 1);
UPDATE users SET nick_name='贝塔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 399) WHERE phone='13751809990';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627695071', 'U15627695071', 'Lay a', '', '15627695071', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 10:30:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627695071' LIMIT 1);
UPDATE users SET nick_name='Lay a', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627695071';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876281703', 'U15876281703', '两周后', '', '15876281703', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 10:25:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876281703' LIMIT 1);
UPDATE users SET nick_name='两周后', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876281703';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826428663', 'U13826428663', '13826428663', '', '13826428663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-21 10:21:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826428663' LIMIT 1);
UPDATE users SET nick_name='13826428663', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826428663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15303233216', 'U15303233216', 'FortuneCorner', '', '15303233216', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 117, '2025-03-21 09:54:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15303233216' LIMIT 1);
UPDATE users SET nick_name='FortuneCorner', balance=GREATEST(balance, 0.00), points=GREATEST(points, 117) WHERE phone='15303233216';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13652858702', 'U13652858702', '梁', '', '13652858702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 22:00:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13652858702' LIMIT 1);
UPDATE users SET nick_name='梁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13652858702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570223720', 'U13570223720', '🌓CHENLIJUN', '', '13570223720', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 21:51:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570223720' LIMIT 1);
UPDATE users SET nick_name='🌓CHENLIJUN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570223720';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710103741', 'U13710103741', '13710103741', '', '13710103741', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 21:38:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710103741' LIMIT 1);
UPDATE users SET nick_name='13710103741', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710103741';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920195941', 'U15920195941', '大树', '', '15920195941', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 20:58:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920195941' LIMIT 1);
UPDATE users SET nick_name='大树', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920195941';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17818664176', 'U17818664176', 'gg', '', '17818664176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 19:46:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17818664176' LIMIT 1);
UPDATE users SET nick_name='gg', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17818664176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168658622', 'U13168658622', 'Y.', '', '13168658622', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 18:59:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168658622' LIMIT 1);
UPDATE users SET nick_name='Y.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13168658622';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332806323', 'U13332806323', 'kinko', '', '13332806323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 17:06:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332806323' LIMIT 1);
UPDATE users SET nick_name='kinko', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13332806323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15908890921', 'U15908890921', '15908890921', '', '15908890921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 16:48:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15908890921' LIMIT 1);
UPDATE users SET nick_name='15908890921', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15908890921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13026862622', 'U13026862622', '13026862622', '', '13026862622', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 15:31:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13026862622' LIMIT 1);
UPDATE users SET nick_name='13026862622', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13026862622';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120720564', 'U19120720564', '19120720564', '', '19120720564', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 14:16:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120720564' LIMIT 1);
UPDATE users SET nick_name='19120720564', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120720564';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609010427', 'U13609010427', '😧', '', '13609010427', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-03-20 13:39:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609010427' LIMIT 1);
UPDATE users SET nick_name='😧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13609010427';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15735080985', 'U15735080985', '15735080985', '', '15735080985', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 13:08:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15735080985' LIMIT 1);
UPDATE users SET nick_name='15735080985', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15735080985';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13169352373', 'U13169352373', '13169352373', '', '13169352373', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 13:06:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13169352373' LIMIT 1);
UPDATE users SET nick_name='13169352373', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13169352373';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678917378', 'U13678917378', 'Eatting.', '', '13678917378', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 11:08:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678917378' LIMIT 1);
UPDATE users SET nick_name='Eatting.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13678917378';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13163222928', 'U13163222928', 'July Min🍉', '', '13163222928', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-20 10:19:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13163222928' LIMIT 1);
UPDATE users SET nick_name='July Min🍉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13163222928';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751769632', 'U13751769632', '13751769632', '', '13751769632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 21:46:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751769632' LIMIT 1);
UPDATE users SET nick_name='13751769632', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751769632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620018482', 'U18620018482', '星|||', '', '18620018482', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 18:40:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620018482' LIMIT 1);
UPDATE users SET nick_name='星|||', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620018482';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520396988', 'U18520396988', '18520396988', '', '18520396988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 18:34:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520396988' LIMIT 1);
UPDATE users SET nick_name='18520396988', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520396988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13547812643', 'U13547812643', '云端上的气泡', '', '13547812643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 17:06:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13547812643' LIMIT 1);
UPDATE users SET nick_name='云端上的气泡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13547812643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427431482', 'U13427431482', '曹正正', '', '13427431482', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 16:08:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427431482' LIMIT 1);
UPDATE users SET nick_name='曹正正', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427431482';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18681546917', 'U18681546917', 'Koko', '', '18681546917', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 15:52:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18681546917' LIMIT 1);
UPDATE users SET nick_name='Koko', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18681546917';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922788951', 'U18922788951', '18922788951', '', '18922788951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 15:29:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922788951' LIMIT 1);
UPDATE users SET nick_name='18922788951', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922788951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13553776794', 'U13553776794', '咩咩', '', '13553776794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 15:09:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13553776794' LIMIT 1);
UPDATE users SET nick_name='咩咩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13553776794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18370694571', 'U18370694571', '18370694571', '', '18370694571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 14:55:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18370694571' LIMIT 1);
UPDATE users SET nick_name='18370694571', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18370694571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600034870', 'U13600034870', 'Lin', '', '13600034870', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 14:46:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600034870' LIMIT 1);
UPDATE users SET nick_name='Lin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600034870';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819466973', 'U18819466973', 'PollyLi', '', '18819466973', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-03-19 13:49:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819466973' LIMIT 1);
UPDATE users SET nick_name='PollyLi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='18819466973';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168344242', 'U13168344242', '13168344242', '', '13168344242', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 13:48:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168344242' LIMIT 1);
UPDATE users SET nick_name='13168344242', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13168344242';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688860002', 'U18688860002', '危行言孙', '', '18688860002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2025-03-19 13:34:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688860002' LIMIT 1);
UPDATE users SET nick_name='危行言孙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='18688860002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433270170', 'U13433270170', 'kazon', '', '13433270170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 12:38:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433270170' LIMIT 1);
UPDATE users SET nick_name='kazon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433270170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18510361986', 'U18510361986', '多寶', '', '18510361986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 11:59:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18510361986' LIMIT 1);
UPDATE users SET nick_name='多寶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18510361986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602339520', 'U15602339520', 'Big童', '', '15602339520', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 11:56:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602339520' LIMIT 1);
UPDATE users SET nick_name='Big童', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602339520';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13414928326', 'U13414928326', '😁嘻嘻😁', '', '13414928326', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 11:36:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13414928326' LIMIT 1);
UPDATE users SET nick_name='😁嘻嘻😁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13414928326';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922362441', 'U13922362441', '13922362441', '', '13922362441', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 11:09:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922362441' LIMIT 1);
UPDATE users SET nick_name='13922362441', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922362441';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632443341', 'U13632443341', '聪少', '', '13632443341', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-03-19 10:43:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632443341' LIMIT 1);
UPDATE users SET nick_name='聪少', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13632443341';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422457786', 'U13422457786', '.迎.', '', '13422457786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-19 10:27:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422457786' LIMIT 1);
UPDATE users SET nick_name='.迎.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422457786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13413764013', 'U13413764013', '🍉🍉', '', '13413764013', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 23:55:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13413764013' LIMIT 1);
UPDATE users SET nick_name='🍉🍉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13413764013';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902248593', 'U18902248593', 'Hugo', '', '18902248593', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 20:59:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902248593' LIMIT 1);
UPDATE users SET nick_name='Hugo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18902248593';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13026862621', 'U13026862621', '1', '', '13026862621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 20:50:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13026862621' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13026862621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19128700964', 'U19128700964', '19128700964', '', '19128700964', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 19:26:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19128700964' LIMIT 1);
UPDATE users SET nick_name='19128700964', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19128700964';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560387266', 'U13560387266', 'Mr.W', '', '13560387266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 17:38:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560387266' LIMIT 1);
UPDATE users SET nick_name='Mr.W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560387266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815880478', 'U15815880478', '声威按揭侯丽清', '', '15815880478', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 17:16:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815880478' LIMIT 1);
UPDATE users SET nick_name='声威按揭侯丽清', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815880478';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113302860', 'U13113302860', 'qq', '', '13113302860', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 17:04:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113302860' LIMIT 1);
UPDATE users SET nick_name='qq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13113302860';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520020902', 'U18520020902', '光', '', '18520020902', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 16:12:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520020902' LIMIT 1);
UPDATE users SET nick_name='光', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520020902';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15173041514', 'U15173041514', '15173041514', '', '15173041514', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 15:04:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15173041514' LIMIT 1);
UPDATE users SET nick_name='15173041514', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15173041514';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15170055920', 'U15170055920', 'Nino', '', '15170055920', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 14:32:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15170055920' LIMIT 1);
UPDATE users SET nick_name='Nino', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15170055920';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544325613', 'U13544325613', '13544325613', '', '13544325613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 13:10:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544325613' LIMIT 1);
UPDATE users SET nick_name='13544325613', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544325613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360826051', 'U15360826051', '卷发 女孩👧', '', '15360826051', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 12:26:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360826051' LIMIT 1);
UPDATE users SET nick_name='卷发 女孩👧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360826051';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825181001', 'U13825181001', 'Jenny', '', '13825181001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 11:56:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825181001' LIMIT 1);
UPDATE users SET nick_name='Jenny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825181001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688499873', 'U18688499873', '琦', '', '18688499873', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-18 11:03:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688499873' LIMIT 1);
UPDATE users SET nick_name='琦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688499873';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808889140', 'U13808889140', 'Mihir Shah', '', '13808889140', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-03-18 10:25:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808889140' LIMIT 1);
UPDATE users SET nick_name='Mihir Shah', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13808889140';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760863786', 'U13760863786', '葡萄丫', '', '13760863786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-17 20:59:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760863786' LIMIT 1);
UPDATE users SET nick_name='葡萄丫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760863786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760824238', 'U13760824238', '丁丁允🌺', '', '13760824238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-17 20:13:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760824238' LIMIT 1);
UPDATE users SET nick_name='丁丁允🌺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760824238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622310281', 'U15622310281', '曾祥龙', '', '15622310281', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-17 19:13:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622310281' LIMIT 1);
UPDATE users SET nick_name='曾祥龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622310281';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13998456250', 'U13998456250', '注意看  这个女人叫小美', '', '13998456250', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-03-17 18:59:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13998456250' LIMIT 1);
UPDATE users SET nick_name='注意看  这个女人叫小美', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13998456250';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18024058369', 'U18024058369', '阳哥', '', '18024058369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-17 18:57:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18024058369' LIMIT 1);
UPDATE users SET nick_name='阳哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18024058369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18742464147', 'U18742464147', '18742464147', '', '18742464147', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-17 18:13:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18742464147' LIMIT 1);
UPDATE users SET nick_name='18742464147', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18742464147';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578774802', 'U18578774802', 'Nuyoah', '', '18578774802', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-17 16:39:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578774802' LIMIT 1);
UPDATE users SET nick_name='Nuyoah', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578774802';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17020091512', 'U17020091512', '17020091512', '', '17020091512', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-17 15:52:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17020091512' LIMIT 1);
UPDATE users SET nick_name='17020091512', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17020091512';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642635989', 'U13642635989', 'Windy钟', '', '13642635989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-17 12:56:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642635989' LIMIT 1);
UPDATE users SET nick_name='Windy钟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642635989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922272846', 'U18922272846', '18922272846', '', '18922272846', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-17 12:42:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922272846' LIMIT 1);
UPDATE users SET nick_name='18922272846', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922272846';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622868194', 'U13622868194', '13622868194', '', '13622868194', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-17 11:46:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622868194' LIMIT 1);
UPDATE users SET nick_name='13622868194', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622868194';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13686911363', 'U13686911363', '菀贵人口齿越发伶俐', '', '13686911363', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-17 10:09:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13686911363' LIMIT 1);
UPDATE users SET nick_name='菀贵人口齿越发伶俐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13686911363';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927527328', 'U19927527328', 'V', '', '19927527328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 22:22:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927527328' LIMIT 1);
UPDATE users SET nick_name='V', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927527328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602814492', 'U13602814492', '13602814492', '', '13602814492', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 20:43:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602814492' LIMIT 1);
UPDATE users SET nick_name='13602814492', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602814492';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18817833662', 'U18817833662', '18817833662', '', '18817833662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 19:15:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18817833662' LIMIT 1);
UPDATE users SET nick_name='18817833662', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18817833662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15016515104', 'U15016515104', '嘛古呐～', '', '15016515104', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 17:39:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15016515104' LIMIT 1);
UPDATE users SET nick_name='嘛古呐～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15016515104';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17369543611', 'U17369543611', '迈迈公主', '', '17369543611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 17:19:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17369543611' LIMIT 1);
UPDATE users SET nick_name='迈迈公主', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17369543611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631369875', 'U13631369875', 'Victor', '', '13631369875', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 17:07:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631369875' LIMIT 1);
UPDATE users SET nick_name='Victor', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631369875';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726758594', 'U13726758594', '李珊珊', '', '13726758594', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 16:57:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726758594' LIMIT 1);
UPDATE users SET nick_name='李珊珊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726758594';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817680987', 'U17817680987', '陳樂融', '', '17817680987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 16:51:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817680987' LIMIT 1);
UPDATE users SET nick_name='陳樂融', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817680987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13714549403', 'U13714549403', 'Billy', '', '13714549403', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 16:38:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13714549403' LIMIT 1);
UPDATE users SET nick_name='Billy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13714549403';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17607246989', 'U17607246989', '星火', '', '17607246989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 16:00:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17607246989' LIMIT 1);
UPDATE users SET nick_name='星火', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17607246989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13777770227', 'U13777770227', '啦啦啦', '', '13777770227', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 15:29:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13777770227' LIMIT 1);
UPDATE users SET nick_name='啦啦啦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13777770227';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13690887666', 'U13690887666', 'Song', '', '13690887666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 15:25:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13690887666' LIMIT 1);
UPDATE users SET nick_name='Song', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13690887666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15179454760', 'U15179454760', '章鱼小丸子', '', '15179454760', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 15:10:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15179454760' LIMIT 1);
UPDATE users SET nick_name='章鱼小丸子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15179454760';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760762028', 'U13760762028', '银河证券陈国峰', '', '13760762028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 14:35:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760762028' LIMIT 1);
UPDATE users SET nick_name='银河证券陈国峰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760762028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18829242093', 'U18829242093', 'shaw', '', '18829242093', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 14:20:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18829242093' LIMIT 1);
UPDATE users SET nick_name='shaw', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18829242093';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13728006228', 'U13728006228', '钟先生', '', '13728006228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 14:14:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13728006228' LIMIT 1);
UPDATE users SET nick_name='钟先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13728006228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15015589737', 'U15015589737', '弗朗西斯科 戈雅', '', '15015589737', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 14:11:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15015589737' LIMIT 1);
UPDATE users SET nick_name='弗朗西斯科 戈雅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15015589737';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922115688', 'U18922115688', '后天', '', '18922115688', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-03-16 13:39:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922115688' LIMIT 1);
UPDATE users SET nick_name='后天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18922115688';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15323320975', 'U15323320975', '张先生', '', '15323320975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 12:03:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15323320975' LIMIT 1);
UPDATE users SET nick_name='张先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15323320975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17306695919', 'U17306695919', '刀刀', '', '17306695919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 11:46:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17306695919' LIMIT 1);
UPDATE users SET nick_name='刀刀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17306695919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15857592324', 'U15857592324', '果粒橙', '', '15857592324', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 11:45:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15857592324' LIMIT 1);
UPDATE users SET nick_name='果粒橙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15857592324';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13536602550', 'U13536602550', 'Savanna', '', '13536602550', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 11:17:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13536602550' LIMIT 1);
UPDATE users SET nick_name='Savanna', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13536602550';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819179274', 'U18819179274', '新手上路', '', '18819179274', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-16 10:28:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819179274' LIMIT 1);
UPDATE users SET nick_name='新手上路', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819179274';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416113240', 'U13416113240', '13416113240', '', '13416113240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 21:15:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416113240' LIMIT 1);
UPDATE users SET nick_name='13416113240', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416113240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13699711477', 'U13699711477', '13699711477', '', '13699711477', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 21:15:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13699711477' LIMIT 1);
UPDATE users SET nick_name='13699711477', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13699711477';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760828519', 'U13760828519', '13760828519', '', '13760828519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 20:40:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760828519' LIMIT 1);
UPDATE users SET nick_name='13760828519', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760828519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13413708402', 'U13413708402', 'H゜', '', '13413708402', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 19:32:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13413708402' LIMIT 1);
UPDATE users SET nick_name='H゜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13413708402';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15387380941', 'U15387380941', '15387380941', '', '15387380941', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 19:03:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15387380941' LIMIT 1);
UPDATE users SET nick_name='15387380941', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15387380941';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15005190076', 'U15005190076', '鱼', '', '15005190076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 18:32:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15005190076' LIMIT 1);
UPDATE users SET nick_name='鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15005190076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570283951', 'U13570283951', '13570283951', '', '13570283951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 18:18:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570283951' LIMIT 1);
UPDATE users SET nick_name='13570283951', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570283951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13712518226', 'U13712518226', 'jackey', '', '13712518226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 17:51:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13712518226' LIMIT 1);
UPDATE users SET nick_name='jackey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13712518226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15817086996', 'U15817086996', 'Carlyub', '', '15817086996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-03-15 17:45:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15817086996' LIMIT 1);
UPDATE users SET nick_name='Carlyub', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15817086996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925113999', 'U18925113999', 'LSK思考', '', '18925113999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 17:34:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925113999' LIMIT 1);
UPDATE users SET nick_name='LSK思考', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925113999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18616233577', 'U18616233577', '18616233577', '', '18616233577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 17:32:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18616233577' LIMIT 1);
UPDATE users SET nick_name='18616233577', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18616233577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560211824', 'U13560211824', '周周颖👌🏻', '', '13560211824', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 17:05:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560211824' LIMIT 1);
UPDATE users SET nick_name='周周颖👌🏻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560211824';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926110095', 'U13926110095', '13926110095', '', '13926110095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 16:50:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926110095' LIMIT 1);
UPDATE users SET nick_name='13926110095', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926110095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620799747', 'U17620799747', '强森酒荟(微信不收款)', '', '17620799747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 16:46:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620799747' LIMIT 1);
UPDATE users SET nick_name='强森酒荟(微信不收款)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620799747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15221332696', 'U15221332696', '77', '', '15221332696', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 16:32:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15221332696' LIMIT 1);
UPDATE users SET nick_name='77', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15221332696';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17328635823', 'U17328635823', 'lll.', '', '17328635823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 16:13:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17328635823' LIMIT 1);
UPDATE users SET nick_name='lll.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17328635823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13428830247', 'U13428830247', '灰色轨迹', '', '13428830247', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 16:12:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13428830247' LIMIT 1);
UPDATE users SET nick_name='灰色轨迹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13428830247';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022491890', 'U18022491890', '18022491890', '', '18022491890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 15:59:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022491890' LIMIT 1);
UPDATE users SET nick_name='18022491890', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022491890';
