SET NAMES utf8mb4;
-- 中大店用户导入 part 17 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18323899510', 'U18323899510', 'wsw', '', '18323899510', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 11:22:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18323899510' LIMIT 1);
UPDATE users SET nick_name='wsw', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18323899510';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928700821', 'U13928700821', 'jy', '', '13928700821', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 11:11:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928700821' LIMIT 1);
UPDATE users SET nick_name='jy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928700821';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13322812046', 'U13322812046', '大猛太阳', '', '13322812046', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 10:13:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13322812046' LIMIT 1);
UPDATE users SET nick_name='大猛太阳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13322812046';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520416296', 'U18520416296', '余', '', '18520416296', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-31 18:29:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520416296' LIMIT 1);
UPDATE users SET nick_name='余', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520416296';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520497070', 'U18520497070', 'Lemon', '', '18520497070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-31 18:25:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520497070' LIMIT 1);
UPDATE users SET nick_name='Lemon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520497070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578783724', 'U18578783724', '阿帅', '', '18578783724', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-31 17:52:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578783724' LIMIT 1);
UPDATE users SET nick_name='阿帅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578783724';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13035759170', 'U13035759170', '我', '', '13035759170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-31 16:40:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13035759170' LIMIT 1);
UPDATE users SET nick_name='我', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13035759170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826246258', 'U18826246258', 'Niki.Li', '', '18826246258', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-31 16:30:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826246258' LIMIT 1);
UPDATE users SET nick_name='Niki.Li', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826246258';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15710665664', 'U15710665664', '1111', '', '15710665664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-31 14:20:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15710665664' LIMIT 1);
UPDATE users SET nick_name='1111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15710665664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17796032408', 'U17796032408', 'kk', '', '17796032408', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-31 11:52:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17796032408' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17796032408';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17742578221', 'U17742578221', 'Julie', '', '17742578221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-31 11:43:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17742578221' LIMIT 1);
UPDATE users SET nick_name='Julie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17742578221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989245282', 'U15989245282', '☆Cici★', '', '15989245282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-31 11:00:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989245282' LIMIT 1);
UPDATE users SET nick_name='☆Cici★', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989245282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570963349', 'U13570963349', 'ShErly🐈', '', '13570963349', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-10-31 09:24:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570963349' LIMIT 1);
UPDATE users SET nick_name='ShErly🐈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13570963349';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924319590', 'U19924319590', 'pa', '', '19924319590', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-31 07:52:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924319590' LIMIT 1);
UPDATE users SET nick_name='pa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924319590';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989275095', 'U15989275095', 'Yankee', '', '15989275095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 19:37:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989275095' LIMIT 1);
UPDATE users SET nick_name='Yankee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989275095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925105851', 'U13925105851', '13925105851', '', '13925105851', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 18:08:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925105851' LIMIT 1);
UPDATE users SET nick_name='13925105851', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925105851';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665912231', 'U18665912231', '谁谁谁', '', '18665912231', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 18:06:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665912231' LIMIT 1);
UPDATE users SET nick_name='谁谁谁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665912231';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15707510403', 'U15707510403', '🧀奶酪', '', '15707510403', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 18:05:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15707510403' LIMIT 1);
UPDATE users SET nick_name='🧀奶酪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15707510403';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521399903', 'U15521399903', 'Jo', '', '15521399903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-30 18:01:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521399903' LIMIT 1);
UPDATE users SET nick_name='Jo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15521399903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632270378', 'U13632270378', 'Amanda🎾', '', '13632270378', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 15:20:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632270378' LIMIT 1);
UPDATE users SET nick_name='Amanda🎾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632270378';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15768699190', 'U15768699190', 'yxx', '', '15768699190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 14:41:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15768699190' LIMIT 1);
UPDATE users SET nick_name='yxx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15768699190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17371430986', 'U17371430986', '我的猫叫一麟', '', '17371430986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 14:40:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17371430986' LIMIT 1);
UPDATE users SET nick_name='我的猫叫一麟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17371430986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027429602', 'U18027429602', '1', '', '18027429602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 14:35:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027429602' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027429602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13380026798', 'U13380026798', 'wjz', '', '13380026798', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 96, '2024-10-30 14:16:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13380026798' LIMIT 1);
UPDATE users SET nick_name='wjz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 96) WHERE phone='13380026798';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13008300681', 'U13008300681', '谭', '', '13008300681', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 13:55:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13008300681' LIMIT 1);
UPDATE users SET nick_name='谭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13008300681';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535418622', 'U13535418622', 'Tracy', '', '13535418622', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 13:21:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535418622' LIMIT 1);
UPDATE users SET nick_name='Tracy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535418622';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665561393', 'U18665561393', '豆豆', '', '18665561393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-30 11:30:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665561393' LIMIT 1);
UPDATE users SET nick_name='豆豆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18665561393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620030677', 'U18620030677', '18620030677', '', '18620030677', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 10:27:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620030677' LIMIT 1);
UPDATE users SET nick_name='18620030677', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620030677';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19521091213', 'U19521091213', 'Jo_Sablier', '', '19521091213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-30 10:09:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19521091213' LIMIT 1);
UPDATE users SET nick_name='Jo_Sablier', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19521091213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560000955', 'U13560000955', '泥鳅', '', '13560000955', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 20:55:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560000955' LIMIT 1);
UPDATE users SET nick_name='泥鳅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560000955';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13968751241', 'U13968751241', '13968751241', '', '13968751241', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 20:42:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13968751241' LIMIT 1);
UPDATE users SET nick_name='13968751241', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13968751241';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17512004021', 'U17512004021', 'cts', '', '17512004021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 18:55:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17512004021' LIMIT 1);
UPDATE users SET nick_name='cts', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17512004021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316091398', 'U13316091398', '范', '', '13316091398', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 17:50:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316091398' LIMIT 1);
UPDATE users SET nick_name='范', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316091398';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19068505590', 'U19068505590', '山羊网球-中大店', '', '19068505590', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 17:34:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19068505590' LIMIT 1);
UPDATE users SET nick_name='山羊网球-中大店', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19068505590';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17328587814', 'U17328587814', '🦪豪', '', '17328587814', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 16:31:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17328587814' LIMIT 1);
UPDATE users SET nick_name='🦪豪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17328587814';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631316286', 'U13631316286', 'Kim Ko', '', '13631316286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 15:50:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631316286' LIMIT 1);
UPDATE users SET nick_name='Kim Ko', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631316286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15797957636', 'U15797957636', 'Aimee', '', '15797957636', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 15:37:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15797957636' LIMIT 1);
UPDATE users SET nick_name='Aimee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15797957636';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626220262', 'U15626220262', '15626220262', '', '15626220262', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 15:17:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626220262' LIMIT 1);
UPDATE users SET nick_name='15626220262', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626220262';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15201502515', 'U15201502515', 'Claire🐮🍊👚', '', '15201502515', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 14:20:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15201502515' LIMIT 1);
UPDATE users SET nick_name='Claire🐮🍊👚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15201502515';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15272052681', 'U15272052681', '蓓呗', '', '15272052681', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 13:47:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15272052681' LIMIT 1);
UPDATE users SET nick_name='蓓呗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15272052681';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250470020', 'U13250470020', 'Haakson', '', '13250470020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 13:44:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250470020' LIMIT 1);
UPDATE users SET nick_name='Haakson', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250470020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17732262170', 'U17732262170', '阳阳 Yangyang', '', '17732262170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 11:54:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17732262170' LIMIT 1);
UPDATE users SET nick_name='阳阳 Yangyang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17732262170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600056968', 'U13600056968', '果果', '', '13600056968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-29 10:36:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600056968' LIMIT 1);
UPDATE users SET nick_name='果果', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600056968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922223625', 'U18922223625', '陈炯燊', '', '18922223625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-29 00:28:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922223625' LIMIT 1);
UPDATE users SET nick_name='陈炯燊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18922223625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19584498340', 'U19584498340', '陈炯燊', '', '19584498340', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-10-29 00:23:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19584498340' LIMIT 1);
UPDATE users SET nick_name='陈炯燊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='19584498340';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13125001851', 'U13125001851', '哈利', '', '13125001851', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-10-28 21:32:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13125001851' LIMIT 1);
UPDATE users SET nick_name='哈利', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='13125001851';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808845768', 'U13808845768', '敏聪Zyli', '', '13808845768', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-28 19:49:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808845768' LIMIT 1);
UPDATE users SET nick_name='敏聪Zyli', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808845768';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13501518840', 'U13501518840', '13501518840', '', '13501518840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-28 17:49:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13501518840' LIMIT 1);
UPDATE users SET nick_name='13501518840', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13501518840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798198495', 'U13798198495', 'Janny', '', '13798198495', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-28 16:37:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798198495' LIMIT 1);
UPDATE users SET nick_name='Janny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798198495';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688882836', 'U18688882836', '18688882836', '', '18688882836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-28 16:27:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688882836' LIMIT 1);
UPDATE users SET nick_name='18688882836', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688882836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18318010053', 'U18318010053', 'DWEILXOX', '', '18318010053', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-28 16:02:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18318010053' LIMIT 1);
UPDATE users SET nick_name='DWEILXOX', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18318010053';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520635380', 'U18520635380', 'stanffly', '', '18520635380', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-28 14:27:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520635380' LIMIT 1);
UPDATE users SET nick_name='stanffly', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520635380';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13423258976', 'U13423258976', 'kiki', '', '13423258976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-28 13:05:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13423258976' LIMIT 1);
UPDATE users SET nick_name='kiki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13423258976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13506168818', 'U13506168818', 'joyce', '', '13506168818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-28 11:50:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13506168818' LIMIT 1);
UPDATE users SET nick_name='joyce', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13506168818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18806682223', 'U18806682223', '椰子203', '', '18806682223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-28 08:57:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18806682223' LIMIT 1);
UPDATE users SET nick_name='椰子203', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18806682223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520667387', 'U18520667387', '黄诗程', '', '18520667387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-27 22:46:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520667387' LIMIT 1);
UPDATE users SET nick_name='黄诗程', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520667387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19389727918', 'U19389727918', '吧哈哈哈', '', '19389727918', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-27 14:40:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19389727918' LIMIT 1);
UPDATE users SET nick_name='吧哈哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19389727918';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120552902', 'U19120552902', 'bc', '', '19120552902', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-27 13:22:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120552902' LIMIT 1);
UPDATE users SET nick_name='bc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120552902';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925001096', 'U13925001096', '孙林', '', '13925001096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-10-27 13:19:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925001096' LIMIT 1);
UPDATE users SET nick_name='孙林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13925001096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580588645', 'U13580588645', '珊羊子', '', '13580588645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-27 13:13:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580588645' LIMIT 1);
UPDATE users SET nick_name='珊羊子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580588645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560390572', 'U13560390572', 'sc+', '', '13560390572', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-27 13:07:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560390572' LIMIT 1);
UPDATE users SET nick_name='sc+', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13560390572';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18305647724', 'U18305647724', '洛基', '', '18305647724', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-27 11:52:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18305647724' LIMIT 1);
UPDATE users SET nick_name='洛基', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18305647724';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922114206', 'U13922114206', 'Anna', '', '13922114206', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-10-27 07:05:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922114206' LIMIT 1);
UPDATE users SET nick_name='Anna', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13922114206';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826230816', 'U13826230816', '美食', '', '13826230816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 22:35:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826230816' LIMIT 1);
UPDATE users SET nick_name='美食', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826230816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16626590328', 'U16626590328', 'Locus', '', '16626590328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 21:56:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16626590328' LIMIT 1);
UPDATE users SET nick_name='Locus', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16626590328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820425236', 'U15820425236', 'Alvin Wu', '', '15820425236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 20:31:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820425236' LIMIT 1);
UPDATE users SET nick_name='Alvin Wu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820425236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512710490', 'U13512710490', '聪', '', '13512710490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 20:22:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512710490' LIMIT 1);
UPDATE users SET nick_name='聪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512710490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17316807464', 'U17316807464', 'HXIAOXIN', '', '17316807464', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 18:28:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17316807464' LIMIT 1);
UPDATE users SET nick_name='HXIAOXIN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17316807464';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520951345', 'U18520951345', '浩月', '', '18520951345', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-26 18:00:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520951345' LIMIT 1);
UPDATE users SET nick_name='浩月', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18520951345';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602479525', 'U13602479525', 'Carlene', '', '13602479525', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 17:53:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602479525' LIMIT 1);
UPDATE users SET nick_name='Carlene', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602479525';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620490805', 'U16620490805', '16620490805', '', '16620490805', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 17:23:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620490805' LIMIT 1);
UPDATE users SET nick_name='16620490805', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620490805';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682540215', 'U13682540215', '13682540215', '', '13682540215', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 17:07:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682540215' LIMIT 1);
UPDATE users SET nick_name='13682540215', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13682540215';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610300602', 'U13610300602', 'DD', '', '13610300602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 16:20:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610300602' LIMIT 1);
UPDATE users SET nick_name='DD', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610300602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710067518', 'U13710067518', '天高云淡', '', '13710067518', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 16:10:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710067518' LIMIT 1);
UPDATE users SET nick_name='天高云淡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710067518';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692430505', 'U15692430505', '15692430505', '', '15692430505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 14:18:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692430505' LIMIT 1);
UPDATE users SET nick_name='15692430505', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692430505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560208929', 'U13560208929', '齋藤　優', '', '13560208929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 154, '2024-10-26 13:41:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560208929' LIMIT 1);
UPDATE users SET nick_name='齋藤　優', balance=GREATEST(balance, 0.00), points=GREATEST(points, 154) WHERE phone='13560208929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640297373', 'U13640297373', 'R.Z', '', '13640297373', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-10-26 12:24:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640297373' LIMIT 1);
UPDATE users SET nick_name='R.Z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13640297373';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926158412', 'U18926158412', '18926158412', '', '18926158412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 11:29:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926158412' LIMIT 1);
UPDATE users SET nick_name='18926158412', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926158412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680557717', 'U18680557717', '马小黑', '', '18680557717', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 10:47:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680557717' LIMIT 1);
UPDATE users SET nick_name='马小黑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680557717';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915767971', 'U15915767971', 'O₂', '', '15915767971', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 10:28:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915767971' LIMIT 1);
UPDATE users SET nick_name='O₂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915767971';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18357179062', 'U18357179062', 'Y🔆', '', '18357179062', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 10:22:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18357179062' LIMIT 1);
UPDATE users SET nick_name='Y🔆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18357179062';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819350773', 'U18819350773', 'RyST', '', '18819350773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-26 10:15:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819350773' LIMIT 1);
UPDATE users SET nick_name='RyST', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18819350773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18888887141', 'U18888887141', '18888887141', '', '18888887141', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-26 10:12:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18888887141' LIMIT 1);
UPDATE users SET nick_name='18888887141', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18888887141';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631223270', 'U13631223270', '🧸', '', '13631223270', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 22:18:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631223270' LIMIT 1);
UPDATE users SET nick_name='🧸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631223270';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820207039', 'U15820207039', '大濛！！', '', '15820207039', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-10-25 22:18:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820207039' LIMIT 1);
UPDATE users SET nick_name='大濛！！', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15820207039';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13192210667', 'U13192210667', 'Amber🍉', '', '13192210667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 22:05:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13192210667' LIMIT 1);
UPDATE users SET nick_name='Amber🍉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13192210667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13322225085', 'U13322225085', '13322225085', '', '13322225085', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 21:45:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13322225085' LIMIT 1);
UPDATE users SET nick_name='13322225085', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13322225085';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18379069481', 'U18379069481', '白白', '', '18379069481', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-10-25 21:27:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18379069481' LIMIT 1);
UPDATE users SET nick_name='白白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18379069481';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18576545646', 'U18576545646', 'Kwatta', '', '18576545646', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 21:27:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18576545646' LIMIT 1);
UPDATE users SET nick_name='Kwatta', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18576545646';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15821790568', 'U15821790568', '罗', '', '15821790568', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 21:19:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15821790568' LIMIT 1);
UPDATE users SET nick_name='罗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15821790568';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13973668866', 'U13973668866', 'ChAcE', '', '13973668866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-25 19:01:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13973668866' LIMIT 1);
UPDATE users SET nick_name='ChAcE', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13973668866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640269526', 'U13640269526', '13640269526', '', '13640269526', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 18:23:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640269526' LIMIT 1);
UPDATE users SET nick_name='13640269526', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640269526';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013045713', 'U15013045713', 'Ryan', '', '15013045713', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-25 17:04:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013045713' LIMIT 1);
UPDATE users SET nick_name='Ryan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15013045713';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989160016', 'U15989160016', 'Ten🧲', '', '15989160016', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 17:01:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989160016' LIMIT 1);
UPDATE users SET nick_name='Ten🧲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989160016';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520289007', 'U18520289007', 'E..', '', '18520289007', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 16:18:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520289007' LIMIT 1);
UPDATE users SET nick_name='E..', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520289007';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825174241', 'U18825174241', '18825174241', '', '18825174241', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 15:53:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825174241' LIMIT 1);
UPDATE users SET nick_name='18825174241', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825174241';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920462002', 'U15920462002', '咸鱼', '', '15920462002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 15:08:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920462002' LIMIT 1);
UPDATE users SET nick_name='咸鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920462002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922172466', 'U13922172466', 'Timothy.M', '', '13922172466', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 15:07:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922172466' LIMIT 1);
UPDATE users SET nick_name='Timothy.M', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922172466';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17328666395', 'U17328666395', 'Swaggy', '', '17328666395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 14:51:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17328666395' LIMIT 1);
UPDATE users SET nick_name='Swaggy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17328666395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13790300276', 'U13790300276', '嘉嘉yi', '', '13790300276', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 14:18:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13790300276' LIMIT 1);
UPDATE users SET nick_name='嘉嘉yi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13790300276';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602399969', 'U15602399969', 'a', '', '15602399969', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-25 13:53:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602399969' LIMIT 1);
UPDATE users SET nick_name='a', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15602399969';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726259718', 'U13726259718', '13726259718', '', '13726259718', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 13:51:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726259718' LIMIT 1);
UPDATE users SET nick_name='13726259718', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726259718';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13667720416', 'U13667720416', '13667720416', '', '13667720416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 12:24:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13667720416' LIMIT 1);
UPDATE users SET nick_name='13667720416', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13667720416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600031097', 'U13600031097', 'Gaby', '', '13600031097', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-25 12:18:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600031097' LIMIT 1);
UPDATE users SET nick_name='Gaby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13600031097';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826055778', 'U13826055778', '13826055778', '', '13826055778', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 11:41:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826055778' LIMIT 1);
UPDATE users SET nick_name='13826055778', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826055778';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570399122', 'U13570399122', 'Markeee  👾', '', '13570399122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-25 11:32:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570399122' LIMIT 1);
UPDATE users SET nick_name='Markeee  👾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13570399122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018450120', 'U15018450120', '🐧琪琪琪', '', '15018450120', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 11:27:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018450120' LIMIT 1);
UPDATE users SET nick_name='🐧琪琪琪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018450120';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18344080606', 'U18344080606', '18344080606', '', '18344080606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 11:23:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18344080606' LIMIT 1);
UPDATE users SET nick_name='18344080606', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18344080606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19966282871', 'U19966282871', 'corgi', '', '19966282871', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 10:35:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19966282871' LIMIT 1);
UPDATE users SET nick_name='corgi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19966282871';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521169261', 'U15521169261', 'Roger', '', '15521169261', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 10:28:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521169261' LIMIT 1);
UPDATE users SET nick_name='Roger', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521169261';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915725565', 'U15915725565', 'Catta🔅', '', '15915725565', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-25 10:19:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915725565' LIMIT 1);
UPDATE users SET nick_name='Catta🔅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15915725565';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588557892', 'U18588557892', '牛子', '', '18588557892', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-25 09:59:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588557892' LIMIT 1);
UPDATE users SET nick_name='牛子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18588557892';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18269298921', 'U18269298921', '준봉星河眼里', '', '18269298921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 09:57:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18269298921' LIMIT 1);
UPDATE users SET nick_name='준봉星河眼里', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18269298921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913234707', 'U15913234707', '15913234707', '', '15913234707', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 09:46:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913234707' LIMIT 1);
UPDATE users SET nick_name='15913234707', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913234707';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13612897117', 'U13612897117', '懒', '', '13612897117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-25 08:37:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13612897117' LIMIT 1);
UPDATE users SET nick_name='懒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13612897117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625045048', 'U15625045048', 'KD6-3.7', '', '15625045048', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-24 17:55:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625045048' LIMIT 1);
UPDATE users SET nick_name='KD6-3.7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625045048';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688871161', 'U13688871161', '符符', '', '13688871161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-24 16:47:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688871161' LIMIT 1);
UPDATE users SET nick_name='符符', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13688871161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18002266626', 'U18002266626', '洋葱焜Onionkun', '', '18002266626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-24 16:17:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18002266626' LIMIT 1);
UPDATE users SET nick_name='洋葱焜Onionkun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18002266626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902066455', 'U15902066455', '肖', '', '15902066455', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-10-24 08:48:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902066455' LIMIT 1);
UPDATE users SET nick_name='肖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='15902066455';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920362300', 'U15920362300', '花花🌸 世界', '', '15920362300', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-23 21:49:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920362300' LIMIT 1);
UPDATE users SET nick_name='花花🌸 世界', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920362300';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751531821', 'U13751531821', 'puppylove.', '', '13751531821', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-23 19:58:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751531821' LIMIT 1);
UPDATE users SET nick_name='puppylove.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13751531821';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692407334', 'U15692407334', 'mickyfee', '', '15692407334', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-23 18:17:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692407334' LIMIT 1);
UPDATE users SET nick_name='mickyfee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692407334';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798983238', 'U13798983238', 'Eric🎧', '', '13798983238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 117, '2024-10-23 17:41:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798983238' LIMIT 1);
UPDATE users SET nick_name='Eric🎧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 117) WHERE phone='13798983238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15040302218', 'U15040302218', 'Easily', '', '15040302218', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-23 15:30:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15040302218' LIMIT 1);
UPDATE users SET nick_name='Easily', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15040302218';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818812607', 'U15818812607', '15818812607', '', '15818812607', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-23 13:33:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818812607' LIMIT 1);
UPDATE users SET nick_name='15818812607', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818812607';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028806018', 'U18028806018', 'corgi', '', '18028806018', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-23 10:37:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028806018' LIMIT 1);
UPDATE users SET nick_name='corgi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028806018';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632473775', 'U13632473775', '秋琼', '', '13632473775', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-22 21:09:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632473775' LIMIT 1);
UPDATE users SET nick_name='秋琼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632473775';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820236811', 'U15820236811', '15820236811', '', '15820236811', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-22 20:52:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820236811' LIMIT 1);
UPDATE users SET nick_name='15820236811', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820236811';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19584022269', 'U19584022269', '19584022269', '', '19584022269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-22 17:03:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19584022269' LIMIT 1);
UPDATE users SET nick_name='19584022269', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19584022269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924085213', 'U13924085213', 'Penn-梅', '', '13924085213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-22 16:36:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924085213' LIMIT 1);
UPDATE users SET nick_name='Penn-梅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924085213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818830080', 'U15818830080', 's', '', '15818830080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-22 16:09:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818830080' LIMIT 1);
UPDATE users SET nick_name='s', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818830080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430316824', 'U13430316824', '13430316824', '', '13430316824', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-22 12:55:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430316824' LIMIT 1);
UPDATE users SET nick_name='13430316824', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430316824';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580344207', 'U13580344207', '薛柒柒 Roger', '', '13580344207', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-22 11:29:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580344207' LIMIT 1);
UPDATE users SET nick_name='薛柒柒 Roger', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580344207';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18054263116', 'U18054263116', 'Love in snow', '', '18054263116', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-10-21 14:34:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18054263116' LIMIT 1);
UPDATE users SET nick_name='Love in snow', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18054263116';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928965611', 'U18928965611', 'yiyi', '', '18928965611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-21 14:06:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928965611' LIMIT 1);
UPDATE users SET nick_name='yiyi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928965611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17728099733', 'U17728099733', 'Paco🎤', '', '17728099733', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-10-21 11:11:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17728099733' LIMIT 1);
UPDATE users SET nick_name='Paco🎤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='17728099733';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15696136626', 'U15696136626', '蒲公英', '', '15696136626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2024-10-21 10:33:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15696136626' LIMIT 1);
UPDATE users SET nick_name='蒲公英', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='15696136626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565438931', 'U18565438931', '18565438931', '', '18565438931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-21 10:32:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565438931' LIMIT 1);
UPDATE users SET nick_name='18565438931', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565438931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13330045888', 'U13330045888', '叁肆柒', '', '13330045888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-10-21 09:37:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13330045888' LIMIT 1);
UPDATE users SET nick_name='叁肆柒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13330045888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820231460', 'U15820231460', 'Zhanhuiling', '', '15820231460', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 136, '2024-10-21 08:44:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820231460' LIMIT 1);
UPDATE users SET nick_name='Zhanhuiling', balance=GREATEST(balance, 0.00), points=GREATEST(points, 136) WHERE phone='15820231460';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926268626', 'U18926268626', '董生', '', '18926268626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 18, '2024-10-20 22:47:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926268626' LIMIT 1);
UPDATE users SET nick_name='董生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 18) WHERE phone='18926268626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928829123', 'U18928829123', '鱼蛋', '', '18928829123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 17:00:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928829123' LIMIT 1);
UPDATE users SET nick_name='鱼蛋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928829123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16602074882', 'U16602074882', 'Gaby', '', '16602074882', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 16:33:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16602074882' LIMIT 1);
UPDATE users SET nick_name='Gaby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16602074882';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711668664', 'U13711668664', '家团', '', '13711668664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2024-10-20 16:30:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711668664' LIMIT 1);
UPDATE users SET nick_name='家团', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='13711668664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17369940849', 'U17369940849', '塔塔', '', '17369940849', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 16:29:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17369940849' LIMIT 1);
UPDATE users SET nick_name='塔塔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17369940849';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13787148806', 'U13787148806', '王先生', '', '13787148806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 16:24:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13787148806' LIMIT 1);
UPDATE users SET nick_name='王先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13787148806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802522972', 'U13802522972', '大成', '', '13802522972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 14:00:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802522972' LIMIT 1);
UPDATE users SET nick_name='大成', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802522972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902220560', 'U13902220560', 'Yuqiong', '', '13902220560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 13:35:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902220560' LIMIT 1);
UPDATE users SET nick_name='Yuqiong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902220560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535378163', 'U13535378163', 'h 同学', '', '13535378163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-20 13:33:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535378163' LIMIT 1);
UPDATE users SET nick_name='h 同学', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13535378163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666021177', 'U18666021177', 'king', '', '18666021177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 13:18:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666021177' LIMIT 1);
UPDATE users SET nick_name='king', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666021177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826172865', 'U13826172865', '捕金的朱丽叶', '', '13826172865', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 6, '2024-10-20 13:16:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826172865' LIMIT 1);
UPDATE users SET nick_name='捕金的朱丽叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 6) WHERE phone='13826172865';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613129210', 'U18613129210', 'Egg', '', '18613129210', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-10-20 12:52:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613129210' LIMIT 1);
UPDATE users SET nick_name='Egg', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18613129210';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18124210365', 'U18124210365', '搁浅', '', '18124210365', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 12:51:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18124210365' LIMIT 1);
UPDATE users SET nick_name='搁浅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18124210365';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600452019', 'U13600452019', 'Ivylin', '', '13600452019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 12:00:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600452019' LIMIT 1);
UPDATE users SET nick_name='Ivylin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600452019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829601291', 'U13829601291', 'William', '', '13829601291', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 11:20:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829601291' LIMIT 1);
UPDATE users SET nick_name='William', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829601291';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15211468826', 'U15211468826', 'CC', '', '15211468826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-20 10:24:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15211468826' LIMIT 1);
UPDATE users SET nick_name='CC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15211468826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19274902784', 'U19274902784', '胭脂与猫', '', '19274902784', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 09:04:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19274902784' LIMIT 1);
UPDATE users SET nick_name='胭脂与猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19274902784';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013055098', 'U15013055098', 'C\'est La Vie', '', '15013055098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 76, '2024-10-20 08:04:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013055098' LIMIT 1);
UPDATE users SET nick_name='C\'est La Vie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 76) WHERE phone='15013055098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727819776', 'U13727819776', 'Lo', '', '13727819776', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-20 01:58:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727819776' LIMIT 1);
UPDATE users SET nick_name='Lo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13727819776';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620100189', 'U18620100189', 'cRyStAl--sHaN', '', '18620100189', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-20 00:05:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620100189' LIMIT 1);
UPDATE users SET nick_name='cRyStAl--sHaN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18620100189';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392105693', 'U13392105693', 'mc', '', '13392105693', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 22:55:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392105693' LIMIT 1);
UPDATE users SET nick_name='mc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392105693';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632336124', 'U13632336124', 'Zz', '', '13632336124', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 20:28:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632336124' LIMIT 1);
UPDATE users SET nick_name='Zz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632336124';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450358355', 'U13450358355', '曹', '', '13450358355', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 20:13:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450358355' LIMIT 1);
UPDATE users SET nick_name='曹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450358355';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925090802', 'U13925090802', '陈贵琴', '', '13925090802', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 19:24:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925090802' LIMIT 1);
UPDATE users SET nick_name='陈贵琴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925090802';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026293999', 'U18026293999', '文', '', '18026293999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 19:08:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026293999' LIMIT 1);
UPDATE users SET nick_name='文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026293999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602842050', 'U13602842050', '玛贝拉喜哥', '', '13602842050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 18:54:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602842050' LIMIT 1);
UPDATE users SET nick_name='玛贝拉喜哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602842050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122222222', 'U18122222222', '18122222222', '', '18122222222', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 17:49:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122222222' LIMIT 1);
UPDATE users SET nick_name='18122222222', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122222222';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450368355', 'U13450368355', '13450368355', '', '13450368355', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 17:44:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450368355' LIMIT 1);
UPDATE users SET nick_name='13450368355', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450368355';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560260240', 'U13560260240', 'Dengdeng', '', '13560260240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-19 17:04:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560260240' LIMIT 1);
UPDATE users SET nick_name='Dengdeng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13560260240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17373633056', 'U17373633056', 'Eric-Lee', '', '17373633056', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 17:00:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17373633056' LIMIT 1);
UPDATE users SET nick_name='Eric-Lee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17373633056';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18937439692', 'U18937439692', '严江', '', '18937439692', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-10-19 16:34:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18937439692' LIMIT 1);
UPDATE users SET nick_name='严江', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18937439692';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620725526', 'U18620725526', '🃏褚百万🃏', '', '18620725526', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 16:22:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620725526' LIMIT 1);
UPDATE users SET nick_name='🃏褚百万🃏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620725526';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533159894', 'U13533159894', '🍀', '', '13533159894', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 15:29:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533159894' LIMIT 1);
UPDATE users SET nick_name='🍀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533159894';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828487807', 'U13828487807', 'Vince', '', '13828487807', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-19 14:36:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828487807' LIMIT 1);
UPDATE users SET nick_name='Vince', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13828487807';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622258271', 'U13622258271', '13622258271', '', '13622258271', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 13:51:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622258271' LIMIT 1);
UPDATE users SET nick_name='13622258271', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622258271';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660166276', 'U13660166276', 'Mable', '', '13660166276', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-19 13:33:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660166276' LIMIT 1);
UPDATE users SET nick_name='Mable', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13660166276';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826481085', 'U13826481085', 'long', '', '13826481085', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 12:32:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826481085' LIMIT 1);
UPDATE users SET nick_name='long', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826481085';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620830080', 'U18620830080', '有亿点点菜', '', '18620830080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 12:29:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620830080' LIMIT 1);
UPDATE users SET nick_name='有亿点点菜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620830080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876761730', 'U17876761730', '🎣도미야키...！', '', '17876761730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-19 12:18:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876761730' LIMIT 1);
UPDATE users SET nick_name='🎣도미야키...！', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17876761730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450283587', 'U13450283587', '于小姐', '', '13450283587', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-19 11:22:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450283587' LIMIT 1);
UPDATE users SET nick_name='于小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13450283587';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13432470152', 'U13432470152', '兜', '', '13432470152', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 11:15:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13432470152' LIMIT 1);
UPDATE users SET nick_name='兜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13432470152';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15704323167', 'U15704323167', '赵', '', '15704323167', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 128, '2024-10-19 10:40:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15704323167' LIMIT 1);
UPDATE users SET nick_name='赵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 128) WHERE phone='15704323167';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017954705', 'U15017954705', 'sy', '', '15017954705', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-19 10:29:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017954705' LIMIT 1);
UPDATE users SET nick_name='sy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017954705';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600095627', 'U13600095627', 'momo', '', '13600095627', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-18 23:30:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600095627' LIMIT 1);
UPDATE users SET nick_name='momo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13600095627';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17818522130', 'U17818522130', 'Qi', '', '17818522130', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-18 21:55:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17818522130' LIMIT 1);
UPDATE users SET nick_name='Qi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17818522130';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535591902', 'U13535591902', 'Xie 谢香', '', '13535591902', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-18 21:15:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535591902' LIMIT 1);
UPDATE users SET nick_name='Xie 谢香', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13535591902';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17303895250', 'U17303895250', 'HANA', '', '17303895250', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-18 21:08:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17303895250' LIMIT 1);
UPDATE users SET nick_name='HANA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17303895250';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570017203', 'U13570017203', 'Nicole🍀', '', '13570017203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-18 21:03:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570017203' LIMIT 1);
UPDATE users SET nick_name='Nicole🍀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13570017203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500005357', 'U13500005357', '亮', '', '13500005357', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-18 20:17:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500005357' LIMIT 1);
UPDATE users SET nick_name='亮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500005357';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920458795', 'U15920458795', '15920458795', '', '15920458795', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-18 20:04:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920458795' LIMIT 1);
UPDATE users SET nick_name='15920458795', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920458795';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168543995', 'U13168543995', 'Molly', '', '13168543995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2024-10-18 18:22:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168543995' LIMIT 1);
UPDATE users SET nick_name='Molly', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='13168543995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13883948995', 'U13883948995', 'yy', '', '13883948995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-18 16:51:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13883948995' LIMIT 1);
UPDATE users SET nick_name='yy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13883948995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15875249850', 'U15875249850', '出木衫君', '', '15875249850', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-18 16:45:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15875249850' LIMIT 1);
UPDATE users SET nick_name='出木衫君', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15875249850';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724882134', 'U13724882134', '😝😝😝', '', '13724882134', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-18 16:44:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724882134' LIMIT 1);
UPDATE users SET nick_name='😝😝😝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724882134';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914386854', 'U15914386854', 'Ana', '', '15914386854', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-18 15:50:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914386854' LIMIT 1);
UPDATE users SET nick_name='Ana', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15914386854';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302303520', 'U13302303520', 'JCCCC', '', '13302303520', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-18 09:58:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302303520' LIMIT 1);
UPDATE users SET nick_name='JCCCC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302303520';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18217891281', 'U18217891281', '啊啊啊', '', '18217891281', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-18 07:27:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18217891281' LIMIT 1);
UPDATE users SET nick_name='啊啊啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18217891281';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102261008', 'U18102261008', 'Tinana', '', '18102261008', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-17 22:13:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102261008' LIMIT 1);
UPDATE users SET nick_name='Tinana', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102261008';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128201968', 'U13128201968', '🌛Zack', '', '13128201968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-17 21:16:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128201968' LIMIT 1);
UPDATE users SET nick_name='🌛Zack', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128201968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802443373', 'U13802443373', '田鼠', '', '13802443373', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 120, '2024-10-17 20:22:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802443373' LIMIT 1);
UPDATE users SET nick_name='田鼠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 120) WHERE phone='13802443373';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826302107', 'U18826302107', '张媚 🐽May', '', '18826302107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-17 17:46:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826302107' LIMIT 1);
UPDATE users SET nick_name='张媚 🐽May', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18826302107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15279180477', 'U15279180477', '知阅', '', '15279180477', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-17 17:27:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15279180477' LIMIT 1);
UPDATE users SET nick_name='知阅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15279180477';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13151382833', 'U13151382833', '宁', '', '13151382833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2024-10-17 16:08:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13151382833' LIMIT 1);
UPDATE users SET nick_name='宁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='13151382833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813349706', 'U15813349706', '小倩', '', '15813349706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-17 16:08:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813349706' LIMIT 1);
UPDATE users SET nick_name='小倩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813349706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13259052853', 'U13259052853', 'BaoYi', '', '13259052853', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-17 16:03:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13259052853' LIMIT 1);
UPDATE users SET nick_name='BaoYi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13259052853';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18927481896', 'U18927481896', '我不玩这个.', '', '18927481896', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-17 15:49:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18927481896' LIMIT 1);
UPDATE users SET nick_name='我不玩这个.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18927481896';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16624621481', 'U16624621481', '范柠语Vanny🦋', '', '16624621481', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-17 15:46:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16624621481' LIMIT 1);
UPDATE users SET nick_name='范柠语Vanny🦋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16624621481';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626491596', 'U15626491596', '15626491596', '', '15626491596', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-17 12:39:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626491596' LIMIT 1);
UPDATE users SET nick_name='15626491596', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626491596';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15099999333', 'U15099999333', '林', '', '15099999333', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-17 12:38:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15099999333' LIMIT 1);
UPDATE users SET nick_name='林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15099999333';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710665415', 'U13710665415', 'waszl🍗', '', '13710665415', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-17 11:27:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710665415' LIMIT 1);
UPDATE users SET nick_name='waszl🍗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710665415';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15814939938', 'U15814939938', '伊伊伊', '', '15814939938', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-17 10:20:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15814939938' LIMIT 1);
UPDATE users SET nick_name='伊伊伊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15814939938';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533649933', 'U13533649933', 'viviannnnn', '', '13533649933', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-17 00:18:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533649933' LIMIT 1);
UPDATE users SET nick_name='viviannnnn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533649933';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539803561', 'U13539803561', '伊万叶', '', '13539803561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-16 23:38:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539803561' LIMIT 1);
UPDATE users SET nick_name='伊万叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539803561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17576064800', 'U17576064800', '华华子', '', '17576064800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-16 21:29:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17576064800' LIMIT 1);
UPDATE users SET nick_name='华华子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17576064800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15576490421', 'U15576490421', '朱火华', '', '15576490421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-10-16 21:08:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15576490421' LIMIT 1);
UPDATE users SET nick_name='朱火华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15576490421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102085865', 'U15102085865', 'Clara', '', '15102085865', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-16 20:44:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102085865' LIMIT 1);
UPDATE users SET nick_name='Clara', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15102085865';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15603073218', 'U15603073218', '咖啡', '', '15603073218', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-16 20:28:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15603073218' LIMIT 1);
UPDATE users SET nick_name='咖啡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15603073218';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18357483763', 'U18357483763', '祥子', '', '18357483763', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-16 19:30:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18357483763' LIMIT 1);
UPDATE users SET nick_name='祥子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18357483763';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18475038578', 'U18475038578', '18475038578', '', '18475038578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-16 17:02:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18475038578' LIMIT 1);
UPDATE users SET nick_name='18475038578', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18475038578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660078146', 'U13660078146', '神经蛙', '', '13660078146', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-16 16:33:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660078146' LIMIT 1);
UPDATE users SET nick_name='神经蛙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660078146';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876571087', 'U15876571087', '尚情', '', '15876571087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-16 14:34:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876571087' LIMIT 1);
UPDATE users SET nick_name='尚情', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876571087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13411160360', 'U13411160360', '13411160360', '', '13411160360', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-16 12:45:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13411160360' LIMIT 1);
UPDATE users SET nick_name='13411160360', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13411160360';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18702028457', 'U18702028457', '.', '', '18702028457', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2024-10-16 11:47:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18702028457' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='18702028457';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122091070', 'U18122091070', 'A.lex', '', '18122091070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-10-16 11:12:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122091070' LIMIT 1);
UPDATE users SET nick_name='A.lex', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='18122091070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620343304', 'U16620343304', '🛸 Xxly.', '', '16620343304', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-15 20:05:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620343304' LIMIT 1);
UPDATE users SET nick_name='🛸 Xxly.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620343304';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416113813', 'U13416113813', '冰摇🎀红莓黑加仑', '', '13416113813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-15 19:12:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416113813' LIMIT 1);
UPDATE users SET nick_name='冰摇🎀红莓黑加仑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416113813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13482073773', 'U13482073773', 'cjl', '', '13482073773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-15 18:17:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13482073773' LIMIT 1);
UPDATE users SET nick_name='cjl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13482073773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18942008318', 'U18942008318', '云深不知处', '', '18942008318', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-15 16:28:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18942008318' LIMIT 1);
UPDATE users SET nick_name='云深不知处', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18942008318';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14795780449', 'U14795780449', '可爱多', '', '14795780449', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-15 14:23:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14795780449' LIMIT 1);
UPDATE users SET nick_name='可爱多', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14795780449';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923294588', 'U13923294588', '阿巧', '', '13923294588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-15 12:48:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923294588' LIMIT 1);
UPDATE users SET nick_name='阿巧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13923294588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626163399', 'U15626163399', 'sinyee', '', '15626163399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-15 12:03:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626163399' LIMIT 1);
UPDATE users SET nick_name='sinyee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626163399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18002274546', 'U18002274546', '风雨不改', '', '18002274546', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-15 10:26:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18002274546' LIMIT 1);
UPDATE users SET nick_name='风雨不改', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18002274546';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19551613143', 'U19551613143', '哈哈哈', '', '19551613143', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-14 22:59:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19551613143' LIMIT 1);
UPDATE users SET nick_name='哈哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19551613143';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620867007', 'U18620867007', '恬·Sweet🦋', '', '18620867007', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2024-10-14 22:13:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620867007' LIMIT 1);
UPDATE users SET nick_name='恬·Sweet🦋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='18620867007';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725290787', 'U13725290787', 'color', '', '13725290787', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-14 20:35:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725290787' LIMIT 1);
UPDATE users SET nick_name='color', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725290787';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664984620', 'U18664984620', '꧁晴꧂', '', '18664984620', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-14 17:43:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664984620' LIMIT 1);
UPDATE users SET nick_name='꧁晴꧂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664984620';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866081739', 'U19866081739', 'zler', '', '19866081739', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-14 15:40:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866081739' LIMIT 1);
UPDATE users SET nick_name='zler', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19866081739';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15200676015', 'U15200676015', 'YYYY', '', '15200676015', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2024-10-14 14:30:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15200676015' LIMIT 1);
UPDATE users SET nick_name='YYYY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='15200676015';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538921735', 'U13538921735', 'Jackson', '', '13538921735', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-10-14 14:06:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538921735' LIMIT 1);
UPDATE users SET nick_name='Jackson', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13538921735';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626284478', 'U15626284478', 'Ds', '', '15626284478', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-14 13:57:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626284478' LIMIT 1);
UPDATE users SET nick_name='Ds', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15626284478';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18144799932', 'U18144799932', 'qiqi', '', '18144799932', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-14 13:57:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18144799932' LIMIT 1);
UPDATE users SET nick_name='qiqi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18144799932';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18682304249', 'U18682304249', '呱', '', '18682304249', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-14 13:38:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18682304249' LIMIT 1);
UPDATE users SET nick_name='呱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18682304249';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13612220546', 'U13612220546', '.', '', '13612220546', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-14 09:29:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13612220546' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13612220546';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828445505', 'U13828445505', 'Tony', '', '13828445505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-13 20:49:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828445505' LIMIT 1);
UPDATE users SET nick_name='Tony', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828445505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13517817621', 'U13517817621', '1', '', '13517817621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-13 17:25:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13517817621' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13517817621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625011912', 'U15625011912', '滨', '', '15625011912', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-13 17:17:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625011912' LIMIT 1);
UPDATE users SET nick_name='滨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15625011912';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914356213', 'U15914356213', '15914356213', '', '15914356213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-13 16:13:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914356213' LIMIT 1);
UPDATE users SET nick_name='15914356213', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914356213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15618069210', 'U15618069210', 'Joanna', '', '15618069210', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-13 15:15:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15618069210' LIMIT 1);
UPDATE users SET nick_name='Joanna', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15618069210';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018478192', 'U15018478192', '杨靖', '', '15018478192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-13 13:58:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018478192' LIMIT 1);
UPDATE users SET nick_name='杨靖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018478192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602282368', 'U15602282368', 'yukinn-', '', '15602282368', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-13 13:52:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602282368' LIMIT 1);
UPDATE users SET nick_name='yukinn-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15602282368';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989985945', 'U15989985945', '方仓宇｜壹號智选', '', '15989985945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-13 12:42:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989985945' LIMIT 1);
UPDATE users SET nick_name='方仓宇｜壹號智选', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989985945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694993870', 'U13694993870', '不是山谷', '', '13694993870', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-13 12:08:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694993870' LIMIT 1);
UPDATE users SET nick_name='不是山谷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13694993870';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13918238037', 'U13918238037', 'Diamond Xu徐轶嘉', '', '13918238037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 66, '2024-10-13 12:01:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13918238037' LIMIT 1);
UPDATE users SET nick_name='Diamond Xu徐轶嘉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 66) WHERE phone='13918238037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913168303', 'U15913168303', 'Nicko', '', '15913168303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-13 11:15:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913168303' LIMIT 1);
UPDATE users SET nick_name='Nicko', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913168303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825056982', 'U18825056982', 'Kyle', '', '18825056982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-13 10:25:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825056982' LIMIT 1);
UPDATE users SET nick_name='Kyle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825056982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13326794832', 'U13326794832', 'jay', '', '13326794832', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-13 10:13:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13326794832' LIMIT 1);
UPDATE users SET nick_name='jay', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13326794832';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022348877', 'U18022348877', 'torres', '', '18022348877', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 4, '2024-10-12 21:28:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022348877' LIMIT 1);
UPDATE users SET nick_name='torres', balance=GREATEST(balance, 0.00), points=GREATEST(points, 4) WHERE phone='18022348877';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719055200', 'U13719055200', '海燕.', '', '13719055200', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-10-12 20:17:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719055200' LIMIT 1);
UPDATE users SET nick_name='海燕.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='13719055200';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17288112584', 'U17288112584', '17288112584', '', '17288112584', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 19:58:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17288112584' LIMIT 1);
UPDATE users SET nick_name='17288112584', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17288112584';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602458800', 'U13602458800', '余先生', '', '13602458800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-10-12 18:13:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602458800' LIMIT 1);
UPDATE users SET nick_name='余先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13602458800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113312996', 'U13113312996', 'kaaay', '', '13113312996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 18:06:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113312996' LIMIT 1);
UPDATE users SET nick_name='kaaay', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13113312996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19195534583', 'U19195534583', 'Indigo', '', '19195534583', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 18:02:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19195534583' LIMIT 1);
UPDATE users SET nick_name='Indigo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19195534583';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818572400', 'U15818572400', 'KK', '', '15818572400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 17:52:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818572400' LIMIT 1);
UPDATE users SET nick_name='KK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818572400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13974969242', 'U13974969242', '温先生', '', '13974969242', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-12 17:46:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13974969242' LIMIT 1);
UPDATE users SET nick_name='温先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13974969242';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535395588', 'U13535395588', '司令', '', '13535395588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2024-10-12 15:14:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535395588' LIMIT 1);
UPDATE users SET nick_name='司令', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='13535395588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642632216', 'U13642632216', '🌻欣欣向荣', '', '13642632216', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 14:57:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642632216' LIMIT 1);
UPDATE users SET nick_name='🌻欣欣向荣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642632216';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13122877937', 'U13122877937', 'J.C', '', '13122877937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 14:50:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13122877937' LIMIT 1);
UPDATE users SET nick_name='J.C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13122877937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113710721', 'U13113710721', '我', '', '13113710721', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 14:22:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113710721' LIMIT 1);
UPDATE users SET nick_name='我', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13113710721';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533114247', 'U13533114247', 'M', '', '13533114247', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2024-10-12 14:01:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533114247' LIMIT 1);
UPDATE users SET nick_name='M', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='13533114247';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928782826', 'U13928782826', '🐗natnat💤', '', '13928782826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-10-12 13:54:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928782826' LIMIT 1);
UPDATE users SET nick_name='🐗natnat💤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13928782826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129727377', 'U13129727377', 'bragi', '', '13129727377', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 13:22:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129727377' LIMIT 1);
UPDATE users SET nick_name='bragi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13129727377';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914362943', 'U15914362943', '小兰', '', '15914362943', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 12:41:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914362943' LIMIT 1);
UPDATE users SET nick_name='小兰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914362943';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427523725', 'U13427523725', 'Cinkid', '', '13427523725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-12 12:38:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427523725' LIMIT 1);
UPDATE users SET nick_name='Cinkid', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13427523725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622105524', 'U15622105524', '歐文', '', '15622105524', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 12:36:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622105524' LIMIT 1);
UPDATE users SET nick_name='歐文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622105524';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022302221', 'U18022302221', 'маттнеш', '', '18022302221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 10:43:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022302221' LIMIT 1);
UPDATE users SET nick_name='маттнеш', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022302221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15389717530', 'U15389717530', '直到岚之山的尽头', '', '15389717530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 10:33:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15389717530' LIMIT 1);
UPDATE users SET nick_name='直到岚之山的尽头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15389717530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122721945', 'U18122721945', '1', '', '18122721945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 204, '2024-10-12 10:02:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122721945' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 204) WHERE phone='18122721945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422185790', 'U13422185790', '灵吉', '', '13422185790', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-12 03:33:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422185790' LIMIT 1);
UPDATE users SET nick_name='灵吉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422185790';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434342507', 'U13434342507', '💋supergirl🚶🇨🇳', '', '13434342507', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 21:48:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434342507' LIMIT 1);
UPDATE users SET nick_name='💋supergirl🚶🇨🇳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13434342507';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18211482348', 'U18211482348', 'yau', '', '18211482348', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 21:48:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18211482348' LIMIT 1);
UPDATE users SET nick_name='yau', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18211482348';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18859219374', 'U18859219374', '高志鹏 | 无老板智能预约系统', '', '18859219374', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 21:04:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18859219374' LIMIT 1);
UPDATE users SET nick_name='高志鹏 | 无老板智能预约系统', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18859219374';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610131679', 'U13610131679', 'Breaking', '', '13610131679', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 19:40:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610131679' LIMIT 1);
UPDATE users SET nick_name='Breaking', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610131679';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622773004', 'U15622773004', '15622773004', '', '15622773004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 18:47:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622773004' LIMIT 1);
UPDATE users SET nick_name='15622773004', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622773004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18720945818', 'U18720945818', 'C🐽L', '', '18720945818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 18:39:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18720945818' LIMIT 1);
UPDATE users SET nick_name='C🐽L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18720945818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889964846', 'U15889964846', '黄小一', '', '15889964846', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 176, '2024-10-11 18:37:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889964846' LIMIT 1);
UPDATE users SET nick_name='黄小一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 176) WHERE phone='15889964846';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316949822', 'U13316949822', '小西瓜🍉', '', '13316949822', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-11 17:47:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316949822' LIMIT 1);
UPDATE users SET nick_name='小西瓜🍉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13316949822';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920441829', 'U15920441829', 'cc', '', '15920441829', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-10-11 16:55:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920441829' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15920441829';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18476925799', 'U18476925799', '古北', '', '18476925799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2024-10-11 16:45:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18476925799' LIMIT 1);
UPDATE users SET nick_name='古北', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='18476925799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533898298', 'U13533898298', 'Stanley', '', '13533898298', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-10-11 15:35:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533898298' LIMIT 1);
UPDATE users SET nick_name='Stanley', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13533898298';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320095098', 'U18320095098', '杨杨', '', '18320095098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 37, '2024-10-11 14:11:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320095098' LIMIT 1);
UPDATE users SET nick_name='杨杨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 37) WHERE phone='18320095098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928990172', 'U18928990172', 'Mason', '', '18928990172', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 13:44:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928990172' LIMIT 1);
UPDATE users SET nick_name='Mason', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928990172';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826135113', 'U13826135113', '13826135113', '', '13826135113', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 13:14:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826135113' LIMIT 1);
UPDATE users SET nick_name='13826135113', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826135113';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815892034', 'U15815892034', 'Candice', '', '15815892034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2024-10-11 13:09:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815892034' LIMIT 1);
UPDATE users SET nick_name='Candice', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='15815892034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580424069', 'U13580424069', 'Janet💫', '', '13580424069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 13:06:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580424069' LIMIT 1);
UPDATE users SET nick_name='Janet💫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580424069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521105408', 'U15521105408', 'ᒏ', '', '15521105408', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 12:50:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521105408' LIMIT 1);
UPDATE users SET nick_name='ᒏ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521105408';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620833882', 'U18620833882', '小飞鱼', '', '18620833882', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 11:31:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620833882' LIMIT 1);
UPDATE users SET nick_name='小飞鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620833882';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249739617', 'U13249739617', 'Jackie', '', '13249739617', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-11 10:24:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249739617' LIMIT 1);
UPDATE users SET nick_name='Jackie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249739617';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802643394', 'U13802643394', 'Jack', '', '13802643394', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1626, '2024-10-11 07:32:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802643394' LIMIT 1);
UPDATE users SET nick_name='Jack', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1626) WHERE phone='13802643394';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826238168', 'U13826238168', '嘉丝🎀', '', '13826238168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 943, '2024-10-11 06:46:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826238168' LIMIT 1);
UPDATE users SET nick_name='嘉丝🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 943) WHERE phone='13826238168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692007150', 'U15692007150', '几点', '', '15692007150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-10 20:15:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692007150' LIMIT 1);
UPDATE users SET nick_name='几点', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692007150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678999952', 'U13678999952', 'can0710', '', '13678999952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 86, '2024-10-10 20:10:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678999952' LIMIT 1);
UPDATE users SET nick_name='can0710', balance=GREATEST(balance, 0.00), points=GREATEST(points, 86) WHERE phone='13678999952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18342161866', 'U18342161866', '响', '', '18342161866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-10 18:59:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18342161866' LIMIT 1);
UPDATE users SET nick_name='响', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18342161866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539508244', 'U13539508244', 'Sammy', '', '13539508244', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-10 16:53:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539508244' LIMIT 1);
UPDATE users SET nick_name='Sammy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539508244';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544400029', 'U13544400029', '三色堇', '', '13544400029', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 2058, '2024-10-10 16:16:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544400029' LIMIT 1);
UPDATE users SET nick_name='三色堇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 2058) WHERE phone='13544400029';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826074018', 'U18826074018', '克悟恩', '', '18826074018', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-10 16:01:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826074018' LIMIT 1);
UPDATE users SET nick_name='克悟恩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826074018';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15814509951', 'U15814509951', '列列', '', '15814509951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-10 14:56:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15814509951' LIMIT 1);
UPDATE users SET nick_name='列列', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15814509951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16676799204', 'U16676799204', '麒尧', '', '16676799204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2024-10-10 11:53:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16676799204' LIMIT 1);
UPDATE users SET nick_name='麒尧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='16676799204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427546879', 'U13427546879', 'Cy麒尧', '', '13427546879', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-10 11:42:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427546879' LIMIT 1);
UPDATE users SET nick_name='Cy麒尧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427546879';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662313421', 'U13662313421', '秦小姐', '', '13662313421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-10 10:41:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662313421' LIMIT 1);
UPDATE users SET nick_name='秦小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662313421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503042937', 'U13503042937', '北风吹', '', '13503042937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-09 18:00:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503042937' LIMIT 1);
UPDATE users SET nick_name='北风吹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503042937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609737076', 'U13609737076', 'Bryant ye', '', '13609737076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2024-10-09 17:58:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609737076' LIMIT 1);
UPDATE users SET nick_name='Bryant ye', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='13609737076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535392123', 'U13535392123', 'Peter', '', '13535392123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1031, '2024-10-09 16:49:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535392123' LIMIT 1);
UPDATE users SET nick_name='Peter', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1031) WHERE phone='13535392123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13401325026', 'U13401325026', 'Czhieynan', '', '13401325026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-09 16:17:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13401325026' LIMIT 1);
UPDATE users SET nick_name='Czhieynan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13401325026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920383378', 'U15920383378', '火', '', '15920383378', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-09 16:14:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920383378' LIMIT 1);
UPDATE users SET nick_name='火', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920383378';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19128853326', 'U19128853326', '离离', '', '19128853326', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-09 16:09:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19128853326' LIMIT 1);
UPDATE users SET nick_name='离离', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19128853326';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902248308', 'U13902248308', 'Jane🌀英健', '', '13902248308', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-09 15:02:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902248308' LIMIT 1);
UPDATE users SET nick_name='Jane🌀英健', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902248308';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719011645', 'U13719011645', '杜夫子.Do long dream', '', '13719011645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-10-09 14:15:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719011645' LIMIT 1);
UPDATE users SET nick_name='杜夫子.Do long dream', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13719011645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922745192', 'U13922745192', '史蒂芬', '', '13922745192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2024-10-09 12:51:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922745192' LIMIT 1);
UPDATE users SET nick_name='史蒂芬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='13922745192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876504732', 'U15876504732', 'gaga', '', '15876504732', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-09 12:28:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876504732' LIMIT 1);
UPDATE users SET nick_name='gaga', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876504732';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620178540', 'U18620178540', 'Ben Cheng', '', '18620178540', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-10-09 11:24:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620178540' LIMIT 1);
UPDATE users SET nick_name='Ben Cheng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18620178540';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927521810', 'U19927521810', '19927521810', '', '19927521810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-09 10:06:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927521810' LIMIT 1);
UPDATE users SET nick_name='19927521810', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927521810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925039088', 'U13925039088', '孙竟童', '', '13925039088', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 23, '2024-10-08 21:10:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925039088' LIMIT 1);
UPDATE users SET nick_name='孙竟童', balance=GREATEST(balance, 0.00), points=GREATEST(points, 23) WHERE phone='13925039088';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632410287', 'U13632410287', 'wcl', '', '13632410287', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2024-10-08 18:37:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632410287' LIMIT 1);
UPDATE users SET nick_name='wcl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='13632410287';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622346677', 'U15622346677', 'jun', '', '15622346677', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-08 17:07:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622346677' LIMIT 1);
UPDATE users SET nick_name='jun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622346677';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19521615656', 'U19521615656', '1', '', '19521615656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-08 16:13:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19521615656' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19521615656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620227962', 'U18620227962', '李家文', '', '18620227962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-10-08 14:22:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620227962' LIMIT 1);
UPDATE users SET nick_name='李家文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18620227962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620796575', 'U18620796575', '啊啊啊', '', '18620796575', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-08 13:04:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620796575' LIMIT 1);
UPDATE users SET nick_name='啊啊啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620796575';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15286152251', 'U15286152251', 'Snoozer', '', '15286152251', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 59, '2024-10-08 12:17:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15286152251' LIMIT 1);
UPDATE users SET nick_name='Snoozer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 59) WHERE phone='15286152251';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025226952', 'U13025226952', '周', '', '13025226952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-08 10:52:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025226952' LIMIT 1);
UPDATE users SET nick_name='周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025226952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902221947', 'U13902221947', 'Wjm', '', '13902221947', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-08 10:08:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902221947' LIMIT 1);
UPDATE users SET nick_name='Wjm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902221947';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819362186', 'U18819362186', 'Mecca', '', '18819362186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-08 09:15:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819362186' LIMIT 1);
UPDATE users SET nick_name='Mecca', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819362186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920199375', 'U15920199375', '6+', '', '15920199375', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-08 00:11:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920199375' LIMIT 1);
UPDATE users SET nick_name='6+', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920199375';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660047533', 'U13660047533', '尹子11～', '', '13660047533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 19:22:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660047533' LIMIT 1);
UPDATE users SET nick_name='尹子11～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660047533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13906405869', 'U13906405869', '尘泉', '', '13906405869', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2024-10-07 19:20:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13906405869' LIMIT 1);
UPDATE users SET nick_name='尘泉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='13906405869';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19157521312', 'U19157521312', '19157521312', '', '19157521312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 18:54:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19157521312' LIMIT 1);
UPDATE users SET nick_name='19157521312', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19157521312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13315692846', 'U13315692846', '萝卜', '', '13315692846', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 17:55:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13315692846' LIMIT 1);
UPDATE users SET nick_name='萝卜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13315692846';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416260897', 'U13416260897', '13416260897', '', '13416260897', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 17:47:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416260897' LIMIT 1);
UPDATE users SET nick_name='13416260897', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416260897';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247391311', 'U13247391311', 'Farper', '', '13247391311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 59, '2024-10-07 17:00:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247391311' LIMIT 1);
UPDATE users SET nick_name='Farper', balance=GREATEST(balance, 0.00), points=GREATEST(points, 59) WHERE phone='13247391311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15088060254', 'U15088060254', '爱诺-林逸', '', '15088060254', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-10-07 16:25:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15088060254' LIMIT 1);
UPDATE users SET nick_name='爱诺-林逸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15088060254';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19256682192', 'U19256682192', '脏脏包', '', '19256682192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 15:30:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19256682192' LIMIT 1);
UPDATE users SET nick_name='脏脏包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19256682192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15336755445', 'U15336755445', '就是玩', '', '15336755445', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 14:42:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15336755445' LIMIT 1);
UPDATE users SET nick_name='就是玩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15336755445';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710131800', 'U13710131800', '就是玩', '', '13710131800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 14:37:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710131800' LIMIT 1);
UPDATE users SET nick_name='就是玩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710131800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13699887678', 'U13699887678', '慧浠', '', '13699887678', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 14:07:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13699887678' LIMIT 1);
UPDATE users SET nick_name='慧浠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13699887678';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322041024', 'U17322041024', '17322041024', '', '17322041024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 13:34:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322041024' LIMIT 1);
UPDATE users SET nick_name='17322041024', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322041024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622248685', 'U15622248685', 'Lynn', '', '15622248685', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 13:20:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622248685' LIMIT 1);
UPDATE users SET nick_name='Lynn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622248685';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926105136', 'U18926105136', 'ironkey', '', '18926105136', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 13:10:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926105136' LIMIT 1);
UPDATE users SET nick_name='ironkey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926105136';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688900267', 'U18688900267', 'Lq', '', '18688900267', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 11:27:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688900267' LIMIT 1);
UPDATE users SET nick_name='Lq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688900267';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560076468', 'U13560076468', 'Jan', '', '13560076468', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 11:04:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560076468' LIMIT 1);
UPDATE users SET nick_name='Jan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560076468';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18834233210', 'U18834233210', '徐大宝', '', '18834233210', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 11:02:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18834233210' LIMIT 1);
UPDATE users SET nick_name='徐大宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18834233210';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13728011464', 'U13728011464', '韦小宝', '', '13728011464', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-07 10:38:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13728011464' LIMIT 1);
UPDATE users SET nick_name='韦小宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13728011464';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726283461', 'U13726283461', '朱朱', '', '13726283461', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 216, '2024-10-07 09:39:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726283461' LIMIT 1);
UPDATE users SET nick_name='朱朱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 216) WHERE phone='13726283461';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666628615', 'U18666628615', '好', '', '18666628615', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-10-06 22:25:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666628615' LIMIT 1);
UPDATE users SET nick_name='好', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18666628615';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826197971', 'U13826197971', 'Adam Y😊', '', '13826197971', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-06 22:10:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826197971' LIMIT 1);
UPDATE users SET nick_name='Adam Y😊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13826197971';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889901845', 'U15889901845', '曾小姐', '', '15889901845', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 21:28:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889901845' LIMIT 1);
UPDATE users SET nick_name='曾小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889901845';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729829421', 'U13729829421', 'Try', '', '13729829421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 20:10:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729829421' LIMIT 1);
UPDATE users SET nick_name='Try', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729829421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18331103930', 'U18331103930', '阿嘎', '', '18331103930', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 16:40:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18331103930' LIMIT 1);
UPDATE users SET nick_name='阿嘎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18331103930';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802410507', 'U13802410507', 'MR GGJ', '', '13802410507', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 15:23:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802410507' LIMIT 1);
UPDATE users SET nick_name='MR GGJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802410507';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565338747', 'U18565338747', '吴所谓', '', '18565338747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-06 14:55:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565338747' LIMIT 1);
UPDATE users SET nick_name='吴所谓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18565338747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915580924', 'U15915580924', '321', '', '15915580924', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 13:27:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915580924' LIMIT 1);
UPDATE users SET nick_name='321', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915580924';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622121357', 'U15622121357', '.', '', '15622121357', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 13:18:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622121357' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622121357';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18202023794', 'U18202023794', '禾之', '', '18202023794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 12:59:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18202023794' LIMIT 1);
UPDATE users SET nick_name='禾之', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18202023794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13415274778', 'U13415274778', '萱Q', '', '13415274778', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-06 12:54:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13415274778' LIMIT 1);
UPDATE users SET nick_name='萱Q', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13415274778';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13104707012', 'U13104707012', 'Kaffey💭', '', '13104707012', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-06 12:48:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13104707012' LIMIT 1);
UPDATE users SET nick_name='Kaffey💭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13104707012';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129364393', 'U13129364393', 'jobi_', '', '13129364393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-06 12:47:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129364393' LIMIT 1);
UPDATE users SET nick_name='jobi_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13129364393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620917352', 'U17620917352', 'hp', '', '17620917352', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 12:07:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620917352' LIMIT 1);
UPDATE users SET nick_name='hp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620917352';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430201803', 'U13430201803', 'P!PP! Design', '', '13430201803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 11:30:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430201803' LIMIT 1);
UPDATE users SET nick_name='P!PP! Design', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430201803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18222222222', 'U18222222222', '18222222222', '', '18222222222', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 10:39:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18222222222' LIMIT 1);
UPDATE users SET nick_name='18222222222', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18222222222';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825194813', 'U18825194813', '庄小样^_^', '', '18825194813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 10:36:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825194813' LIMIT 1);
UPDATE users SET nick_name='庄小样^_^', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825194813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808827404', 'U13808827404', 'J.ᙆᴶʸᰔᩚ', '', '13808827404', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 10:36:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808827404' LIMIT 1);
UPDATE users SET nick_name='J.ᙆᴶʸᰔᩚ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808827404';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360836872', 'U15360836872', '老牛', '', '15360836872', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-06 09:31:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360836872' LIMIT 1);
UPDATE users SET nick_name='老牛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360836872';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18295534612', 'U18295534612', '飒飒', '', '18295534612', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-05 22:25:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18295534612' LIMIT 1);
UPDATE users SET nick_name='飒飒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18295534612';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929520268', 'U13929520268', '张建辉', '', '13929520268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 159, '2024-10-05 20:55:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929520268' LIMIT 1);
UPDATE users SET nick_name='张建辉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 159) WHERE phone='13929520268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560128877', 'U13560128877', 'LL冬', '', '13560128877', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 106, '2024-10-05 20:49:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560128877' LIMIT 1);
UPDATE users SET nick_name='LL冬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 106) WHERE phone='13560128877';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427519770', 'U13427519770', '13427519770', '', '13427519770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-05 20:43:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427519770' LIMIT 1);
UPDATE users SET nick_name='13427519770', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427519770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249700226', 'U13249700226', 'BO', '', '13249700226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-05 19:49:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249700226' LIMIT 1);
UPDATE users SET nick_name='BO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249700226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610344607', 'U13610344607', 'Bryan', '', '13610344607', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2024-10-05 19:47:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610344607' LIMIT 1);
UPDATE users SET nick_name='Bryan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13610344607';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19200592625', 'U19200592625', '19200592625', '', '19200592625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-05 19:20:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19200592625' LIMIT 1);
UPDATE users SET nick_name='19200592625', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19200592625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760715799', 'U13760715799', '13760715799', '', '13760715799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-05 18:38:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760715799' LIMIT 1);
UPDATE users SET nick_name='13760715799', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760715799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664776814', 'U18664776814', '秦大爷', '', '18664776814', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2024-10-05 18:30:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664776814' LIMIT 1);
UPDATE users SET nick_name='秦大爷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='18664776814';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13072828295', 'U13072828295', '心愿便利贴', '', '13072828295', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-05 18:23:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13072828295' LIMIT 1);
UPDATE users SET nick_name='心愿便利贴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13072828295';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719404791', 'U13719404791', '-蛋小坏.', '', '13719404791', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-05 18:08:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719404791' LIMIT 1);
UPDATE users SET nick_name='-蛋小坏.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719404791';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620880354', 'U18620880354', '18620880354', '', '18620880354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-05 17:43:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620880354' LIMIT 1);
UPDATE users SET nick_name='18620880354', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620880354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688381393', 'U18688381393', '河牛', '', '18688381393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-10-05 15:29:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688381393' LIMIT 1);
UPDATE users SET nick_name='河牛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18688381393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120074991', 'U19120074991', 'YC-92', '', '19120074991', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-05 15:29:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120074991' LIMIT 1);
UPDATE users SET nick_name='YC-92', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120074991';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725232572', 'U13725232572', 'VV', '', '13725232572', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-05 15:14:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725232572' LIMIT 1);
UPDATE users SET nick_name='VV', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725232572';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602884533', 'U13602884533', 'Mars', '', '13602884533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2024-10-05 15:03:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602884533' LIMIT 1);
UPDATE users SET nick_name='Mars', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='13602884533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818838477', 'U15818838477', '晓', '', '15818838477', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-10-05 14:29:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818838477' LIMIT 1);
UPDATE users SET nick_name='晓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='15818838477';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662451119', 'U13662451119', 'CYY', '', '13662451119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-05 12:58:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662451119' LIMIT 1);
UPDATE users SET nick_name='CYY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662451119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392110255', 'U13392110255', 'M', '', '13392110255', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 136, '2024-10-05 11:57:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392110255' LIMIT 1);
UPDATE users SET nick_name='M', balance=GREATEST(balance, 0.00), points=GREATEST(points, 136) WHERE phone='13392110255';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924301645', 'U13924301645', 'angel', '', '13924301645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2024-10-05 11:16:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924301645' LIMIT 1);
UPDATE users SET nick_name='angel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13924301645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500020321', 'U13500020321', '三壮', '', '13500020321', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-05 11:00:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500020321' LIMIT 1);
UPDATE users SET nick_name='三壮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500020321';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392110018', 'U13392110018', '13392110018', '', '13392110018', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-05 10:23:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392110018' LIMIT 1);
UPDATE users SET nick_name='13392110018', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392110018';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818409268', 'U18818409268', 'Ken', '', '18818409268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-10-04 17:50:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818409268' LIMIT 1);
UPDATE users SET nick_name='Ken', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='18818409268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580426519', 'U13580426519', 'Tyler', '', '13580426519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-10-04 17:30:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580426519' LIMIT 1);
UPDATE users SET nick_name='Tyler', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13580426519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560457284', 'U13560457284', 'Abbie🍳（回复慢）', '', '13560457284', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-04 16:38:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560457284' LIMIT 1);
UPDATE users SET nick_name='Abbie🍳（回复慢）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560457284';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817880081', 'U17817880081', '伊一', '', '17817880081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-04 16:38:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817880081' LIMIT 1);
UPDATE users SET nick_name='伊一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817880081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15099999041', 'U15099999041', 'Thomas', '', '15099999041', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-04 16:08:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15099999041' LIMIT 1);
UPDATE users SET nick_name='Thomas', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15099999041';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18889752223', 'U18889752223', '汕汕', '', '18889752223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-04 15:31:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18889752223' LIMIT 1);
UPDATE users SET nick_name='汕汕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18889752223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813352378', 'U15813352378', '🥑啊嘉儿', '', '15813352378', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-04 14:28:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813352378' LIMIT 1);
UPDATE users SET nick_name='🥑啊嘉儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813352378';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826125005', 'U13826125005', '菁菁', '', '13826125005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-04 11:26:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826125005' LIMIT 1);
UPDATE users SET nick_name='菁菁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826125005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622181151', 'U15622181151', '麦', '', '15622181151', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-04 11:20:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622181151' LIMIT 1);
UPDATE users SET nick_name='麦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622181151';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570308068', 'U13570308068', 'Mickey', '', '13570308068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-04 11:18:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570308068' LIMIT 1);
UPDATE users SET nick_name='Mickey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570308068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660642080', 'U13660642080', '一泓墨 Yvette', '', '13660642080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 255, '2024-10-04 10:52:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660642080' LIMIT 1);
UPDATE users SET nick_name='一泓墨 Yvette', balance=GREATEST(balance, 0.00), points=GREATEST(points, 255) WHERE phone='13660642080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503005992', 'U13503005992', 'Maxy L.', '', '13503005992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-04 10:17:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503005992' LIMIT 1);
UPDATE users SET nick_name='Maxy L.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503005992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028660358', 'U18028660358', 'Lydia', '', '18028660358', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 59, '2024-10-04 07:26:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028660358' LIMIT 1);
UPDATE users SET nick_name='Lydia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 59) WHERE phone='18028660358';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719227204', 'U13719227204', '沈泽玲Chloe', '', '13719227204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 178, '2024-10-03 22:17:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719227204' LIMIT 1);
UPDATE users SET nick_name='沈泽玲Chloe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 178) WHERE phone='13719227204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521293801', 'U15521293801', 'Leung', '', '15521293801', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-03 19:00:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521293801' LIMIT 1);
UPDATE users SET nick_name='Leung', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15521293801';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127933357', 'U18127933357', '波利斯吴', '', '18127933357', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 19:00:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127933357' LIMIT 1);
UPDATE users SET nick_name='波利斯吴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127933357';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013330417', 'U15013330417', '李亦垚', '', '15013330417', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 18:37:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013330417' LIMIT 1);
UPDATE users SET nick_name='李亦垚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013330417';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16666666666', 'U16666666666', '16666666666', '', '16666666666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 17:27:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16666666666' LIMIT 1);
UPDATE users SET nick_name='16666666666', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16666666666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620771033', 'U18620771033', '18620771033', '', '18620771033', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 16:58:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620771033' LIMIT 1);
UPDATE users SET nick_name='18620771033', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620771033';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13424461362', 'U13424461362', '13424461362', '', '13424461362', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 16:34:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13424461362' LIMIT 1);
UPDATE users SET nick_name='13424461362', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13424461362';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620990513', 'U17620990513', '17620990513', '', '17620990513', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 16:09:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620990513' LIMIT 1);
UPDATE users SET nick_name='17620990513', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620990513';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622250727', 'U13622250727', '13622250727', '', '13622250727', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 14:52:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622250727' LIMIT 1);
UPDATE users SET nick_name='13622250727', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622250727';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825033434', 'U18825033434', '黄喵喵', '', '18825033434', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 14:49:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825033434' LIMIT 1);
UPDATE users SET nick_name='黄喵喵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825033434';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802926501', 'U13802926501', 'Fa🌸ིྀ', '', '13802926501', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 14:30:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802926501' LIMIT 1);
UPDATE users SET nick_name='Fa🌸ིྀ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802926501';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15302484090', 'U15302484090', '夏青', '', '15302484090', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 13:12:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15302484090' LIMIT 1);
UPDATE users SET nick_name='夏青', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15302484090';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640835891', 'U13640835891', 'Miki', '', '13640835891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 12:39:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640835891' LIMIT 1);
UPDATE users SET nick_name='Miki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640835891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538824873', 'U13538824873', 'io.', '', '13538824873', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 12:25:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538824873' LIMIT 1);
UPDATE users SET nick_name='io.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538824873';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128550477', 'U13128550477', '铁皮熊.', '', '13128550477', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 12:21:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128550477' LIMIT 1);
UPDATE users SET nick_name='铁皮熊.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128550477';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915704396', 'U15915704396', '张小姐', '', '15915704396', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 12:20:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915704396' LIMIT 1);
UPDATE users SET nick_name='张小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915704396';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999961043', 'U15999961043', '左', '', '15999961043', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 12:17:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999961043' LIMIT 1);
UPDATE users SET nick_name='左', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999961043';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19880892228', 'U19880892228', 'hh', '', '19880892228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 12:16:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19880892228' LIMIT 1);
UPDATE users SET nick_name='hh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19880892228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529445121', 'U18529445121', '18529445121', '', '18529445121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-03 11:06:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529445121' LIMIT 1);
UPDATE users SET nick_name='18529445121', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529445121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826454536', 'U18826454536', '18826454536', '', '18826454536', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 19:20:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826454536' LIMIT 1);
UPDATE users SET nick_name='18826454536', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826454536';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13408028392', 'U13408028392', '每天存一块钱', '', '13408028392', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-02 19:02:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13408028392' LIMIT 1);
UPDATE users SET nick_name='每天存一块钱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13408028392';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826454636', 'U18826454636', '王闯🎻', '', '18826454636', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-02 19:00:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826454636' LIMIT 1);
UPDATE users SET nick_name='王闯🎻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18826454636';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929591671', 'U13929591671', 'Band', '', '13929591671', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 17:59:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929591671' LIMIT 1);
UPDATE users SET nick_name='Band', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929591671';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925116386', 'U18925116386', '18925116386', '', '18925116386', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 17:53:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925116386' LIMIT 1);
UPDATE users SET nick_name='18925116386', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925116386';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18124502668', 'U18124502668', '18124502668', '', '18124502668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 17:44:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18124502668' LIMIT 1);
UPDATE users SET nick_name='18124502668', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18124502668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18580252383', 'U18580252383', 'p', '', '18580252383', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 17:41:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18580252383' LIMIT 1);
UPDATE users SET nick_name='p', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18580252383';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143700996', 'U13143700996', 'Shirley Ho', '', '13143700996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 17:26:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143700996' LIMIT 1);
UPDATE users SET nick_name='Shirley Ho', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143700996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128234681', 'U13128234681', '木冉', '', '13128234681', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 16:45:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128234681' LIMIT 1);
UPDATE users SET nick_name='木冉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128234681';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724042185', 'U13724042185', '13724042185', '', '13724042185', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 16:17:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724042185' LIMIT 1);
UPDATE users SET nick_name='13724042185', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724042185';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729637374', 'U13729637374', 'Autumn', '', '13729637374', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 15:23:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729637374' LIMIT 1);
UPDATE users SET nick_name='Autumn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729637374';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813387748', 'U15813387748', '15813387748', '', '15813387748', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 15:15:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813387748' LIMIT 1);
UPDATE users SET nick_name='15813387748', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813387748';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620039133', 'U18620039133', '18620039133', '', '18620039133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 15:14:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620039133' LIMIT 1);
UPDATE users SET nick_name='18620039133', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620039133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570361852', 'U13570361852', '欠', '', '13570361852', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 15:08:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570361852' LIMIT 1);
UPDATE users SET nick_name='欠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570361852';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729846561', 'U13729846561', '少爷', '', '13729846561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-02 13:09:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729846561' LIMIT 1);
UPDATE users SET nick_name='少爷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13729846561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19865045992', 'U19865045992', '奥莉蛙', '', '19865045992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 12:56:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19865045992' LIMIT 1);
UPDATE users SET nick_name='奥莉蛙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19865045992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680451188', 'U18680451188', '为万般沉默放行', '', '18680451188', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 12:44:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680451188' LIMIT 1);
UPDATE users SET nick_name='为万般沉默放行', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680451188';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662510366', 'U13662510366', '喻梅', '', '13662510366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 748, '2024-10-02 11:21:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662510366' LIMIT 1);
UPDATE users SET nick_name='喻梅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 748) WHERE phone='13662510366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17589100058', 'U17589100058', '小小', '', '17589100058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 10:44:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17589100058' LIMIT 1);
UPDATE users SET nick_name='小小', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17589100058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143755107', 'U13143755107', 'Julie', '', '13143755107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 10:34:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143755107' LIMIT 1);
UPDATE users SET nick_name='Julie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143755107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660577449', 'U13660577449', '叶齐', '', '13660577449', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-02 09:59:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660577449' LIMIT 1);
UPDATE users SET nick_name='叶齐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660577449';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688853815', 'U18688853815', 'Vin898', '', '18688853815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-02 01:53:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688853815' LIMIT 1);
UPDATE users SET nick_name='Vin898', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18688853815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620501888', 'U18620501888', '新', '', '18620501888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-02 01:51:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620501888' LIMIT 1);
UPDATE users SET nick_name='新', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18620501888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620136900', 'U18620136900', '阿正', '', '18620136900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-01 23:37:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620136900' LIMIT 1);
UPDATE users SET nick_name='阿正', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18620136900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533339163', 'U13533339163', 'K', '', '13533339163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 21:03:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533339163' LIMIT 1);
UPDATE users SET nick_name='K', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533339163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13279496674', 'U13279496674', '张丹是个大美女', '', '13279496674', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-10-01 20:29:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13279496674' LIMIT 1);
UPDATE users SET nick_name='张丹是个大美女', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13279496674';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19905982326', 'U19905982326', '19905982326', '', '19905982326', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 20:16:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19905982326' LIMIT 1);
UPDATE users SET nick_name='19905982326', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19905982326';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13481260204', 'U13481260204', '13481260204', '', '13481260204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 19:08:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13481260204' LIMIT 1);
UPDATE users SET nick_name='13481260204', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13481260204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13643623852', 'U13643623852', '.net', '', '13643623852', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-01 18:45:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13643623852' LIMIT 1);
UPDATE users SET nick_name='.net', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13643623852';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719468031', 'U13719468031', '13719468031', '', '13719468031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 18:31:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719468031' LIMIT 1);
UPDATE users SET nick_name='13719468031', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719468031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316193853', 'U18316193853', 'fadeaway', '', '18316193853', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 16:29:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316193853' LIMIT 1);
UPDATE users SET nick_name='fadeaway', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316193853';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13030219620', 'U13030219620', '13030219620', '', '13030219620', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 15:52:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13030219620' LIMIT 1);
UPDATE users SET nick_name='13030219620', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13030219620';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503041015', 'U13503041015', '符生', '', '13503041015', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-10-01 15:09:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503041015' LIMIT 1);
UPDATE users SET nick_name='符生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13503041015';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15016118881', 'U15016118881', 'Jackson', '', '15016118881', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 14:39:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15016118881' LIMIT 1);
UPDATE users SET nick_name='Jackson', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15016118881';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819473238', 'U18819473238', 'Yacent', '', '18819473238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2024-10-01 13:46:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819473238' LIMIT 1);
UPDATE users SET nick_name='Yacent', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18819473238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620017450', 'U18620017450', '小猫凯蒂', '', '18620017450', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 13:17:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620017450' LIMIT 1);
UPDATE users SET nick_name='小猫凯蒂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620017450';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18761653956', 'U18761653956', 'AA', '', '18761653956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 13:14:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18761653956' LIMIT 1);
UPDATE users SET nick_name='AA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18761653956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15900718968', 'U15900718968', '知行合一', '', '15900718968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 11:54:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15900718968' LIMIT 1);
UPDATE users SET nick_name='知行合一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15900718968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666094338', 'U18666094338', '章鱼', '', '18666094338', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 10:51:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666094338' LIMIT 1);
UPDATE users SET nick_name='章鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666094338';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18977954770', 'U18977954770', 'hihi', '', '18977954770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 10:14:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18977954770' LIMIT 1);
UPDATE users SET nick_name='hihi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18977954770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802945580', 'U13802945580', '高芳', '', '13802945580', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-10-01 10:01:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802945580' LIMIT 1);
UPDATE users SET nick_name='高芳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802945580';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533916356', 'U13533916356', '赛琳', '', '13533916356', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-30 23:07:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533916356' LIMIT 1);
UPDATE users SET nick_name='赛琳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533916356';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666012238', 'U18666012238', 'hg', '', '18666012238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-30 22:40:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666012238' LIMIT 1);
UPDATE users SET nick_name='hg', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18666012238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680268470', 'U18680268470', 'May-媚💦', '', '18680268470', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-30 22:28:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680268470' LIMIT 1);
UPDATE users SET nick_name='May-媚💦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18680268470';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760759099', 'U13760759099', '小咸鱼', '', '13760759099', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-30 21:57:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760759099' LIMIT 1);
UPDATE users SET nick_name='小咸鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13760759099';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13545690702', 'U13545690702', '13545690702', '', '13545690702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-30 20:55:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13545690702' LIMIT 1);
UPDATE users SET nick_name='13545690702', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13545690702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923371290', 'U13923371290', '卢波', '', '13923371290', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-09-30 20:31:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923371290' LIMIT 1);
UPDATE users SET nick_name='卢波', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13923371290';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902015923', 'U15902015923', '走路带风的何小璐', '', '15902015923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-30 20:28:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902015923' LIMIT 1);
UPDATE users SET nick_name='走路带风的何小璐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902015923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18476243048', 'U18476243048', '天林林地林林', '', '18476243048', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-30 18:28:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18476243048' LIMIT 1);
UPDATE users SET nick_name='天林林地林林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18476243048';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18927533310', 'U18927533310', '文', '', '18927533310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-30 17:44:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18927533310' LIMIT 1);
UPDATE users SET nick_name='文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18927533310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620873323', 'U17620873323', 'Carmen', '', '17620873323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-30 17:16:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620873323' LIMIT 1);
UPDATE users SET nick_name='Carmen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620873323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13119563775', 'U13119563775', 'kiv.', '', '13119563775', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-09-30 17:13:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13119563775' LIMIT 1);
UPDATE users SET nick_name='kiv.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13119563775';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613113590', 'U18613113590', '滑', '', '18613113590', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-30 16:53:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613113590' LIMIT 1);
UPDATE users SET nick_name='滑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613113590';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13823297081', 'U13823297081', '奥美特训国际游泳培训校长', '', '13823297081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-30 16:00:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13823297081' LIMIT 1);
UPDATE users SET nick_name='奥美特训国际游泳培训校长', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13823297081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565406240', 'U18565406240', 'Dear-CC', '', '18565406240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-30 15:44:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565406240' LIMIT 1);
UPDATE users SET nick_name='Dear-CC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565406240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602775938', 'U13602775938', 'sa sa', '', '13602775938', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 149, '2024-09-30 14:41:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602775938' LIMIT 1);
UPDATE users SET nick_name='sa sa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 149) WHERE phone='13602775938';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19925648311', 'U19925648311', '19925648311', '', '19925648311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-30 13:43:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19925648311' LIMIT 1);
UPDATE users SET nick_name='19925648311', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19925648311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819285875', 'U18819285875', '容易', '', '18819285875', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-09-30 11:49:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819285875' LIMIT 1);
UPDATE users SET nick_name='容易', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18819285875';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122203686', 'U18122203686', 'CarmenChan', '', '18122203686', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2024-09-30 11:26:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122203686' LIMIT 1);
UPDATE users SET nick_name='CarmenChan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='18122203686';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710102799', 'U13710102799', '嘉嘉', '', '13710102799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-30 11:20:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710102799' LIMIT 1);
UPDATE users SET nick_name='嘉嘉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13710102799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533503831', 'U13533503831', '张', '', '13533503831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-30 10:09:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533503831' LIMIT 1);
UPDATE users SET nick_name='张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533503831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422136663', 'U13422136663', '金金', '', '13422136663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-30 09:56:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422136663' LIMIT 1);
UPDATE users SET nick_name='金金', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422136663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802976862', 'U13802976862', '海', '', '13802976862', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-29 21:58:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802976862' LIMIT 1);
UPDATE users SET nick_name='海', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802976862';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416191412', 'U13416191412', '13416191412', '', '13416191412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-29 19:52:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416191412' LIMIT 1);
UPDATE users SET nick_name='13416191412', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416191412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751870044', 'U13751870044', '维', '', '13751870044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-29 18:49:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751870044' LIMIT 1);
UPDATE users SET nick_name='维', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751870044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610153963', 'U13610153963', '13610153963', '', '13610153963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-29 15:34:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610153963' LIMIT 1);
UPDATE users SET nick_name='13610153963', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610153963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829749356', 'U13829749356', '君Regina', '', '13829749356', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-29 15:30:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829749356' LIMIT 1);
UPDATE users SET nick_name='君Regina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829749356';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102080298', 'U15102080298', '15102080298', '', '15102080298', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-29 15:23:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102080298' LIMIT 1);
UPDATE users SET nick_name='15102080298', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15102080298';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060980518', 'U13060980518', '13060980518', '', '13060980518', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-29 14:34:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060980518' LIMIT 1);
UPDATE users SET nick_name='13060980518', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060980518';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17328679427', 'U17328679427', '肥肥', '', '17328679427', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-29 12:31:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17328679427' LIMIT 1);
UPDATE users SET nick_name='肥肥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17328679427';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920138770', 'U15920138770', '你的老阳', '', '15920138770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2024-09-29 08:57:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920138770' LIMIT 1);
UPDATE users SET nick_name='你的老阳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='15920138770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922791009', 'U13922791009', '13922791009', '', '13922791009', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 21:10:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922791009' LIMIT 1);
UPDATE users SET nick_name='13922791009', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922791009';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15071336411', 'U15071336411', '铺里', '', '15071336411', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 20:14:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15071336411' LIMIT 1);
UPDATE users SET nick_name='铺里', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15071336411';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933220688', 'U18933220688', 'zz', '', '18933220688', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 16:42:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933220688' LIMIT 1);
UPDATE users SET nick_name='zz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933220688';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15819006304', 'U15819006304', '禾枫', '', '15819006304', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-28 16:37:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15819006304' LIMIT 1);
UPDATE users SET nick_name='禾枫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15819006304';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666171939', 'U18666171939', 'ZzZzupa', '', '18666171939', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 15:49:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666171939' LIMIT 1);
UPDATE users SET nick_name='ZzZzupa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666171939';
