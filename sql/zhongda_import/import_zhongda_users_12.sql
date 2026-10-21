SET NAMES utf8mb4;
-- 中大店用户导入 part 12 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535366974', 'U13535366974', 'yuephone', '', '13535366974', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 18:21:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535366974' LIMIT 1);
UPDATE users SET nick_name='yuephone', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535366974';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19860629223', 'U19860629223', '19860629223', '', '19860629223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 18:02:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19860629223' LIMIT 1);
UPDATE users SET nick_name='19860629223', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19860629223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926478497', 'U13926478497', 'Brian.Guangbo.Tsang', '', '13926478497', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 266, '2025-05-11 16:59:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926478497' LIMIT 1);
UPDATE users SET nick_name='Brian.Guangbo.Tsang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 266) WHERE phone='13926478497';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922465691', 'U13922465691', 'Nicole', '', '13922465691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 15:42:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922465691' LIMIT 1);
UPDATE users SET nick_name='Nicole', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922465691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480246309', 'U13480246309', '文婧', '', '13480246309', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 15:40:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480246309' LIMIT 1);
UPDATE users SET nick_name='文婧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480246309';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502010883', 'U18502010883', '🌿徐\'S™-🦥', '', '18502010883', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 15:36:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502010883' LIMIT 1);
UPDATE users SET nick_name='🌿徐\'S™-🦥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18502010883';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17728104546', 'U17728104546', 'Dawnnny', '', '17728104546', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 15:15:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17728104546' LIMIT 1);
UPDATE users SET nick_name='Dawnnny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17728104546';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929526952', 'U13929526952', '666', '', '13929526952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 13:41:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929526952' LIMIT 1);
UPDATE users SET nick_name='666', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929526952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15384181977', 'U15384181977', '斯托', '', '15384181977', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 13:22:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15384181977' LIMIT 1);
UPDATE users SET nick_name='斯托', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15384181977';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18038005831', 'U18038005831', '18038005831', '', '18038005831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 13:21:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18038005831' LIMIT 1);
UPDATE users SET nick_name='18038005831', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18038005831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15811929298', 'U15811929298', 'Stark', '', '15811929298', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 11:41:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15811929298' LIMIT 1);
UPDATE users SET nick_name='Stark', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15811929298';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312062503', 'U18312062503', '🌚', '', '18312062503', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 09:59:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312062503' LIMIT 1);
UPDATE users SET nick_name='🌚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312062503';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18719400306', 'U18719400306', 'HUHUGO', '', '18719400306', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 09:14:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18719400306' LIMIT 1);
UPDATE users SET nick_name='HUHUGO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18719400306';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560084769', 'U13560084769', '李骏忠', '', '13560084769', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 22:45:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560084769' LIMIT 1);
UPDATE users SET nick_name='李骏忠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560084769';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13042065776', 'U13042065776', '石头', '', '13042065776', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 21:58:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13042065776' LIMIT 1);
UPDATE users SET nick_name='石头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13042065776';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520556993', 'U18520556993', 'May', '', '18520556993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2025-05-10 20:28:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520556993' LIMIT 1);
UPDATE users SET nick_name='May', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='18520556993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13145779663', 'U13145779663', 'rhy', '', '13145779663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 18:49:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13145779663' LIMIT 1);
UPDATE users SET nick_name='rhy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13145779663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18024082313', 'U18024082313', '丽💕宇宙之芯💕', '', '18024082313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-10 18:27:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18024082313' LIMIT 1);
UPDATE users SET nick_name='丽💕宇宙之芯💕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18024082313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026335167', 'U18026335167', 'mi', '', '18026335167', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 18:26:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026335167' LIMIT 1);
UPDATE users SET nick_name='mi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026335167';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202009183', 'U15202009183', '慈艾', '', '15202009183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-10 17:41:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202009183' LIMIT 1);
UPDATE users SET nick_name='慈艾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15202009183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533460091', 'U13533460091', '慈美', '', '13533460091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-10 17:34:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533460091' LIMIT 1);
UPDATE users SET nick_name='慈美', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13533460091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15600992543', 'U15600992543', '15600992543', '', '15600992543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 16:21:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15600992543' LIMIT 1);
UPDATE users SET nick_name='15600992543', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15600992543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19237626957', 'U19237626957', '刘沅坤', '', '19237626957', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-05-10 16:12:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19237626957' LIMIT 1);
UPDATE users SET nick_name='刘沅坤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='19237626957';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826655664', 'U13826655664', '双飞', '', '13826655664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 16:09:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826655664' LIMIT 1);
UPDATE users SET nick_name='双飞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826655664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520020959', 'U18520020959', 'Serena', '', '18520020959', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 16:08:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520020959' LIMIT 1);
UPDATE users SET nick_name='Serena', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520020959';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802013030', 'U18802013030', 'haimiii', '', '18802013030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 699, '2025-05-10 15:50:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802013030' LIMIT 1);
UPDATE users SET nick_name='haimiii', balance=GREATEST(balance, 0.00), points=GREATEST(points, 699) WHERE phone='18802013030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422122652', 'U13422122652', '13422122652', '', '13422122652', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 15:08:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422122652' LIMIT 1);
UPDATE users SET nick_name='13422122652', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422122652';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13393894050', 'U13393894050', '13393894050', '', '13393894050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 15:07:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13393894050' LIMIT 1);
UPDATE users SET nick_name='13393894050', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13393894050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018770551', 'U15018770551', 'CC', '', '15018770551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 13:57:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018770551' LIMIT 1);
UPDATE users SET nick_name='CC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018770551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15812433982', 'U15812433982', 'Stark', '', '15812433982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 13:52:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15812433982' LIMIT 1);
UPDATE users SET nick_name='Stark', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15812433982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13672469633', 'U13672469633', '13672469633', '', '13672469633', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 13:15:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13672469633' LIMIT 1);
UPDATE users SET nick_name='13672469633', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13672469633';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18140690931', 'U18140690931', '佩佩', '', '18140690931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 12:27:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18140690931' LIMIT 1);
UPDATE users SET nick_name='佩佩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18140690931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15012943446', 'U15012943446', 'Samson', '', '15012943446', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 12:26:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15012943446' LIMIT 1);
UPDATE users SET nick_name='Samson', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15012943446';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826160271', 'U13826160271', '茄茄', '', '13826160271', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 12:06:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826160271' LIMIT 1);
UPDATE users SET nick_name='茄茄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826160271';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626049696', 'U15626049696', '小帽迎着疯', '', '15626049696', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 10:50:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626049696' LIMIT 1);
UPDATE users SET nick_name='小帽迎着疯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626049696';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322229486', 'U15322229486', '520', '', '15322229486', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 10:35:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322229486' LIMIT 1);
UPDATE users SET nick_name='520', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15322229486';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15586791220', 'U15586791220', 'Wik-', '', '15586791220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 10:15:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15586791220' LIMIT 1);
UPDATE users SET nick_name='Wik-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15586791220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13787790772', 'U13787790772', '- Hedy🐿', '', '13787790772', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-10 09:53:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13787790772' LIMIT 1);
UPDATE users SET nick_name='- Hedy🐿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13787790772';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627215163', 'U15627215163', 'miao', '', '15627215163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-10 09:27:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627215163' LIMIT 1);
UPDATE users SET nick_name='miao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627215163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15819054153', 'U15819054153', '梦小凡🍚', '', '15819054153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 22:12:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15819054153' LIMIT 1);
UPDATE users SET nick_name='梦小凡🍚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15819054153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15579339161', 'U15579339161', 'Z👒', '', '15579339161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 19:24:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15579339161' LIMIT 1);
UPDATE users SET nick_name='Z👒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15579339161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128220855', 'U13128220855', 'DXX', '', '13128220855', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 19:16:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128220855' LIMIT 1);
UPDATE users SET nick_name='DXX', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128220855';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15184311207', 'U15184311207', '15184311207', '', '15184311207', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 16:11:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15184311207' LIMIT 1);
UPDATE users SET nick_name='15184311207', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15184311207';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913113231', 'U15913113231', '15913113231', '', '15913113231', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 15:40:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913113231' LIMIT 1);
UPDATE users SET nick_name='15913113231', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913113231';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609704146', 'U13609704146', '13609704146', '', '13609704146', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 15:28:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609704146' LIMIT 1);
UPDATE users SET nick_name='13609704146', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609704146';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18938761276', 'U18938761276', '18938761276', '', '18938761276', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 14:47:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18938761276' LIMIT 1);
UPDATE users SET nick_name='18938761276', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18938761276';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822302236', 'U13822302236', 'Kay柯', '', '13822302236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 14:46:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822302236' LIMIT 1);
UPDATE users SET nick_name='Kay柯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822302236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666080169', 'U18666080169', '李红梅', '', '18666080169', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 14:45:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666080169' LIMIT 1);
UPDATE users SET nick_name='李红梅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666080169';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332821435', 'U13332821435', 'Aiden', '', '13332821435', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-05-09 14:23:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332821435' LIMIT 1);
UPDATE users SET nick_name='Aiden', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13332821435';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15616651079', 'U15616651079', '凜', '', '15616651079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 13:49:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15616651079' LIMIT 1);
UPDATE users SET nick_name='凜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15616651079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19925079903', 'U19925079903', '19925079903', '', '19925079903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 13:16:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19925079903' LIMIT 1);
UPDATE users SET nick_name='19925079903', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19925079903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13310881344', 'U13310881344', '反手一巴掌', '', '13310881344', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 10:37:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13310881344' LIMIT 1);
UPDATE users SET nick_name='反手一巴掌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13310881344';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028096218', 'U18028096218', '恩嗯蒽㤙摁煾䅰', '', '18028096218', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 48, '2025-05-09 00:20:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028096218' LIMIT 1);
UPDATE users SET nick_name='恩嗯蒽㤙摁煾䅰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 48) WHERE phone='18028096218';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918865908', 'U15918865908', '布丁', '', '15918865908', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-09 00:04:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918865908' LIMIT 1);
UPDATE users SET nick_name='布丁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918865908';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18342267219', 'U18342267219', '大鱼籽', '', '18342267219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 21:31:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18342267219' LIMIT 1);
UPDATE users SET nick_name='大鱼籽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18342267219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580353781', 'U13580353781', '女神', '', '13580353781', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 21:30:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580353781' LIMIT 1);
UPDATE users SET nick_name='女神', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580353781';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13795339291', 'U13795339291', '张伟旻', '', '13795339291', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 20:35:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13795339291' LIMIT 1);
UPDATE users SET nick_name='张伟旻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13795339291';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17819131571', 'U17819131571', '祉猷并茂', '', '17819131571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 19:44:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17819131571' LIMIT 1);
UPDATE users SET nick_name='祉猷并茂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17819131571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102037410', 'U15102037410', '15102037410', '', '15102037410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 19:31:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102037410' LIMIT 1);
UPDATE users SET nick_name='15102037410', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15102037410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19526309161', 'U19526309161', '刘六六', '', '19526309161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 19:16:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19526309161' LIMIT 1);
UPDATE users SET nick_name='刘六六', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19526309161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13407231324', 'U13407231324', '阿飞', '', '13407231324', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 19:12:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13407231324' LIMIT 1);
UPDATE users SET nick_name='阿飞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13407231324';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824440067', 'U13824440067', 'iv', '', '13824440067', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 19:07:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824440067' LIMIT 1);
UPDATE users SET nick_name='iv', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824440067';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922486230', 'U13922486230', '麦琪', '', '13922486230', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 16:39:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922486230' LIMIT 1);
UPDATE users SET nick_name='麦琪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922486230';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828425612', 'U13828425612', '刘紫涵🌸²⁰²⁵', '', '13828425612', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 4, '2025-05-08 15:49:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828425612' LIMIT 1);
UPDATE users SET nick_name='刘紫涵🌸²⁰²⁵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 4) WHERE phone='13828425612';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899564927', 'U15899564927', '东方', '', '15899564927', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 15:14:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899564927' LIMIT 1);
UPDATE users SET nick_name='东方', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15899564927';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826454739', 'U18826454739', '啊猫', '', '18826454739', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-05-08 15:13:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826454739' LIMIT 1);
UPDATE users SET nick_name='啊猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18826454739';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17818662150', 'U17818662150', '。', '', '17818662150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 15:07:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17818662150' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17818662150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560059790', 'U13560059790', '66', '', '13560059790', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 13:01:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560059790' LIMIT 1);
UPDATE users SET nick_name='66', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560059790';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729235432', 'U13729235432', '狗蛋', '', '13729235432', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 10:41:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729235432' LIMIT 1);
UPDATE users SET nick_name='狗蛋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729235432';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926251500', 'U18926251500', '何其正', '', '18926251500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2025-05-08 10:35:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926251500' LIMIT 1);
UPDATE users SET nick_name='何其正', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='18926251500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625008056', 'U15625008056', 'Vivian Chen', '', '15625008056', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-08 09:46:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625008056' LIMIT 1);
UPDATE users SET nick_name='Vivian Chen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625008056';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602242632', 'U15602242632', '龙', '', '15602242632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-07 21:20:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602242632' LIMIT 1);
UPDATE users SET nick_name='龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602242632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688423221', 'U18688423221', 'JIN', '', '18688423221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-07 20:11:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688423221' LIMIT 1);
UPDATE users SET nick_name='JIN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688423221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975529863', 'U15975529863', '立兄', '', '15975529863', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-07 19:02:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975529863' LIMIT 1);
UPDATE users SET nick_name='立兄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975529863';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922238019', 'U13922238019', 'Apple', '', '13922238019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-07 18:54:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922238019' LIMIT 1);
UPDATE users SET nick_name='Apple', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13922238019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609772289', 'U13609772289', '童心', '', '13609772289', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-07 15:52:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609772289' LIMIT 1);
UPDATE users SET nick_name='童心', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609772289';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600486293', 'U13600486293', '\'👻\'Grace_龜妹\'👻\'', '', '13600486293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-07 15:29:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600486293' LIMIT 1);
UPDATE users SET nick_name='\'👻\'Grace_龜妹\'👻\'', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600486293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18025027925', 'U18025027925', '曲奇🍪', '', '18025027925', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-07 15:18:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18025027925' LIMIT 1);
UPDATE users SET nick_name='曲奇🍪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18025027925';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13698018388', 'U13698018388', '酒酒', '', '13698018388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-07 12:03:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13698018388' LIMIT 1);
UPDATE users SET nick_name='酒酒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13698018388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826051139', 'U18826051139', 'king', '', '18826051139', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-05-07 02:54:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826051139' LIMIT 1);
UPDATE users SET nick_name='king', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='18826051139';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19700353313', 'U19700353313', '唐美清', '', '19700353313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-06 21:39:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19700353313' LIMIT 1);
UPDATE users SET nick_name='唐美清', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19700353313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13651797037', 'U13651797037', '水湄物语', '', '13651797037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2025-05-06 19:04:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13651797037' LIMIT 1);
UPDATE users SET nick_name='水湄物语', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='13651797037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620196066', 'U18620196066', 'Lee', '', '18620196066', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-06 19:04:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620196066' LIMIT 1);
UPDATE users SET nick_name='Lee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620196066';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19129232839', 'U19129232839', '19129232839', '', '19129232839', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-06 18:56:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19129232839' LIMIT 1);
UPDATE users SET nick_name='19129232839', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19129232839';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14749776025', 'U14749776025', '大风起兮', '', '14749776025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-06 18:41:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14749776025' LIMIT 1);
UPDATE users SET nick_name='大风起兮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14749776025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915806884', 'U15915806884', 'emma', '', '15915806884', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-06 18:36:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915806884' LIMIT 1);
UPDATE users SET nick_name='emma', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915806884';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19195589369', 'U19195589369', 'Michelle', '', '19195589369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2025-05-06 16:53:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19195589369' LIMIT 1);
UPDATE users SET nick_name='Michelle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='19195589369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631363213', 'U13631363213', '林4', '', '13631363213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-05-06 16:01:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631363213' LIMIT 1);
UPDATE users SET nick_name='林4', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13631363213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011966496', 'U15011966496', '小蜗牛', '', '15011966496', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-06 15:56:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011966496' LIMIT 1);
UPDATE users SET nick_name='小蜗牛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15011966496';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609082014', 'U13609082014', '海龟', '', '13609082014', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-06 12:47:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609082014' LIMIT 1);
UPDATE users SET nick_name='海龟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609082014';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818037358', 'U15818037358', 'Metanoia_', '', '15818037358', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-06 11:34:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818037358' LIMIT 1);
UPDATE users SET nick_name='Metanoia_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818037358';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16603072242', 'U16603072242', '维尼', '', '16603072242', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-06 11:21:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16603072242' LIMIT 1);
UPDATE users SET nick_name='维尼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16603072242';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13652557233', 'U13652557233', 'e5rh', '', '13652557233', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 22:14:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13652557233' LIMIT 1);
UPDATE users SET nick_name='e5rh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13652557233';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922764167', 'U13922764167', '李昕静', '', '13922764167', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 21:31:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922764167' LIMIT 1);
UPDATE users SET nick_name='李昕静', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922764167';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527393597', 'U13527393597', 'KKhugo', '', '13527393597', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 16:51:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527393597' LIMIT 1);
UPDATE users SET nick_name='KKhugo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527393597';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18970240839', 'U18970240839', 'yy', '', '18970240839', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 16:30:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18970240839' LIMIT 1);
UPDATE users SET nick_name='yy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18970240839';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13708208472', 'U13708208472', 'Jasmine', '', '13708208472', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 34, '2025-05-05 16:29:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13708208472' LIMIT 1);
UPDATE users SET nick_name='Jasmine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 34) WHERE phone='13708208472';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666318863', 'U18666318863', 'Austin', '', '18666318863', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 16:10:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666318863' LIMIT 1);
UPDATE users SET nick_name='Austin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666318863';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533385934', 'U13533385934', 'Louise', '', '13533385934', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 15:29:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533385934' LIMIT 1);
UPDATE users SET nick_name='Louise', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533385934';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902382837', 'U13902382837', '啊哈哈', '', '13902382837', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 14:31:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902382837' LIMIT 1);
UPDATE users SET nick_name='啊哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902382837';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697499840', 'U13697499840', 'a', '', '13697499840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 14:30:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697499840' LIMIT 1);
UPDATE users SET nick_name='a', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697499840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15909782275', 'U15909782275', '茉', '', '15909782275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 14:26:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15909782275' LIMIT 1);
UPDATE users SET nick_name='茉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15909782275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565113030', 'U18565113030', '18565113030', '', '18565113030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 13:55:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565113030' LIMIT 1);
UPDATE users SET nick_name='18565113030', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565113030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521132758', 'U15521132758', '哈罗小姐', '', '15521132758', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 12:41:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521132758' LIMIT 1);
UPDATE users SET nick_name='哈罗小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521132758';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13192606185', 'U13192606185', '13192606185', '', '13192606185', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 12:11:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13192606185' LIMIT 1);
UPDATE users SET nick_name='13192606185', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13192606185';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602055597', 'U18602055597', '老石头', '', '18602055597', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-05-05 12:03:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602055597' LIMIT 1);
UPDATE users SET nick_name='老石头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18602055597';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820285810', 'U15820285810', 'hiisnana', '', '15820285810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 11:18:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820285810' LIMIT 1);
UPDATE users SET nick_name='hiisnana', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820285810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13360581273', 'U13360581273', 'Z.', '', '13360581273', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 10:27:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13360581273' LIMIT 1);
UPDATE users SET nick_name='Z.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13360581273';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632483320', 'U13632483320', 'J.', '', '13632483320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 09:55:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632483320' LIMIT 1);
UPDATE users SET nick_name='J.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632483320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13073003068', 'U13073003068', '出j', '', '13073003068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-05 09:05:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13073003068' LIMIT 1);
UPDATE users SET nick_name='出j', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13073003068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19167073847', 'U19167073847', '憨憨', '', '19167073847', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 22:15:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19167073847' LIMIT 1);
UPDATE users SET nick_name='憨憨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19167073847';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989116459', 'U15989116459', 'mi', '', '15989116459', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 22:06:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989116459' LIMIT 1);
UPDATE users SET nick_name='mi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989116459';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15926574916', 'U15926574916', '梦想的搬运工', '', '15926574916', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 20:32:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15926574916' LIMIT 1);
UPDATE users SET nick_name='梦想的搬运工', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15926574916';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19966200752', 'U19966200752', '可以', '', '19966200752', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 20:14:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19966200752' LIMIT 1);
UPDATE users SET nick_name='可以', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19966200752';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450468683', 'U13450468683', '老关', '', '13450468683', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 19:23:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450468683' LIMIT 1);
UPDATE users SET nick_name='老关', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450468683';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928880660', 'U13928880660', '匪匪不匪', '', '13928880660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-05-04 17:43:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928880660' LIMIT 1);
UPDATE users SET nick_name='匪匪不匪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13928880660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824403992', 'U13824403992', '陈先生', '', '13824403992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 16:15:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824403992' LIMIT 1);
UPDATE users SET nick_name='陈先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824403992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933817889', 'U18933817889', '璟', '', '18933817889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 15:53:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933817889' LIMIT 1);
UPDATE users SET nick_name='璟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933817889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926085851', 'U13926085851', '🐱', '', '13926085851', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 15:25:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926085851' LIMIT 1);
UPDATE users SET nick_name='🐱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926085851';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15659399531', 'U15659399531', '15659399531', '', '15659399531', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 15:00:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15659399531' LIMIT 1);
UPDATE users SET nick_name='15659399531', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15659399531';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632242310', 'U13632242310', 'Jane Fan', '', '13632242310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-05-04 13:54:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632242310' LIMIT 1);
UPDATE users SET nick_name='Jane Fan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13632242310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580321830', 'U13580321830', '骑车过去吧', '', '13580321830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 12:12:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580321830' LIMIT 1);
UPDATE users SET nick_name='骑车过去吧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580321830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202007968', 'U13202007968', 'Eden', '', '13202007968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 11:57:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202007968' LIMIT 1);
UPDATE users SET nick_name='Eden', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202007968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19868389350', 'U19868389350', 'Aether', '', '19868389350', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 10:37:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19868389350' LIMIT 1);
UPDATE users SET nick_name='Aether', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19868389350';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13702869297', 'U13702869297', '9', '', '13702869297', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 10:24:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13702869297' LIMIT 1);
UPDATE users SET nick_name='9', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13702869297';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011239826', 'U15011239826', 'Derek', '', '15011239826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-05-04 10:14:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011239826' LIMIT 1);
UPDATE users SET nick_name='Derek', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15011239826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808816577', 'U13808816577', 'freeman', '', '13808816577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 10:03:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808816577' LIMIT 1);
UPDATE users SET nick_name='freeman', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808816577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143501197', 'U13143501197', 'Chloe', '', '13143501197', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 10:01:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143501197' LIMIT 1);
UPDATE users SET nick_name='Chloe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143501197';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926190657', 'U13926190657', 'Eating', '', '13926190657', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-04 08:34:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926190657' LIMIT 1);
UPDATE users SET nick_name='Eating', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926190657';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711767324', 'U13711767324', '蕃茄酱', '', '13711767324', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 21:33:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711767324' LIMIT 1);
UPDATE users SET nick_name='蕃茄酱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711767324';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17307795409', 'U17307795409', '17307795409', '', '17307795409', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 19:09:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17307795409' LIMIT 1);
UPDATE users SET nick_name='17307795409', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17307795409';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924236317', 'U13924236317', '草鞋底', '', '13924236317', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 19:03:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924236317' LIMIT 1);
UPDATE users SET nick_name='草鞋底', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924236317';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694249761', 'U13694249761', '💃🏻Iris🔥', '', '13694249761', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 17:59:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694249761' LIMIT 1);
UPDATE users SET nick_name='💃🏻Iris🔥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13694249761';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14714605872', 'U14714605872', 'kirkir', '', '14714605872', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-05-03 16:06:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14714605872' LIMIT 1);
UPDATE users SET nick_name='kirkir', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='14714605872';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535140906', 'U13535140906', '羽洲', '', '13535140906', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-05-03 15:37:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535140906' LIMIT 1);
UPDATE users SET nick_name='羽洲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13535140906';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927572748', 'U19927572748', '€，C', '', '19927572748', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 15:32:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927572748' LIMIT 1);
UPDATE users SET nick_name='€，C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927572748';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18945648258', 'U18945648258', 'realllllbalalala', '', '18945648258', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 14:44:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18945648258' LIMIT 1);
UPDATE users SET nick_name='realllllbalalala', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18945648258';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15016491478', 'U15016491478', 'mmmickey', '', '15016491478', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 14:34:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15016491478' LIMIT 1);
UPDATE users SET nick_name='mmmickey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15016491478';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229785709', 'U13229785709', 'Vann', '', '13229785709', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 13:41:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229785709' LIMIT 1);
UPDATE users SET nick_name='Vann', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229785709';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688486882', 'U18688486882', 'YY', '', '18688486882', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 13:37:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688486882' LIMIT 1);
UPDATE users SET nick_name='YY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688486882';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922505575', 'U13922505575', 'MYA', '', '13922505575', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-03 13:32:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922505575' LIMIT 1);
UPDATE users SET nick_name='MYA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13922505575';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521322148', 'U15521322148', 'MQY', '', '15521322148', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 13:27:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521322148' LIMIT 1);
UPDATE users SET nick_name='MQY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521322148';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13669529206', 'U13669529206', '林泽鑫', '', '13669529206', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 13:26:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13669529206' LIMIT 1);
UPDATE users SET nick_name='林泽鑫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13669529206';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678904293', 'U13678904293', '🐑🐑', '', '13678904293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 12:29:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678904293' LIMIT 1);
UPDATE users SET nick_name='🐑🐑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13678904293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19982080519', 'U19982080519', 'Qiiux_', '', '19982080519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 12:16:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19982080519' LIMIT 1);
UPDATE users SET nick_name='Qiiux_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19982080519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760758825', 'U13760758825', '13760758825', '', '13760758825', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 12:04:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760758825' LIMIT 1);
UPDATE users SET nick_name='13760758825', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760758825';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760718825', 'U13760718825', '13760718825', '', '13760718825', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 12:02:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760718825' LIMIT 1);
UPDATE users SET nick_name='13760718825', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760718825';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15675901314', 'U15675901314', '暖', '', '15675901314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 11:31:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15675901314' LIMIT 1);
UPDATE users SET nick_name='暖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15675901314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565805167', 'U18565805167', '吴', '', '18565805167', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 11:11:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565805167' LIMIT 1);
UPDATE users SET nick_name='吴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565805167';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665196278', 'U17665196278', '恁', '', '17665196278', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 11:05:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665196278' LIMIT 1);
UPDATE users SET nick_name='恁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665196278';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13169110948', 'U13169110948', '13169110948', '', '13169110948', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 10:19:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13169110948' LIMIT 1);
UPDATE users SET nick_name='13169110948', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13169110948';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503070285', 'U13503070285', '又又', '', '13503070285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-03 07:16:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503070285' LIMIT 1);
UPDATE users SET nick_name='又又', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503070285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570597292', 'U13570597292', '🤍Dottie', '', '13570597292', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-05-02 21:42:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570597292' LIMIT 1);
UPDATE users SET nick_name='🤍Dottie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='13570597292';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218884505', 'U18218884505', '王女士', '', '18218884505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 227, '2025-05-02 21:22:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218884505' LIMIT 1);
UPDATE users SET nick_name='王女士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 227) WHERE phone='18218884505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18789392673', 'U18789392673', '18789392673', '', '18789392673', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 21:20:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18789392673' LIMIT 1);
UPDATE users SET nick_name='18789392673', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18789392673';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627864453', 'U15627864453', '葵瓜籽🌻', '', '15627864453', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 21:16:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627864453' LIMIT 1);
UPDATE users SET nick_name='葵瓜籽🌻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627864453';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13699722233', 'U13699722233', '13699722233', '', '13699722233', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 20:42:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13699722233' LIMIT 1);
UPDATE users SET nick_name='13699722233', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13699722233';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570413092', 'U13570413092', '我是魔杰座', '', '13570413092', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 20:31:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570413092' LIMIT 1);
UPDATE users SET nick_name='我是魔杰座', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570413092';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610002786', 'U13610002786', '烬.', '', '13610002786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 20:22:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610002786' LIMIT 1);
UPDATE users SET nick_name='烬.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610002786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925053171', 'U18925053171', 'Aaron', '', '18925053171', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 20:11:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925053171' LIMIT 1);
UPDATE users SET nick_name='Aaron', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925053171';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521201959', 'U15521201959', 'C_e欧', '', '15521201959', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 20:01:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521201959' LIMIT 1);
UPDATE users SET nick_name='C_e欧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521201959';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218150786', 'U18218150786', '丁', '', '18218150786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 19:54:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218150786' LIMIT 1);
UPDATE users SET nick_name='丁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218150786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18301042219', 'U18301042219', '18301042219', '', '18301042219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 18:44:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18301042219' LIMIT 1);
UPDATE users SET nick_name='18301042219', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18301042219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16603066037', 'U16603066037', '飞行棋™', '', '16603066037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 14:27:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16603066037' LIMIT 1);
UPDATE users SET nick_name='飞行棋™', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16603066037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665608183', 'U18665608183', 'Paul', '', '18665608183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 13:41:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665608183' LIMIT 1);
UPDATE users SET nick_name='Paul', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665608183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889975651', 'U15889975651', '木子銮', '', '15889975651', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 11:49:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889975651' LIMIT 1);
UPDATE users SET nick_name='木子銮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889975651';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866753340', 'U19866753340', '海灯节', '', '19866753340', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 11:37:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866753340' LIMIT 1);
UPDATE users SET nick_name='海灯节', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19866753340';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15706637536', 'U15706637536', '15706637536', '', '15706637536', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 11:22:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15706637536' LIMIT 1);
UPDATE users SET nick_name='15706637536', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15706637536';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202078443', 'U15202078443', '川', '', '15202078443', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 10:34:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202078443' LIMIT 1);
UPDATE users SET nick_name='川', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15202078443';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13604211300', 'U13604211300', '哈哈', '', '13604211300', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-02 09:02:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13604211300' LIMIT 1);
UPDATE users SET nick_name='哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13604211300';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013178128', 'U15013178128', 'PP=u=', '', '15013178128', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-05-02 00:10:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013178128' LIMIT 1);
UPDATE users SET nick_name='PP=u=', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15013178128';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13692412747', 'U13692412747', '一一', '', '13692412747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 23:40:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13692412747' LIMIT 1);
UPDATE users SET nick_name='一一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13692412747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312752619', 'U18312752619', '芳芳', '', '18312752619', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 23:35:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312752619' LIMIT 1);
UPDATE users SET nick_name='芳芳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312752619';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13757804313', 'U13757804313', '七楼风', '', '13757804313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 22:43:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13757804313' LIMIT 1);
UPDATE users SET nick_name='七楼风', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13757804313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15706802339', 'U15706802339', '杰尼JENI', '', '15706802339', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 22:42:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15706802339' LIMIT 1);
UPDATE users SET nick_name='杰尼JENI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15706802339';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521453113', 'U15521453113', 'Summer', '', '15521453113', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 22:12:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521453113' LIMIT 1);
UPDATE users SET nick_name='Summer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521453113';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570435425', 'U13570435425', 'Bluebird', '', '13570435425', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 48, '2025-05-01 22:05:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570435425' LIMIT 1);
UPDATE users SET nick_name='Bluebird', balance=GREATEST(balance, 0.00), points=GREATEST(points, 48) WHERE phone='13570435425';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520636979', 'U18520636979', '梁银平', '', '18520636979', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 20:40:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520636979' LIMIT 1);
UPDATE users SET nick_name='梁银平', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520636979';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18476402744', 'U18476402744', 'Quetzal', '', '18476402744', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 19:53:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18476402744' LIMIT 1);
UPDATE users SET nick_name='Quetzal', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18476402744';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17625569482', 'U17625569482', 'Sunny', '', '17625569482', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 599, '2025-05-01 17:24:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17625569482' LIMIT 1);
UPDATE users SET nick_name='Sunny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 599) WHERE phone='17625569482';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600486422', 'U13600486422', 'Tommy', '', '13600486422', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 17:09:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600486422' LIMIT 1);
UPDATE users SET nick_name='Tommy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600486422';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928771388', 'U18928771388', '笙', '', '18928771388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 16:55:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928771388' LIMIT 1);
UPDATE users SET nick_name='笙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928771388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560133423', 'U13560133423', 'MeiSyun🎈', '', '13560133423', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 16:19:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560133423' LIMIT 1);
UPDATE users SET nick_name='MeiSyun🎈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560133423';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026431973', 'U18026431973', '18026431973', '', '18026431973', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 16:00:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026431973' LIMIT 1);
UPDATE users SET nick_name='18026431973', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026431973';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662457702', 'U13662457702', 'ccc', '', '13662457702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 14:33:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662457702' LIMIT 1);
UPDATE users SET nick_name='ccc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662457702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620687933', 'U18620687933', 'Joyce', '', '18620687933', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 13:02:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620687933' LIMIT 1);
UPDATE users SET nick_name='Joyce', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620687933';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726746801', 'U13726746801', '🍬小火柴柴👧🏻', '', '13726746801', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 12:59:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726746801' LIMIT 1);
UPDATE users SET nick_name='🍬小火柴柴👧🏻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726746801';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15603066988', 'U15603066988', 'Handison', '', '15603066988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 12:50:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15603066988' LIMIT 1);
UPDATE users SET nick_name='Handison', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15603066988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631308702', 'U13631308702', 'te', '', '13631308702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 12:10:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631308702' LIMIT 1);
UPDATE users SET nick_name='te', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631308702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19875920530', 'U19875920530', '陈一', '', '19875920530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 11:23:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19875920530' LIMIT 1);
UPDATE users SET nick_name='陈一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19875920530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560477856', 'U13560477856', '小林', '', '13560477856', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 10:21:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560477856' LIMIT 1);
UPDATE users SET nick_name='小林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560477856';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924184012', 'U13924184012', '苹果', '', '13924184012', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 09:47:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924184012' LIMIT 1);
UPDATE users SET nick_name='苹果', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924184012';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688488117', 'U18688488117', '高菲', '', '18688488117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-01 09:41:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688488117' LIMIT 1);
UPDATE users SET nick_name='高菲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688488117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312420950', 'U18312420950', '林俊杰老婆', '', '18312420950', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-05-01 09:34:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312420950' LIMIT 1);
UPDATE users SET nick_name='林俊杰老婆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='18312420950';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602496825', 'U13602496825', 'ldz政', '', '13602496825', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 23:41:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602496825' LIMIT 1);
UPDATE users SET nick_name='ldz政', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602496825';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711771698', 'U13711771698', '卢小姐', '', '13711771698', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 23:30:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711771698' LIMIT 1);
UPDATE users SET nick_name='卢小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711771698';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819165070', 'U18819165070', 'EN', '', '18819165070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 23:02:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819165070' LIMIT 1);
UPDATE users SET nick_name='EN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819165070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14748085659', 'U14748085659', 'JamesWilby', '', '14748085659', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 21:39:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14748085659' LIMIT 1);
UPDATE users SET nick_name='JamesWilby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14748085659';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711758666', 'U13711758666', '柳丁', '', '13711758666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 20:56:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711758666' LIMIT 1);
UPDATE users SET nick_name='柳丁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711758666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610053011', 'U13610053011', '13610053011', '', '13610053011', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 20:31:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610053011' LIMIT 1);
UPDATE users SET nick_name='13610053011', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610053011';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246415881', 'U13246415881', '13246415881', '', '13246415881', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 19:44:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246415881' LIMIT 1);
UPDATE users SET nick_name='13246415881', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246415881';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13118831417', 'U13118831417', '大家乐', '', '13118831417', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 19:23:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13118831417' LIMIT 1);
UPDATE users SET nick_name='大家乐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13118831417';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17688438893', 'U17688438893', 'zzvjohn', '', '17688438893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 19:18:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17688438893' LIMIT 1);
UPDATE users SET nick_name='zzvjohn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17688438893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533990196', 'U13533990196', 'zzj', '', '13533990196', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 19:16:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533990196' LIMIT 1);
UPDATE users SET nick_name='zzj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533990196';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726760201', 'U13726760201', 'xxx', '', '13726760201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 19:02:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726760201' LIMIT 1);
UPDATE users SET nick_name='xxx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726760201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17677015106', 'U17677015106', '一', '', '17677015106', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 19:01:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17677015106' LIMIT 1);
UPDATE users SET nick_name='一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17677015106';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450493225', 'U13450493225', 'BOBO', '', '13450493225', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 16:54:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450493225' LIMIT 1);
UPDATE users SET nick_name='BOBO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450493225';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15875870533', 'U15875870533', '15875870533', '', '15875870533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 13:52:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15875870533' LIMIT 1);
UPDATE users SET nick_name='15875870533', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15875870533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17866622660', 'U17866622660', 'skil', '', '17866622660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 13:33:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17866622660' LIMIT 1);
UPDATE users SET nick_name='skil', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17866622660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539480606', 'U13539480606', 'A*范丹锋', '', '13539480606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 11:45:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539480606' LIMIT 1);
UPDATE users SET nick_name='A*范丹锋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539480606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922206133', 'U13922206133', '智慧', '', '13922206133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-30 11:04:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922206133' LIMIT 1);
UPDATE users SET nick_name='智慧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922206133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027453848', 'U18027453848', 'Alvin', '', '18027453848', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-04-29 21:25:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027453848' LIMIT 1);
UPDATE users SET nick_name='Alvin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='18027453848';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632322664', 'U13632322664', '💋MOMO💋', '', '13632322664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-04-29 20:41:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632322664' LIMIT 1);
UPDATE users SET nick_name='💋MOMO💋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13632322664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820039554', 'U18820039554', '18820039554', '', '18820039554', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-29 18:48:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820039554' LIMIT 1);
UPDATE users SET nick_name='18820039554', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820039554';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18927522461', 'U18927522461', '18927522461', '', '18927522461', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-29 18:22:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18927522461' LIMIT 1);
UPDATE users SET nick_name='18927522461', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18927522461';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15723076971', 'U15723076971', '15723076971', '', '15723076971', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-29 18:14:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15723076971' LIMIT 1);
UPDATE users SET nick_name='15723076971', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15723076971';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15990078023', 'U15990078023', '15990078023', '', '15990078023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-29 13:45:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15990078023' LIMIT 1);
UPDATE users SET nick_name='15990078023', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15990078023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15287470875', 'U15287470875', '泰尼斯', '', '15287470875', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-29 13:32:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15287470875' LIMIT 1);
UPDATE users SET nick_name='泰尼斯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15287470875';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13070257141', 'U13070257141', '静静', '', '13070257141', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-29 00:16:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13070257141' LIMIT 1);
UPDATE users SET nick_name='静静', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13070257141';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570220941', 'U13570220941', '肥肥的磊磊', '', '13570220941', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-29 00:16:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570220941' LIMIT 1);
UPDATE users SET nick_name='肥肥的磊磊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570220941';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570254410', 'U13570254410', 'ઇ妮妮到处浪ଓ', '', '13570254410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-28 21:08:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570254410' LIMIT 1);
UPDATE users SET nick_name='ઇ妮妮到处浪ଓ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570254410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19876728184', 'U19876728184', 'vv', '', '19876728184', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 48, '2025-04-28 20:13:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19876728184' LIMIT 1);
UPDATE users SET nick_name='vv', balance=GREATEST(balance, 0.00), points=GREATEST(points, 48) WHERE phone='19876728184';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320094185', 'U18320094185', '18320094185', '', '18320094185', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-28 20:01:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320094185' LIMIT 1);
UPDATE users SET nick_name='18320094185', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320094185';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711270520', 'U13711270520', 'Yuki', '', '13711270520', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-28 19:59:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711270520' LIMIT 1);
UPDATE users SET nick_name='Yuki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711270520';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503018286', 'U13503018286', 'Jing', '', '13503018286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-28 13:42:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503018286' LIMIT 1);
UPDATE users SET nick_name='Jing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503018286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18056680770', 'U18056680770', 'hu', '', '18056680770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-28 11:19:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18056680770' LIMIT 1);
UPDATE users SET nick_name='hu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18056680770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760706001', 'U13760706001', '李卫东', '', '13760706001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-28 10:59:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760706001' LIMIT 1);
UPDATE users SET nick_name='李卫东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760706001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665616451', 'U18665616451', 'Jia', '', '18665616451', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-28 10:05:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665616451' LIMIT 1);
UPDATE users SET nick_name='Jia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665616451';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989034595', 'U15989034595', 'Mr.大骏🐯', '', '15989034595', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-28 01:28:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989034595' LIMIT 1);
UPDATE users SET nick_name='Mr.大骏🐯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15989034595';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19878005557', 'U19878005557', '无水乙醛', '', '19878005557', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-27 22:39:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19878005557' LIMIT 1);
UPDATE users SET nick_name='无水乙醛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19878005557';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19303026950', 'U19303026950', 'Jabin', '', '19303026950', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-27 15:50:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19303026950' LIMIT 1);
UPDATE users SET nick_name='Jabin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19303026950';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609784310', 'U13609784310', '一', '', '13609784310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-27 15:47:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609784310' LIMIT 1);
UPDATE users SET nick_name='一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609784310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450279341', 'U13450279341', '_NN_', '', '13450279341', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-27 13:35:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450279341' LIMIT 1);
UPDATE users SET nick_name='_NN_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450279341';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450801940', 'U13450801940', 'ptri', '', '13450801940', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-27 13:03:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450801940' LIMIT 1);
UPDATE users SET nick_name='ptri', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450801940';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920819562', 'U15920819562', '15920819562', '', '15920819562', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-27 12:39:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920819562' LIMIT 1);
UPDATE users SET nick_name='15920819562', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920819562';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808887234', 'U13808887234', '哥斯拉', '', '13808887234', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-27 10:12:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808887234' LIMIT 1);
UPDATE users SET nick_name='哥斯拉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13808887234';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15926989602', 'U15926989602', '0297 1487 69', '', '15926989602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-27 09:49:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15926989602' LIMIT 1);
UPDATE users SET nick_name='0297 1487 69', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15926989602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602292325', 'U13602292325', '😶', '', '13602292325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-27 00:14:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602292325' LIMIT 1);
UPDATE users SET nick_name='😶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602292325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556072994', 'U13556072994', 'Aaron', '', '13556072994', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-27 00:14:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556072994' LIMIT 1);
UPDATE users SET nick_name='Aaron', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556072994';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512710756', 'U13512710756', '耳朵', '', '13512710756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2025-04-26 21:52:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512710756' LIMIT 1);
UPDATE users SET nick_name='耳朵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='13512710756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662393472', 'U13662393472', '13662393472', '', '13662393472', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 20:52:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662393472' LIMIT 1);
UPDATE users SET nick_name='13662393472', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662393472';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18407676613', 'U18407676613', '18407676613', '', '18407676613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 20:51:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18407676613' LIMIT 1);
UPDATE users SET nick_name='18407676613', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18407676613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18594266170', 'U18594266170', '涵', '', '18594266170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 20:46:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18594266170' LIMIT 1);
UPDATE users SET nick_name='涵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18594266170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924001181', 'U18924001181', '18924001181', '', '18924001181', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 19:28:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924001181' LIMIT 1);
UPDATE users SET nick_name='18924001181', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924001181';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13761404807', 'U13761404807', '蔡澈', '', '13761404807', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2025-04-26 19:02:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13761404807' LIMIT 1);
UPDATE users SET nick_name='蔡澈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='13761404807';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915971185', 'U15915971185', '小初', '', '15915971185', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 18:23:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915971185' LIMIT 1);
UPDATE users SET nick_name='小初', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915971185';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14715201578', 'U14715201578', 'Ymi', '', '14715201578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 17:30:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14715201578' LIMIT 1);
UPDATE users SET nick_name='Ymi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14715201578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242878180', 'U13242878180', '何呵呵', '', '13242878180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 16:23:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242878180' LIMIT 1);
UPDATE users SET nick_name='何呵呵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242878180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13501460385', 'U13501460385', 'Jason', '', '13501460385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-04-26 16:01:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13501460385' LIMIT 1);
UPDATE users SET nick_name='Jason', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13501460385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19044083263', 'U19044083263', 'cooloor', '', '19044083263', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 15:56:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19044083263' LIMIT 1);
UPDATE users SET nick_name='cooloor', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19044083263';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242345409', 'U13242345409', '李', '', '13242345409', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 15:09:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242345409' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242345409';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19252088285', 'U19252088285', 'LeonHins', '', '19252088285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 14:48:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19252088285' LIMIT 1);
UPDATE users SET nick_name='LeonHins', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19252088285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19867665205', 'U19867665205', 'lusan', '', '19867665205', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 14:46:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19867665205' LIMIT 1);
UPDATE users SET nick_name='lusan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19867665205';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160898182', 'U13160898182', '梁宇軒', '', '13160898182', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 14:44:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160898182' LIMIT 1);
UPDATE users SET nick_name='梁宇軒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13160898182';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15635470614', 'U15635470614', 'LT总助', '', '15635470614', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 14:02:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15635470614' LIMIT 1);
UPDATE users SET nick_name='LT总助', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15635470614';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815229554', 'U15815229554', '嘉', '', '15815229554', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 12:50:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815229554' LIMIT 1);
UPDATE users SET nick_name='嘉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815229554';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688866644', 'U18688866644', 'Ellen徐', '', '18688866644', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-04-26 11:17:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688866644' LIMIT 1);
UPDATE users SET nick_name='Ellen徐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='18688866644';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719153897', 'U13719153897', '小梁多喝水！', '', '13719153897', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 11:07:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719153897' LIMIT 1);
UPDATE users SET nick_name='小梁多喝水！', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719153897';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922349126', 'U13922349126', 'nicola', '', '13922349126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 10:59:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922349126' LIMIT 1);
UPDATE users SET nick_name='nicola', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922349126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18124227383', 'U18124227383', '巧巧', '', '18124227383', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 09:52:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18124227383' LIMIT 1);
UPDATE users SET nick_name='巧巧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18124227383';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822140029', 'U13822140029', 'Lily Liu', '', '13822140029', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 09:37:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822140029' LIMIT 1);
UPDATE users SET nick_name='Lily Liu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822140029';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202033999', 'U13202033999', '苏', '', '13202033999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 09:17:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202033999' LIMIT 1);
UPDATE users SET nick_name='苏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202033999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18241653709', 'U18241653709', '`(*∩_∩*)′', '', '18241653709', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 09:14:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18241653709' LIMIT 1);
UPDATE users SET nick_name='`(*∩_∩*)′', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18241653709';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529476543', 'U18529476543', 'vi', '', '18529476543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-26 09:08:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529476543' LIMIT 1);
UPDATE users SET nick_name='vi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529476543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18927250422', 'U18927250422', 'SumYu', '', '18927250422', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-25 19:37:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18927250422' LIMIT 1);
UPDATE users SET nick_name='SumYu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18927250422';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665136916', 'U17665136916', 'Sussi', '', '17665136916', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-25 19:33:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665136916' LIMIT 1);
UPDATE users SET nick_name='Sussi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665136916';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18816830702', 'U18816830702', 'Dr.Ci', '', '18816830702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-25 19:16:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18816830702' LIMIT 1);
UPDATE users SET nick_name='Dr.Ci', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18816830702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18816830817', 'U18816830817', '汪丽萍', '', '18816830817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-04-25 18:32:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18816830817' LIMIT 1);
UPDATE users SET nick_name='汪丽萍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='18816830817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352804577', 'U13352804577', '🙊', '', '13352804577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-25 16:04:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352804577' LIMIT 1);
UPDATE users SET nick_name='🙊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13352804577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620021065', 'U17620021065', '17620021065', '', '17620021065', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-25 15:47:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620021065' LIMIT 1);
UPDATE users SET nick_name='17620021065', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620021065';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18842812508', 'U18842812508', 'Lin', '', '18842812508', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-25 14:17:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18842812508' LIMIT 1);
UPDATE users SET nick_name='Lin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18842812508';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998445602', 'U18998445602', 'yoyo', '', '18998445602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-24 15:55:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998445602' LIMIT 1);
UPDATE users SET nick_name='yoyo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998445602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13532272215', 'U13532272215', 'AUGHYoo', '', '13532272215', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-24 15:46:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13532272215' LIMIT 1);
UPDATE users SET nick_name='AUGHYoo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13532272215';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710245615', 'U13710245615', 'Samantha', '', '13710245615', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-24 15:11:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710245615' LIMIT 1);
UPDATE users SET nick_name='Samantha', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710245615';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820241965', 'U15820241965', '🌸\'Candice', '', '15820241965', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-24 15:02:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820241965' LIMIT 1);
UPDATE users SET nick_name='🌸\'Candice', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820241965';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922722115', 'U13922722115', 'queenie', '', '13922722115', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 299, '2025-04-24 13:12:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922722115' LIMIT 1);
UPDATE users SET nick_name='queenie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 299) WHERE phone='13922722115';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539479233', 'U13539479233', '全', '', '13539479233', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-24 12:45:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539479233' LIMIT 1);
UPDATE users SET nick_name='全', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13539479233';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450260766', 'U13450260766', 'Danny', '', '13450260766', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-24 12:27:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450260766' LIMIT 1);
UPDATE users SET nick_name='Danny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450260766';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18777135176', 'U18777135176', '佳', '', '18777135176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-24 11:12:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18777135176' LIMIT 1);
UPDATE users SET nick_name='佳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18777135176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19240114434', 'U19240114434', '可爱喵😼', '', '19240114434', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-24 10:43:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19240114434' LIMIT 1);
UPDATE users SET nick_name='可爱喵😼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19240114434';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819255052', 'U18819255052', '18819255052', '', '18819255052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-23 20:54:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819255052' LIMIT 1);
UPDATE users SET nick_name='18819255052', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819255052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120437437', 'U19120437437', '叶之子木', '', '19120437437', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-23 18:31:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120437437' LIMIT 1);
UPDATE users SET nick_name='叶之子木', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120437437';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13169603446', 'U13169603446', '刘', '', '13169603446', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-23 18:29:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13169603446' LIMIT 1);
UPDATE users SET nick_name='刘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13169603446';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19517275096', 'U19517275096', 'Lovely', '', '19517275096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-04-23 18:15:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19517275096' LIMIT 1);
UPDATE users SET nick_name='Lovely', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='19517275096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800292946', 'U15800292946', '李', '', '15800292946', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-23 18:13:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800292946' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800292946';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15302264660', 'U15302264660', '15302264660', '', '15302264660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-23 16:09:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15302264660' LIMIT 1);
UPDATE users SET nick_name='15302264660', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15302264660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249735645', 'U13249735645', 'minako', '', '13249735645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-23 13:53:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249735645' LIMIT 1);
UPDATE users SET nick_name='minako', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249735645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18229924264', 'U18229924264', '18229924264', '', '18229924264', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-23 13:08:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18229924264' LIMIT 1);
UPDATE users SET nick_name='18229924264', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18229924264';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16607909530', 'U16607909530', 'Shawn', '', '16607909530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-04-23 11:20:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16607909530' LIMIT 1);
UPDATE users SET nick_name='Shawn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='16607909530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19865002231', 'U19865002231', '🍃Wency.', '', '19865002231', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-23 11:11:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19865002231' LIMIT 1);
UPDATE users SET nick_name='🍃Wency.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19865002231';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13968998869', 'U13968998869', '林泽宏', '', '13968998869', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2025-04-23 09:46:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13968998869' LIMIT 1);
UPDATE users SET nick_name='林泽宏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='13968998869';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826494491', 'U13826494491', '曾先森', '', '13826494491', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-23 09:33:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826494491' LIMIT 1);
UPDATE users SET nick_name='曾先森', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826494491';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688431905', 'U18688431905', 'LONG🐲', '', '18688431905', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-23 01:18:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688431905' LIMIT 1);
UPDATE users SET nick_name='LONG🐲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688431905';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928778819', 'U13928778819', '13928778819', '', '13928778819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-22 20:44:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928778819' LIMIT 1);
UPDATE users SET nick_name='13928778819', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928778819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998318068', 'U18998318068', '熊二姐', '', '18998318068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-22 18:00:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998318068' LIMIT 1);
UPDATE users SET nick_name='熊二姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998318068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922231398', 'U18922231398', '老龙', '', '18922231398', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 388, '2025-04-22 17:42:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922231398' LIMIT 1);
UPDATE users SET nick_name='老龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 388) WHERE phone='18922231398';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13677666533', 'U13677666533', 'YangKD_', '', '13677666533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-22 17:17:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13677666533' LIMIT 1);
UPDATE users SET nick_name='YangKD_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13677666533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168886768', 'U13168886768', '陈', '', '13168886768', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-22 17:08:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168886768' LIMIT 1);
UPDATE users SET nick_name='陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13168886768';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18824167577', 'U18824167577', 'AvaZha', '', '18824167577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-04-22 15:23:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18824167577' LIMIT 1);
UPDATE users SET nick_name='AvaZha', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18824167577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19953391133', 'U19953391133', '王', '', '19953391133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-22 15:04:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19953391133' LIMIT 1);
UPDATE users SET nick_name='王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19953391133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925092594', 'U13925092594', '翔龙', '', '13925092594', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2025-04-22 14:23:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925092594' LIMIT 1);
UPDATE users SET nick_name='翔龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='13925092594';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915813473', 'U15915813473', '莉yao', '', '15915813473', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-22 14:03:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915813473' LIMIT 1);
UPDATE users SET nick_name='莉yao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915813473';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726277527', 'U13726277527', 'Krystal', '', '13726277527', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-22 13:31:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726277527' LIMIT 1);
UPDATE users SET nick_name='Krystal', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726277527';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580066416', 'U13580066416', 'BubbleTea', '', '13580066416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-22 13:03:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580066416' LIMIT 1);
UPDATE users SET nick_name='BubbleTea', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580066416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435238130', 'U13435238130', 'ming', '', '13435238130', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-22 12:44:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435238130' LIMIT 1);
UPDATE users SET nick_name='ming', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13435238130';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13680449743', 'U13680449743', '小 小 咩', '', '13680449743', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-22 12:29:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13680449743' LIMIT 1);
UPDATE users SET nick_name='小 小 咩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13680449743';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246821600', 'U13246821600', '💕KARY🕌', '', '13246821600', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-22 00:13:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246821600' LIMIT 1);
UPDATE users SET nick_name='💕KARY🕌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13246821600';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19212069171', 'U19212069171', 'Wu💭', '', '19212069171', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 22:29:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19212069171' LIMIT 1);
UPDATE users SET nick_name='Wu💭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19212069171';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13380098139', 'U13380098139', '唔止坚', '', '13380098139', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 22:20:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13380098139' LIMIT 1);
UPDATE users SET nick_name='唔止坚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13380098139';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820669945', 'U18820669945', '麦', '', '18820669945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 20:47:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820669945' LIMIT 1);
UPDATE users SET nick_name='麦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820669945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915802591', 'U15915802591', '🎀Miss.yoyo', '', '15915802591', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 20:07:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915802591' LIMIT 1);
UPDATE users SET nick_name='🎀Miss.yoyo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915802591';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538878121', 'U13538878121', 'Meimei', '', '13538878121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 17:58:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538878121' LIMIT 1);
UPDATE users SET nick_name='Meimei', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538878121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926110111', 'U18926110111', '黄的女人', '', '18926110111', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 17:01:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926110111' LIMIT 1);
UPDATE users SET nick_name='黄的女人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926110111';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13532686123', 'U13532686123', 'J c', '', '13532686123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 16:28:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13532686123' LIMIT 1);
UPDATE users SET nick_name='J c', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13532686123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750098211', 'U13750098211', 'Zoe💰', '', '13750098211', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 176, '2025-04-21 15:52:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750098211' LIMIT 1);
UPDATE users SET nick_name='Zoe💰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 176) WHERE phone='13750098211';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16616770883', 'U16616770883', '16616770883', '', '16616770883', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 15:50:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16616770883' LIMIT 1);
UPDATE users SET nick_name='16616770883', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16616770883';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876437252', 'U17876437252', '七月', '', '17876437252', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 15:25:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876437252' LIMIT 1);
UPDATE users SET nick_name='七月', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876437252';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500221315', 'U13500221315', '🥩', '', '13500221315', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 15:19:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500221315' LIMIT 1);
UPDATE users SET nick_name='🥩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500221315';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13797783279', 'U13797783279', '祭烬', '', '13797783279', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 14:51:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13797783279' LIMIT 1);
UPDATE users SET nick_name='祭烬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13797783279';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265511216', 'U13265511216', 'kaia💫', '', '13265511216', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 14:26:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265511216' LIMIT 1);
UPDATE users SET nick_name='kaia💫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265511216';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915784305', 'U15915784305', '月巴🌚食并', '', '15915784305', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-21 11:05:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915784305' LIMIT 1);
UPDATE users SET nick_name='月巴🌚食并', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915784305';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922095503', 'U13922095503', 'McQueen', '', '13922095503', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 26, '2025-04-21 10:58:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922095503' LIMIT 1);
UPDATE users SET nick_name='McQueen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 26) WHERE phone='13922095503';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19926267328', 'U19926267328', '7', '', '19926267328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 20:58:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19926267328' LIMIT 1);
UPDATE users SET nick_name='7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19926267328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16624700312', 'U16624700312', 'PrinPrin.L', '', '16624700312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 20:34:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16624700312' LIMIT 1);
UPDATE users SET nick_name='PrinPrin.L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16624700312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808884770', 'U13808884770', 'Longcm', '', '13808884770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 19:22:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808884770' LIMIT 1);
UPDATE users SET nick_name='Longcm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808884770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15869976697', 'U15869976697', '-', '', '15869976697', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 18:11:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15869976697' LIMIT 1);
UPDATE users SET nick_name='-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15869976697';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18593439853', 'U18593439853', '李宁', '', '18593439853', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 16:03:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18593439853' LIMIT 1);
UPDATE users SET nick_name='李宁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18593439853';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18319375308', 'U18319375308', '梁', '', '18319375308', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 15:50:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18319375308' LIMIT 1);
UPDATE users SET nick_name='梁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18319375308';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143530186', 'U13143530186', '1oyola', '', '13143530186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 15:18:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143530186' LIMIT 1);
UPDATE users SET nick_name='1oyola', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143530186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620212188', 'U18620212188', '辉', '', '18620212188', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 15:16:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620212188' LIMIT 1);
UPDATE users SET nick_name='辉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620212188';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609742102', 'U13609742102', '11', '', '13609742102', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 14:34:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609742102' LIMIT 1);
UPDATE users SET nick_name='11', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609742102';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610260335', 'U13610260335', '鹏er🙉', '', '13610260335', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 13:50:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610260335' LIMIT 1);
UPDATE users SET nick_name='鹏er🙉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610260335';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588661001', 'U18588661001', '18588661001', '', '18588661001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 13:49:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588661001' LIMIT 1);
UPDATE users SET nick_name='18588661001', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588661001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19586480469', 'U19586480469', '📚', '', '19586480469', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 13:48:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19586480469' LIMIT 1);
UPDATE users SET nick_name='📚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19586480469';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13611462594', 'U13611462594', '叉烧', '', '13611462594', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 13:10:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13611462594' LIMIT 1);
UPDATE users SET nick_name='叉烧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13611462594';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18675008282', 'U18675008282', 'Faye', '', '18675008282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 11:51:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18675008282' LIMIT 1);
UPDATE users SET nick_name='Faye', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18675008282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268068827', 'U13268068827', '13268068827', '', '13268068827', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 11:27:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268068827' LIMIT 1);
UPDATE users SET nick_name='13268068827', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268068827';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711158988', 'U13711158988', '13711158988', '', '13711158988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 11:02:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711158988' LIMIT 1);
UPDATE users SET nick_name='13711158988', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711158988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15123293691', 'U15123293691', '15123293691', '', '15123293691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 10:11:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15123293691' LIMIT 1);
UPDATE users SET nick_name='15123293691', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15123293691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570593603', 'U13570593603', '璇子', '', '13570593603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2025-04-20 09:50:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570593603' LIMIT 1);
UPDATE users SET nick_name='璇子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='13570593603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666589150', 'U18666589150', 'sjgnfm', '', '18666589150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 09:09:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666589150' LIMIT 1);
UPDATE users SET nick_name='sjgnfm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666589150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18923371489', 'U18923371489', 'c', '', '18923371489', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 01:29:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18923371489' LIMIT 1);
UPDATE users SET nick_name='c', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18923371489';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13531646639', 'U13531646639', 'omo', '', '13531646639', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-20 00:11:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13531646639' LIMIT 1);
UPDATE users SET nick_name='omo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13531646639';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17819734050', 'U17819734050', 'OV', '', '17819734050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 21:35:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17819734050' LIMIT 1);
UPDATE users SET nick_name='OV', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17819734050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13144411126', 'U13144411126', '坚叔Neo', '', '13144411126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 21:28:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13144411126' LIMIT 1);
UPDATE users SET nick_name='坚叔Neo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13144411126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026263826', 'U18026263826', '谭谭～', '', '18026263826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 20:10:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026263826' LIMIT 1);
UPDATE users SET nick_name='谭谭～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026263826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725279088', 'U13725279088', 'ygj', '', '13725279088', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 19:08:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725279088' LIMIT 1);
UPDATE users SET nick_name='ygj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725279088';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18176120504', 'U18176120504', '18176120504', '', '18176120504', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 16:54:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18176120504' LIMIT 1);
UPDATE users SET nick_name='18176120504', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18176120504';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609769888', 'U13609769888', '春', '', '13609769888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 15:46:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609769888' LIMIT 1);
UPDATE users SET nick_name='春', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609769888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416282940', 'U13416282940', '🥔', '', '13416282940', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 15:18:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416282940' LIMIT 1);
UPDATE users SET nick_name='🥔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416282940';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15220146960', 'U15220146960', 'Anida', '', '15220146960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 15:10:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15220146960' LIMIT 1);
UPDATE users SET nick_name='Anida', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15220146960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988979996', 'U18988979996', '小兰', '', '18988979996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2025-04-19 14:43:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988979996' LIMIT 1);
UPDATE users SET nick_name='小兰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='18988979996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018433035', 'U15018433035', '栤', '', '15018433035', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 14:07:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018433035' LIMIT 1);
UPDATE users SET nick_name='栤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018433035';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13701806631', 'U13701806631', '圆衮阿胖', '', '13701806631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 13:52:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13701806631' LIMIT 1);
UPDATE users SET nick_name='圆衮阿胖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13701806631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521085610', 'U15521085610', 'Yvonne', '', '15521085610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 12:49:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521085610' LIMIT 1);
UPDATE users SET nick_name='Yvonne', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521085610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18816525732', 'U18816525732', '一颗花生🥜', '', '18816525732', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 12:36:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18816525732' LIMIT 1);
UPDATE users SET nick_name='一颗花生🥜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18816525732';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876304099', 'U15876304099', 'ruin', '', '15876304099', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 11:33:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876304099' LIMIT 1);
UPDATE users SET nick_name='ruin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876304099';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822211067', 'U13822211067', '星河', '', '13822211067', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 11:18:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822211067' LIMIT 1);
UPDATE users SET nick_name='星河', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822211067';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018443161', 'U15018443161', '15018443161', '', '15018443161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 10:19:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018443161' LIMIT 1);
UPDATE users SET nick_name='15018443161', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018443161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18870246007', 'U18870246007', 'Terry王', '', '18870246007', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-19 08:56:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18870246007' LIMIT 1);
UPDATE users SET nick_name='Terry王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18870246007';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924224077', 'U13924224077', '雄少熊', '', '13924224077', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 145, '2025-04-18 19:07:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924224077' LIMIT 1);
UPDATE users SET nick_name='雄少熊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 145) WHERE phone='13924224077';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13786189937', 'U13786189937', '13786189937', '', '13786189937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 19:03:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13786189937' LIMIT 1);
UPDATE users SET nick_name='13786189937', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13786189937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18124930626', 'U18124930626', 'COOKIEE', '', '18124930626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 18:10:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18124930626' LIMIT 1);
UPDATE users SET nick_name='COOKIEE', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18124930626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642710127', 'U13642710127', '13642710127', '', '13642710127', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 17:56:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642710127' LIMIT 1);
UPDATE users SET nick_name='13642710127', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642710127';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318376561', 'U13318376561', '薯仔🥔', '', '13318376561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 16:55:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318376561' LIMIT 1);
UPDATE users SET nick_name='薯仔🥔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318376561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15868140702', 'U15868140702', 'Rachel', '', '15868140702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 16:53:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15868140702' LIMIT 1);
UPDATE users SET nick_name='Rachel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15868140702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620859891', 'U17620859891', 'zsb', '', '17620859891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-04-18 15:54:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620859891' LIMIT 1);
UPDATE users SET nick_name='zsb', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='17620859891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13224530010', 'U13224530010', '東决', '', '13224530010', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 14:18:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13224530010' LIMIT 1);
UPDATE users SET nick_name='東决', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13224530010';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18670875600', 'U18670875600', '[L³]', '', '18670875600', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 14:17:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18670875600' LIMIT 1);
UPDATE users SET nick_name='[L³]', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18670875600';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17828160431', 'U17828160431', 'Mk', '', '17828160431', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 13:50:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17828160431' LIMIT 1);
UPDATE users SET nick_name='Mk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17828160431';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18852030140', 'U18852030140', '多喝龙井茶', '', '18852030140', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 12:44:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18852030140' LIMIT 1);
UPDATE users SET nick_name='多喝龙井茶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18852030140';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902062793', 'U15902062793', 'kel', '', '15902062793', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 11:43:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902062793' LIMIT 1);
UPDATE users SET nick_name='kel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902062793';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600077897', 'U13600077897', '鸣人', '', '13600077897', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 06:31:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600077897' LIMIT 1);
UPDATE users SET nick_name='鸣人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600077897';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13413448062', 'U13413448062', '漫天星', '', '13413448062', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-18 00:20:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13413448062' LIMIT 1);
UPDATE users SET nick_name='漫天星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13413448062';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18124222280', 'U18124222280', '猫', '', '18124222280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-17 22:41:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18124222280' LIMIT 1);
UPDATE users SET nick_name='猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18124222280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13423678480', 'U13423678480', '💋思思sisi_P晴💋', '', '13423678480', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-17 20:30:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13423678480' LIMIT 1);
UPDATE users SET nick_name='💋思思sisi_P晴💋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13423678480';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13005103512', 'U13005103512', 'Swhite', '', '13005103512', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-17 18:19:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13005103512' LIMIT 1);
UPDATE users SET nick_name='Swhite', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13005103512';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19872811896', 'U19872811896', '珊珊', '', '19872811896', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-17 18:11:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19872811896' LIMIT 1);
UPDATE users SET nick_name='珊珊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19872811896';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15116689662', 'U15116689662', '15116689662', '', '15116689662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-17 17:33:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15116689662' LIMIT 1);
UPDATE users SET nick_name='15116689662', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15116689662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876962282', 'U15876962282', 'GR', '', '15876962282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-17 17:11:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876962282' LIMIT 1);
UPDATE users SET nick_name='GR', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876962282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620892633', 'U18620892633', '老周', '', '18620892633', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-17 14:40:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620892633' LIMIT 1);
UPDATE users SET nick_name='老周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620892633';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422240327', 'U13422240327', 'starstar🌾', '', '13422240327', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-04-17 00:53:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422240327' LIMIT 1);
UPDATE users SET nick_name='starstar🌾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13422240327';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798186791', 'U13798186791', '老高', '', '13798186791', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-16 19:48:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798186791' LIMIT 1);
UPDATE users SET nick_name='老高', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798186791';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815325510', 'U15815325510', '一只肉丸', '', '15815325510', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-16 19:42:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815325510' LIMIT 1);
UPDATE users SET nick_name='一只肉丸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815325510';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500007231', 'U13500007231', '念', '', '13500007231', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-16 18:27:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500007231' LIMIT 1);
UPDATE users SET nick_name='念', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500007231';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928020936', 'U13928020936', 'Janet', '', '13928020936', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-16 17:55:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928020936' LIMIT 1);
UPDATE users SET nick_name='Janet', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928020936';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302400936', 'U13302400936', '高', '', '13302400936', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-16 17:40:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302400936' LIMIT 1);
UPDATE users SET nick_name='高', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302400936';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825190936', 'U13825190936', '老童', '', '13825190936', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-16 17:00:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825190936' LIMIT 1);
UPDATE users SET nick_name='老童', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825190936';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13604803440', 'U13604803440', '小猪小猪呼噜噜', '', '13604803440', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-16 15:59:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13604803440' LIMIT 1);
UPDATE users SET nick_name='小猪小猪呼噜噜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13604803440';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802075642', 'U18802075642', '🌵', '', '18802075642', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-16 15:50:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802075642' LIMIT 1);
UPDATE users SET nick_name='🌵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802075642';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017596617', 'U15017596617', 'kikiho', '', '15017596617', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-16 14:24:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017596617' LIMIT 1);
UPDATE users SET nick_name='kikiho', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017596617';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19886156026', 'U19886156026', 'Gavin', '', '19886156026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-16 13:14:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19886156026' LIMIT 1);
UPDATE users SET nick_name='Gavin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19886156026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18074626270', 'U18074626270', '18074626270', '', '18074626270', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-16 13:13:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18074626270' LIMIT 1);
UPDATE users SET nick_name='18074626270', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18074626270';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416159530', 'U13416159530', 'Szeying', '', '13416159530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 21:11:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416159530' LIMIT 1);
UPDATE users SET nick_name='Szeying', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416159530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15088066746', 'U15088066746', 'Koi', '', '15088066746', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 20:45:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15088066746' LIMIT 1);
UPDATE users SET nick_name='Koi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15088066746';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18094532115', 'U18094532115', '💤🐝', '', '18094532115', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 18:39:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18094532115' LIMIT 1);
UPDATE users SET nick_name='💤🐝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18094532115';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19042965821', 'U19042965821', '19042965821', '', '19042965821', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 18:01:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19042965821' LIMIT 1);
UPDATE users SET nick_name='19042965821', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19042965821';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13016012929', 'U13016012929', '13016012929', '', '13016012929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 17:39:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13016012929' LIMIT 1);
UPDATE users SET nick_name='13016012929', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13016012929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926034506', 'U13926034506', '熊二', '', '13926034506', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 17:35:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926034506' LIMIT 1);
UPDATE users SET nick_name='熊二', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926034506';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17725604410', 'U17725604410', 'Suliho.', '', '17725604410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 17:20:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17725604410' LIMIT 1);
UPDATE users SET nick_name='Suliho.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17725604410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026447233', 'U18026447233', '.Y.', '', '18026447233', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 15:28:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026447233' LIMIT 1);
UPDATE users SET nick_name='.Y.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026447233';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18711547247', 'U18711547247', '18711547247', '', '18711547247', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 14:13:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18711547247' LIMIT 1);
UPDATE users SET nick_name='18711547247', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18711547247';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15766859554', 'U15766859554', '15766859554', '', '15766859554', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 13:57:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15766859554' LIMIT 1);
UPDATE users SET nick_name='15766859554', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15766859554';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919315085', 'U15919315085', 'Rory', '', '15919315085', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 13:27:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919315085' LIMIT 1);
UPDATE users SET nick_name='Rory', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919315085';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824407193', 'U13824407193', '娜娜', '', '13824407193', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 13:27:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824407193' LIMIT 1);
UPDATE users SET nick_name='娜娜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824407193';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18938231793', 'U18938231793', '18938231793', '', '18938231793', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 13:07:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18938231793' LIMIT 1);
UPDATE users SET nick_name='18938231793', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18938231793';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662536888', 'U13662536888', 'ivy', '', '13662536888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 13:02:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662536888' LIMIT 1);
UPDATE users SET nick_name='ivy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662536888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16626438824', 'U16626438824', 'ivy', '', '16626438824', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-15 10:40:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16626438824' LIMIT 1);
UPDATE users SET nick_name='ivy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16626438824';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15002021661', 'U15002021661', '🌈Ryan葱🦄', '', '15002021661', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-04-15 09:54:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15002021661' LIMIT 1);
UPDATE users SET nick_name='🌈Ryan葱🦄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='15002021661';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13672423431', 'U13672423431', '13672423431', '', '13672423431', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 20:19:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13672423431' LIMIT 1);
UPDATE users SET nick_name='13672423431', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13672423431';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392660951', 'U13392660951', 'Ivan', '', '13392660951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 18:30:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392660951' LIMIT 1);
UPDATE users SET nick_name='Ivan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392660951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826268997', 'U13826268997', '13826268997', '', '13826268997', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 18:26:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826268997' LIMIT 1);
UPDATE users SET nick_name='13826268997', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826268997';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318747655', 'U13318747655', '13318747655', '', '13318747655', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 17:43:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318747655' LIMIT 1);
UPDATE users SET nick_name='13318747655', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318747655';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620996153', 'U18620996153', '18620996153', '', '18620996153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 17:41:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620996153' LIMIT 1);
UPDATE users SET nick_name='18620996153', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620996153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925159371', 'U18925159371', '何思儒Sia', '', '18925159371', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 16:10:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925159371' LIMIT 1);
UPDATE users SET nick_name='何思儒Sia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925159371';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688456420', 'U18688456420', 'Aimee', '', '18688456420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 15:59:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688456420' LIMIT 1);
UPDATE users SET nick_name='Aimee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688456420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312801943', 'U13312801943', '如海', '', '13312801943', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-04-14 15:41:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312801943' LIMIT 1);
UPDATE users SET nick_name='如海', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13312801943';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729223543', 'U13729223543', '13729223543', '', '13729223543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 14:44:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729223543' LIMIT 1);
UPDATE users SET nick_name='13729223543', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729223543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917012405', 'U15917012405', 'mimi', '', '15917012405', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 14:42:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917012405' LIMIT 1);
UPDATE users SET nick_name='mimi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917012405';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18300922630', 'U18300922630', '18300922630', '', '18300922630', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 14:29:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18300922630' LIMIT 1);
UPDATE users SET nick_name='18300922630', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18300922630';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18845567648', 'U18845567648', 'Mi Manchi', '', '18845567648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 13:07:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18845567648' LIMIT 1);
UPDATE users SET nick_name='Mi Manchi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18845567648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17520426260', 'U17520426260', 'Roger', '', '17520426260', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-14 13:02:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17520426260' LIMIT 1);
UPDATE users SET nick_name='Roger', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='17520426260';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922796813', 'U13922796813', '丽丽', '', '13922796813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 12:42:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922796813' LIMIT 1);
UPDATE users SET nick_name='丽丽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922796813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560404542', 'U13560404542', 'Ann', '', '13560404542', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-14 11:27:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560404542' LIMIT 1);
UPDATE users SET nick_name='Ann', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560404542';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622203265', 'U15622203265', '15622203265', '', '15622203265', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 19:40:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622203265' LIMIT 1);
UPDATE users SET nick_name='15622203265', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622203265';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15900534511', 'U15900534511', '15900534511', '', '15900534511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 18:31:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15900534511' LIMIT 1);
UPDATE users SET nick_name='15900534511', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15900534511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800098249', 'U15800098249', '15800098249', '', '15800098249', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 15:51:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800098249' LIMIT 1);
UPDATE users SET nick_name='15800098249', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800098249';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642768791', 'U13642768791', 'hhh', '', '13642768791', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 15:23:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642768791' LIMIT 1);
UPDATE users SET nick_name='hhh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642768791';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826204591', 'U13826204591', 'hhhq', '', '13826204591', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 14:31:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826204591' LIMIT 1);
UPDATE users SET nick_name='hhhq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826204591';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13672734034', 'U13672734034', 'lxy', '', '13672734034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 83, '2025-04-13 14:23:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13672734034' LIMIT 1);
UPDATE users SET nick_name='lxy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 83) WHERE phone='13672734034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13258338335', 'U13258338335', '13258338335', '', '13258338335', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 14:23:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13258338335' LIMIT 1);
UPDATE users SET nick_name='13258338335', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13258338335';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202063428', 'U13202063428', 'SHING', '', '13202063428', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 14:06:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202063428' LIMIT 1);
UPDATE users SET nick_name='SHING', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202063428';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688663110', 'U18688663110', '18688', '', '18688663110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 13:58:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688663110' LIMIT 1);
UPDATE users SET nick_name='18688', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688663110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13428865613', 'U13428865613', 'Kristy💕番茄酱😘', '', '13428865613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 13:55:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13428865613' LIMIT 1);
UPDATE users SET nick_name='Kristy💕番茄酱😘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13428865613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925180797', 'U13925180797', '139哒', '', '13925180797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 13:41:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925180797' LIMIT 1);
UPDATE users SET nick_name='139哒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925180797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989268270', 'U15989268270', 'tang', '', '15989268270', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 2097, '2025-04-13 13:32:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989268270' LIMIT 1);
UPDATE users SET nick_name='tang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 2097) WHERE phone='15989268270';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813992249', 'U18813992249', '188哒', '', '18813992249', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 13:26:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813992249' LIMIT 1);
UPDATE users SET nick_name='188哒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18813992249';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929556297', 'U13929556297', '13929556297', '', '13929556297', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 13:14:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929556297' LIMIT 1);
UPDATE users SET nick_name='13929556297', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929556297';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922711584', 'U13922711584', '每天', '', '13922711584', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 11:50:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922711584' LIMIT 1);
UPDATE users SET nick_name='每天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922711584';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899974915', 'U15899974915', '三十', '', '15899974915', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 11:42:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899974915' LIMIT 1);
UPDATE users SET nick_name='三十', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15899974915';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15916503053', 'U15916503053', 'DZ~鹏', '', '15916503053', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 11:41:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15916503053' LIMIT 1);
UPDATE users SET nick_name='DZ~鹏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15916503053';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028082046', 'U18028082046', '王', '', '18028082046', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 11:35:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028082046' LIMIT 1);
UPDATE users SET nick_name='王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028082046';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13189017155', 'U13189017155', '感觉', '', '13189017155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 11:32:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13189017155' LIMIT 1);
UPDATE users SET nick_name='感觉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13189017155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18476436694', 'U18476436694', 'eita', '', '18476436694', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 11:29:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18476436694' LIMIT 1);
UPDATE users SET nick_name='eita', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18476436694';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13138682978', 'U13138682978', '猪', '', '13138682978', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 11:23:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13138682978' LIMIT 1);
UPDATE users SET nick_name='猪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13138682978';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17806539862', 'U17806539862', '17806539862', '', '17806539862', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 11:21:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17806539862' LIMIT 1);
UPDATE users SET nick_name='17806539862', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17806539862';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808880161', 'U13808880161', 'YAN', '', '13808880161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 11:08:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808880161' LIMIT 1);
UPDATE users SET nick_name='YAN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808880161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450287935', 'U13450287935', '13450287935', '', '13450287935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 11:03:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450287935' LIMIT 1);
UPDATE users SET nick_name='13450287935', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450287935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622130466', 'U15622130466', '小卫子', '', '15622130466', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 11:02:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622130466' LIMIT 1);
UPDATE users SET nick_name='小卫子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622130466';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609799758', 'U13609799758', 'QCQ', '', '13609799758', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-04-13 11:01:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609799758' LIMIT 1);
UPDATE users SET nick_name='QCQ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13609799758';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15976544935', 'U15976544935', '8', '', '15976544935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 10:53:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15976544935' LIMIT 1);
UPDATE users SET nick_name='8', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15976544935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920530374', 'U15920530374', 'JILL', '', '15920530374', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 10:34:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920530374' LIMIT 1);
UPDATE users SET nick_name='JILL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920530374';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13897164881', 'U13897164881', 'adrenaline', '', '13897164881', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 10:18:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13897164881' LIMIT 1);
UPDATE users SET nick_name='adrenaline', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13897164881';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18357374502', 'U18357374502', '18357374502', '', '18357374502', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-13 09:55:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18357374502' LIMIT 1);
UPDATE users SET nick_name='18357374502', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18357374502';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588806683', 'U18588806683', 'Yue', '', '18588806683', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 21:32:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588806683' LIMIT 1);
UPDATE users SET nick_name='Yue', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588806683';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609047730', 'U13609047730', '13609047730', '', '13609047730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 21:27:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609047730' LIMIT 1);
UPDATE users SET nick_name='13609047730', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609047730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814293480', 'U18814293480', '陈柳青', '', '18814293480', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 21:03:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814293480' LIMIT 1);
UPDATE users SET nick_name='陈柳青', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814293480';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729862337', 'U13729862337', '童心', '', '13729862337', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 19:41:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729862337' LIMIT 1);
UPDATE users SET nick_name='童心', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729862337';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539713273', 'U13539713273', '士心月月鸟', '', '13539713273', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 19:07:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539713273' LIMIT 1);
UPDATE users SET nick_name='士心月月鸟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539713273';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113307377', 'U15113307377', '7', '', '15113307377', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-12 19:06:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113307377' LIMIT 1);
UPDATE users SET nick_name='7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15113307377';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535575590', 'U13535575590', 'Tommy', '', '13535575590', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 18:43:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535575590' LIMIT 1);
UPDATE users SET nick_name='Tommy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535575590';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928912402', 'U13928912402', 'Tina', '', '13928912402', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2025-04-12 17:25:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928912402' LIMIT 1);
UPDATE users SET nick_name='Tina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13928912402';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620673121', 'U18620673121', '18620673121', '', '18620673121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 16:25:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620673121' LIMIT 1);
UPDATE users SET nick_name='18620673121', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620673121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13169346959', 'U13169346959', '13169346959', '', '13169346959', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 15:58:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13169346959' LIMIT 1);
UPDATE users SET nick_name='13169346959', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13169346959';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15192807980', 'U15192807980', 'dewy', '', '15192807980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 15:38:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15192807980' LIMIT 1);
UPDATE users SET nick_name='dewy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15192807980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620149279', 'U18620149279', '小炎', '', '18620149279', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 15:37:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620149279' LIMIT 1);
UPDATE users SET nick_name='小炎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620149279';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217174878', 'U15217174878', '不吃炸鸡🍖', '', '15217174878', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 14:57:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217174878' LIMIT 1);
UPDATE users SET nick_name='不吃炸鸡🍖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217174878';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920904104', 'U15920904104', 'LM&t- Cassie', '', '15920904104', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 14:25:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920904104' LIMIT 1);
UPDATE users SET nick_name='LM&t- Cassie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920904104';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17603915633', 'U17603915633', '17603915633', '', '17603915633', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 13:42:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17603915633' LIMIT 1);
UPDATE users SET nick_name='17603915633', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17603915633';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729808049', 'U13729808049', '熊', '', '13729808049', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 12:23:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729808049' LIMIT 1);
UPDATE users SET nick_name='熊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729808049';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13467639343', 'U13467639343', '恒', '', '13467639343', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 12:21:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13467639343' LIMIT 1);
UPDATE users SET nick_name='恒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13467639343';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16626717023', 'U16626717023', '子健', '', '16626717023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 11:37:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16626717023' LIMIT 1);
UPDATE users SET nick_name='子健', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16626717023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19195579490', 'U19195579490', '律谦', '', '19195579490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-12 11:12:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19195579490' LIMIT 1);
UPDATE users SET nick_name='律谦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='19195579490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17307199124', 'U17307199124', '..', '', '17307199124', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 11:08:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17307199124' LIMIT 1);
UPDATE users SET nick_name='..', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17307199124';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017553088', 'U15017553088', '抱抱卡莉', '', '15017553088', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-12 10:48:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017553088' LIMIT 1);
UPDATE users SET nick_name='抱抱卡莉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017553088';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914349560', 'U15914349560', '陆沐雨', '', '15914349560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-11 19:15:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914349560' LIMIT 1);
UPDATE users SET nick_name='陆沐雨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914349560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580562429', 'U13580562429', '13580562429', '', '13580562429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-11 18:18:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580562429' LIMIT 1);
UPDATE users SET nick_name='13580562429', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580562429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13076824223', 'U13076824223', 'Keely', '', '13076824223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-11 16:29:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13076824223' LIMIT 1);
UPDATE users SET nick_name='Keely', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13076824223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688339603', 'U18688339603', '轩', '', '18688339603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-11 16:12:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688339603' LIMIT 1);
UPDATE users SET nick_name='轩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688339603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15840489150', 'U15840489150', '燿Xylon', '', '15840489150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-04-11 15:34:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15840489150' LIMIT 1);
UPDATE users SET nick_name='燿Xylon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='15840489150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520148229', 'U18520148229', '18520148229', '', '18520148229', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-11 13:24:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520148229' LIMIT 1);
UPDATE users SET nick_name='18520148229', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520148229';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922119490', 'U13922119490', '毅少', '', '13922119490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-11 13:20:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922119490' LIMIT 1);
UPDATE users SET nick_name='毅少', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922119490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15219526060', 'U15219526060', '0', '', '15219526060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-11 13:07:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15219526060' LIMIT 1);
UPDATE users SET nick_name='0', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15219526060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664658561', 'U18664658561', '亚千', '', '18664658561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-11 12:30:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664658561' LIMIT 1);
UPDATE users SET nick_name='亚千', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664658561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017509253', 'U15017509253', 'BoBo', '', '15017509253', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-11 11:08:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017509253' LIMIT 1);
UPDATE users SET nick_name='BoBo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017509253';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922393165', 'U18922393165', '隐隐约约', '', '18922393165', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-04-11 10:20:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922393165' LIMIT 1);
UPDATE users SET nick_name='隐隐约约', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18922393165';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928320765', 'U13928320765', '锋', '', '13928320765', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-10 23:27:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928320765' LIMIT 1);
UPDATE users SET nick_name='锋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928320765';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122705767', 'U18122705767', '哈哈哈', '', '18122705767', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-10 22:58:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122705767' LIMIT 1);
UPDATE users SET nick_name='哈哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122705767';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13380719075', 'U13380719075', '行走的Bovine', '', '13380719075', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-10 22:47:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13380719075' LIMIT 1);
UPDATE users SET nick_name='行走的Bovine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13380719075';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13414902682', 'U13414902682', 'ELEVEN', '', '13414902682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-10 22:36:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13414902682' LIMIT 1);
UPDATE users SET nick_name='ELEVEN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13414902682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924192026', 'U13924192026', '13924192026', '', '13924192026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-10 20:00:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924192026' LIMIT 1);
UPDATE users SET nick_name='13924192026', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924192026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922206673', 'U13922206673', '致远PG-13', '', '13922206673', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-10 19:54:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922206673' LIMIT 1);
UPDATE users SET nick_name='致远PG-13', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13922206673';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688869118', 'U18688869118', '李多多', '', '18688869118', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 968, '2025-04-10 17:23:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688869118' LIMIT 1);
UPDATE users SET nick_name='李多多', balance=GREATEST(balance, 0.00), points=GREATEST(points, 968) WHERE phone='18688869118';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15855835919', 'U15855835919', '明亮的夜晚', '', '15855835919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-04-10 16:20:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15855835919' LIMIT 1);
UPDATE users SET nick_name='明亮的夜晚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15855835919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798186923', 'U13798186923', '-9home', '', '13798186923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-10 16:15:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798186923' LIMIT 1);
UPDATE users SET nick_name='-9home', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798186923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620209129', 'U18620209129', 'tt.', '', '18620209129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-10 15:01:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620209129' LIMIT 1);
UPDATE users SET nick_name='tt.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620209129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902212751', 'U13902212751', '周先生', '', '13902212751', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-10 14:25:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902212751' LIMIT 1);
UPDATE users SET nick_name='周先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902212751';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18719900810', 'U18719900810', '18719900810', '', '18719900810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-10 13:31:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18719900810' LIMIT 1);
UPDATE users SET nick_name='18719900810', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18719900810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580523147', 'U13580523147', '77', '', '13580523147', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-04-10 13:01:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580523147' LIMIT 1);
UPDATE users SET nick_name='77', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13580523147';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719353347', 'U13719353347', '华仔', '', '13719353347', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-04-09 19:23:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719353347' LIMIT 1);
UPDATE users SET nick_name='华仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719353347';
