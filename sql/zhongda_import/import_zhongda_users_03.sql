SET NAMES utf8mb4;
-- 中大店用户导入 part 3 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013017810', 'U15013017810', '15013017810', '', '15013017810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 18:21:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013017810' LIMIT 1);
UPDATE users SET nick_name='15013017810', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013017810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620492280', 'U18620492280', '獨', '', '18620492280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 16:49:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620492280' LIMIT 1);
UPDATE users SET nick_name='獨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620492280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15502253795', 'U15502253795', '三笔', '', '15502253795', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 15:39:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15502253795' LIMIT 1);
UPDATE users SET nick_name='三笔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15502253795';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724972055', 'U13724972055', '=]', '', '13724972055', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 14:11:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724972055' LIMIT 1);
UPDATE users SET nick_name='=]', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724972055';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662414328', 'U13662414328', '朱朱', '', '13662414328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 13:54:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662414328' LIMIT 1);
UPDATE users SET nick_name='朱朱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662414328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160868234', 'U13160868234', '13160868234', '', '13160868234', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 13:38:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160868234' LIMIT 1);
UPDATE users SET nick_name='13160868234', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13160868234';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13126282213', 'U13126282213', '13126282213', '', '13126282213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 13:12:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13126282213' LIMIT 1);
UPDATE users SET nick_name='13126282213', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13126282213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602266933', 'U15602266933', '15602266933', '', '15602266933', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 12:42:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602266933' LIMIT 1);
UPDATE users SET nick_name='15602266933', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602266933';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826412166', 'U18826412166', '米修思', '', '18826412166', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 11:53:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826412166' LIMIT 1);
UPDATE users SET nick_name='米修思', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826412166';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988916181', 'U18988916181', '白玉汤', '', '18988916181', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 11:23:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988916181' LIMIT 1);
UPDATE users SET nick_name='白玉汤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988916181';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15220013042', 'U15220013042', 'Cocona💫', '', '15220013042', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 10:48:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15220013042' LIMIT 1);
UPDATE users SET nick_name='Cocona💫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15220013042';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632360936', 'U13632360936', '菲', '', '13632360936', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 09:33:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632360936' LIMIT 1);
UPDATE users SET nick_name='菲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632360936';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602824264', 'U13602824264', '谭润基', '', '13602824264', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-28 01:10:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602824264' LIMIT 1);
UPDATE users SET nick_name='谭润基', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602824264';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521023178', 'U15521023178', '🍞', '', '15521023178', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 22:16:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521023178' LIMIT 1);
UPDATE users SET nick_name='🍞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521023178';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416350474', 'U13416350474', 'CC', '', '13416350474', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 22:02:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416350474' LIMIT 1);
UPDATE users SET nick_name='CC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416350474';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729893388', 'U13729893388', '13729893388', '', '13729893388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 20:56:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729893388' LIMIT 1);
UPDATE users SET nick_name='13729893388', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729893388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760877815', 'U13760877815', '13760877815', '', '13760877815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 20:53:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760877815' LIMIT 1);
UPDATE users SET nick_name='13760877815', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760877815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15374051898', 'U15374051898', '༺ཌ༈༒༈ད༻', '', '15374051898', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 20:39:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15374051898' LIMIT 1);
UPDATE users SET nick_name='༺ཌ༈༒༈ད༻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15374051898';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928124487', 'U18928124487', '18928124487', '', '18928124487', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 20:16:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928124487' LIMIT 1);
UPDATE users SET nick_name='18928124487', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928124487';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122288915', 'U18122288915', '蕉', '', '18122288915', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 18:30:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122288915' LIMIT 1);
UPDATE users SET nick_name='蕉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122288915';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18522987006', 'U18522987006', 'Lancelot', '', '18522987006', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 14:49:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18522987006' LIMIT 1);
UPDATE users SET nick_name='Lancelot', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18522987006';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570437765', 'U13570437765', '王', '', '13570437765', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 14:08:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570437765' LIMIT 1);
UPDATE users SET nick_name='王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570437765';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013055099', 'U15013055099', '新乐园xx', '', '15013055099', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2026-06-27 12:50:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013055099' LIMIT 1);
UPDATE users SET nick_name='新乐园xx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='15013055099';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627869830', 'U15627869830', '15627869830', '', '15627869830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 12:11:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627869830' LIMIT 1);
UPDATE users SET nick_name='15627869830', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627869830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918181888', 'U15918181888', '15918181888', '', '15918181888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 11:39:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918181888' LIMIT 1);
UPDATE users SET nick_name='15918181888', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918181888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318741591', 'U13318741591', 'Shirley⁴¹³¹¹⁹', '', '13318741591', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 11:19:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318741591' LIMIT 1);
UPDATE users SET nick_name='Shirley⁴¹³¹¹⁹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318741591';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13917525987', 'U13917525987', '13917525987', '', '13917525987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 11:13:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13917525987' LIMIT 1);
UPDATE users SET nick_name='13917525987', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13917525987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15905802766', 'U15905802766', '良景', '', '15905802766', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-27 00:04:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15905802766' LIMIT 1);
UPDATE users SET nick_name='良景', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15905802766';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160969004', 'U13160969004', '13160969004', '', '13160969004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-26 20:30:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160969004' LIMIT 1);
UPDATE users SET nick_name='13160969004', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13160969004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929545050', 'U13929545050', '13929545050', '', '13929545050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-26 15:36:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929545050' LIMIT 1);
UPDATE users SET nick_name='13929545050', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929545050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15639000209', 'U15639000209', '15639000209', '', '15639000209', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-26 13:42:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15639000209' LIMIT 1);
UPDATE users SET nick_name='15639000209', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15639000209';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826272732', 'U18826272732', '18826272732', '', '18826272732', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-26 13:28:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826272732' LIMIT 1);
UPDATE users SET nick_name='18826272732', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826272732';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922702190', 'U18922702190', '18922702190', '', '18922702190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-26 13:23:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922702190' LIMIT 1);
UPDATE users SET nick_name='18922702190', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922702190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678931028', 'U13678931028', 'Sharon🍟', '', '13678931028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-26 13:04:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678931028' LIMIT 1);
UPDATE users SET nick_name='Sharon🍟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13678931028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16621257107', 'U16621257107', '16621257107', '', '16621257107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-26 11:36:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16621257107' LIMIT 1);
UPDATE users SET nick_name='16621257107', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16621257107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760656280', 'U13760656280', '13760656280', '', '13760656280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-25 23:13:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760656280' LIMIT 1);
UPDATE users SET nick_name='13760656280', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760656280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19872931137', 'U19872931137', '19872931137', '', '19872931137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-25 20:04:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19872931137' LIMIT 1);
UPDATE users SET nick_name='19872931137', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19872931137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620118064', 'U18620118064', '刘六六', '', '18620118064', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-25 16:38:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620118064' LIMIT 1);
UPDATE users SET nick_name='刘六六', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620118064';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15520790995', 'U15520790995', '15520790995', '', '15520790995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-25 15:11:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15520790995' LIMIT 1);
UPDATE users SET nick_name='15520790995', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15520790995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640873797', 'U13640873797', 'shell', '', '13640873797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-25 14:59:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640873797' LIMIT 1);
UPDATE users SET nick_name='shell', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640873797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13968801366', 'U13968801366', '大海', '', '13968801366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-25 11:29:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13968801366' LIMIT 1);
UPDATE users SET nick_name='大海', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13968801366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760785856', 'U13760785856', '13760785856', '', '13760785856', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-24 21:12:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760785856' LIMIT 1);
UPDATE users SET nick_name='13760785856', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760785856';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824668959', 'U13824668959', '13824668959', '', '13824668959', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-24 21:08:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824668959' LIMIT 1);
UPDATE users SET nick_name='13824668959', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824668959';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15766039500', 'U15766039500', '是小怡呀', '', '15766039500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-24 20:05:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15766039500' LIMIT 1);
UPDATE users SET nick_name='是小怡呀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15766039500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19928751570', 'U19928751570', 'cmx', '', '19928751570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-24 16:23:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19928751570' LIMIT 1);
UPDATE users SET nick_name='cmx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19928751570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18569126056', 'U18569126056', '.haiku', '', '18569126056', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 166, '2026-06-24 13:40:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18569126056' LIMIT 1);
UPDATE users SET nick_name='.haiku', balance=GREATEST(balance, 0.00), points=GREATEST(points, 166) WHERE phone='18569126056';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17278617228', 'U17278617228', 'lena', '', '17278617228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-24 10:12:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17278617228' LIMIT 1);
UPDATE users SET nick_name='lena', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17278617228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922397081', 'U13922397081', '13922397081', '', '13922397081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-23 19:19:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922397081' LIMIT 1);
UPDATE users SET nick_name='13922397081', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922397081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640672021', 'U13640672021', 'eva', '', '13640672021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-23 18:15:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640672021' LIMIT 1);
UPDATE users SET nick_name='eva', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640672021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18509233327', 'U18509233327', '麻花', '', '18509233327', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-23 15:44:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18509233327' LIMIT 1);
UPDATE users SET nick_name='麻花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18509233327';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521077068', 'U15521077068', '15521077068', '', '15521077068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-23 14:04:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521077068' LIMIT 1);
UPDATE users SET nick_name='15521077068', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521077068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18144880165', 'U18144880165', 'Tong_Y', '', '18144880165', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-23 13:57:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18144880165' LIMIT 1);
UPDATE users SET nick_name='Tong_Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18144880165';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13661927846', 'U13661927846', '13661927846', '', '13661927846', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-23 11:56:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13661927846' LIMIT 1);
UPDATE users SET nick_name='13661927846', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13661927846';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503060470', 'U13503060470', '晓宇', '', '13503060470', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-23 11:55:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503060470' LIMIT 1);
UPDATE users SET nick_name='晓宇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503060470';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632194200', 'U13632194200', 'kkkkk', '', '13632194200', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-23 11:20:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632194200' LIMIT 1);
UPDATE users SET nick_name='kkkkk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632194200';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18675847456', 'U18675847456', '18675847456', '', '18675847456', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-23 11:02:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18675847456' LIMIT 1);
UPDATE users SET nick_name='18675847456', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18675847456';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15107541184', 'U15107541184', '1n', '', '15107541184', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-22 23:54:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15107541184' LIMIT 1);
UPDATE users SET nick_name='1n', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15107541184';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18219443213', 'U18219443213', '18219443213', '', '18219443213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-22 18:19:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18219443213' LIMIT 1);
UPDATE users SET nick_name='18219443213', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18219443213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15014293089', 'U15014293089', '15014293089', '', '15014293089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-22 17:36:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15014293089' LIMIT 1);
UPDATE users SET nick_name='15014293089', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15014293089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902078585', 'U15902078585', '15902078585', '', '15902078585', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-22 17:12:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902078585' LIMIT 1);
UPDATE users SET nick_name='15902078585', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902078585';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13058049248', 'U13058049248', 'Ben', '', '13058049248', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-22 14:04:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13058049248' LIMIT 1);
UPDATE users SET nick_name='Ben', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13058049248';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18603072603', 'U18603072603', 'Icy', '', '18603072603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-22 13:55:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18603072603' LIMIT 1);
UPDATE users SET nick_name='Icy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18603072603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680294028', 'U18680294028', 'Audere est Facere', '', '18680294028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-22 09:08:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680294028' LIMIT 1);
UPDATE users SET nick_name='Audere est Facere', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680294028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15145856394', 'U15145856394', '洋葱味道', '', '15145856394', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-22 08:16:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15145856394' LIMIT 1);
UPDATE users SET nick_name='洋葱味道', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15145856394';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19902276377', 'U19902276377', '🤩', '', '19902276377', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 22:50:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19902276377' LIMIT 1);
UPDATE users SET nick_name='🤩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19902276377';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824374378', 'U13824374378', '老绵羊的鹅子', '', '13824374378', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 22:39:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824374378' LIMIT 1);
UPDATE users SET nick_name='老绵羊的鹅子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824374378';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535269839', 'U13535269839', 'Tennis', '', '13535269839', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 22:08:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535269839' LIMIT 1);
UPDATE users SET nick_name='Tennis', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535269839';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502014666', 'U18502014666', '十日十月', '', '18502014666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 18:17:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502014666' LIMIT 1);
UPDATE users SET nick_name='十日十月', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18502014666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13904022939', 'U13904022939', '陈乙', '', '13904022939', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 18:13:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13904022939' LIMIT 1);
UPDATE users SET nick_name='陈乙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13904022939';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18810254688', 'U18810254688', 'joy', '', '18810254688', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 17:24:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18810254688' LIMIT 1);
UPDATE users SET nick_name='joy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18810254688';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622172245', 'U15622172245', '15622172245', '', '15622172245', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 17:10:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622172245' LIMIT 1);
UPDATE users SET nick_name='15622172245', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622172245';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18594002333', 'U18594002333', '吴健波', '', '18594002333', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 15:58:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18594002333' LIMIT 1);
UPDATE users SET nick_name='吴健波', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18594002333';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18757100731', 'U18757100731', '叮当', '', '18757100731', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 15:42:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18757100731' LIMIT 1);
UPDATE users SET nick_name='叮当', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18757100731';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15767013484', 'U15767013484', 'A', '', '15767013484', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 14:53:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15767013484' LIMIT 1);
UPDATE users SET nick_name='A', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15767013484';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217452353', 'U15217452353', 'Yi Gigi.', '', '15217452353', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 14:02:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217452353' LIMIT 1);
UPDATE users SET nick_name='Yi Gigi.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217452353';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434354508', 'U13434354508', 'Yao~', '', '13434354508', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 13:24:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434354508' LIMIT 1);
UPDATE users SET nick_name='Yao~', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13434354508';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480392873', 'U13480392873', 'love', '', '13480392873', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 13:21:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480392873' LIMIT 1);
UPDATE users SET nick_name='love', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480392873';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060502511', 'U13060502511', 'ohh', '', '13060502511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 13:20:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060502511' LIMIT 1);
UPDATE users SET nick_name='ohh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060502511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876546491', 'U15876546491', '15876546491', '', '15876546491', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 12:43:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876546491' LIMIT 1);
UPDATE users SET nick_name='15876546491', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876546491';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632281668', 'U13632281668', '13632281668', '', '13632281668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 11:22:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632281668' LIMIT 1);
UPDATE users SET nick_name='13632281668', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632281668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924965385', 'U18924965385', '星', '', '18924965385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-21 08:35:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924965385' LIMIT 1);
UPDATE users SET nick_name='星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924965385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665560501', 'U18665560501', 'josie', '', '18665560501', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-20 23:20:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665560501' LIMIT 1);
UPDATE users SET nick_name='josie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665560501';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902275349', 'U13902275349', '张琳', '', '13902275349', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-20 23:17:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902275349' LIMIT 1);
UPDATE users SET nick_name='张琳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902275349';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15016944131', 'U15016944131', '15016944131', '', '15016944131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-20 21:16:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15016944131' LIMIT 1);
UPDATE users SET nick_name='15016944131', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15016944131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825169739', 'U18825169739', '18825169739', '', '18825169739', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-20 21:03:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825169739' LIMIT 1);
UPDATE users SET nick_name='18825169739', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825169739';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989076069', 'U15989076069', '大芸', '', '15989076069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2026-06-20 19:37:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989076069' LIMIT 1);
UPDATE users SET nick_name='大芸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='15989076069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818844453', 'U15818844453', '潘林青', '', '15818844453', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-20 19:03:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818844453' LIMIT 1);
UPDATE users SET nick_name='潘林青', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818844453';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665678856', 'U18665678856', 'hu', '', '18665678856', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-20 18:09:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665678856' LIMIT 1);
UPDATE users SET nick_name='hu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665678856';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18822807137', 'U18822807137', '18822807137', '', '18822807137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-20 16:48:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18822807137' LIMIT 1);
UPDATE users SET nick_name='18822807137', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18822807137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760877816', 'U13760877816', '胡', '', '13760877816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-20 16:11:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760877816' LIMIT 1);
UPDATE users SET nick_name='胡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760877816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920346622', 'U15920346622', 'water', '', '15920346622', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-20 13:14:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920346622' LIMIT 1);
UPDATE users SET nick_name='water', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920346622';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710739666', 'U13710739666', '13710739666', '', '13710739666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-20 11:26:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710739666' LIMIT 1);
UPDATE users SET nick_name='13710739666', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710739666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521330714', 'U15521330714', 'O', '', '15521330714', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-19 20:16:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521330714' LIMIT 1);
UPDATE users SET nick_name='O', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521330714';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999949973', 'U15999949973', '羊肉包', '', '15999949973', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-19 18:39:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999949973' LIMIT 1);
UPDATE users SET nick_name='羊肉包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999949973';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620359283', 'U16620359283', 'Contentment', '', '16620359283', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 177, '2026-06-19 17:27:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620359283' LIMIT 1);
UPDATE users SET nick_name='Contentment', balance=GREATEST(balance, 0.00), points=GREATEST(points, 177) WHERE phone='16620359283';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620065655', 'U18620065655', '18620065655', '', '18620065655', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-19 17:16:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620065655' LIMIT 1);
UPDATE users SET nick_name='18620065655', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620065655';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620069203', 'U18620069203', '虫虫', '', '18620069203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-19 16:09:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620069203' LIMIT 1);
UPDATE users SET nick_name='虫虫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620069203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632382564', 'U13632382564', 'wys', '', '13632382564', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-19 15:52:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632382564' LIMIT 1);
UPDATE users SET nick_name='wys', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632382564';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626476582', 'U15626476582', '15626476582', '', '15626476582', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-19 13:50:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626476582' LIMIT 1);
UPDATE users SET nick_name='15626476582', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626476582';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18108350580', 'U18108350580', 'Mr Espresso', '', '18108350580', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-06-19 13:05:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18108350580' LIMIT 1);
UPDATE users SET nick_name='Mr Espresso', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18108350580';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13903073855', 'U13903073855', '璟熹', '', '13903073855', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-19 10:13:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13903073855' LIMIT 1);
UPDATE users SET nick_name='璟熹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13903073855';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632366944', 'U13632366944', '13632366944', '', '13632366944', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-19 10:03:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632366944' LIMIT 1);
UPDATE users SET nick_name='13632366944', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632366944';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609754351', 'U13609754351', '13609754351', '', '13609754351', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-19 09:52:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609754351' LIMIT 1);
UPDATE users SET nick_name='13609754351', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609754351';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427522205', 'U13427522205', '吉', '', '13427522205', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-19 09:50:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427522205' LIMIT 1);
UPDATE users SET nick_name='吉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427522205';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711588104', 'U13711588104', '🦉', '', '13711588104', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-18 19:04:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711588104' LIMIT 1);
UPDATE users SET nick_name='🦉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711588104';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622744797', 'U13622744797', 'StEvEn朱', '', '13622744797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-18 18:34:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622744797' LIMIT 1);
UPDATE users SET nick_name='StEvEn朱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622744797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588720890', 'U18588720890', '虫虫', '', '18588720890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-18 17:30:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588720890' LIMIT 1);
UPDATE users SET nick_name='虫虫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588720890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18171238252', 'U18171238252', 'Ru', '', '18171238252', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-18 15:45:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18171238252' LIMIT 1);
UPDATE users SET nick_name='Ru', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18171238252';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610522050', 'U13610522050', 'ArsomChow', '', '13610522050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-18 15:15:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610522050' LIMIT 1);
UPDATE users SET nick_name='ArsomChow', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610522050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825079197', 'U18825079197', '超人牌🐽洗衣机', '', '18825079197', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-18 15:13:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825079197' LIMIT 1);
UPDATE users SET nick_name='超人牌🐽洗衣机', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825079197';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711508923', 'U13711508923', 'JIRIN', '', '13711508923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-18 14:49:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711508923' LIMIT 1);
UPDATE users SET nick_name='JIRIN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711508923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580565648', 'U13580565648', 'Mandyyy', '', '13580565648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-18 13:15:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580565648' LIMIT 1);
UPDATE users SET nick_name='Mandyyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580565648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202535707', 'U13202535707', 'lena', '', '13202535707', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-18 10:15:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202535707' LIMIT 1);
UPDATE users SET nick_name='lena', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202535707';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620182855', 'U16620182855', '16620182855', '', '16620182855', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-17 18:34:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620182855' LIMIT 1);
UPDATE users SET nick_name='16620182855', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620182855';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19287631089', 'U19287631089', '19287631089', '', '19287631089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-17 17:30:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19287631089' LIMIT 1);
UPDATE users SET nick_name='19287631089', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19287631089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17748454921', 'U17748454921', '17748454921', '', '17748454921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-17 17:15:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17748454921' LIMIT 1);
UPDATE users SET nick_name='17748454921', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17748454921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13581533667', 'U13581533667', 'Aaron🌞', '', '13581533667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-17 16:26:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13581533667' LIMIT 1);
UPDATE users SET nick_name='Aaron🌞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13581533667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15767013118', 'U15767013118', 'Serein', '', '15767013118', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-17 14:45:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15767013118' LIMIT 1);
UPDATE users SET nick_name='Serein', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15767013118';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392435308', 'U13392435308', '13392435308', '', '13392435308', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-17 10:41:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392435308' LIMIT 1);
UPDATE users SET nick_name='13392435308', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392435308';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915898420', 'U15915898420', '15915898420', '', '15915898420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-16 18:10:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915898420' LIMIT 1);
UPDATE users SET nick_name='15915898420', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915898420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826206171', 'U13826206171', '13826206171', '', '13826206171', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-16 16:59:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826206171' LIMIT 1);
UPDATE users SET nick_name='13826206171', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826206171';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13823090356', 'U13823090356', '13823090356', '', '13823090356', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-16 16:14:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13823090356' LIMIT 1);
UPDATE users SET nick_name='13823090356', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13823090356';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814180822', 'U18814180822', '灰', '', '18814180822', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-16 14:34:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814180822' LIMIT 1);
UPDATE users SET nick_name='灰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814180822';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822770268', 'U13822770268', '13822770268', '', '13822770268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-16 14:29:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822770268' LIMIT 1);
UPDATE users SET nick_name='13822770268', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822770268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620868052', 'U18620868052', '🐯沙文虎', '', '18620868052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-15 20:25:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620868052' LIMIT 1);
UPDATE users SET nick_name='🐯沙文虎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620868052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565525345', 'U18565525345', 'cony', '', '18565525345', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-15 18:24:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565525345' LIMIT 1);
UPDATE users SET nick_name='cony', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565525345';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15108610073', 'U15108610073', 'εChouetteBUз', '', '15108610073', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-15 15:59:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15108610073' LIMIT 1);
UPDATE users SET nick_name='εChouetteBUз', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15108610073';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15777073727', 'U15777073727', '15777073727', '', '15777073727', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-15 13:11:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15777073727' LIMIT 1);
UPDATE users SET nick_name='15777073727', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15777073727';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102042913', 'U15102042913', 'kk', '', '15102042913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 149, '2026-06-15 11:18:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102042913' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 149) WHERE phone='15102042913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15768909366', 'U15768909366', 'Yi', '', '15768909366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-15 07:24:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15768909366' LIMIT 1);
UPDATE users SET nick_name='Yi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15768909366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925030558', 'U18925030558', 'KRISTINA', '', '18925030558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-14 23:47:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925030558' LIMIT 1);
UPDATE users SET nick_name='KRISTINA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925030558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570420596', 'U13570420596', '彭彭', '', '13570420596', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2026-06-14 18:15:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570420596' LIMIT 1);
UPDATE users SET nick_name='彭彭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13570420596';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662410320', 'U13662410320', '13662410320', '', '13662410320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-14 18:10:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662410320' LIMIT 1);
UPDATE users SET nick_name='13662410320', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662410320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913548973', 'U15913548973', ' ', '', '15913548973', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-14 17:00:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913548973' LIMIT 1);
UPDATE users SET nick_name=' ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913548973';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602219517', 'U13602219517', '13602219517', '', '13602219517', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-14 14:35:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602219517' LIMIT 1);
UPDATE users SET nick_name='13602219517', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602219517';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19129256362', 'U19129256362', '19129256362', '', '19129256362', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-14 14:31:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19129256362' LIMIT 1);
UPDATE users SET nick_name='19129256362', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19129256362';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249666796', 'U13249666796', 'Hayden', '', '13249666796', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-14 14:13:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249666796' LIMIT 1);
UPDATE users SET nick_name='Hayden', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249666796';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027198365', 'U18027198365', 'GBJ', '', '18027198365', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-14 13:54:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027198365' LIMIT 1);
UPDATE users SET nick_name='GBJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027198365';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13827655396', 'U13827655396', '13827655396', '', '13827655396', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-14 13:22:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13827655396' LIMIT 1);
UPDATE users SET nick_name='13827655396', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13827655396';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538731763', 'U13538731763', '13538731763', '', '13538731763', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-14 13:19:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538731763' LIMIT 1);
UPDATE users SET nick_name='13538731763', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538731763';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922333971', 'U13922333971', 'Bonnie', '', '13922333971', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-06-14 10:48:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922333971' LIMIT 1);
UPDATE users SET nick_name='Bonnie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13922333971';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760811596', 'U13760811596', '知恩知恩的Uaena 🍧', '', '13760811596', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-06-13 21:02:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760811596' LIMIT 1);
UPDATE users SET nick_name='知恩知恩的Uaena 🍧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13760811596';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19128684754', 'U19128684754', 'lamlam', '', '19128684754', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 20:29:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19128684754' LIMIT 1);
UPDATE users SET nick_name='lamlam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19128684754';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320046744', 'U18320046744', '金主训', '', '18320046744', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 20:12:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320046744' LIMIT 1);
UPDATE users SET nick_name='金主训', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320046744';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416166909', 'U13416166909', 'HM', '', '13416166909', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 19:59:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416166909' LIMIT 1);
UPDATE users SET nick_name='HM', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416166909';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15630235946', 'U15630235946', 'Ross', '', '15630235946', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 19:42:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15630235946' LIMIT 1);
UPDATE users SET nick_name='Ross', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15630235946';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711255191', 'U13711255191', 'Tina ʕ·ᴥ·ʔ', '', '13711255191', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 19:28:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711255191' LIMIT 1);
UPDATE users SET nick_name='Tina ʕ·ᴥ·ʔ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711255191';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711060623', 'U13711060623', '13711060623', '', '13711060623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 18:47:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711060623' LIMIT 1);
UPDATE users SET nick_name='13711060623', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711060623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820231003', 'U15820231003', '15820231003', '', '15820231003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 18:09:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820231003' LIMIT 1);
UPDATE users SET nick_name='15820231003', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820231003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609759758', 'U13609759758', 'Robbie', '', '13609759758', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 16:23:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609759758' LIMIT 1);
UPDATE users SET nick_name='Robbie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609759758';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622140249', 'U15622140249', 'Jared', '', '15622140249', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 15:27:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622140249' LIMIT 1);
UPDATE users SET nick_name='Jared', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622140249';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917184664', 'U15917184664', '15917184664', '', '15917184664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 15:02:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917184664' LIMIT 1);
UPDATE users SET nick_name='15917184664', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917184664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919524616', 'U15919524616', 'ke', '', '15919524616', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 15:02:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919524616' LIMIT 1);
UPDATE users SET nick_name='ke', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919524616';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602001108', 'U18602001108', '帅', '', '18602001108', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 13:59:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602001108' LIMIT 1);
UPDATE users SET nick_name='帅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602001108';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826419748', 'U13826419748', '13826419748', '', '13826419748', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 13:22:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826419748' LIMIT 1);
UPDATE users SET nick_name='13826419748', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826419748';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18889952961', 'U18889952961', '伊面', '', '18889952961', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 13:02:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18889952961' LIMIT 1);
UPDATE users SET nick_name='伊面', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18889952961';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819285903', 'U18819285903', '洪俊帆 Mars', '', '18819285903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 12:47:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819285903' LIMIT 1);
UPDATE users SET nick_name='洪俊帆 Mars', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819285903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027286009', 'U18027286009', 'aquel', '', '18027286009', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 12:30:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027286009' LIMIT 1);
UPDATE users SET nick_name='aquel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027286009';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808817299', 'U13808817299', '13808817299', '', '13808817299', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 12:18:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808817299' LIMIT 1);
UPDATE users SET nick_name='13808817299', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808817299';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710106475', 'U13710106475', 'Zoe', '', '13710106475', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 12:00:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710106475' LIMIT 1);
UPDATE users SET nick_name='Zoe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710106475';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610051470', 'U13610051470', '13610051470', '', '13610051470', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 10:26:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610051470' LIMIT 1);
UPDATE users SET nick_name='13610051470', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610051470';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18698885208', 'U18698885208', '：）', '', '18698885208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-13 09:52:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18698885208' LIMIT 1);
UPDATE users SET nick_name='：）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18698885208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19566857583', 'U19566857583', '啦啦', '', '19566857583', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 22:34:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19566857583' LIMIT 1);
UPDATE users SET nick_name='啦啦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19566857583';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320732549', 'U18320732549', 'bk', '', '18320732549', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 22:25:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320732549' LIMIT 1);
UPDATE users SET nick_name='bk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320732549';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588800176', 'U18588800176', '志', '', '18588800176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 22:19:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588800176' LIMIT 1);
UPDATE users SET nick_name='志', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588800176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521421903', 'U15521421903', '15521421903', '', '15521421903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 21:49:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521421903' LIMIT 1);
UPDATE users SET nick_name='15521421903', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521421903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818868280', 'U18818868280', '18818868280', '', '18818868280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 20:58:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818868280' LIMIT 1);
UPDATE users SET nick_name='18818868280', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818868280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565432069', 'U18565432069', 'jackluo', '', '18565432069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 20:09:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565432069' LIMIT 1);
UPDATE users SET nick_name='jackluo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565432069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933517026', 'U18933517026', '🥰Wang幻幻', '', '18933517026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 19:42:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933517026' LIMIT 1);
UPDATE users SET nick_name='🥰Wang幻幻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933517026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626433662', 'U15626433662', 'boa', '', '15626433662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 19:11:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626433662' LIMIT 1);
UPDATE users SET nick_name='boa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626433662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913102343', 'U15913102343', '笨小孩', '', '15913102343', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 16:01:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913102343' LIMIT 1);
UPDATE users SET nick_name='笨小孩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913102343';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520012086', 'U18520012086', '18520012086', '', '18520012086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 15:15:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520012086' LIMIT 1);
UPDATE users SET nick_name='18520012086', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520012086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625036936', 'U15625036936', '吾乃天之饺子', '', '15625036936', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 14:33:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625036936' LIMIT 1);
UPDATE users SET nick_name='吾乃天之饺子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625036936';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15916638722', 'U15916638722', 'Maca', '', '15916638722', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 14:05:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15916638722' LIMIT 1);
UPDATE users SET nick_name='Maca', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15916638722';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18110055561', 'U18110055561', '18110055561', '', '18110055561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 13:23:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18110055561' LIMIT 1);
UPDATE users SET nick_name='18110055561', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18110055561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18800105561', 'U18800105561', 'Funnn', '', '18800105561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 13:19:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18800105561' LIMIT 1);
UPDATE users SET nick_name='Funnn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18800105561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19221653839', 'U19221653839', 'Sam168', '', '19221653839', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 13:18:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19221653839' LIMIT 1);
UPDATE users SET nick_name='Sam168', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19221653839';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249766316', 'U13249766316', 'lillian', '', '13249766316', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 10:15:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249766316' LIMIT 1);
UPDATE users SET nick_name='lillian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249766316';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923104977', 'U13923104977', 'Xiaoxue', '', '13923104977', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 10:12:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923104977' LIMIT 1);
UPDATE users SET nick_name='Xiaoxue', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13923104977';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602850144', 'U15602850144', 'Lord Snow', '', '15602850144', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-12 08:25:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602850144' LIMIT 1);
UPDATE users SET nick_name='Lord Snow', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602850144';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19536802954', 'U19536802954', '小Wankiki 💗', '', '19536802954', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-11 19:40:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19536802954' LIMIT 1);
UPDATE users SET nick_name='小Wankiki 💗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19536802954';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818875733', 'U18818875733', 'BosCo畅.', '', '18818875733', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-06-11 18:36:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818875733' LIMIT 1);
UPDATE users SET nick_name='BosCo畅.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18818875733';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18577047281', 'U18577047281', '18577047281', '', '18577047281', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-11 18:16:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18577047281' LIMIT 1);
UPDATE users SET nick_name='18577047281', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18577047281';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926782288', 'U13926782288', '13926782288', '', '13926782288', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-11 15:48:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926782288' LIMIT 1);
UPDATE users SET nick_name='13926782288', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926782288';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18923331701', 'U18923331701', '玖', '', '18923331701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-11 13:37:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18923331701' LIMIT 1);
UPDATE users SET nick_name='玖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18923331701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17846840979', 'U17846840979', '童', '', '17846840979', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-11 09:53:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17846840979' LIMIT 1);
UPDATE users SET nick_name='童', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17846840979';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18024507568', 'U18024507568', 'Singo🦭', '', '18024507568', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-11 09:41:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18024507568' LIMIT 1);
UPDATE users SET nick_name='Singo🦭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18024507568';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13827589516', 'U13827589516', '13827589516', '', '13827589516', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-10 19:54:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13827589516' LIMIT 1);
UPDATE users SET nick_name='13827589516', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13827589516';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902329543', 'U13902329543', '13902329543', '', '13902329543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-10 18:51:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902329543' LIMIT 1);
UPDATE users SET nick_name='13902329543', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902329543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427628331', 'U13427628331', '13427628331', '', '13427628331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-10 17:43:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427628331' LIMIT 1);
UPDATE users SET nick_name='13427628331', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427628331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824438286', 'U13824438286', '321', '', '13824438286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-10 16:43:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824438286' LIMIT 1);
UPDATE users SET nick_name='321', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824438286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13380754665', 'U13380754665', 'Y', '', '13380754665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-10 15:05:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13380754665' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13380754665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580488976', 'U13580488976', 'Jammy ', '', '13580488976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-10 14:58:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580488976' LIMIT 1);
UPDATE users SET nick_name='Jammy ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580488976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727023494', 'U13727023494', 'cuicui', '', '13727023494', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-10 14:57:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727023494' LIMIT 1);
UPDATE users SET nick_name='cuicui', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13727023494';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622884323', 'U13622884323', 'Yan✨Ng', '', '13622884323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-10 14:10:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622884323' LIMIT 1);
UPDATE users SET nick_name='Yan✨Ng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622884323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15014293086', 'U15014293086', '刘涛', '', '15014293086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-10 13:48:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15014293086' LIMIT 1);
UPDATE users SET nick_name='刘涛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15014293086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820902874', 'U15820902874', '15820902874', '', '15820902874', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-10 13:25:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820902874' LIMIT 1);
UPDATE users SET nick_name='15820902874', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820902874';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565298617', 'U18565298617', 'dodo', '', '18565298617', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-10 13:21:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565298617' LIMIT 1);
UPDATE users SET nick_name='dodo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565298617';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975367404', 'U15975367404', '15975367404', '', '15975367404', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-09 21:45:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975367404' LIMIT 1);
UPDATE users SET nick_name='15975367404', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975367404';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202011756', 'U13202011756', '🎩 Ray.leung', '', '13202011756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-09 18:09:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202011756' LIMIT 1);
UPDATE users SET nick_name='🎩 Ray.leung', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202011756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13910226412', 'U13910226412', '阿里先生', '', '13910226412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 177, '2026-06-09 18:01:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13910226412' LIMIT 1);
UPDATE users SET nick_name='阿里先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 177) WHERE phone='13910226412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820228610', 'U15820228610', '15820228610', '', '15820228610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-09 16:26:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820228610' LIMIT 1);
UPDATE users SET nick_name='15820228610', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820228610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13297472736', 'U13297472736', '小鸟游', '', '13297472736', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-09 15:00:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13297472736' LIMIT 1);
UPDATE users SET nick_name='小鸟游', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13297472736';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19860789991', 'U19860789991', 'μ', '', '19860789991', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-09 14:36:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19860789991' LIMIT 1);
UPDATE users SET nick_name='μ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19860789991';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918745230', 'U15918745230', 'yiyia', '', '15918745230', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-09 14:09:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918745230' LIMIT 1);
UPDATE users SET nick_name='yiyia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918745230';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13576044581', 'U13576044581', '贝贝阿球', '', '13576044581', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-09 14:06:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13576044581' LIMIT 1);
UPDATE users SET nick_name='贝贝阿球', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13576044581';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19228952781', 'U19228952781', '阿拉雷', '', '19228952781', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-09 10:20:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19228952781' LIMIT 1);
UPDATE users SET nick_name='阿拉雷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19228952781';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802513525', 'U13802513525', '红魔', '', '13802513525', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-09 09:57:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802513525' LIMIT 1);
UPDATE users SET nick_name='红魔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802513525';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19944089875', 'U19944089875', '金枪🐟', '', '19944089875', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-09 01:58:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19944089875' LIMIT 1);
UPDATE users SET nick_name='金枪🐟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19944089875';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19227671419', 'U19227671419', '茜茜🥳', '', '19227671419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 20:46:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19227671419' LIMIT 1);
UPDATE users SET nick_name='茜茜🥳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19227671419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600038721', 'U13600038721', 'FRANKIE歡', '', '13600038721', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 20:35:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600038721' LIMIT 1);
UPDATE users SET nick_name='FRANKIE歡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600038721';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_82254560408', 'U82254560408', 'Gumi', '', '82254560408', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 17:54:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='82254560408' LIMIT 1);
UPDATE users SET nick_name='Gumi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='82254560408';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19540223532', 'U19540223532', '19540223532', '', '19540223532', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 17:46:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19540223532' LIMIT 1);
UPDATE users SET nick_name='19540223532', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19540223532';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15077125520', 'U15077125520', '冰子芯', '', '15077125520', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 17:29:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15077125520' LIMIT 1);
UPDATE users SET nick_name='冰子芯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15077125520';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926001800', 'U13926001800', '，', '', '13926001800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 16:05:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926001800' LIMIT 1);
UPDATE users SET nick_name='，', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926001800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18174600555', 'U18174600555', 'George', '', '18174600555', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 15:26:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18174600555' LIMIT 1);
UPDATE users SET nick_name='George', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18174600555';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13009419029', 'U13009419029', 'KatheriNe', '', '13009419029', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 14:27:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13009419029' LIMIT 1);
UPDATE users SET nick_name='KatheriNe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13009419029';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18693161686', 'U18693161686', '时一', '', '18693161686', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 14:21:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18693161686' LIMIT 1);
UPDATE users SET nick_name='时一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18693161686';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026356706', 'U18026356706', '一帆', '', '18026356706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 13:46:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026356706' LIMIT 1);
UPDATE users SET nick_name='一帆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026356706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813323394', 'U15813323394', '15813323394', '', '15813323394', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 13:17:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813323394' LIMIT 1);
UPDATE users SET nick_name='15813323394', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813323394';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660701406', 'U13660701406', '林中鹿', '', '13660701406', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 11:22:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660701406' LIMIT 1);
UPDATE users SET nick_name='林中鹿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660701406';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920023123', 'U15920023123', 'Y', '', '15920023123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 11:15:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920023123' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920023123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622343693', 'U15622343693', 'Rong🤪', '', '15622343693', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 10:14:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622343693' LIMIT 1);
UPDATE users SET nick_name='Rong🤪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622343693';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556044662', 'U13556044662', 'noel', '', '13556044662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-08 09:53:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556044662' LIMIT 1);
UPDATE users SET nick_name='noel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556044662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13119518286', 'U13119518286', 'tyj', '', '13119518286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 22:53:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13119518286' LIMIT 1);
UPDATE users SET nick_name='tyj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13119518286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760606921', 'U13760606921', '爱成', '', '13760606921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 18:54:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760606921' LIMIT 1);
UPDATE users SET nick_name='爱成', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760606921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876756368', 'U17876756368', '17876756368', '', '17876756368', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 18:06:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876756368' LIMIT 1);
UPDATE users SET nick_name='17876756368', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876756368';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620124905', 'U16620124905', '安定', '', '16620124905', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-06-07 16:32:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620124905' LIMIT 1);
UPDATE users SET nick_name='安定', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='16620124905';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828414991', 'U13828414991', '13828414991', '', '13828414991', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 15:48:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828414991' LIMIT 1);
UPDATE users SET nick_name='13828414991', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828414991';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18428366630', 'U18428366630', '123', '', '18428366630', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 15:40:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18428366630' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18428366630';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15976008043', 'U15976008043', 'Mabel :)', '', '15976008043', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 15:13:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15976008043' LIMIT 1);
UPDATE users SET nick_name='Mabel :)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15976008043';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763340537', 'U13763340537', 'Dou', '', '13763340537', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 13:37:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763340537' LIMIT 1);
UPDATE users SET nick_name='Dou', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763340537';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902232299', 'U18902232299', '严小猫', '', '18902232299', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 12:13:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902232299' LIMIT 1);
UPDATE users SET nick_name='严小猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18902232299';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560693310', 'U13560693310', '13560693310', '', '13560693310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 11:50:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560693310' LIMIT 1);
UPDATE users SET nick_name='13560693310', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560693310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682271162', 'U13682271162', 'Sam', '', '13682271162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 11:40:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682271162' LIMIT 1);
UPDATE users SET nick_name='Sam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13682271162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13132151563', 'U13132151563', '严冰', '', '13132151563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 11:37:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13132151563' LIMIT 1);
UPDATE users SET nick_name='严冰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13132151563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529279868', 'U18529279868', '18529279868', '', '18529279868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-07 11:27:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529279868' LIMIT 1);
UPDATE users SET nick_name='18529279868', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529279868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922125958', 'U13922125958', 'janine', '', '13922125958', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-06-07 10:24:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922125958' LIMIT 1);
UPDATE users SET nick_name='janine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13922125958';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818416263', 'U18818416263', '六六', '', '18818416263', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-06 20:27:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818416263' LIMIT 1);
UPDATE users SET nick_name='六六', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818416263';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18792588775', 'U18792588775', '矢口的瑞瑞🙃', '', '18792588775', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-06 18:28:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18792588775' LIMIT 1);
UPDATE users SET nick_name='矢口的瑞瑞🙃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18792588775';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580337117', 'U13580337117', '冬touch', '', '13580337117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-06-06 17:35:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580337117' LIMIT 1);
UPDATE users SET nick_name='冬touch', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13580337117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989032726', 'U15989032726', 'Master😈😈😈', '', '15989032726', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-06 15:26:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989032726' LIMIT 1);
UPDATE users SET nick_name='Master😈😈😈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989032726';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570591028', 'U13570591028', '映', '', '13570591028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-06 14:29:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570591028' LIMIT 1);
UPDATE users SET nick_name='映', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570591028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218822972', 'U15218822972', '蛋蛋', '', '15218822972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-06 14:04:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218822972' LIMIT 1);
UPDATE users SET nick_name='蛋蛋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218822972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16602152375', 'U16602152375', '16602152375', '', '16602152375', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-06 11:51:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16602152375' LIMIT 1);
UPDATE users SET nick_name='16602152375', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16602152375';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18148610640', 'U18148610640', '巷子里的猫', '', '18148610640', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-06 11:38:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18148610640' LIMIT 1);
UPDATE users SET nick_name='巷子里的猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18148610640';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620935519', 'U18620935519', '江江', '', '18620935519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-06-06 11:24:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620935519' LIMIT 1);
UPDATE users SET nick_name='江江', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18620935519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13351704008', 'U13351704008', '祝福', '', '13351704008', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-06 11:04:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13351704008' LIMIT 1);
UPDATE users SET nick_name='祝福', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13351704008';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622278741', 'U15622278741', '15622278741', '', '15622278741', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-06 09:56:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622278741' LIMIT 1);
UPDATE users SET nick_name='15622278741', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622278741';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988596560', 'U18988596560', '晴天', '', '18988596560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-06-05 23:41:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988596560' LIMIT 1);
UPDATE users SET nick_name='晴天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18988596560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820050199', 'U18820050199', '18820050199', '', '18820050199', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-05 21:33:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820050199' LIMIT 1);
UPDATE users SET nick_name='18820050199', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820050199';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556091242', 'U13556091242', '景', '', '13556091242', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-05 21:23:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556091242' LIMIT 1);
UPDATE users SET nick_name='景', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556091242';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560220006', 'U13560220006', 'Nick', '', '13560220006', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-06-05 20:10:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560220006' LIMIT 1);
UPDATE users SET nick_name='Nick', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13560220006';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15511395043', 'U15511395043', '大树', '', '15511395043', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-05 18:13:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15511395043' LIMIT 1);
UPDATE users SET nick_name='大树', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15511395043';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751560330', 'U13751560330', 'Gugu', '', '13751560330', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-05 18:08:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751560330' LIMIT 1);
UPDATE users SET nick_name='Gugu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751560330';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988993942', 'U18988993942', '老李', '', '18988993942', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-05 16:46:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988993942' LIMIT 1);
UPDATE users SET nick_name='老李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988993942';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302528983', 'U13302528983', '芝', '', '13302528983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-05 14:35:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302528983' LIMIT 1);
UPDATE users SET nick_name='芝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302528983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15901996078', 'U15901996078', 'bian', '', '15901996078', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-05 14:28:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15901996078' LIMIT 1);
UPDATE users SET nick_name='bian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15901996078';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928808894', 'U18928808894', '18928808894', '', '18928808894', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-05 13:26:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928808894' LIMIT 1);
UPDATE users SET nick_name='18928808894', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928808894';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17605875854', 'U17605875854', '叽叽叽', '', '17605875854', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-05 11:25:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17605875854' LIMIT 1);
UPDATE users SET nick_name='叽叽叽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17605875854';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922264989', 'U13922264989', '贤🌿', '', '13922264989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-04 21:38:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922264989' LIMIT 1);
UPDATE users SET nick_name='贤🌿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922264989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13413876022', 'U13413876022', 'JY', '', '13413876022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-04 20:16:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13413876022' LIMIT 1);
UPDATE users SET nick_name='JY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13413876022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312898743', 'U13312898743', 'Cherry', '', '13312898743', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-04 19:36:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312898743' LIMIT 1);
UPDATE users SET nick_name='Cherry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13312898743';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392499479', 'U13392499479', '泡面', '', '13392499479', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-04 17:28:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392499479' LIMIT 1);
UPDATE users SET nick_name='泡面', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392499479';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318823581', 'U13318823581', 'owen', '', '13318823581', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-04 17:16:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318823581' LIMIT 1);
UPDATE users SET nick_name='owen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318823581';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15338115014', 'U15338115014', '15338115014', '', '15338115014', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-04 16:45:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15338115014' LIMIT 1);
UPDATE users SET nick_name='15338115014', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15338115014';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246488876', 'U13246488876', '扁', '', '13246488876', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-04 14:13:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246488876' LIMIT 1);
UPDATE users SET nick_name='扁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246488876';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665306538', 'U18665306538', 'zz', '', '18665306538', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-03 20:08:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665306538' LIMIT 1);
UPDATE users SET nick_name='zz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665306538';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13144410040', 'U13144410040', 'OHYU', '', '13144410040', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-03 15:39:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13144410040' LIMIT 1);
UPDATE users SET nick_name='OHYU', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13144410040';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17857682162', 'U17857682162', 'Ysn', '', '17857682162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-03 15:02:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17857682162' LIMIT 1);
UPDATE users SET nick_name='Ysn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17857682162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18698015726', 'U18698015726', '葡萄', '', '18698015726', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-03 14:37:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18698015726' LIMIT 1);
UPDATE users SET nick_name='葡萄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18698015726';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17879672295', 'U17879672295', 'Artte', '', '17879672295', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-03 13:59:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17879672295' LIMIT 1);
UPDATE users SET nick_name='Artte', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17879672295';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19973904350', 'U19973904350', '₉', '', '19973904350', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-03 13:01:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19973904350' LIMIT 1);
UPDATE users SET nick_name='₉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19973904350';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802011723', 'U18802011723', 'luna', '', '18802011723', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-03 12:56:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802011723' LIMIT 1);
UPDATE users SET nick_name='luna', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802011723';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265935299', 'U13265935299', 'zheng', '', '13265935299', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-03 12:39:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265935299' LIMIT 1);
UPDATE users SET nick_name='zheng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265935299';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626043228', 'U15626043228', '花生米🥕', '', '15626043228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-03 12:04:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626043228' LIMIT 1);
UPDATE users SET nick_name='花生米🥕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626043228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926514405', 'U13926514405', '41', '', '13926514405', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-03 11:17:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926514405' LIMIT 1);
UPDATE users SET nick_name='41', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926514405';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15677421180', 'U15677421180', '嘉雯 Carmen', '', '15677421180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-02 23:18:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15677421180' LIMIT 1);
UPDATE users SET nick_name='嘉雯 Carmen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15677421180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920131400', 'U15920131400', '陳小露', '', '15920131400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-02 21:24:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920131400' LIMIT 1);
UPDATE users SET nick_name='陳小露', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920131400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18945641269', 'U18945641269', 'Chloeww.', '', '18945641269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-02 21:17:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18945641269' LIMIT 1);
UPDATE users SET nick_name='Chloeww.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18945641269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928823880', 'U18928823880', '猪蛋挞', '', '18928823880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-02 21:02:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928823880' LIMIT 1);
UPDATE users SET nick_name='猪蛋挞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928823880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13232972232', 'U13232972232', '13232972232', '', '13232972232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-02 14:53:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13232972232' LIMIT 1);
UPDATE users SET nick_name='13232972232', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13232972232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15966776159', 'U15966776159', '李嘉龙', '', '15966776159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-02 14:47:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15966776159' LIMIT 1);
UPDATE users SET nick_name='李嘉龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15966776159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13266402746', 'U13266402746', 'riko', '', '13266402746', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-02 13:53:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13266402746' LIMIT 1);
UPDATE users SET nick_name='riko', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13266402746';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17675621084', 'U17675621084', '17675621084', '', '17675621084', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-02 11:58:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17675621084' LIMIT 1);
UPDATE users SET nick_name='17675621084', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17675621084';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819267101', 'U18819267101', 'Jani', '', '18819267101', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-02 11:48:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819267101' LIMIT 1);
UPDATE users SET nick_name='Jani', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819267101';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826419393', 'U13826419393', '13826419393', '', '13826419393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-02 10:50:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826419393' LIMIT 1);
UPDATE users SET nick_name='13826419393', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826419393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13425789203', 'U13425789203', '13425789203', '', '13425789203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-02 10:29:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13425789203' LIMIT 1);
UPDATE users SET nick_name='13425789203', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13425789203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18919683135', 'U18919683135', '白日梦', '', '18919683135', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-01 22:18:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18919683135' LIMIT 1);
UPDATE users SET nick_name='白日梦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18919683135';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578782221', 'U18578782221', 'Ben', '', '18578782221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-01 19:42:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578782221' LIMIT 1);
UPDATE users SET nick_name='Ben', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578782221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18518479593', 'U18518479593', '18518479593', '', '18518479593', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-01 19:07:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18518479593' LIMIT 1);
UPDATE users SET nick_name='18518479593', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18518479593';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13669383700', 'U13669383700', '13669383700', '', '13669383700', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-01 18:37:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13669383700' LIMIT 1);
UPDATE users SET nick_name='13669383700', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13669383700';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933190659', 'U18933190659', '18933190659', '', '18933190659', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-01 16:39:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933190659' LIMIT 1);
UPDATE users SET nick_name='18933190659', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933190659';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18830918219', 'U18830918219', '18830918219', '', '18830918219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-01 16:37:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18830918219' LIMIT 1);
UPDATE users SET nick_name='18830918219', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18830918219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626451003', 'U15626451003', '猫猫国王', '', '15626451003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-01 16:33:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626451003' LIMIT 1);
UPDATE users SET nick_name='猫猫国王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626451003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820119088', 'U18820119088', '18820119088', '', '18820119088', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-01 16:15:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820119088' LIMIT 1);
UPDATE users SET nick_name='18820119088', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820119088';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570534060', 'U13570534060', '13570534060', '', '13570534060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-01 13:38:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570534060' LIMIT 1);
UPDATE users SET nick_name='13570534060', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570534060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640241385', 'U13640241385', 'wawa', '', '13640241385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-01 10:40:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640241385' LIMIT 1);
UPDATE users SET nick_name='wawa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640241385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430263728', 'U13430263728', 'Kay', '', '13430263728', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-31 21:07:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430263728' LIMIT 1);
UPDATE users SET nick_name='Kay', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430263728';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322214495', 'U17322214495', '罗宾', '', '17322214495', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-31 20:37:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322214495' LIMIT 1);
UPDATE users SET nick_name='罗宾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322214495';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302015405', 'U18302015405', '🍁Damon Leung®', '', '18302015405', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-31 18:29:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302015405' LIMIT 1);
UPDATE users SET nick_name='🍁Damon Leung®', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18302015405';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719310197', 'U13719310197', '13719310197', '', '13719310197', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-31 16:11:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719310197' LIMIT 1);
UPDATE users SET nick_name='13719310197', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719310197';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268138037', 'U13268138037', 'Matthew C.', '', '13268138037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-31 15:57:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268138037' LIMIT 1);
UPDATE users SET nick_name='Matthew C.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268138037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13431044488', 'U13431044488', '13431044488', '', '13431044488', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-31 15:22:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13431044488' LIMIT 1);
UPDATE users SET nick_name='13431044488', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13431044488';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660334988', 'U13660334988', 'hugo', '', '13660334988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2026-05-31 14:45:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660334988' LIMIT 1);
UPDATE users SET nick_name='hugo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='13660334988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143339456', 'U13143339456', '13143339456', '', '13143339456', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-31 13:22:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143339456' LIMIT 1);
UPDATE users SET nick_name='13143339456', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143339456';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15727783829', 'U15727783829', '15727783829', '', '15727783829', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-31 11:33:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15727783829' LIMIT 1);
UPDATE users SET nick_name='15727783829', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15727783829';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521397120', 'U15521397120', '15521397120', '', '15521397120', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-31 09:53:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521397120' LIMIT 1);
UPDATE users SET nick_name='15521397120', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521397120';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660554893', 'U13660554893', 'a', '', '13660554893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-31 00:01:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660554893' LIMIT 1);
UPDATE users SET nick_name='a', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660554893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697483511', 'U13697483511', '🐂🍺', '', '13697483511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-31 00:00:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697483511' LIMIT 1);
UPDATE users SET nick_name='🐂🍺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697483511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826497074', 'U18826497074', 'Penny🐼', '', '18826497074', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 20:57:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826497074' LIMIT 1);
UPDATE users SET nick_name='Penny🐼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826497074';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826430328', 'U13826430328', '🐡.', '', '13826430328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 20:44:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826430328' LIMIT 1);
UPDATE users SET nick_name='🐡.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826430328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928710209', 'U13928710209', '13928710209', '', '13928710209', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 19:43:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928710209' LIMIT 1);
UPDATE users SET nick_name='13928710209', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928710209';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18603097431', 'U18603097431', '🍉🍓🍇🌶🥝💋', '', '18603097431', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 18:20:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18603097431' LIMIT 1);
UPDATE users SET nick_name='🍉🍓🍇🌶🥝💋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18603097431';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819452707', 'U18819452707', '18819452707', '', '18819452707', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 17:34:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819452707' LIMIT 1);
UPDATE users SET nick_name='18819452707', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819452707';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19867814050', 'U19867814050', '19867814050', '', '19867814050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 16:45:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19867814050' LIMIT 1);
UPDATE users SET nick_name='19867814050', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19867814050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920141705', 'U15920141705', '15920141705', '', '15920141705', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 16:43:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920141705' LIMIT 1);
UPDATE users SET nick_name='15920141705', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920141705';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750421419', 'U13750421419', 'Mei', '', '13750421419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 15:44:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750421419' LIMIT 1);
UPDATE users SET nick_name='Mei', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13750421419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825067462', 'U18825067462', '啊', '', '18825067462', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 15:27:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825067462' LIMIT 1);
UPDATE users SET nick_name='啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825067462';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15168351397', 'U15168351397', '伍两', '', '15168351397', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-05-30 15:10:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15168351397' LIMIT 1);
UPDATE users SET nick_name='伍两', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15168351397';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229480591', 'U13229480591', '思琦', '', '13229480591', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 14:26:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229480591' LIMIT 1);
UPDATE users SET nick_name='思琦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229480591';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13112298766', 'U13112298766', '半夜去偷狗', '', '13112298766', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 14:04:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13112298766' LIMIT 1);
UPDATE users SET nick_name='半夜去偷狗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13112298766';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129373725', 'U13129373725', 'Anthony', '', '13129373725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 13:37:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129373725' LIMIT 1);
UPDATE users SET nick_name='Anthony', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13129373725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250550602', 'U13250550602', '康', '', '13250550602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 13:22:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250550602' LIMIT 1);
UPDATE users SET nick_name='康', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250550602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665454751', 'U18665454751', '18665454751', '', '18665454751', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 12:01:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665454751' LIMIT 1);
UPDATE users SET nick_name='18665454751', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665454751';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18810763101', 'U18810763101', '18810763101', '', '18810763101', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-30 11:56:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18810763101' LIMIT 1);
UPDATE users SET nick_name='18810763101', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18810763101';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13517216426', 'U13517216426', '13517216426', '', '13517216426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-29 18:24:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13517216426' LIMIT 1);
UPDATE users SET nick_name='13517216426', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13517216426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512784511', 'U13512784511', '13512784511', '', '13512784511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-29 15:31:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512784511' LIMIT 1);
UPDATE users SET nick_name='13512784511', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512784511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760792644', 'U13760792644', '👊正野一健👍', '', '13760792644', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-29 15:27:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760792644' LIMIT 1);
UPDATE users SET nick_name='👊正野一健👍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760792644';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915797297', 'U15915797297', '15915797297', '', '15915797297', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-29 13:10:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915797297' LIMIT 1);
UPDATE users SET nick_name='15915797297', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915797297';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19124379793', 'U19124379793', '19124379793', '', '19124379793', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-29 13:05:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19124379793' LIMIT 1);
UPDATE users SET nick_name='19124379793', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19124379793';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18755810511', 'U18755810511', '18755810511', '', '18755810511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-29 13:04:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18755810511' LIMIT 1);
UPDATE users SET nick_name='18755810511', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18755810511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521215891', 'U15521215891', '宋宋小提琴', '', '15521215891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-29 13:02:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521215891' LIMIT 1);
UPDATE users SET nick_name='宋宋小提琴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521215891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18697031106', 'U18697031106', '义争', '', '18697031106', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-29 11:38:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18697031106' LIMIT 1);
UPDATE users SET nick_name='义争', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18697031106';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688406860', 'U18688406860', '18688406860', '', '18688406860', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-28 18:45:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688406860' LIMIT 1);
UPDATE users SET nick_name='18688406860', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688406860';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520568558', 'U18520568558', '行走的力量', '', '18520568558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-28 13:39:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520568558' LIMIT 1);
UPDATE users SET nick_name='行走的力量', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520568558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15996290226', 'U15996290226', '15996290226', '', '15996290226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-28 13:08:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15996290226' LIMIT 1);
UPDATE users SET nick_name='15996290226', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15996290226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826439313', 'U13826439313', '原原', '', '13826439313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-28 10:52:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826439313' LIMIT 1);
UPDATE users SET nick_name='原原', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826439313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15608413716', 'U15608413716', 'Zoron子龍同學', '', '15608413716', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 22:34:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15608413716' LIMIT 1);
UPDATE users SET nick_name='Zoron子龍同學', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15608413716';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435626017', 'U13435626017', '13435626017', '', '13435626017', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 21:37:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435626017' LIMIT 1);
UPDATE users SET nick_name='13435626017', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13435626017';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500033059', 'U13500033059', '嘉茗', '', '13500033059', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 21:36:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500033059' LIMIT 1);
UPDATE users SET nick_name='嘉茗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500033059';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711435816', 'U13711435816', '👹', '', '13711435816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 18:02:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711435816' LIMIT 1);
UPDATE users SET nick_name='👹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711435816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13049012023', 'U13049012023', '李', '', '13049012023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 18:01:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13049012023' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13049012023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128671992', 'U13128671992', '13128671992', '', '13128671992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 17:47:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128671992' LIMIT 1);
UPDATE users SET nick_name='13128671992', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128671992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418449894', 'U13418449894', 'nn', '', '13418449894', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 17:15:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418449894' LIMIT 1);
UPDATE users SET nick_name='nn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13418449894';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925003295', 'U13925003295', '13925003295', '', '13925003295', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 16:14:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925003295' LIMIT 1);
UPDATE users SET nick_name='13925003295', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925003295';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899965612', 'U15899965612', '15899965612', '', '15899965612', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 16:11:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899965612' LIMIT 1);
UPDATE users SET nick_name='15899965612', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15899965612';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011775110', 'U18011775110', '18011775110', '', '18011775110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 13:26:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011775110' LIMIT 1);
UPDATE users SET nick_name='18011775110', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011775110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602229162', 'U15602229162', '谢谢谢耳朵', '', '15602229162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 13:25:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602229162' LIMIT 1);
UPDATE users SET nick_name='谢谢谢耳朵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602229162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15021388385', 'U15021388385', '15021388385', '', '15021388385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 13:04:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15021388385' LIMIT 1);
UPDATE users SET nick_name='15021388385', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15021388385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18903077680', 'U18903077680', '小叶', '', '18903077680', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 11:31:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18903077680' LIMIT 1);
UPDATE users SET nick_name='小叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18903077680';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688899374', 'U18688899374', '^ω^_Yip', '', '18688899374', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 11:30:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688899374' LIMIT 1);
UPDATE users SET nick_name='^ω^_Yip', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688899374';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600456245', 'U13600456245', '木木菲', '', '13600456245', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-27 11:22:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600456245' LIMIT 1);
UPDATE users SET nick_name='木木菲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600456245';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826103213', 'U18826103213', '秋天的Sara酱', '', '18826103213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-26 21:37:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826103213' LIMIT 1);
UPDATE users SET nick_name='秋天的Sara酱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826103213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570723892', 'U13570723892', '13570723892', '', '13570723892', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-26 19:38:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570723892' LIMIT 1);
UPDATE users SET nick_name='13570723892', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570723892';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13715277727', 'U13715277727', 'MACCHA-', '', '13715277727', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-26 17:33:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13715277727' LIMIT 1);
UPDATE users SET nick_name='MACCHA-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13715277727';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17530202316', 'U17530202316', '17530202316', '', '17530202316', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-26 15:42:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17530202316' LIMIT 1);
UPDATE users SET nick_name='17530202316', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17530202316';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602283386', 'U15602283386', '15602283386', '', '15602283386', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-26 15:39:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602283386' LIMIT 1);
UPDATE users SET nick_name='15602283386', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602283386';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17749911811', 'U17749911811', '17749911811', '', '17749911811', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-26 15:35:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17749911811' LIMIT 1);
UPDATE users SET nick_name='17749911811', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17749911811';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18244993589', 'U18244993589', '18244993589', '', '18244993589', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-26 14:36:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18244993589' LIMIT 1);
UPDATE users SET nick_name='18244993589', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18244993589';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13253621562', 'U13253621562', 'cc', '', '13253621562', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-26 14:22:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13253621562' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13253621562';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13590975001', 'U13590975001', '12345', '', '13590975001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-26 13:39:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13590975001' LIMIT 1);
UPDATE users SET nick_name='12345', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13590975001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570494920', 'U13570494920', '13570494920', '', '13570494920', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-26 13:08:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570494920' LIMIT 1);
UPDATE users SET nick_name='13570494920', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570494920';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556117123', 'U13556117123', '✨HAHA⚡c🎉', '', '13556117123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-25 22:00:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556117123' LIMIT 1);
UPDATE users SET nick_name='✨HAHA⚡c🎉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556117123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15099955648', 'U15099955648', 'yuyu🎀', '', '15099955648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-25 19:08:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15099955648' LIMIT 1);
UPDATE users SET nick_name='yuyu🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15099955648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533338643', 'U13533338643', '13533338643', '', '13533338643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-25 18:02:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533338643' LIMIT 1);
UPDATE users SET nick_name='13533338643', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533338643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15976309897', 'U15976309897', 'Robot', '', '15976309897', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-25 17:42:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15976309897' LIMIT 1);
UPDATE users SET nick_name='Robot', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15976309897';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433579556', 'U13433579556', '杨广义', '', '13433579556', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-25 13:45:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433579556' LIMIT 1);
UPDATE users SET nick_name='杨广义', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433579556';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13692984694', 'U13692984694', '13692984694', '', '13692984694', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-25 13:40:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13692984694' LIMIT 1);
UPDATE users SET nick_name='13692984694', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13692984694';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19225639689', 'U19225639689', '19225639689', '', '19225639689', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-25 13:10:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19225639689' LIMIT 1);
UPDATE users SET nick_name='19225639689', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19225639689';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027481531', 'U18027481531', 'VIVI', '', '18027481531', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-25 13:07:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027481531' LIMIT 1);
UPDATE users SET nick_name='VIVI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027481531';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19802678566', 'U19802678566', '19802678566', '', '19802678566', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-25 13:06:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19802678566' LIMIT 1);
UPDATE users SET nick_name='19802678566', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19802678566';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13528673103', 'U13528673103', 'TDdiu', '', '13528673103', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-25 13:06:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13528673103' LIMIT 1);
UPDATE users SET nick_name='TDdiu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13528673103';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725366091', 'U13725366091', '哈哈', '', '13725366091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 20:26:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725366091' LIMIT 1);
UPDATE users SET nick_name='哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725366091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825093975', 'U13825093975', 'July', '', '13825093975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 20:21:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825093975' LIMIT 1);
UPDATE users SET nick_name='July', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825093975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570036687', 'U13570036687', '13570036687', '', '13570036687', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 19:59:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570036687' LIMIT 1);
UPDATE users SET nick_name='13570036687', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570036687';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19867586976', 'U19867586976', '杨岩松', '', '19867586976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 19:45:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19867586976' LIMIT 1);
UPDATE users SET nick_name='杨岩松', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19867586976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250579066', 'U13250579066', '13250579066', '', '13250579066', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 16:14:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250579066' LIMIT 1);
UPDATE users SET nick_name='13250579066', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250579066';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19925965182', 'U19925965182', '19925965182', '', '19925965182', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 15:53:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19925965182' LIMIT 1);
UPDATE users SET nick_name='19925965182', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19925965182';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813588438', 'U15813588438', '15813588438', '', '15813588438', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 15:21:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813588438' LIMIT 1);
UPDATE users SET nick_name='15813588438', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813588438';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998435579', 'U18998435579', '必盛', '', '18998435579', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 14:57:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998435579' LIMIT 1);
UPDATE users SET nick_name='必盛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998435579';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819780890', 'U18819780890', 'Ye', '', '18819780890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 14:32:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819780890' LIMIT 1);
UPDATE users SET nick_name='Ye', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819780890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620000095', 'U18620000095', '🐻', '', '18620000095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 14:02:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620000095' LIMIT 1);
UPDATE users SET nick_name='🐻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620000095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502010830', 'U18502010830', 'Q。', '', '18502010830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 14:02:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502010830' LIMIT 1);
UPDATE users SET nick_name='Q。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18502010830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217613145', 'U15217613145', 'Hennessy', '', '15217613145', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 13:53:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217613145' LIMIT 1);
UPDATE users SET nick_name='Hennessy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217613145';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520556846', 'U18520556846', '长岛冰茶', '', '18520556846', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 10:51:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520556846' LIMIT 1);
UPDATE users SET nick_name='长岛冰茶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520556846';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680536710', 'U18680536710', '少红', '', '18680536710', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 177, '2026-05-24 10:47:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680536710' LIMIT 1);
UPDATE users SET nick_name='少红', balance=GREATEST(balance, 0.00), points=GREATEST(points, 177) WHERE phone='18680536710';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13676222677', 'U13676222677', 'Cherrie_Lau', '', '13676222677', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 10:45:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13676222677' LIMIT 1);
UPDATE users SET nick_name='Cherrie_Lau', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13676222677';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928883042', 'U13928883042', '13928883042', '', '13928883042', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 10:11:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928883042' LIMIT 1);
UPDATE users SET nick_name='13928883042', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928883042';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928873522', 'U13928873522', '13928873522', '', '13928873522', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-24 10:10:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928873522' LIMIT 1);
UPDATE users SET nick_name='13928873522', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928873522';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521378870', 'U15521378870', '15521378870', '', '15521378870', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-23 22:12:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521378870' LIMIT 1);
UPDATE users SET nick_name='15521378870', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521378870';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826971065', 'U13826971065', '🐬yanf✨', '', '13826971065', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-23 21:10:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826971065' LIMIT 1);
UPDATE users SET nick_name='🐬yanf✨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826971065';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565264571', 'U18565264571', 'Rylee', '', '18565264571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-23 19:16:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565264571' LIMIT 1);
UPDATE users SET nick_name='Rylee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565264571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13549355686', 'U13549355686', 'cc', '', '13549355686', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-23 18:48:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13549355686' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13549355686';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876260801', 'U15876260801', '阿岑', '', '15876260801', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-23 16:40:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876260801' LIMIT 1);
UPDATE users SET nick_name='阿岑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876260801';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427580869', 'U13427580869', '烟华。', '', '13427580869', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-23 16:31:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427580869' LIMIT 1);
UPDATE users SET nick_name='烟华。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427580869';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760636200', 'U13760636200', 'yʌммм💗', '', '13760636200', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-23 16:05:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760636200' LIMIT 1);
UPDATE users SET nick_name='yʌммм💗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760636200';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265105134', 'U13265105134', '雪人ॱଳॱ', '', '13265105134', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-23 15:19:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265105134' LIMIT 1);
UPDATE users SET nick_name='雪人ॱଳॱ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265105134';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13178867531', 'U13178867531', '烯烃', '', '13178867531', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-23 14:17:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13178867531' LIMIT 1);
UPDATE users SET nick_name='烯烃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13178867531';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13437830769', 'U13437830769', 'Lian', '', '13437830769', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-23 14:06:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13437830769' LIMIT 1);
UPDATE users SET nick_name='Lian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13437830769';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915735017', 'U15915735017', '15915735017', '', '15915735017', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-23 13:58:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915735017' LIMIT 1);
UPDATE users SET nick_name='15915735017', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915735017';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913111813', 'U15913111813', 'Melinda💗', '', '15913111813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-22 15:22:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913111813' LIMIT 1);
UPDATE users SET nick_name='Melinda💗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913111813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826299779', 'U13826299779', '13826299779', '', '13826299779', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-22 14:41:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826299779' LIMIT 1);
UPDATE users SET nick_name='13826299779', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826299779';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760620201', 'U13760620201', '13760620201', '', '13760620201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-22 13:56:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760620201' LIMIT 1);
UPDATE users SET nick_name='13760620201', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760620201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19396881918', 'U19396881918', 'lina', '', '19396881918', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-22 13:39:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19396881918' LIMIT 1);
UPDATE users SET nick_name='lina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19396881918';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760764627', 'U13760764627', '13760764627', '', '13760764627', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-22 13:30:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760764627' LIMIT 1);
UPDATE users SET nick_name='13760764627', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760764627';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14739756986', 'U14739756986', 'LAN', '', '14739756986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-22 13:12:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14739756986' LIMIT 1);
UPDATE users SET nick_name='LAN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14739756986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902084443', 'U15902084443', '15902084443', '', '15902084443', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-22 13:11:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902084443' LIMIT 1);
UPDATE users SET nick_name='15902084443', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902084443';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13028893155', 'U13028893155', '13028893155', '', '13028893155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-22 13:09:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13028893155' LIMIT 1);
UPDATE users SET nick_name='13028893155', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13028893155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631350018', 'U13631350018', '咩咩', '', '13631350018', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-22 10:59:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631350018' LIMIT 1);
UPDATE users SET nick_name='咩咩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631350018';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520160682', 'U18520160682', '雪君isla🍀', '', '18520160682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-21 21:18:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520160682' LIMIT 1);
UPDATE users SET nick_name='雪君isla🍀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520160682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17611390626', 'U17611390626', '宋宋🦔ྀི', '', '17611390626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-21 15:00:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17611390626' LIMIT 1);
UPDATE users SET nick_name='宋宋🦔ྀི', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17611390626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13346322215', 'U13346322215', '火柴盒', '', '13346322215', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-21 12:50:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13346322215' LIMIT 1);
UPDATE users SET nick_name='火柴盒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13346322215';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15369971229', 'U15369971229', 'WJL', '', '15369971229', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-20 18:27:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15369971229' LIMIT 1);
UPDATE users SET nick_name='WJL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15369971229';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533549106', 'U13533549106', '花', '', '13533549106', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-20 17:19:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533549106' LIMIT 1);
UPDATE users SET nick_name='花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533549106';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18148703337', 'U18148703337', 'ABBy宜君', '', '18148703337', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-20 13:59:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18148703337' LIMIT 1);
UPDATE users SET nick_name='ABBy宜君', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18148703337';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13038836688', 'U13038836688', '13038836688', '', '13038836688', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-20 13:16:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13038836688' LIMIT 1);
UPDATE users SET nick_name='13038836688', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13038836688';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915882126', 'U15915882126', 'Susania🍳', '', '15915882126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-20 09:59:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915882126' LIMIT 1);
UPDATE users SET nick_name='Susania🍳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915882126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15994808563', 'U15994808563', '15994808563', '', '15994808563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-19 20:53:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15994808563' LIMIT 1);
UPDATE users SET nick_name='15994808563', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15994808563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813346070', 'U15813346070', '15813346070', '', '15813346070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-19 19:23:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813346070' LIMIT 1);
UPDATE users SET nick_name='15813346070', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813346070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18991861808', 'U18991861808', '18991861808', '', '18991861808', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-19 19:05:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18991861808' LIMIT 1);
UPDATE users SET nick_name='18991861808', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18991861808';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15115346320', 'U15115346320', '15115346320', '', '15115346320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-19 15:42:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15115346320' LIMIT 1);
UPDATE users SET nick_name='15115346320', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15115346320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13203142633', 'U13203142633', '6', '', '13203142633', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-19 15:06:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13203142633' LIMIT 1);
UPDATE users SET nick_name='6', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13203142633';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13076421124', 'U13076421124', '知更', '', '13076421124', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-19 14:58:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13076421124' LIMIT 1);
UPDATE users SET nick_name='知更', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13076421124';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570950159', 'U13570950159', 'CL', '', '13570950159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-19 13:18:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570950159' LIMIT 1);
UPDATE users SET nick_name='CL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570950159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18078820599', 'U18078820599', '18078820599', '', '18078820599', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-19 13:12:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18078820599' LIMIT 1);
UPDATE users SET nick_name='18078820599', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18078820599';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18125528205', 'U18125528205', '大吃一惊红色小米辣爆炒香菇律动', '', '18125528205', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-19 11:57:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18125528205' LIMIT 1);
UPDATE users SET nick_name='大吃一惊红色小米辣爆炒香菇律动', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18125528205';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265376862', 'U13265376862', 'Is梁莹莹', '', '13265376862', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-18 23:13:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265376862' LIMIT 1);
UPDATE users SET nick_name='Is梁莹莹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265376862';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122148148', 'U18122148148', '18122148148', '', '18122148148', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-18 15:51:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122148148' LIMIT 1);
UPDATE users SET nick_name='18122148148', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122148148';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129334847', 'U13129334847', '13129334847', '', '13129334847', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-18 13:50:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129334847' LIMIT 1);
UPDATE users SET nick_name='13129334847', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13129334847';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625177235', 'U15625177235', '15625177235', '', '15625177235', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-18 13:14:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625177235' LIMIT 1);
UPDATE users SET nick_name='15625177235', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625177235';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914409484', 'U15914409484', '烧烤怡👀', '', '15914409484', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-18 12:57:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914409484' LIMIT 1);
UPDATE users SET nick_name='烧烤怡👀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914409484';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922408785', 'U13922408785', '包', '', '13922408785', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-18 10:31:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922408785' LIMIT 1);
UPDATE users SET nick_name='包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922408785';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13145541313', 'U13145541313', '13145541313', '', '13145541313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 20:29:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13145541313' LIMIT 1);
UPDATE users SET nick_name='13145541313', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13145541313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15172357895', 'U15172357895', '榻榻米', '', '15172357895', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 19:52:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15172357895' LIMIT 1);
UPDATE users SET nick_name='榻榻米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15172357895';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588887048', 'U18588887048', '18588887048', '', '18588887048', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 16:33:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588887048' LIMIT 1);
UPDATE users SET nick_name='18588887048', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588887048';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813337664', 'U15813337664', '15813337664', '', '15813337664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 16:28:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813337664' LIMIT 1);
UPDATE users SET nick_name='15813337664', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813337664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802425487', 'U13802425487', 'jj', '', '13802425487', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 16:08:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802425487' LIMIT 1);
UPDATE users SET nick_name='jj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802425487';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13930135363', 'U13930135363', '天一', '', '13930135363', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 15:24:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13930135363' LIMIT 1);
UPDATE users SET nick_name='天一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13930135363';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620165535', 'U17620165535', '多', '', '17620165535', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 14:47:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620165535' LIMIT 1);
UPDATE users SET nick_name='多', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620165535';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360924874', 'U15360924874', '🍟', '', '15360924874', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 14:31:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360924874' LIMIT 1);
UPDATE users SET nick_name='🍟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360924874';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521254296', 'U15521254296', '德彪曾', '', '15521254296', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 13:51:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521254296' LIMIT 1);
UPDATE users SET nick_name='德彪曾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521254296';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13225335254', 'U13225335254', '13225335254', '', '13225335254', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 13:01:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13225335254' LIMIT 1);
UPDATE users SET nick_name='13225335254', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13225335254';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18273926695', 'U18273926695', '李帅', '', '18273926695', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 13:01:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18273926695' LIMIT 1);
UPDATE users SET nick_name='李帅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18273926695';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535368654', 'U13535368654', '13535368654', '', '13535368654', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 12:18:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535368654' LIMIT 1);
UPDATE users SET nick_name='13535368654', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535368654';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18607078311', 'U18607078311', '18607078311', '', '18607078311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-17 11:54:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18607078311' LIMIT 1);
UPDATE users SET nick_name='18607078311', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18607078311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18612386081', 'U18612386081', '云淡风轻', '', '18612386081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-05-17 11:16:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18612386081' LIMIT 1);
UPDATE users SET nick_name='云淡风轻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18612386081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913141963', 'U15913141963', 'amnesiac', '', '15913141963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-16 21:03:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913141963' LIMIT 1);
UPDATE users SET nick_name='amnesiac', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913141963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15658820159', 'U15658820159', '园气', '', '15658820159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-16 20:21:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15658820159' LIMIT 1);
UPDATE users SET nick_name='园气', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15658820159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17328501826', 'U17328501826', 'n', '', '17328501826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-16 18:00:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17328501826' LIMIT 1);
UPDATE users SET nick_name='n', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17328501826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626211381', 'U15626211381', '15626211381', '', '15626211381', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-16 17:53:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626211381' LIMIT 1);
UPDATE users SET nick_name='15626211381', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626211381';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660550318', 'U13660550318', '及时', '', '13660550318', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-16 17:13:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660550318' LIMIT 1);
UPDATE users SET nick_name='及时', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660550318';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798972472', 'U13798972472', 'J', '', '13798972472', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-16 15:19:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798972472' LIMIT 1);
UPDATE users SET nick_name='J', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798972472';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922168661', 'U13922168661', 'Hoonyee', '', '13922168661', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-16 15:19:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922168661' LIMIT 1);
UPDATE users SET nick_name='Hoonyee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922168661';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13859032868', 'U13859032868', '13859032868', '', '13859032868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-16 13:08:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13859032868' LIMIT 1);
UPDATE users SET nick_name='13859032868', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13859032868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17728981017', 'U17728981017', '咕', '', '17728981017', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-16 12:37:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17728981017' LIMIT 1);
UPDATE users SET nick_name='咕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17728981017';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814106381', 'U18814106381', 'Max', '', '18814106381', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-16 08:54:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814106381' LIMIT 1);
UPDATE users SET nick_name='Max', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814106381';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999951369', 'U15999951369', 'zm', '', '15999951369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-15 23:02:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999951369' LIMIT 1);
UPDATE users SET nick_name='zm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999951369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143536090', 'U13143536090', 'Hugo', '', '13143536090', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-15 21:55:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143536090' LIMIT 1);
UPDATE users SET nick_name='Hugo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143536090';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580340950', 'U13580340950', 'enzoo🦖', '', '13580340950', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-15 21:15:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580340950' LIMIT 1);
UPDATE users SET nick_name='enzoo🦖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580340950';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15323901488', 'U15323901488', 'Andrew', '', '15323901488', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-05-15 19:48:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15323901488' LIMIT 1);
UPDATE users SET nick_name='Andrew', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15323901488';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521191770', 'U15521191770', 'ᴋᴇɴᴛ ᥫ᭡', '', '15521191770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-15 17:21:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521191770' LIMIT 1);
UPDATE users SET nick_name='ᴋᴇɴᴛ ᥫ᭡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521191770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688878701', 'U13688878701', 'Jack.Son', '', '13688878701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-15 17:11:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688878701' LIMIT 1);
UPDATE users SET nick_name='Jack.Son', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13688878701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620430304', 'U16620430304', 'joelle', '', '16620430304', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-15 16:59:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620430304' LIMIT 1);
UPDATE users SET nick_name='joelle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620430304';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626182220', 'U15626182220', '梅菜菜菜💥', '', '15626182220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-15 15:39:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626182220' LIMIT 1);
UPDATE users SET nick_name='梅菜菜菜💥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626182220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19042361578', 'U19042361578', '19042361578', '', '19042361578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-15 14:46:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19042361578' LIMIT 1);
UPDATE users SET nick_name='19042361578', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19042361578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925066715', 'U18925066715', 'Jan', '', '18925066715', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-15 14:06:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925066715' LIMIT 1);
UPDATE users SET nick_name='Jan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925066715';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726290736', 'U13726290736', '十三', '', '13726290736', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-15 12:13:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726290736' LIMIT 1);
UPDATE users SET nick_name='十三', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726290736';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560001291', 'U13560001291', 'Ray 许', '', '13560001291', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-15 10:34:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560001291' LIMIT 1);
UPDATE users SET nick_name='Ray 许', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560001291';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920593551', 'U15920593551', 'yan', '', '15920593551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 177, '2026-05-14 20:59:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920593551' LIMIT 1);
UPDATE users SET nick_name='yan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 177) WHERE phone='15920593551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660551119', 'U13660551119', 'Kirsteen🐮', '', '13660551119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-14 17:45:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660551119' LIMIT 1);
UPDATE users SET nick_name='Kirsteen🐮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660551119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632194407', 'U13632194407', '然', '', '13632194407', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-14 16:59:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632194407' LIMIT 1);
UPDATE users SET nick_name='然', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632194407';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902216673', 'U13902216673', '拾', '', '13902216673', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-14 13:27:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902216673' LIMIT 1);
UPDATE users SET nick_name='拾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902216673';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122421670', 'U18122421670', 'RAYMOND', '', '18122421670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-14 13:19:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122421670' LIMIT 1);
UPDATE users SET nick_name='RAYMOND', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122421670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025570278', 'U13025570278', '13025570278', '', '13025570278', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-14 13:04:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025570278' LIMIT 1);
UPDATE users SET nick_name='13025570278', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025570278';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826135419', 'U13826135419', 'zq', '', '13826135419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-14 01:47:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826135419' LIMIT 1);
UPDATE users SET nick_name='zq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826135419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265356956', 'U13265356956', 'kitty', '', '13265356956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-14 01:11:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265356956' LIMIT 1);
UPDATE users SET nick_name='kitty', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265356956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13051257126', 'U13051257126', '锦小子', '', '13051257126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 21:23:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13051257126' LIMIT 1);
UPDATE users SET nick_name='锦小子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13051257126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535194266', 'U13535194266', 'LEUNG.', '', '13535194266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 21:00:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535194266' LIMIT 1);
UPDATE users SET nick_name='LEUNG.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535194266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928831126', 'U13928831126', 'Susanne', '', '13928831126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 20:11:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928831126' LIMIT 1);
UPDATE users SET nick_name='Susanne', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928831126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802791172', 'U13802791172', 'Miki', '', '13802791172', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 19:51:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802791172' LIMIT 1);
UPDATE users SET nick_name='Miki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802791172';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218648073', 'U15218648073', '15218648073', '', '15218648073', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 16:08:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218648073' LIMIT 1);
UPDATE users SET nick_name='15218648073', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218648073';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18638623151', 'U18638623151', 'kk', '', '18638623151', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 16:06:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18638623151' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18638623151';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521321682', 'U15521321682', 'Kepler', '', '15521321682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 15:08:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521321682' LIMIT 1);
UPDATE users SET nick_name='Kepler', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521321682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011651161', 'U15011651161', '15011651161', '', '15011651161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 13:53:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011651161' LIMIT 1);
UPDATE users SET nick_name='15011651161', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15011651161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620231742', 'U18620231742', '李琳Ada', '', '18620231742', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 13:34:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620231742' LIMIT 1);
UPDATE users SET nick_name='李琳Ada', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620231742';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929597727', 'U13929597727', '兮', '', '13929597727', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 12:58:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929597727' LIMIT 1);
UPDATE users SET nick_name='兮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929597727';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18138748591', 'U18138748591', 'Superlily', '', '18138748591', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 12:57:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18138748591' LIMIT 1);
UPDATE users SET nick_name='Superlily', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18138748591';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922773117', 'U13922773117', '13922773117', '', '13922773117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 12:53:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922773117' LIMIT 1);
UPDATE users SET nick_name='13922773117', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922773117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819254676', 'U18819254676', 'Jarvis Li', '', '18819254676', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 11:14:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819254676' LIMIT 1);
UPDATE users SET nick_name='Jarvis Li', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819254676';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660565765', 'U13660565765', '机灵珺', '', '13660565765', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-13 01:53:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660565765' LIMIT 1);
UPDATE users SET nick_name='机灵珺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660565765';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826068355', 'U18826068355', 'Lu醬_彦儒', '', '18826068355', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-12 23:27:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826068355' LIMIT 1);
UPDATE users SET nick_name='Lu醬_彦儒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826068355';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660390403', 'U13660390403', 'super+', '', '13660390403', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-12 17:54:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660390403' LIMIT 1);
UPDATE users SET nick_name='super+', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660390403';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602269817', 'U15602269817', 'DrBear', '', '15602269817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-12 17:02:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602269817' LIMIT 1);
UPDATE users SET nick_name='DrBear', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602269817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15871362800', 'U15871362800', '15871362800', '', '15871362800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-12 16:53:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15871362800' LIMIT 1);
UPDATE users SET nick_name='15871362800', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15871362800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925132320', 'U13925132320', '13925132320', '', '13925132320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-12 16:16:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925132320' LIMIT 1);
UPDATE users SET nick_name='13925132320', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925132320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602777922', 'U13602777922', '滕先生', '', '13602777922', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-12 16:10:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602777922' LIMIT 1);
UPDATE users SET nick_name='滕先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602777922';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570216162', 'U13570216162', '鸿鹰饰品（下单打字）', '', '13570216162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2026-05-12 13:07:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570216162' LIMIT 1);
UPDATE users SET nick_name='鸿鹰饰品（下单打字）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13570216162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578636359', 'U18578636359', 'Mr Magic', '', '18578636359', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-12 12:37:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578636359' LIMIT 1);
UPDATE users SET nick_name='Mr Magic', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578636359';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822345122', 'U13822345122', '秦生', '', '13822345122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-11 16:49:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822345122' LIMIT 1);
UPDATE users SET nick_name='秦生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822345122';
