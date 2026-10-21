SET NAMES utf8mb4;
-- 中大店用户导入 part 11 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18260138102', 'U18260138102', '秋千秋千', '', '18260138102', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 16:26:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18260138102' LIMIT 1);
UPDATE users SET nick_name='秋千秋千', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18260138102';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925157623', 'U18925157623', 'Kinkkrit', '', '18925157623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 16:25:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925157623' LIMIT 1);
UPDATE users SET nick_name='Kinkkrit', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925157623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602237745', 'U13602237745', 'Wenco.', '', '13602237745', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 16:19:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602237745' LIMIT 1);
UPDATE users SET nick_name='Wenco.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602237745';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17303851894', 'U17303851894', '17303851894', '', '17303851894', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 15:43:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17303851894' LIMIT 1);
UPDATE users SET nick_name='17303851894', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17303851894';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18867399177', 'U18867399177', 'Xⁿ', '', '18867399177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 15:36:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18867399177' LIMIT 1);
UPDATE users SET nick_name='Xⁿ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18867399177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18839192570', 'U18839192570', 'Cassie', '', '18839192570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 15:19:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18839192570' LIMIT 1);
UPDATE users SET nick_name='Cassie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18839192570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19124382394', 'U19124382394', 'bonnie', '', '19124382394', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 13:57:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19124382394' LIMIT 1);
UPDATE users SET nick_name='bonnie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19124382394';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18319444243', 'U18319444243', 'Otto.童 86', '', '18319444243', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 13:51:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18319444243' LIMIT 1);
UPDATE users SET nick_name='Otto.童 86', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18319444243';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218672327', 'U18218672327', '球记', '', '18218672327', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 13:44:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218672327' LIMIT 1);
UPDATE users SET nick_name='球记', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218672327';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392109631', 'U13392109631', 'tobeJoy🍑', '', '13392109631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 13:34:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392109631' LIMIT 1);
UPDATE users SET nick_name='tobeJoy🍑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392109631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535116717', 'U13535116717', '大家姐', '', '13535116717', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 13:22:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535116717' LIMIT 1);
UPDATE users SET nick_name='大家姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535116717';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915971074', 'U15915971074', 'HWH', '', '15915971074', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 13:18:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915971074' LIMIT 1);
UPDATE users SET nick_name='HWH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915971074';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16602085301', 'U16602085301', '21', '', '16602085301', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 12:53:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16602085301' LIMIT 1);
UPDATE users SET nick_name='21', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16602085301';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15802626040', 'U15802626040', '付', '', '15802626040', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 12:36:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15802626040' LIMIT 1);
UPDATE users SET nick_name='付', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15802626040';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570955657', 'U13570955657', 'Cecilia', '', '13570955657', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 12:25:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570955657' LIMIT 1);
UPDATE users SET nick_name='Cecilia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570955657';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725217886', 'U13725217886', '廖原（William）', '', '13725217886', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-06-07 12:14:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725217886' LIMIT 1);
UPDATE users SET nick_name='廖原（William）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13725217886';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711575299', 'U13711575299', 'Ruth', '', '13711575299', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 10:55:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711575299' LIMIT 1);
UPDATE users SET nick_name='Ruth', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711575299';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902293608', 'U13902293608', 'DU', '', '13902293608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 10:29:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902293608' LIMIT 1);
UPDATE users SET nick_name='DU', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902293608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13178867952', 'U13178867952', 'cjy', '', '13178867952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 66, '2025-06-07 09:18:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13178867952' LIMIT 1);
UPDATE users SET nick_name='cjy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 66) WHERE phone='13178867952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694282151', 'U13694282151', '尘楚', '', '13694282151', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 23:32:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694282151' LIMIT 1);
UPDATE users SET nick_name='尘楚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13694282151';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022182995', 'U18022182995', 'www', '', '18022182995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 22:35:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022182995' LIMIT 1);
UPDATE users SET nick_name='www', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022182995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15768076584', 'U15768076584', 'yuki', '', '15768076584', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 22:33:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15768076584' LIMIT 1);
UPDATE users SET nick_name='yuki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15768076584';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622882989', 'U13622882989', '仪', '', '13622882989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 22:03:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622882989' LIMIT 1);
UPDATE users SET nick_name='仪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622882989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535406921', 'U13535406921', '\'Yuwa', '', '13535406921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 21:55:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535406921' LIMIT 1);
UPDATE users SET nick_name='\'Yuwa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535406921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826058321', 'U18826058321', 'Charlin🐼', '', '18826058321', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 21:50:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826058321' LIMIT 1);
UPDATE users SET nick_name='Charlin🐼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826058321';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18336321705', 'U18336321705', '123', '', '18336321705', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 21:32:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18336321705' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18336321705';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914353869', 'U15914353869', '姚', '', '15914353869', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 21:24:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914353869' LIMIT 1);
UPDATE users SET nick_name='姚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914353869';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560349341', 'U13560349341', '李公子', '', '13560349341', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 20:41:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560349341' LIMIT 1);
UPDATE users SET nick_name='李公子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560349341';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17361566272', 'U17361566272', 'gc', '', '17361566272', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 20:21:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17361566272' LIMIT 1);
UPDATE users SET nick_name='gc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17361566272';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688389582', 'U18688389582', '111', '', '18688389582', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 20:13:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688389582' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688389582';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556008058', 'U13556008058', 'ada', '', '13556008058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 20:12:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556008058' LIMIT 1);
UPDATE users SET nick_name='ada', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556008058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626258292', 'U15626258292', 'AN KO', '', '15626258292', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 20:05:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626258292' LIMIT 1);
UPDATE users SET nick_name='AN KO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626258292';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620738201', 'U18620738201', '豌豆射手', '', '18620738201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 18:43:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620738201' LIMIT 1);
UPDATE users SET nick_name='豌豆射手', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620738201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751838544', 'U13751838544', 'Lx🌙', '', '13751838544', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 18:39:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751838544' LIMIT 1);
UPDATE users SET nick_name='Lx🌙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751838544';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13874992646', 'U13874992646', '龙猫', '', '13874992646', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 18:27:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13874992646' LIMIT 1);
UPDATE users SET nick_name='龙猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13874992646';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352881238', 'U13352881238', '云湖先生', '', '13352881238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 16:59:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352881238' LIMIT 1);
UPDATE users SET nick_name='云湖先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352881238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19851137060', 'U19851137060', '19851137060', '', '19851137060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 16:22:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19851137060' LIMIT 1);
UPDATE users SET nick_name='19851137060', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19851137060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18107597480', 'U18107597480', '鸽子', '', '18107597480', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 16:17:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18107597480' LIMIT 1);
UPDATE users SET nick_name='鸽子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18107597480';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18142657720', 'U18142657720', '秋粟栗', '', '18142657720', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 15:31:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18142657720' LIMIT 1);
UPDATE users SET nick_name='秋粟栗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18142657720';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13077329843', 'U13077329843', 'Helly M', '', '13077329843', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 15:21:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13077329843' LIMIT 1);
UPDATE users SET nick_name='Helly M', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13077329843';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928872932', 'U18928872932', 'VV🐈', '', '18928872932', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 14:56:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928872932' LIMIT 1);
UPDATE users SET nick_name='VV🐈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928872932';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13005791989', 'U13005791989', '。。', '', '13005791989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 14:20:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13005791989' LIMIT 1);
UPDATE users SET nick_name='。。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13005791989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15289691198', 'U15289691198', '橘络Gin\'🌷', '', '15289691198', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 14:17:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15289691198' LIMIT 1);
UPDATE users SET nick_name='橘络Gin\'🌷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15289691198';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19806480818', 'U19806480818', '19806480818', '', '19806480818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 13:38:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19806480818' LIMIT 1);
UPDATE users SET nick_name='19806480818', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19806480818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920181252', 'U15920181252', 'l', '', '15920181252', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 12:46:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920181252' LIMIT 1);
UPDATE users SET nick_name='l', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920181252';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17701919927', 'U17701919927', 'Delphine', '', '17701919927', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 12:39:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17701919927' LIMIT 1);
UPDATE users SET nick_name='Delphine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17701919927';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268100809', 'U13268100809', 'JANE', '', '13268100809', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 09:30:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268100809' LIMIT 1);
UPDATE users SET nick_name='JANE', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268100809';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919638603', 'U15919638603', 'Shiting Chen🦋', '', '15919638603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-06 08:16:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919638603' LIMIT 1);
UPDATE users SET nick_name='Shiting Chen🦋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919638603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028086668', 'U18028086668', '༺ Mandy ༻', '', '18028086668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 19:39:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028086668' LIMIT 1);
UPDATE users SET nick_name='༺ Mandy ༻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028086668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322051519', 'U17322051519', '夏', '', '17322051519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 17:32:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322051519' LIMIT 1);
UPDATE users SET nick_name='夏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322051519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218891226', 'U18218891226', '倩兒喜奇', '', '18218891226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 17:14:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218891226' LIMIT 1);
UPDATE users SET nick_name='倩兒喜奇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218891226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825054252', 'U18825054252', 'Ty', '', '18825054252', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 17:10:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825054252' LIMIT 1);
UPDATE users SET nick_name='Ty', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825054252';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600056034', 'U13600056034', '13600056034', '', '13600056034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 16:16:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600056034' LIMIT 1);
UPDATE users SET nick_name='13600056034', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600056034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18674755524', 'U18674755524', '炸', '', '18674755524', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 16:04:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18674755524' LIMIT 1);
UPDATE users SET nick_name='炸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18674755524';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580368602', 'U13580368602', '小星星', '', '13580368602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 16:03:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580368602' LIMIT 1);
UPDATE users SET nick_name='小星星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580368602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825194155', 'U18825194155', 'Carmen Lan', '', '18825194155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 15:43:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825194155' LIMIT 1);
UPDATE users SET nick_name='Carmen Lan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825194155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763314280', 'U13763314280', 'Kiki', '', '13763314280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 15:33:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763314280' LIMIT 1);
UPDATE users SET nick_name='Kiki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763314280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17310066243', 'U17310066243', '一位不愿意透露姓名的路人', '', '17310066243', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 15:28:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17310066243' LIMIT 1);
UPDATE users SET nick_name='一位不愿意透露姓名的路人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17310066243';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13652732219', 'U13652732219', 'C', '', '13652732219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 15:17:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13652732219' LIMIT 1);
UPDATE users SET nick_name='C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13652732219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664863913', 'U18664863913', 'Zcesan🍊', '', '18664863913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-06-05 15:15:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664863913' LIMIT 1);
UPDATE users SET nick_name='Zcesan🍊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18664863913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18575849919', 'U18575849919', 'mm', '', '18575849919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 15:09:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18575849919' LIMIT 1);
UPDATE users SET nick_name='mm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18575849919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18811688650', 'U18811688650', 'M_fqc', '', '18811688650', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 14:35:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18811688650' LIMIT 1);
UPDATE users SET nick_name='M_fqc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18811688650';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825051189', 'U18825051189', 'lMin', '', '18825051189', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 14:19:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825051189' LIMIT 1);
UPDATE users SET nick_name='lMin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825051189';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18300169808', 'U18300169808', '欧先生', '', '18300169808', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 14:10:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18300169808' LIMIT 1);
UPDATE users SET nick_name='欧先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18300169808';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15118969279', 'U15118969279', 'b', '', '15118969279', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 13:51:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15118969279' LIMIT 1);
UPDATE users SET nick_name='b', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15118969279';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688468626', 'U18688468626', 'Yip', '', '18688468626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-06-05 13:17:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688468626' LIMIT 1);
UPDATE users SET nick_name='Yip', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18688468626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922763061', 'U18922763061', '18922763061', '', '18922763061', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 13:13:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922763061' LIMIT 1);
UPDATE users SET nick_name='18922763061', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922763061';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918726455', 'U15918726455', '小星星', '', '15918726455', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 12:12:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918726455' LIMIT 1);
UPDATE users SET nick_name='小星星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918726455';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13502965065', 'U13502965065', '🍇', '', '13502965065', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 12:09:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13502965065' LIMIT 1);
UPDATE users SET nick_name='🍇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13502965065';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18929712250', 'U18929712250', 'ham', '', '18929712250', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 09:37:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18929712250' LIMIT 1);
UPDATE users SET nick_name='ham', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18929712250';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922227188', 'U13922227188', 'LEMONed', '', '13922227188', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-05 01:13:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922227188' LIMIT 1);
UPDATE users SET nick_name='LEMONed', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922227188';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18078868214', 'U18078868214', 'KS', '', '18078868214', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-04 21:24:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18078868214' LIMIT 1);
UPDATE users SET nick_name='KS', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18078868214';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580586593', 'U13580586593', 'gogo', '', '13580586593', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-04 20:41:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580586593' LIMIT 1);
UPDATE users SET nick_name='gogo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580586593';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688437412', 'U18688437412', 'Bobo', '', '18688437412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-04 19:46:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688437412' LIMIT 1);
UPDATE users SET nick_name='Bobo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688437412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13326492385', 'U13326492385', 'LuckyWSF🐥', '', '13326492385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-06-04 18:21:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13326492385' LIMIT 1);
UPDATE users SET nick_name='LuckyWSF🐥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13326492385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13542288031', 'U13542288031', '玥yueᥫᩣ', '', '13542288031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-04 17:21:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13542288031' LIMIT 1);
UPDATE users SET nick_name='玥yueᥫᩣ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13542288031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13413628749', 'U13413628749', '🤒咪哒', '', '13413628749', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-04 17:04:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13413628749' LIMIT 1);
UPDATE users SET nick_name='🤒咪哒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13413628749';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422109437', 'U13422109437', '13422109437', '', '13422109437', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-04 16:56:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422109437' LIMIT 1);
UPDATE users SET nick_name='13422109437', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422109437';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922220092', 'U13922220092', '毛毛', '', '13922220092', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-04 16:38:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922220092' LIMIT 1);
UPDATE users SET nick_name='毛毛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922220092';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924215923', 'U19924215923', '阿珊', '', '19924215923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-04 14:16:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924215923' LIMIT 1);
UPDATE users SET nick_name='阿珊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924215923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19878635750', 'U19878635750', '姜', '', '19878635750', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-04 10:50:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19878635750' LIMIT 1);
UPDATE users SET nick_name='姜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19878635750';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18898885806', 'U18898885806', '杜', '', '18898885806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-04 08:50:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18898885806' LIMIT 1);
UPDATE users SET nick_name='杜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18898885806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692400901', 'U15692400901', 'Janet', '', '15692400901', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 20:24:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692400901' LIMIT 1);
UPDATE users SET nick_name='Janet', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692400901';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989209179', 'U15989209179', '倩婷', '', '15989209179', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 19:30:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989209179' LIMIT 1);
UPDATE users SET nick_name='倩婷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989209179';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828184264', 'U13828184264', 'Yoki 快乐版本', '', '13828184264', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 19:25:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828184264' LIMIT 1);
UPDATE users SET nick_name='Yoki 快乐版本', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828184264';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565130318', 'U18565130318', '18565130318', '', '18565130318', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 19:05:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565130318' LIMIT 1);
UPDATE users SET nick_name='18565130318', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565130318';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560385046', 'U13560385046', '早点睡', '', '13560385046', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 17:16:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560385046' LIMIT 1);
UPDATE users SET nick_name='早点睡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560385046';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265910564', 'U13265910564', '美式别来', '', '13265910564', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 16:08:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265910564' LIMIT 1);
UPDATE users SET nick_name='美式别来', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265910564';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316153419', 'U13316153419', '13316153419', '', '13316153419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 14:53:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316153419' LIMIT 1);
UPDATE users SET nick_name='13316153419', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316153419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610335542', 'U13610335542', '小小欣', '', '13610335542', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-06-03 14:43:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610335542' LIMIT 1);
UPDATE users SET nick_name='小小欣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13610335542';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18638205893', 'U18638205893', 'Teresa', '', '18638205893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 14:39:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18638205893' LIMIT 1);
UPDATE users SET nick_name='Teresa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18638205893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751847694', 'U13751847694', '🍊橙一', '', '13751847694', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 14:30:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751847694' LIMIT 1);
UPDATE users SET nick_name='🍊橙一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751847694';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520322533', 'U18520322533', 'moor', '', '18520322533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 14:22:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520322533' LIMIT 1);
UPDATE users SET nick_name='moor', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520322533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15151537228', 'U15151537228', '安总', '', '15151537228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 14:18:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15151537228' LIMIT 1);
UPDATE users SET nick_name='安总', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15151537228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13646914066', 'U13646914066', '🇨🇳Abby', '', '13646914066', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 14:15:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13646914066' LIMIT 1);
UPDATE users SET nick_name='🇨🇳Abby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13646914066';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143530815', 'U13143530815', '13143530815', '', '13143530815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 13:56:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143530815' LIMIT 1);
UPDATE users SET nick_name='13143530815', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143530815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622289454', 'U13622289454', '13622289454', '', '13622289454', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 13:46:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622289454' LIMIT 1);
UPDATE users SET nick_name='13622289454', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622289454';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724036358', 'U13724036358', '朝', '', '13724036358', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 13:35:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724036358' LIMIT 1);
UPDATE users SET nick_name='朝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724036358';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560488886', 'U13560488886', '百勝-Lyw', '', '13560488886', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 13:34:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560488886' LIMIT 1);
UPDATE users SET nick_name='百勝-Lyw', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560488886';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13414128834', 'U13414128834', '李生', '', '13414128834', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 12:52:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13414128834' LIMIT 1);
UPDATE users SET nick_name='李生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13414128834';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570393939', 'U13570393939', 'Sunnie林🌸新妮Lam', '', '13570393939', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-03 10:28:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570393939' LIMIT 1);
UPDATE users SET nick_name='Sunnie林🌸新妮Lam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570393939';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13360034588', 'U13360034588', 'Jeff', '', '13360034588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 134, '2025-06-03 05:08:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13360034588' LIMIT 1);
UPDATE users SET nick_name='Jeff', balance=GREATEST(balance, 0.00), points=GREATEST(points, 134) WHERE phone='13360034588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570494944', 'U13570494944', '*~miss1ee .', '', '13570494944', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 19:52:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570494944' LIMIT 1);
UPDATE users SET nick_name='*~miss1ee .', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570494944';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660061355', 'U13660061355', '神父', '', '13660061355', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 19:21:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660061355' LIMIT 1);
UPDATE users SET nick_name='神父', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660061355';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13192390112', 'U13192390112', 'o o', '', '13192390112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 18:48:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13192390112' LIMIT 1);
UPDATE users SET nick_name='o o', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13192390112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19125028285', 'U19125028285', '19125028285', '', '19125028285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 17:25:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19125028285' LIMIT 1);
UPDATE users SET nick_name='19125028285', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19125028285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920801538', 'U15920801538', 'chekkikikikiki🐱', '', '15920801538', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 16:55:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920801538' LIMIT 1);
UPDATE users SET nick_name='chekkikikikiki🐱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920801538';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129684968', 'U13129684968', '天使', '', '13129684968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 16:03:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129684968' LIMIT 1);
UPDATE users SET nick_name='天使', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13129684968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719405620', 'U13719405620', '曾曾🙈', '', '13719405620', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 16:02:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719405620' LIMIT 1);
UPDATE users SET nick_name='曾曾🙈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719405620';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602829427', 'U13602829427', '星', '', '13602829427', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 16:01:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602829427' LIMIT 1);
UPDATE users SET nick_name='星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602829427';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19066426602', 'U19066426602', 'A梦', '', '19066426602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 15:49:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19066426602' LIMIT 1);
UPDATE users SET nick_name='A梦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19066426602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18883860342', 'U18883860342', 'Dean', '', '18883860342', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 15:13:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18883860342' LIMIT 1);
UPDATE users SET nick_name='Dean', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18883860342';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750481341', 'U13750481341', 'i 逗到你', '', '13750481341', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 15:09:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750481341' LIMIT 1);
UPDATE users SET nick_name='i 逗到你', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13750481341';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318611737', 'U13318611737', 'Kiek', '', '13318611737', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 14:05:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318611737' LIMIT 1);
UPDATE users SET nick_name='Kiek', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318611737';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19324677454', 'U19324677454', 'Tina', '', '19324677454', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 13:44:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19324677454' LIMIT 1);
UPDATE users SET nick_name='Tina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19324677454';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922446734', 'U18922446734', '周ee', '', '18922446734', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 13:18:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922446734' LIMIT 1);
UPDATE users SET nick_name='周ee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922446734';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18961249980', 'U18961249980', 'Hedgehog', '', '18961249980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 12:54:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18961249980' LIMIT 1);
UPDATE users SET nick_name='Hedgehog', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18961249980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626609020', 'U15626609020', 'Rudy', '', '15626609020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 12:51:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626609020' LIMIT 1);
UPDATE users SET nick_name='Rudy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626609020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15315213937', 'U15315213937', '15315213937', '', '15315213937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 12:49:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15315213937' LIMIT 1);
UPDATE users SET nick_name='15315213937', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15315213937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922238933', 'U13922238933', 'niki', '', '13922238933', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 12:15:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922238933' LIMIT 1);
UPDATE users SET nick_name='niki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922238933';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13657098744', 'U13657098744', '哈哈', '', '13657098744', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 10:55:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13657098744' LIMIT 1);
UPDATE users SET nick_name='哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13657098744';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19953139015', 'U19953139015', '水水水💦💦💦', '', '19953139015', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 10:05:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19953139015' LIMIT 1);
UPDATE users SET nick_name='水水水💦💦💦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19953139015';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13360017905', 'U13360017905', '诗碧曼Ivy', '', '13360017905', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 09:50:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13360017905' LIMIT 1);
UPDATE users SET nick_name='诗碧曼Ivy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13360017905';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15816054655', 'U15816054655', '十一', '', '15816054655', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-02 09:21:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15816054655' LIMIT 1);
UPDATE users SET nick_name='十一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15816054655';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802444519', 'U13802444519', 'Johnnymarr', '', '13802444519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 23:26:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802444519' LIMIT 1);
UPDATE users SET nick_name='Johnnymarr', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802444519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13189785203', 'U13189785203', '小波妞', '', '13189785203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 23:26:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13189785203' LIMIT 1);
UPDATE users SET nick_name='小波妞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13189785203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435603720', 'U13435603720', '鹿仔', '', '13435603720', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-06-01 23:25:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435603720' LIMIT 1);
UPDATE users SET nick_name='鹿仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='13435603720';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560392582', 'U13560392582', 'Sandy', '', '13560392582', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 21:21:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560392582' LIMIT 1);
UPDATE users SET nick_name='Sandy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560392582';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122138545', 'U18122138545', '666', '', '18122138545', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 20:40:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122138545' LIMIT 1);
UPDATE users SET nick_name='666', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122138545';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928773859', 'U18928773859', '真多', '', '18928773859', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 20:22:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928773859' LIMIT 1);
UPDATE users SET nick_name='真多', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928773859';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975320817', 'U15975320817', '王洋洋', '', '15975320817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 19:06:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975320817' LIMIT 1);
UPDATE users SET nick_name='王洋洋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975320817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560199952', 'U13560199952', 'ka', '', '13560199952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 18:35:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560199952' LIMIT 1);
UPDATE users SET nick_name='ka', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560199952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520221876', 'U18520221876', '18520221876', '', '18520221876', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 17:06:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520221876' LIMIT 1);
UPDATE users SET nick_name='18520221876', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520221876';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975594190', 'U15975594190', '杜', '', '15975594190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 16:08:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975594190' LIMIT 1);
UPDATE users SET nick_name='杜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975594190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19123096619', 'U19123096619', 'Maoy1💜', '', '19123096619', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 15:34:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19123096619' LIMIT 1);
UPDATE users SET nick_name='Maoy1💜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19123096619';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826016888', 'U13826016888', '🐳 Lsssssssy', '', '13826016888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 15:29:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826016888' LIMIT 1);
UPDATE users SET nick_name='🐳 Lsssssssy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826016888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802403041', 'U13802403041', '弈旋', '', '13802403041', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 8, '2025-06-01 15:01:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802403041' LIMIT 1);
UPDATE users SET nick_name='弈旋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 8) WHERE phone='13802403041';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521197367', 'U15521197367', 'Sy. 🍉', '', '15521197367', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 14:58:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521197367' LIMIT 1);
UPDATE users SET nick_name='Sy. 🍉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521197367';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18727374637', 'U18727374637', '雪山', '', '18727374637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 13:58:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18727374637' LIMIT 1);
UPDATE users SET nick_name='雪山', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18727374637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416113190', 'U13416113190', 'Cha_Cha', '', '13416113190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 13:55:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416113190' LIMIT 1);
UPDATE users SET nick_name='Cha_Cha', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416113190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922120273', 'U13922120273', '？', '', '13922120273', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 13:47:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922120273' LIMIT 1);
UPDATE users SET nick_name='？', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922120273';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922120265', 'U13922120265', 'Shawn T', '', '13922120265', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 13:22:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922120265' LIMIT 1);
UPDATE users SET nick_name='Shawn T', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922120265';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265158489', 'U13265158489', '旺仔小馒头', '', '13265158489', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 13:08:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265158489' LIMIT 1);
UPDATE users SET nick_name='旺仔小馒头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265158489';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360423133', 'U15360423133', '5', '', '15360423133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 12:12:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360423133' LIMIT 1);
UPDATE users SET nick_name='5', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360423133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15170526369', 'U15170526369', 'Bob', '', '15170526369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 12:04:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15170526369' LIMIT 1);
UPDATE users SET nick_name='Bob', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15170526369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246458666', 'U13246458666', 'Sumi', '', '13246458666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 12:01:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246458666' LIMIT 1);
UPDATE users SET nick_name='Sumi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246458666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818156511', 'U15818156511', '夏', '', '15818156511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 11:39:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818156511' LIMIT 1);
UPDATE users SET nick_name='夏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818156511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710710032', 'U13710710032', '鐘', '', '13710710032', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 10:55:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710710032' LIMIT 1);
UPDATE users SET nick_name='鐘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710710032';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19876453246', 'U19876453246', '张济凡', '', '19876453246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-01 01:49:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19876453246' LIMIT 1);
UPDATE users SET nick_name='张济凡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19876453246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913142706', 'U15913142706', '杜', '', '15913142706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 21:48:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913142706' LIMIT 1);
UPDATE users SET nick_name='杜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913142706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450387627', 'U13450387627', 'joz', '', '13450387627', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 21:05:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450387627' LIMIT 1);
UPDATE users SET nick_name='joz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450387627';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529173162', 'U18529173162', '18529173162', '', '18529173162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 20:47:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529173162' LIMIT 1);
UPDATE users SET nick_name='18529173162', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529173162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17576011123', 'U17576011123', '花卷', '', '17576011123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 20:12:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17576011123' LIMIT 1);
UPDATE users SET nick_name='花卷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17576011123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719061390', 'U13719061390', '宋宋ber🐰', '', '13719061390', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 19:23:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719061390' LIMIT 1);
UPDATE users SET nick_name='宋宋ber🐰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719061390';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18898620794', 'U18898620794', '18898620794', '', '18898620794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 19:13:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18898620794' LIMIT 1);
UPDATE users SET nick_name='18898620794', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18898620794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902294783', 'U13902294783', '13902294783', '', '13902294783', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 19:08:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902294783' LIMIT 1);
UPDATE users SET nick_name='13902294783', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902294783';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719221104', 'U13719221104', '杨', '', '13719221104', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 18:42:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719221104' LIMIT 1);
UPDATE users SET nick_name='杨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719221104';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928771890', 'U18928771890', '陳娟兒', '', '18928771890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 18:21:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928771890' LIMIT 1);
UPDATE users SET nick_name='陳娟兒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928771890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826231148', 'U13826231148', 'Yomanbe', '', '13826231148', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 18:14:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826231148' LIMIT 1);
UPDATE users SET nick_name='Yomanbe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826231148';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17602076161', 'U17602076161', 'Chen', '', '17602076161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 18:00:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17602076161' LIMIT 1);
UPDATE users SET nick_name='Chen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17602076161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13104887318', 'U13104887318', '13104887318', '', '13104887318', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 16:54:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13104887318' LIMIT 1);
UPDATE users SET nick_name='13104887318', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13104887318';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533956281', 'U13533956281', '13533956281', '', '13533956281', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 16:50:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533956281' LIMIT 1);
UPDATE users SET nick_name='13533956281', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533956281';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268332629', 'U13268332629', '13268332629', '', '13268332629', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 15:44:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268332629' LIMIT 1);
UPDATE users SET nick_name='13268332629', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268332629';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820235553', 'U15820235553', '15820235553', '', '15820235553', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 15:35:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820235553' LIMIT 1);
UPDATE users SET nick_name='15820235553', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820235553';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18524152190', 'U18524152190', 'folykiki', '', '18524152190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 15:08:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18524152190' LIMIT 1);
UPDATE users SET nick_name='folykiki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18524152190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302205324', 'U13302205324', 'SEΦEN.Z', '', '13302205324', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 15:04:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302205324' LIMIT 1);
UPDATE users SET nick_name='SEΦEN.Z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302205324';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719259926', 'U13719259926', '13719259926', '', '13719259926', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 14:45:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719259926' LIMIT 1);
UPDATE users SET nick_name='13719259926', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719259926';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560413949', 'U13560413949', '玉', '', '13560413949', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 14:38:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560413949' LIMIT 1);
UPDATE users SET nick_name='玉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560413949';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538768178', 'U13538768178', '顺', '', '13538768178', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 14:38:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538768178' LIMIT 1);
UPDATE users SET nick_name='顺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538768178';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580400595', 'U13580400595', '茵', '', '13580400595', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 14:30:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580400595' LIMIT 1);
UPDATE users SET nick_name='茵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580400595';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620158021', 'U17620158021', '壹壹', '', '17620158021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 14:11:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620158021' LIMIT 1);
UPDATE users SET nick_name='壹壹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620158021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826059507', 'U13826059507', '乐字里边有个小', '', '13826059507', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 100, '2025-05-31 12:40:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826059507' LIMIT 1);
UPDATE users SET nick_name='乐字里边有个小', balance=GREATEST(balance, 0.00), points=GREATEST(points, 100) WHERE phone='13826059507';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312401161', 'U18312401161', 'laoshi', '', '18312401161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 11:22:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312401161' LIMIT 1);
UPDATE users SET nick_name='laoshi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312401161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500032269', 'U13500032269', '璇子', '', '13500032269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 10:56:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500032269' LIMIT 1);
UPDATE users SET nick_name='璇子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500032269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533822522', 'U13533822522', '· 小沛麻麻·ᰔᩚ', '', '13533822522', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 10:17:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533822522' LIMIT 1);
UPDATE users SET nick_name='· 小沛麻麻·ᰔᩚ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533822522';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250332794', 'U13250332794', 'WaNer△', '', '13250332794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 10:12:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250332794' LIMIT 1);
UPDATE users SET nick_name='WaNer△', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250332794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14739672120', 'U14739672120', 'lonelyfish', '', '14739672120', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 00:31:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14739672120' LIMIT 1);
UPDATE users SET nick_name='lonelyfish', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14739672120';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320740031', 'U18320740031', '博爱', '', '18320740031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-31 00:01:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320740031' LIMIT 1);
UPDATE users SET nick_name='博爱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320740031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817385153', 'U17817385153', '华', '', '17817385153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 21:58:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817385153' LIMIT 1);
UPDATE users SET nick_name='华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817385153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028638228', 'U18028638228', '18028638228', '', '18028638228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 20:11:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028638228' LIMIT 1);
UPDATE users SET nick_name='18028638228', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028638228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18777317535', 'U18777317535', 'kk', '', '18777317535', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 19:50:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18777317535' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18777317535';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533717735', 'U13533717735', 'long', '', '13533717735', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 17:35:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533717735' LIMIT 1);
UPDATE users SET nick_name='long', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533717735';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727244646', 'U13727244646', 'X0X', '', '13727244646', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 16:27:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727244646' LIMIT 1);
UPDATE users SET nick_name='X0X', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13727244646';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760475115', 'U13760475115', '爱打球', '', '13760475115', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 15:42:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760475115' LIMIT 1);
UPDATE users SET nick_name='爱打球', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760475115';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15162162887', 'U15162162887', '15162162887', '', '15162162887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 13:23:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15162162887' LIMIT 1);
UPDATE users SET nick_name='15162162887', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15162162887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632366320', 'U13632366320', '林瑞燕', '', '13632366320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 13:11:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632366320' LIMIT 1);
UPDATE users SET nick_name='林瑞燕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632366320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819240921', 'U18819240921', 'k', '', '18819240921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 13:10:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819240921' LIMIT 1);
UPDATE users SET nick_name='k', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819240921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13189184670', 'U13189184670', 'S.Suen', '', '13189184670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 12:14:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13189184670' LIMIT 1);
UPDATE users SET nick_name='S.Suen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13189184670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711191933', 'U13711191933', '小白', '', '13711191933', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 05:34:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711191933' LIMIT 1);
UPDATE users SET nick_name='小白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711191933';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570128837', 'U13570128837', 'Tonny', '', '13570128837', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-30 00:41:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570128837' LIMIT 1);
UPDATE users SET nick_name='Tonny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570128837';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631408977', 'U13631408977', '开开呀', '', '13631408977', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 138, '2025-05-29 23:23:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631408977' LIMIT 1);
UPDATE users SET nick_name='开开呀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 138) WHERE phone='13631408977';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902086320', 'U15902086320', '大花', '', '15902086320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 23:17:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902086320' LIMIT 1);
UPDATE users SET nick_name='大花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902086320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15162162700', 'U15162162700', '有风自南', '', '15162162700', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 23:07:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15162162700' LIMIT 1);
UPDATE users SET nick_name='有风自南', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15162162700';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13786192253', 'U13786192253', '13786192253', '', '13786192253', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 21:03:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13786192253' LIMIT 1);
UPDATE users SET nick_name='13786192253', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13786192253';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902404200', 'U13902404200', '天', '', '13902404200', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 21:02:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902404200' LIMIT 1);
UPDATE users SET nick_name='天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902404200';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688450274', 'U18688450274', 'Sil', '', '18688450274', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 20:39:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688450274' LIMIT 1);
UPDATE users SET nick_name='Sil', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688450274';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17721508725', 'U17721508725', '17721508725', '', '17721508725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 18:27:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17721508725' LIMIT 1);
UPDATE users SET nick_name='17721508725', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17721508725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17710825743', 'U17710825743', '17710825743', '', '17710825743', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 18:11:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17710825743' LIMIT 1);
UPDATE users SET nick_name='17710825743', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17710825743';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539439420', 'U13539439420', 'lala', '', '13539439420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 17:52:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539439420' LIMIT 1);
UPDATE users SET nick_name='lala', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539439420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928978420', 'U18928978420', '星辰漫天', '', '18928978420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 17:27:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928978420' LIMIT 1);
UPDATE users SET nick_name='星辰漫天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928978420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15088133560', 'U15088133560', 'HUANGKK', '', '15088133560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 17:11:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15088133560' LIMIT 1);
UPDATE users SET nick_name='HUANGKK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15088133560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666277050', 'U18666277050', '林三岁', '', '18666277050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 17:08:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666277050' LIMIT 1);
UPDATE users SET nick_name='林三岁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666277050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580311436', 'U13580311436', '13580311436', '', '13580311436', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 16:54:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580311436' LIMIT 1);
UPDATE users SET nick_name='13580311436', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580311436';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13016471101', 'U13016471101', '13016471101', '', '13016471101', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 16:50:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13016471101' LIMIT 1);
UPDATE users SET nick_name='13016471101', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13016471101';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711267162', 'U13711267162', '三酱', '', '13711267162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2025-05-29 16:02:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711267162' LIMIT 1);
UPDATE users SET nick_name='三酱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='13711267162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15089140433', 'U15089140433', '嘉嘉', '', '15089140433', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 15:13:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15089140433' LIMIT 1);
UPDATE users SET nick_name='嘉嘉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15089140433';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028648177', 'U18028648177', '10', '', '18028648177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-29 11:15:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028648177' LIMIT 1);
UPDATE users SET nick_name='10', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028648177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13048027237', 'U13048027237', '一碗海鲜面', '', '13048027237', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-28 19:55:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13048027237' LIMIT 1);
UPDATE users SET nick_name='一碗海鲜面', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13048027237';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113978434', 'U13113978434', '我', '', '13113978434', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-28 19:37:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113978434' LIMIT 1);
UPDATE users SET nick_name='我', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13113978434';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18672811731', 'U18672811731', '雨落三青', '', '18672811731', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-28 19:22:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18672811731' LIMIT 1);
UPDATE users SET nick_name='雨落三青', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18672811731';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660866759', 'U13660866759', '华', '', '13660866759', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-28 17:15:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660866759' LIMIT 1);
UPDATE users SET nick_name='华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660866759';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825059595', 'U13825059595', '夜寒苏', '', '13825059595', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-28 17:13:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825059595' LIMIT 1);
UPDATE users SET nick_name='夜寒苏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825059595';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999943670', 'U15999943670', 'K', '', '15999943670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-28 16:47:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999943670' LIMIT 1);
UPDATE users SET nick_name='K', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999943670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660457521', 'U13660457521', '林', '', '13660457521', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-28 16:14:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660457521' LIMIT 1);
UPDATE users SET nick_name='林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660457521';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826483993', 'U13826483993', 'sue_koo', '', '13826483993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 72, '2025-05-28 15:31:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826483993' LIMIT 1);
UPDATE users SET nick_name='sue_koo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 72) WHERE phone='13826483993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18939666614', 'U18939666614', 'mymy', '', '18939666614', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-28 14:01:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18939666614' LIMIT 1);
UPDATE users SET nick_name='mymy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18939666614';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13360928945', 'U13360928945', '鸡翅', '', '13360928945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-28 14:00:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13360928945' LIMIT 1);
UPDATE users SET nick_name='鸡翅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13360928945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922145699', 'U13922145699', '13922145699', '', '13922145699', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-28 13:43:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922145699' LIMIT 1);
UPDATE users SET nick_name='13922145699', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922145699';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578749201', 'U18578749201', '🧃唔得闲饮茶', '', '18578749201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-28 00:09:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578749201' LIMIT 1);
UPDATE users SET nick_name='🧃唔得闲饮茶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578749201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632463323', 'U13632463323', 'Silas', '', '13632463323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 19:29:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632463323' LIMIT 1);
UPDATE users SET nick_name='Silas', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632463323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15652441069', 'U15652441069', 'tennis', '', '15652441069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 18:51:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15652441069' LIMIT 1);
UPDATE users SET nick_name='tennis', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15652441069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13262845768', 'U13262845768', 'xx', '', '13262845768', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-05-27 18:47:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13262845768' LIMIT 1);
UPDATE users SET nick_name='xx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13262845768';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13990048873', 'U13990048873', 'Laughing', '', '13990048873', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 17:30:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13990048873' LIMIT 1);
UPDATE users SET nick_name='Laughing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13990048873';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17688862007', 'U17688862007', '幸德瑞娜', '', '17688862007', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 17:00:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17688862007' LIMIT 1);
UPDATE users SET nick_name='幸德瑞娜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17688862007';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826208900', 'U13826208900', '咕咕', '', '13826208900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 16:45:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826208900' LIMIT 1);
UPDATE users SET nick_name='咕咕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826208900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899957407', 'U15899957407', 'Xu 志杰(润丰纺织)', '', '15899957407', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 16:22:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899957407' LIMIT 1);
UPDATE users SET nick_name='Xu 志杰(润丰纺织)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15899957407';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533397750', 'U13533397750', '李', '', '13533397750', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 15:48:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533397750' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533397750';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15877162963', 'U15877162963', '一人一口', '', '15877162963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 15:46:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15877162963' LIMIT 1);
UPDATE users SET nick_name='一人一口', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15877162963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13286573865', 'U13286573865', 'ohkaper', '', '13286573865', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 14:01:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13286573865' LIMIT 1);
UPDATE users SET nick_name='ohkaper', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13286573865';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650941541', 'U13650941541', '13650941541', '', '13650941541', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 13:04:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650941541' LIMIT 1);
UPDATE users SET nick_name='13650941541', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13650941541';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818833702', 'U15818833702', '15818833702', '', '15818833702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 13:03:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818833702' LIMIT 1);
UPDATE users SET nick_name='15818833702', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818833702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512786839', 'U13512786839', '小锦鲤的李-', '', '13512786839', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 12:50:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512786839' LIMIT 1);
UPDATE users SET nick_name='小锦鲤的李-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512786839';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18689456985', 'U18689456985', 'L.', '', '18689456985', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 12:22:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18689456985' LIMIT 1);
UPDATE users SET nick_name='L.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18689456985';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622706956', 'U15622706956', 'Ericahhhhh🦁', '', '15622706956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 11:01:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622706956' LIMIT 1);
UPDATE users SET nick_name='Ericahhhhh🦁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622706956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022488081', 'U18022488081', '💟Panny♌️', '', '18022488081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 01:15:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022488081' LIMIT 1);
UPDATE users SET nick_name='💟Panny♌️', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022488081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539658511', 'U13539658511', 'Soft feather', '', '13539658511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-27 00:06:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539658511' LIMIT 1);
UPDATE users SET nick_name='Soft feather', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539658511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19298746096', 'U19298746096', '泰尼斯', '', '19298746096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-26 23:59:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19298746096' LIMIT 1);
UPDATE users SET nick_name='泰尼斯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19298746096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818130530', 'U15818130530', '陈Ss.', '', '15818130530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-26 21:33:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818130530' LIMIT 1);
UPDATE users SET nick_name='陈Ss.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818130530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544382507', 'U13544382507', '林生', '', '13544382507', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-26 19:48:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544382507' LIMIT 1);
UPDATE users SET nick_name='林生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544382507';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527774975', 'U13527774975', 'Elena', '', '13527774975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-26 18:19:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527774975' LIMIT 1);
UPDATE users SET nick_name='Elena', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527774975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15337480180', 'U15337480180', '15337480180', '', '15337480180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-26 17:02:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15337480180' LIMIT 1);
UPDATE users SET nick_name='15337480180', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15337480180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13647662995', 'U13647662995', '13647662995', '', '13647662995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-26 14:13:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13647662995' LIMIT 1);
UPDATE users SET nick_name='13647662995', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13647662995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18898545899', 'U18898545899', '随机扯蛋', '', '18898545899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-05-26 13:28:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18898545899' LIMIT 1);
UPDATE users SET nick_name='随机扯蛋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='18898545899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13189163919', 'U13189163919', '橘里橙外', '', '13189163919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-26 13:20:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13189163919' LIMIT 1);
UPDATE users SET nick_name='橘里橙外', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13189163919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650940101', 'U13650940101', 'Kaka', '', '13650940101', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-26 13:19:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650940101' LIMIT 1);
UPDATE users SET nick_name='Kaka', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13650940101';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802087603', 'U18802087603', 'Qia', '', '18802087603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-26 13:13:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802087603' LIMIT 1);
UPDATE users SET nick_name='Qia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802087603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570200110', 'U13570200110', '123', '', '13570200110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-26 12:16:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570200110' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570200110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316667864', 'U18316667864', '翻工唔好蛇黄女士', '', '18316667864', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 388, '2025-05-26 10:45:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316667864' LIMIT 1);
UPDATE users SET nick_name='翻工唔好蛇黄女士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 388) WHERE phone='18316667864';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13501530886', 'U13501530886', '🥮Hugo Luk👪', '', '13501530886', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 176, '2025-05-26 10:38:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13501530886' LIMIT 1);
UPDATE users SET nick_name='🥮Hugo Luk👪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 176) WHERE phone='13501530886';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028611893', 'U18028611893', 'abc', '', '18028611893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-26 10:37:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028611893' LIMIT 1);
UPDATE users SET nick_name='abc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028611893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202065908', 'U15202065908', '他们看东', '', '15202065908', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 22:25:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202065908' LIMIT 1);
UPDATE users SET nick_name='他们看东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15202065908';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18945796676', 'U18945796676', '18945796676', '', '18945796676', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 19:49:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18945796676' LIMIT 1);
UPDATE users SET nick_name='18945796676', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18945796676';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920520374', 'U15920520374', '菠萝', '', '15920520374', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 19:12:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920520374' LIMIT 1);
UPDATE users SET nick_name='菠萝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920520374';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15138929268', 'U15138929268', 'Kawsss-', '', '15138929268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 18:53:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15138929268' LIMIT 1);
UPDATE users SET nick_name='Kawsss-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15138929268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665693236', 'U18665693236', 'martina', '', '18665693236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 18:48:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665693236' LIMIT 1);
UPDATE users SET nick_name='martina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665693236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826016251', 'U13826016251', '香香', '', '13826016251', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 18:38:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826016251' LIMIT 1);
UPDATE users SET nick_name='香香', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826016251';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825156926', 'U18825156926', '聚宝彭🧧', '', '18825156926', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 18:03:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825156926' LIMIT 1);
UPDATE users SET nick_name='聚宝彭🧧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825156926';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18617375281', 'U18617375281', 'fiona', '', '18617375281', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 16:36:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18617375281' LIMIT 1);
UPDATE users SET nick_name='fiona', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18617375281';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13672480958', 'U13672480958', '🌴🌴木木木🌴🌴', '', '13672480958', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 16:02:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13672480958' LIMIT 1);
UPDATE users SET nick_name='🌴🌴木木木🌴🌴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13672480958';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692412510', 'U15692412510', '尼玛', '', '15692412510', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 15:06:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692412510' LIMIT 1);
UPDATE users SET nick_name='尼玛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692412510';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15083254952', 'U15083254952', '15083254952', '', '15083254952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 14:45:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15083254952' LIMIT 1);
UPDATE users SET nick_name='15083254952', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15083254952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533668496', 'U13533668496', 'Dennis', '', '13533668496', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 13:30:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533668496' LIMIT 1);
UPDATE users SET nick_name='Dennis', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533668496';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018406297', 'U15018406297', 'gaga', '', '15018406297', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-25 13:02:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018406297' LIMIT 1);
UPDATE users SET nick_name='gaga', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15018406297';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434371203', 'U13434371203', '小耶', '', '13434371203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 12:56:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434371203' LIMIT 1);
UPDATE users SET nick_name='小耶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13434371203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521022058', 'U15521022058', 'Joanne972', '', '15521022058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 12:45:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521022058' LIMIT 1);
UPDATE users SET nick_name='Joanne972', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521022058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18630409265', 'U18630409265', '老醒.', '', '18630409265', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 12:17:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18630409265' LIMIT 1);
UPDATE users SET nick_name='老醒.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18630409265';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520266604', 'U18520266604', '🌻lss ✌', '', '18520266604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 11:40:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520266604' LIMIT 1);
UPDATE users SET nick_name='🌻lss ✌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520266604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15575924990', 'U15575924990', '曈🔆', '', '15575924990', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 10:41:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15575924990' LIMIT 1);
UPDATE users SET nick_name='曈🔆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15575924990';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15084720706', 'U15084720706', '逸升高', '', '15084720706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 10:36:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15084720706' LIMIT 1);
UPDATE users SET nick_name='逸升高', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15084720706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999956920', 'U15999956920', '李鲸鱼', '', '15999956920', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 168, '2025-05-25 10:35:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999956920' LIMIT 1);
UPDATE users SET nick_name='李鲸鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 168) WHERE phone='15999956920';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360044257', 'U15360044257', '梨子', '', '15360044257', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-25 01:29:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360044257' LIMIT 1);
UPDATE users SET nick_name='梨子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360044257';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798082947', 'U13798082947', '荣WING', '', '13798082947', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 21:04:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798082947' LIMIT 1);
UPDATE users SET nick_name='荣WING', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798082947';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15071276353', 'U15071276353', 'mary', '', '15071276353', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 20:34:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15071276353' LIMIT 1);
UPDATE users SET nick_name='mary', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15071276353';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688860801', 'U13688860801', '大利', '', '13688860801', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 20:19:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688860801' LIMIT 1);
UPDATE users SET nick_name='大利', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13688860801';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15119381114', 'U15119381114', 'Claire', '', '15119381114', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 20:17:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15119381114' LIMIT 1);
UPDATE users SET nick_name='Claire', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15119381114';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18120230836', 'U18120230836', '童', '', '18120230836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 20:12:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18120230836' LIMIT 1);
UPDATE users SET nick_name='童', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18120230836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13013394400', 'U13013394400', '13013394400', '', '13013394400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 19:32:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13013394400' LIMIT 1);
UPDATE users SET nick_name='13013394400', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13013394400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13059477455', 'U13059477455', 'moer', '', '13059477455', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 18:49:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13059477455' LIMIT 1);
UPDATE users SET nick_name='moer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13059477455';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15710725665', 'U15710725665', 'Mr.W', '', '15710725665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 18:22:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15710725665' LIMIT 1);
UPDATE users SET nick_name='Mr.W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15710725665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17841188900', 'U17841188900', '5+1🌲', '', '17841188900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 18:00:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17841188900' LIMIT 1);
UPDATE users SET nick_name='5+1🌲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17841188900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18124427640', 'U18124427640', '1', '', '18124427640', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 17:59:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18124427640' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18124427640';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711773329', 'U13711773329', '暉', '', '13711773329', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 17:42:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711773329' LIMIT 1);
UPDATE users SET nick_name='暉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711773329';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926211577', 'U18926211577', 'z', '', '18926211577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 844, '2025-05-24 17:14:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926211577' LIMIT 1);
UPDATE users SET nick_name='z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 844) WHERE phone='18926211577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360019804', 'U15360019804', '臭臭💩', '', '15360019804', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 16:11:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360019804' LIMIT 1);
UPDATE users SET nick_name='臭臭💩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360019804';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815649247', 'U15815649247', '爱拖延的小猫头鹰🦉', '', '15815649247', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 15:27:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815649247' LIMIT 1);
UPDATE users SET nick_name='爱拖延的小猫头鹰🦉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815649247';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13542119511', 'U13542119511', '传球给圣诞老人（见过ye版', '', '13542119511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 15:03:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13542119511' LIMIT 1);
UPDATE users SET nick_name='传球给圣诞老人（见过ye版', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13542119511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18719381961', 'U18719381961', 'Bella', '', '18719381961', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 14:55:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18719381961' LIMIT 1);
UPDATE users SET nick_name='Bella', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18719381961';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527891399', 'U13527891399', '13527891399', '', '13527891399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 14:05:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527891399' LIMIT 1);
UPDATE users SET nick_name='13527891399', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527891399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15872716116', 'U15872716116', '你啊', '', '15872716116', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 13:35:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15872716116' LIMIT 1);
UPDATE users SET nick_name='你啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15872716116';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975779391', 'U15975779391', 'Owen', '', '15975779391', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 13:33:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975779391' LIMIT 1);
UPDATE users SET nick_name='Owen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975779391';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15817186663', 'U15817186663', 'Serendipity', '', '15817186663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 13:02:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15817186663' LIMIT 1);
UPDATE users SET nick_name='Serendipity', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15817186663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13226312333', 'U13226312333', '加加', '', '13226312333', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 12:33:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13226312333' LIMIT 1);
UPDATE users SET nick_name='加加', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13226312333';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18949532206', 'U18949532206', 'Alicia', '', '18949532206', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 11:16:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18949532206' LIMIT 1);
UPDATE users SET nick_name='Alicia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18949532206';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626472812', 'U15626472812', '十三', '', '15626472812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 10:48:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626472812' LIMIT 1);
UPDATE users SET nick_name='十三', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626472812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535389988', 'U13535389988', '雨', '', '13535389988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-24 08:42:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535389988' LIMIT 1);
UPDATE users SET nick_name='雨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13535389988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521324564', 'U15521324564', '谭敬夫', '', '15521324564', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-24 08:03:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521324564' LIMIT 1);
UPDATE users SET nick_name='谭敬夫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521324564';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751878368', 'U13751878368', 'Robyn Chou', '', '13751878368', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 23:59:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751878368' LIMIT 1);
UPDATE users SET nick_name='Robyn Chou', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751878368';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17324552530', 'U17324552530', 'Hlin.', '', '17324552530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 21:55:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17324552530' LIMIT 1);
UPDATE users SET nick_name='Hlin.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17324552530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928131593', 'U13928131593', '13928131593', '', '13928131593', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 21:16:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928131593' LIMIT 1);
UPDATE users SET nick_name='13928131593', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928131593';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15928333304', 'U15928333304', '·J·', '', '15928333304', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 20:46:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15928333304' LIMIT 1);
UPDATE users SET nick_name='·J·', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15928333304';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15528051270', 'U15528051270', '香菜脑袋', '', '15528051270', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 20:46:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15528051270' LIMIT 1);
UPDATE users SET nick_name='香菜脑袋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15528051270';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660269965', 'U13660269965', '13660269965', '', '13660269965', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 20:38:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660269965' LIMIT 1);
UPDATE users SET nick_name='13660269965', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660269965';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13126480325', 'U13126480325', '13126480325', '', '13126480325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 20:10:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13126480325' LIMIT 1);
UPDATE users SET nick_name='13126480325', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13126480325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666080378', 'U18666080378', 'sharon', '', '18666080378', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 18:28:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666080378' LIMIT 1);
UPDATE users SET nick_name='sharon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666080378';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18373142165', 'U18373142165', '18373142165', '', '18373142165', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 17:23:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18373142165' LIMIT 1);
UPDATE users SET nick_name='18373142165', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18373142165';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660131130', 'U13660131130', '13660131130', '', '13660131130', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 16:05:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660131130' LIMIT 1);
UPDATE users SET nick_name='13660131130', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660131130';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808884048', 'U13808884048', 'JACK', '', '13808884048', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 15:51:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808884048' LIMIT 1);
UPDATE users SET nick_name='JACK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808884048';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688476279', 'U18688476279', '18688476279', '', '18688476279', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 15:25:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688476279' LIMIT 1);
UPDATE users SET nick_name='18688476279', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688476279';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13417011978', 'U13417011978', '白马王子', '', '13417011978', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 15:10:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13417011978' LIMIT 1);
UPDATE users SET nick_name='白马王子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13417011978';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521160900', 'U15521160900', 'kasa🤗', '', '15521160900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 15:10:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521160900' LIMIT 1);
UPDATE users SET nick_name='kasa🤗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521160900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626021679', 'U15626021679', '多啦B梦', '', '15626021679', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 15:01:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626021679' LIMIT 1);
UPDATE users SET nick_name='多啦B梦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626021679';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15059272733', 'U15059272733', '15059272733', '', '15059272733', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 14:55:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15059272733' LIMIT 1);
UPDATE users SET nick_name='15059272733', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15059272733';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450803342', 'U13450803342', '鱼_', '', '13450803342', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 14:44:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450803342' LIMIT 1);
UPDATE users SET nick_name='鱼_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450803342';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819329627', 'U18819329627', '鲸鱼🐳', '', '18819329627', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 13:59:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819329627' LIMIT 1);
UPDATE users SET nick_name='鲸鱼🐳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819329627';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18318865883', 'U18318865883', '鸮', '', '18318865883', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 13:56:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18318865883' LIMIT 1);
UPDATE users SET nick_name='鸮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18318865883';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13542343354', 'U13542343354', '13542343354', '', '13542343354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 13:18:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13542343354' LIMIT 1);
UPDATE users SET nick_name='13542343354', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13542343354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798145428', 'U13798145428', '快乐', '', '13798145428', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 12:56:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798145428' LIMIT 1);
UPDATE users SET nick_name='快乐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798145428';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13237590968', 'U13237590968', '书华Suya-Career Planning', '', '13237590968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 12:23:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13237590968' LIMIT 1);
UPDATE users SET nick_name='书华Suya-Career Planning', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13237590968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520382640', 'U18520382640', '啰啰嗦嗦', '', '18520382640', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 11:31:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520382640' LIMIT 1);
UPDATE users SET nick_name='啰啰嗦嗦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520382640';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15921521517', 'U15921521517', 'Alex-', '', '15921521517', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2025-05-23 11:23:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15921521517' LIMIT 1);
UPDATE users SET nick_name='Alex-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='15921521517';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922234666', 'U13922234666', '桃少', '', '13922234666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 10:41:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922234666' LIMIT 1);
UPDATE users SET nick_name='桃少', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922234666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422069673', 'U13422069673', '077', '', '13422069673', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 10:35:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422069673' LIMIT 1);
UPDATE users SET nick_name='077', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422069673';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13482144177', 'U13482144177', '圆仔', '', '13482144177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-23 10:25:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13482144177' LIMIT 1);
UPDATE users SET nick_name='圆仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13482144177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15323550060', 'U15323550060', '娴娴', '', '15323550060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-22 21:20:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15323550060' LIMIT 1);
UPDATE users SET nick_name='娴娴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15323550060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565593840', 'U18565593840', '18565593840', '', '18565593840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-22 21:06:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565593840' LIMIT 1);
UPDATE users SET nick_name='18565593840', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565593840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229135983', 'U13229135983', '穎茵🐘', '', '13229135983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-22 19:43:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229135983' LIMIT 1);
UPDATE users SET nick_name='穎茵🐘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229135983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924176610', 'U18924176610', '18924176610', '', '18924176610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-22 17:34:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924176610' LIMIT 1);
UPDATE users SET nick_name='18924176610', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924176610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923786777', 'U13923786777', '关节镜', '', '13923786777', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-22 16:54:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923786777' LIMIT 1);
UPDATE users SET nick_name='关节镜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13923786777';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13690802398', 'U13690802398', 'Ada.', '', '13690802398', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-22 15:16:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13690802398' LIMIT 1);
UPDATE users SET nick_name='Ada.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13690802398';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120414022', 'U19120414022', 'xx', '', '19120414022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 140, '2025-05-22 13:44:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120414022' LIMIT 1);
UPDATE users SET nick_name='xx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 140) WHERE phone='19120414022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18966899399', 'U18966899399', '18966899399', '', '18966899399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-22 13:42:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18966899399' LIMIT 1);
UPDATE users SET nick_name='18966899399', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18966899399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229457208', 'U13229457208', '马兰头', '', '13229457208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-22 12:45:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229457208' LIMIT 1);
UPDATE users SET nick_name='马兰头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229457208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820256081', 'U15820256081', '恭喜发财', '', '15820256081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-22 11:12:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820256081' LIMIT 1);
UPDATE users SET nick_name='恭喜发财', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820256081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989289246', 'U15989289246', '劳拉', '', '15989289246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-22 11:00:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989289246' LIMIT 1);
UPDATE users SET nick_name='劳拉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989289246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19874001302', 'U19874001302', 'basma🌸', '', '19874001302', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 22:52:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19874001302' LIMIT 1);
UPDATE users SET nick_name='basma🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19874001302';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902204836', 'U13902204836', '13902204836', '', '13902204836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 20:08:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902204836' LIMIT 1);
UPDATE users SET nick_name='13902204836', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902204836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18981788870', 'U18981788870', '18981788870', '', '18981788870', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 19:35:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18981788870' LIMIT 1);
UPDATE users SET nick_name='18981788870', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18981788870';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610001399', 'U13610001399', '康', '', '13610001399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 18:33:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610001399' LIMIT 1);
UPDATE users SET nick_name='康', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610001399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15081995052', 'U15081995052', '💫Vivienne', '', '15081995052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-21 17:27:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15081995052' LIMIT 1);
UPDATE users SET nick_name='💫Vivienne', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15081995052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926292132', 'U13926292132', '熙朗', '', '13926292132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 16:56:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926292132' LIMIT 1);
UPDATE users SET nick_name='熙朗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926292132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688870124', 'U18688870124', '🎀🐭GiGi🐭🎀', '', '18688870124', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-05-21 16:39:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688870124' LIMIT 1);
UPDATE users SET nick_name='🎀🐭GiGi🐭🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18688870124';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600007676', 'U13600007676', '13600007676', '', '13600007676', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 15:55:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600007676' LIMIT 1);
UPDATE users SET nick_name='13600007676', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600007676';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15000574564', 'U15000574564', 'Spring', '', '15000574564', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 14:47:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15000574564' LIMIT 1);
UPDATE users SET nick_name='Spring', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15000574564';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218613220', 'U18218613220', 'Oxygen', '', '18218613220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 14:47:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218613220' LIMIT 1);
UPDATE users SET nick_name='Oxygen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218613220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13557478950', 'U13557478950', '13557478950', '', '13557478950', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 14:00:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13557478950' LIMIT 1);
UPDATE users SET nick_name='13557478950', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13557478950';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724130765', 'U13724130765', 'Pillar', '', '13724130765', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 13:56:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724130765' LIMIT 1);
UPDATE users SET nick_name='Pillar', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724130765';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17325823266', 'U17325823266', '西西', '', '17325823266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 13:44:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17325823266' LIMIT 1);
UPDATE users SET nick_name='西西', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17325823266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500005393', 'U13500005393', '徽思 平凡', '', '13500005393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 12:22:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500005393' LIMIT 1);
UPDATE users SET nick_name='徽思 平凡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500005393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18558790369', 'U18558790369', 'ʚYanɞ', '', '18558790369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 11:48:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18558790369' LIMIT 1);
UPDATE users SET nick_name='ʚYanɞ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18558790369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15834166359', 'U15834166359', '石文韬', '', '15834166359', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-05-21 10:56:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15834166359' LIMIT 1);
UPDATE users SET nick_name='石文韬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15834166359';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15015016356', 'U15015016356', 'Sn', '', '15015016356', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 10:31:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15015016356' LIMIT 1);
UPDATE users SET nick_name='Sn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15015016356';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15573500052', 'U15573500052', '书华Suya', '', '15573500052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-05-21 10:29:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15573500052' LIMIT 1);
UPDATE users SET nick_name='书华Suya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15573500052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600009852', 'U13600009852', '严Hey', '', '13600009852', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-21 09:59:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600009852' LIMIT 1);
UPDATE users SET nick_name='严Hey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600009852';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664808178', 'U18664808178', 'lizhi', '', '18664808178', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-20 23:16:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664808178' LIMIT 1);
UPDATE users SET nick_name='lizhi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664808178';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018833580', 'U15018833580', '11', '', '15018833580', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-20 21:13:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018833580' LIMIT 1);
UPDATE users SET nick_name='11', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018833580';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13106765751', 'U13106765751', '00', '', '13106765751', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-20 21:10:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13106765751' LIMIT 1);
UPDATE users SET nick_name='00', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13106765751';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13396406325', 'U13396406325', '芝加哥', '', '13396406325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-20 21:07:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13396406325' LIMIT 1);
UPDATE users SET nick_name='芝加哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13396406325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620929070', 'U18620929070', 'Clu', '', '18620929070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-20 19:21:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620929070' LIMIT 1);
UPDATE users SET nick_name='Clu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620929070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928715954', 'U13928715954', 'ezz', '', '13928715954', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-20 17:59:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928715954' LIMIT 1);
UPDATE users SET nick_name='ezz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928715954';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620884125', 'U18620884125', '羊', '', '18620884125', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-20 17:33:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620884125' LIMIT 1);
UPDATE users SET nick_name='羊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620884125';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763330140', 'U13763330140', '🍓* QueeniE * 🍓', '', '13763330140', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-20 16:42:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763330140' LIMIT 1);
UPDATE users SET nick_name='🍓* QueeniE * 🍓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763330140';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011715031', 'U15011715031', '严苹果i', '', '15011715031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-20 14:57:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011715031' LIMIT 1);
UPDATE users SET nick_name='严苹果i', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15011715031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322220373', 'U17322220373', '蔡承熹', '', '17322220373', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-20 14:25:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322220373' LIMIT 1);
UPDATE users SET nick_name='蔡承熹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322220373';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18806062909', 'U18806062909', 'YU WEN', '', '18806062909', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-20 13:09:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18806062909' LIMIT 1);
UPDATE users SET nick_name='YU WEN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18806062909';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682270374', 'U13682270374', 'jane', '', '13682270374', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2025-05-20 10:37:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682270374' LIMIT 1);
UPDATE users SET nick_name='jane', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='13682270374';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613122247', 'U18613122247', 'pp', '', '18613122247', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-05-20 10:36:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613122247' LIMIT 1);
UPDATE users SET nick_name='pp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18613122247';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610318078', 'U13610318078', 'jo', '', '13610318078', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-19 21:15:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610318078' LIMIT 1);
UPDATE users SET nick_name='jo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610318078';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13313100555', 'U13313100555', '13313100555', '', '13313100555', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-19 19:09:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13313100555' LIMIT 1);
UPDATE users SET nick_name='13313100555', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13313100555';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18744746492', 'U18744746492', 'divergence', '', '18744746492', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-19 18:11:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18744746492' LIMIT 1);
UPDATE users SET nick_name='divergence', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18744746492';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15389778002', 'U15389778002', '勇士', '', '15389778002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-19 17:03:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15389778002' LIMIT 1);
UPDATE users SET nick_name='勇士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15389778002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922280302', 'U13922280302', '13922280302', '', '13922280302', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-19 16:38:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922280302' LIMIT 1);
UPDATE users SET nick_name='13922280302', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922280302';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556028461', 'U13556028461', '13556028461', '', '13556028461', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-19 15:28:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556028461' LIMIT 1);
UPDATE users SET nick_name='13556028461', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556028461';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268222856', 'U13268222856', '🐾亞盈🐨', '', '13268222856', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-19 13:15:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268222856' LIMIT 1);
UPDATE users SET nick_name='🐾亞盈🐨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268222856';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826230681', 'U18826230681', '随机抽取一名幸运观众请我吃烧烤', '', '18826230681', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-19 12:25:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826230681' LIMIT 1);
UPDATE users SET nick_name='随机抽取一名幸运观众请我吃烧烤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826230681';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113363806', 'U13113363806', '🌟', '', '13113363806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-19 11:44:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113363806' LIMIT 1);
UPDATE users SET nick_name='🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13113363806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802907825', 'U13802907825', '碧君', '', '13802907825', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 22:18:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802907825' LIMIT 1);
UPDATE users SET nick_name='碧君', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802907825';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13692901139', 'U13692901139', 'Winjuly', '', '13692901139', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 20:00:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13692901139' LIMIT 1);
UPDATE users SET nick_name='Winjuly', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13692901139';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602554975', 'U13602554975', '13602554975', '', '13602554975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 18:42:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602554975' LIMIT 1);
UPDATE users SET nick_name='13602554975', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602554975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18183071059', 'U18183071059', '榴莲', '', '18183071059', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 18:00:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18183071059' LIMIT 1);
UPDATE users SET nick_name='榴莲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18183071059';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13152676426', 'U13152676426', 'ez', '', '13152676426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 17:27:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13152676426' LIMIT 1);
UPDATE users SET nick_name='ez', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13152676426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312590087', 'U18312590087', 'Tina', '', '18312590087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 16:59:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312590087' LIMIT 1);
UPDATE users SET nick_name='Tina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312590087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13592805023', 'U13592805023', 'Zhou1', '', '13592805023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 16:55:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13592805023' LIMIT 1);
UPDATE users SET nick_name='Zhou1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13592805023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660000427', 'U13660000427', 'MissMa', '', '13660000427', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 16:43:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660000427' LIMIT 1);
UPDATE users SET nick_name='MissMa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660000427';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818199157', 'U15818199157', 'katrina', '', '15818199157', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2025-05-18 16:29:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818199157' LIMIT 1);
UPDATE users SET nick_name='katrina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='15818199157';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15690335878', 'U15690335878', '15690335878', '', '15690335878', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 16:24:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15690335878' LIMIT 1);
UPDATE users SET nick_name='15690335878', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15690335878';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814370480', 'U18814370480', 'T-valora俏婷', '', '18814370480', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 15:43:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814370480' LIMIT 1);
UPDATE users SET nick_name='T-valora俏婷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814370480';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535127560', 'U13535127560', 'jia烁', '', '13535127560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 15:35:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535127560' LIMIT 1);
UPDATE users SET nick_name='jia烁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535127560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028687331', 'U18028687331', 'mmm🐷', '', '18028687331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 15:30:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028687331' LIMIT 1);
UPDATE users SET nick_name='mmm🐷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028687331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14773234747', 'U14773234747', 'ike', '', '14773234747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 14:57:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14773234747' LIMIT 1);
UPDATE users SET nick_name='ike', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14773234747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600386621', 'U13600386621', 'pierrot', '', '13600386621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 14:45:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600386621' LIMIT 1);
UPDATE users SET nick_name='pierrot', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600386621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19311513433', 'U19311513433', '19311513433', '', '19311513433', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 14:08:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19311513433' LIMIT 1);
UPDATE users SET nick_name='19311513433', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19311513433';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18216084026', 'U18216084026', 'De', '', '18216084026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 13:51:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18216084026' LIMIT 1);
UPDATE users SET nick_name='De', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18216084026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18475716695', 'U18475716695', '小七', '', '18475716695', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 12:55:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18475716695' LIMIT 1);
UPDATE users SET nick_name='小七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18475716695';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800230028', 'U15800230028', 'Jessie Chan', '', '15800230028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 12:31:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800230028' LIMIT 1);
UPDATE users SET nick_name='Jessie Chan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800230028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520465885', 'U18520465885', '玲玲玲', '', '18520465885', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 12:08:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520465885' LIMIT 1);
UPDATE users SET nick_name='玲玲玲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520465885';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15958126213', 'U15958126213', 'Nancy南希', '', '15958126213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 11:52:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15958126213' LIMIT 1);
UPDATE users SET nick_name='Nancy南希', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15958126213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802444855', 'U13802444855', '🇯 🇦 🇸 🇴 🇳 🐯周', '', '13802444855', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 11:26:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802444855' LIMIT 1);
UPDATE users SET nick_name='🇯 🇦 🇸 🇴 🇳 🐯周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802444855';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18473455420', 'U18473455420', 'better', '', '18473455420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 11:06:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18473455420' LIMIT 1);
UPDATE users SET nick_name='better', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18473455420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820254194', 'U15820254194', 'Cherie', '', '15820254194', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 10:24:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820254194' LIMIT 1);
UPDATE users SET nick_name='Cherie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820254194';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662426090', 'U13662426090', '13662426090', '', '13662426090', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-18 10:12:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662426090' LIMIT 1);
UPDATE users SET nick_name='13662426090', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662426090';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710210938', 'U13710210938', '薯条', '', '13710210938', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-05-18 00:15:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710210938' LIMIT 1);
UPDATE users SET nick_name='薯条', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13710210938';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16681612232', 'U16681612232', 'noa', '', '16681612232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 23:20:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16681612232' LIMIT 1);
UPDATE users SET nick_name='noa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16681612232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15051985358', 'U15051985358', '15051985358', '', '15051985358', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 22:19:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15051985358' LIMIT 1);
UPDATE users SET nick_name='15051985358', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15051985358';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760731144', 'U13760731144', 'LCFan', '', '13760731144', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 20:27:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760731144' LIMIT 1);
UPDATE users SET nick_name='LCFan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760731144';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915719990', 'U15915719990', 'yw', '', '15915719990', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-05-17 20:17:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915719990' LIMIT 1);
UPDATE users SET nick_name='yw', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15915719990';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662237779', 'U13662237779', '王学武', '', '13662237779', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2025-05-17 20:15:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662237779' LIMIT 1);
UPDATE users SET nick_name='王学武', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='13662237779';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926027588', 'U13926027588', '杨彪', '', '13926027588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-05-17 20:06:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926027588' LIMIT 1);
UPDATE users SET nick_name='杨彪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13926027588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18002276623', 'U18002276623', '简p', '', '18002276623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 19:56:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18002276623' LIMIT 1);
UPDATE users SET nick_name='简p', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18002276623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625564208', 'U15625564208', '风', '', '15625564208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 19:26:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625564208' LIMIT 1);
UPDATE users SET nick_name='风', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625564208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17621588894', 'U17621588894', '幸会', '', '17621588894', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 18:38:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17621588894' LIMIT 1);
UPDATE users SET nick_name='幸会', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17621588894';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813396704', 'U15813396704', '千帆过', '', '15813396704', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-17 17:05:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813396704' LIMIT 1);
UPDATE users SET nick_name='千帆过', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15813396704';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922752215', 'U13922752215', '13922752215', '', '13922752215', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 16:57:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922752215' LIMIT 1);
UPDATE users SET nick_name='13922752215', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922752215';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826250347', 'U18826250347', '🏸🏸🏸小可爱', '', '18826250347', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 16:42:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826250347' LIMIT 1);
UPDATE users SET nick_name='🏸🏸🏸小可爱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826250347';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265351175', 'U13265351175', '🎾Yea', '', '13265351175', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 15:53:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265351175' LIMIT 1);
UPDATE users SET nick_name='🎾Yea', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265351175';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688897884', 'U13688897884', 'GraceWong👀', '', '13688897884', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 14:47:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688897884' LIMIT 1);
UPDATE users SET nick_name='GraceWong👀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13688897884';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918711960', 'U15918711960', 'mini', '', '15918711960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 14:43:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918711960' LIMIT 1);
UPDATE users SET nick_name='mini', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918711960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751751780', 'U13751751780', '显眼包', '', '13751751780', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 13:57:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751751780' LIMIT 1);
UPDATE users SET nick_name='显眼包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751751780';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017529195', 'U15017529195', '哈喽', '', '15017529195', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 13:33:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017529195' LIMIT 1);
UPDATE users SET nick_name='哈喽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017529195';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19168846301', 'U19168846301', 'Seyah^^busy～', '', '19168846301', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 13:25:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19168846301' LIMIT 1);
UPDATE users SET nick_name='Seyah^^busy～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19168846301';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588822710', 'U18588822710', 'Chris', '', '18588822710', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2025-05-17 13:16:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588822710' LIMIT 1);
UPDATE users SET nick_name='Chris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='18588822710';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610023140', 'U13610023140', 'Carey Ng', '', '13610023140', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 13:04:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610023140' LIMIT 1);
UPDATE users SET nick_name='Carey Ng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610023140';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763343834', 'U13763343834', 'ᴹᵉⁱྀི🐻ྀིᴹᴬᵞ', '', '13763343834', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 12:50:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763343834' LIMIT 1);
UPDATE users SET nick_name='ᴹᵉⁱྀི🐻ྀིᴹᴬᵞ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763343834';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989256150', 'U15989256150', 's', '', '15989256150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 12:48:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989256150' LIMIT 1);
UPDATE users SET nick_name='s', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989256150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17396775331', 'U17396775331', '@@', '', '17396775331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 12:47:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17396775331' LIMIT 1);
UPDATE users SET nick_name='@@', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17396775331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13652225433', 'U13652225433', '13652225433', '', '13652225433', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 12:38:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13652225433' LIMIT 1);
UPDATE users SET nick_name='13652225433', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13652225433';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876431238', 'U17876431238', '篮子', '', '17876431238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 12:23:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876431238' LIMIT 1);
UPDATE users SET nick_name='篮子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876431238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928804141', 'U13928804141', '茜', '', '13928804141', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 588, '2025-05-17 11:51:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928804141' LIMIT 1);
UPDATE users SET nick_name='茜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 588) WHERE phone='13928804141';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122489767', 'U18122489767', 'hoppípolla', '', '18122489767', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-17 10:52:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122489767' LIMIT 1);
UPDATE users SET nick_name='hoppípolla', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122489767';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688897020', 'U18688897020', 'Dгцикiлаsакi', '', '18688897020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-05-17 10:21:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688897020' LIMIT 1);
UPDATE users SET nick_name='Dгцикiлаsакi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18688897020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13431891678', 'U13431891678', 'Helsmooooos', '', '13431891678', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 21:07:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13431891678' LIMIT 1);
UPDATE users SET nick_name='Helsmooooos', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13431891678';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588855240', 'U18588855240', 'Monique', '', '18588855240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 19:39:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588855240' LIMIT 1);
UPDATE users SET nick_name='Monique', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588855240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13138648721', 'U13138648721', '13138648721', '', '13138648721', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 19:09:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13138648721' LIMIT 1);
UPDATE users SET nick_name='13138648721', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13138648721';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820096558', 'U18820096558', '18820096558', '', '18820096558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 18:55:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820096558' LIMIT 1);
UPDATE users SET nick_name='18820096558', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820096558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017572863', 'U15017572863', '15017572863', '', '15017572863', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 17:28:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017572863' LIMIT 1);
UPDATE users SET nick_name='15017572863', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017572863';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565605335', 'U18565605335', '阿森Sen', '', '18565605335', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 16:29:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565605335' LIMIT 1);
UPDATE users SET nick_name='阿森Sen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565605335';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15118869701', 'U15118869701', 'kaMa', '', '15118869701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 16:05:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15118869701' LIMIT 1);
UPDATE users SET nick_name='kaMa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15118869701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828642395', 'U13828642395', '13828642395', '', '13828642395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 15:03:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828642395' LIMIT 1);
UPDATE users SET nick_name='13828642395', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828642395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826231107', 'U18826231107', 'yu宇', '', '18826231107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 13:29:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826231107' LIMIT 1);
UPDATE users SET nick_name='yu宇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826231107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819442254', 'U18819442254', '豆豆', '', '18819442254', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 12:45:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819442254' LIMIT 1);
UPDATE users SET nick_name='豆豆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819442254';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521180646', 'U15521180646', '小龙', '', '15521180646', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 11:43:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521180646' LIMIT 1);
UPDATE users SET nick_name='小龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521180646';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922118953', 'U13922118953', '还', '', '13922118953', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-16 10:21:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922118953' LIMIT 1);
UPDATE users SET nick_name='还', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922118953';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13002039823', 'U13002039823', '13002039823', '', '13002039823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 21:03:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13002039823' LIMIT 1);
UPDATE users SET nick_name='13002039823', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13002039823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15927303130', 'U15927303130', 'oo', '', '15927303130', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 20:02:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15927303130' LIMIT 1);
UPDATE users SET nick_name='oo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15927303130';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13767288985', 'U13767288985', 'A1', '', '13767288985', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 19:29:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13767288985' LIMIT 1);
UPDATE users SET nick_name='A1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13767288985';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622767656', 'U13622767656', 'Ze', '', '13622767656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 18:41:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622767656' LIMIT 1);
UPDATE users SET nick_name='Ze', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622767656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16602027771', 'U16602027771', 'li', '', '16602027771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 16:35:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16602027771' LIMIT 1);
UPDATE users SET nick_name='li', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16602027771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580449519', 'U13580449519', '13580449519', '', '13580449519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 16:03:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580449519' LIMIT 1);
UPDATE users SET nick_name='13580449519', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580449519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250320980', 'U13250320980', 'Carrie', '', '13250320980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 15:49:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250320980' LIMIT 1);
UPDATE users SET nick_name='Carrie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250320980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18712248976', 'U18712248976', '18712248976', '', '18712248976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 15:44:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18712248976' LIMIT 1);
UPDATE users SET nick_name='18712248976', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18712248976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17610809667', 'U17610809667', 'seeking', '', '17610809667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 13:36:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17610809667' LIMIT 1);
UPDATE users SET nick_name='seeking', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17610809667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760887310', 'U13760887310', 'TY欣', '', '13760887310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 132, '2025-05-15 13:21:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760887310' LIMIT 1);
UPDATE users SET nick_name='TY欣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 132) WHERE phone='13760887310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533388631', 'U13533388631', '张兴荣', '', '13533388631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 13:20:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533388631' LIMIT 1);
UPDATE users SET nick_name='张兴荣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533388631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813002153', 'U15813002153', 'Yulia', '', '15813002153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 12:22:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813002153' LIMIT 1);
UPDATE users SET nick_name='Yulia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813002153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926154062', 'U18926154062', 'chlòe', '', '18926154062', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-05-15 12:22:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926154062' LIMIT 1);
UPDATE users SET nick_name='chlòe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18926154062';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15361264702', 'U15361264702', 'Liana', '', '15361264702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 12:21:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15361264702' LIMIT 1);
UPDATE users SET nick_name='Liana', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15361264702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622983576', 'U15622983576', 'Lam', '', '15622983576', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-15 11:12:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622983576' LIMIT 1);
UPDATE users SET nick_name='Lam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622983576';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18577975667', 'U18577975667', '18577975667', '', '18577975667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-14 21:35:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18577975667' LIMIT 1);
UPDATE users SET nick_name='18577975667', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18577975667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631032146', 'U13631032146', '13631032146', '', '13631032146', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-14 20:21:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631032146' LIMIT 1);
UPDATE users SET nick_name='13631032146', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631032146';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664685468', 'U18664685468', '彭荣利 Wing', '', '18664685468', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-14 19:49:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664685468' LIMIT 1);
UPDATE users SET nick_name='彭荣利 Wing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664685468';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802240570', 'U13802240570', 'lisa馨妈岚', '', '13802240570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-14 17:54:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802240570' LIMIT 1);
UPDATE users SET nick_name='lisa馨妈岚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802240570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15208980987', 'U15208980987', '☘️', '', '15208980987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1798, '2025-05-14 17:21:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15208980987' LIMIT 1);
UPDATE users SET nick_name='☘️', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1798) WHERE phone='15208980987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13068171769', 'U13068171769', '@清醒纪', '', '13068171769', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-14 14:44:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13068171769' LIMIT 1);
UPDATE users SET nick_name='@清醒纪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13068171769';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13679867604', 'U13679867604', 'PENN', '', '13679867604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-14 14:19:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13679867604' LIMIT 1);
UPDATE users SET nick_name='PENN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13679867604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13998683190', 'U13998683190', '孙', '', '13998683190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 776, '2025-05-14 13:52:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13998683190' LIMIT 1);
UPDATE users SET nick_name='孙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 776) WHERE phone='13998683190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692438711', 'U15692438711', 'Jasmine🦆', '', '15692438711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-14 12:44:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692438711' LIMIT 1);
UPDATE users SET nick_name='Jasmine🦆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692438711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18610381976', 'U18610381976', 'May', '', '18610381976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-14 12:12:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18610381976' LIMIT 1);
UPDATE users SET nick_name='May', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18610381976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022585443', 'U18022585443', '菜菜籽', '', '18022585443', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-13 22:26:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022585443' LIMIT 1);
UPDATE users SET nick_name='菜菜籽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022585443';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15879116469', 'U15879116469', 'Daydreamer', '', '15879116469', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-13 19:40:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15879116469' LIMIT 1);
UPDATE users SET nick_name='Daydreamer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15879116469';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15766323567', 'U15766323567', '15766323567', '', '15766323567', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-13 18:21:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15766323567' LIMIT 1);
UPDATE users SET nick_name='15766323567', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15766323567';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535389966', 'U13535389966', 'Laity$邹', '', '13535389966', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-05-13 17:48:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535389966' LIMIT 1);
UPDATE users SET nick_name='Laity$邹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13535389966';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15029656565', 'U15029656565', '二宝', '', '15029656565', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1458, '2025-05-13 14:49:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15029656565' LIMIT 1);
UPDATE users SET nick_name='二宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1458) WHERE phone='15029656565';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450380968', 'U13450380968', '13450380968', '', '13450380968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-13 14:02:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450380968' LIMIT 1);
UPDATE users SET nick_name='13450380968', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450380968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15767232019', 'U15767232019', '雾俚', '', '15767232019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-13 13:59:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15767232019' LIMIT 1);
UPDATE users SET nick_name='雾俚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15767232019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760885159', 'U13760885159', 'Skite', '', '13760885159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-13 13:07:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760885159' LIMIT 1);
UPDATE users SET nick_name='Skite', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760885159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989234565', 'U15989234565', '王微昭', '', '15989234565', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-13 11:57:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989234565' LIMIT 1);
UPDATE users SET nick_name='王微昭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989234565';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818805098', 'U18818805098', '安安若素', '', '18818805098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-13 11:13:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818805098' LIMIT 1);
UPDATE users SET nick_name='安安若素', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818805098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13778511953', 'U13778511953', 'ʚ 🧸ྀི ɞ', '', '13778511953', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-13 10:21:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13778511953' LIMIT 1);
UPDATE users SET nick_name='ʚ 🧸ྀི ɞ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13778511953';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813942700', 'U18813942700', '9655-', '', '18813942700', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-13 09:17:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813942700' LIMIT 1);
UPDATE users SET nick_name='9655-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18813942700';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18255116816', 'U18255116816', '木可', '', '18255116816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 23:59:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18255116816' LIMIT 1);
UPDATE users SET nick_name='木可', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18255116816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640844030', 'U13640844030', 'Solitudeeee', '', '13640844030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 23:39:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640844030' LIMIT 1);
UPDATE users SET nick_name='Solitudeeee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640844030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19830700990', 'U19830700990', '🦦', '', '19830700990', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 23:17:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19830700990' LIMIT 1);
UPDATE users SET nick_name='🦦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19830700990';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13411174246', 'U13411174246', 'dgak', '', '13411174246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 22:55:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13411174246' LIMIT 1);
UPDATE users SET nick_name='dgak', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13411174246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822258917', 'U13822258917', '茗居主人', '', '13822258917', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2025-05-12 21:18:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822258917' LIMIT 1);
UPDATE users SET nick_name='茗居主人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='13822258917';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18617373777', 'U18617373777', 'LEE', '', '18617373777', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 21:01:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18617373777' LIMIT 1);
UPDATE users SET nick_name='LEE', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18617373777';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920148606', 'U15920148606', '刘智弘（至幸）', '', '15920148606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 20:55:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920148606' LIMIT 1);
UPDATE users SET nick_name='刘智弘（至幸）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920148606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751743335', 'U13751743335', '邓耳米', '', '13751743335', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 599, '2025-05-12 20:18:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751743335' LIMIT 1);
UPDATE users SET nick_name='邓耳米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 599) WHERE phone='13751743335';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19282050551', 'U19282050551', 'Captain-Chen', '', '19282050551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 20:18:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19282050551' LIMIT 1);
UPDATE users SET nick_name='Captain-Chen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19282050551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15888717980', 'U15888717980', 'Krystal', '', '15888717980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 18:19:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15888717980' LIMIT 1);
UPDATE users SET nick_name='Krystal', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15888717980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763325196', 'U13763325196', '欧生', '', '13763325196', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 15:23:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763325196' LIMIT 1);
UPDATE users SET nick_name='欧生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763325196';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18675868326', 'U18675868326', '18675868326', '', '18675868326', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 15:17:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18675868326' LIMIT 1);
UPDATE users SET nick_name='18675868326', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18675868326';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18335730446', 'U18335730446', '蓝色即是开始', '', '18335730446', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 13:49:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18335730446' LIMIT 1);
UPDATE users SET nick_name='蓝色即是开始', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18335730446';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13794088073', 'U13794088073', '13794088073', '', '13794088073', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 13:40:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13794088073' LIMIT 1);
UPDATE users SET nick_name='13794088073', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13794088073';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018468850', 'U15018468850', 'Della', '', '15018468850', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 10:06:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018468850' LIMIT 1);
UPDATE users SET nick_name='Della', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018468850';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265134720', 'U13265134720', '张文嘉🎾🏸🎹', '', '13265134720', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 01:36:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265134720' LIMIT 1);
UPDATE users SET nick_name='张文嘉🎾🏸🎹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265134720';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760861112', 'U13760861112', '雯雯', '', '13760861112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 00:09:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760861112' LIMIT 1);
UPDATE users SET nick_name='雯雯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760861112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625011084', 'U15625011084', 'Dunk不必', '', '15625011084', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-12 00:08:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625011084' LIMIT 1);
UPDATE users SET nick_name='Dunk不必', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625011084';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920472200', 'U15920472200', 'lusui', '', '15920472200', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 21:55:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920472200' LIMIT 1);
UPDATE users SET nick_name='lusui', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920472200';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819386081', 'U18819386081', '我跟你讲', '', '18819386081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 21:37:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819386081' LIMIT 1);
UPDATE users SET nick_name='我跟你讲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819386081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202067693', 'U15202067693', '15202067693', '', '15202067693', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 21:19:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202067693' LIMIT 1);
UPDATE users SET nick_name='15202067693', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15202067693';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17521390797', 'U17521390797', 'Astrid L', '', '17521390797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-05-11 19:06:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17521390797' LIMIT 1);
UPDATE users SET nick_name='Astrid L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17521390797';
