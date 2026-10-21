SET NAMES utf8mb4;
-- 中大店用户导入 part 5 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15827595975', 'U15827595975', '泡泡', '', '15827595975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-25 19:25:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15827595975' LIMIT 1);
UPDATE users SET nick_name='泡泡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15827595975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247605506', 'U13247605506', 'Poppy', '', '13247605506', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-25 14:35:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247605506' LIMIT 1);
UPDATE users SET nick_name='Poppy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13247605506';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580433303', 'U13580433303', '祖儿', '', '13580433303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-25 11:55:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580433303' LIMIT 1);
UPDATE users SET nick_name='祖儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580433303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13916340717', 'U13916340717', 'ethanweng', '', '13916340717', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-02-24 20:42:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13916340717' LIMIT 1);
UPDATE users SET nick_name='ethanweng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13916340717';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650752907', 'U13650752907', '13650752907', '', '13650752907', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-24 17:53:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650752907' LIMIT 1);
UPDATE users SET nick_name='13650752907', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13650752907';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802901155', 'U13802901155', 'Ricky', '', '13802901155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2026-02-24 16:07:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802901155' LIMIT 1);
UPDATE users SET nick_name='Ricky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13802901155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609064086', 'U13609064086', '13609064086', '', '13609064086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-24 15:01:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609064086' LIMIT 1);
UPDATE users SET nick_name='13609064086', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609064086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560097895', 'U13560097895', 'easy', '', '13560097895', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2026-02-24 09:33:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560097895' LIMIT 1);
UPDATE users SET nick_name='easy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13560097895';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975426795', 'U15975426795', 'fifi', '', '15975426795', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-23 16:21:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975426795' LIMIT 1);
UPDATE users SET nick_name='fifi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975426795';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529455339', 'U18529455339', '18529455339', '', '18529455339', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-23 15:52:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529455339' LIMIT 1);
UPDATE users SET nick_name='18529455339', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529455339';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920556230', 'U15920556230', 'yv', '', '15920556230', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-22 12:35:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920556230' LIMIT 1);
UPDATE users SET nick_name='yv', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920556230';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626486876', 'U15626486876', '莎伦', '', '15626486876', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2026-02-22 12:01:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626486876' LIMIT 1);
UPDATE users SET nick_name='莎伦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='15626486876';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926222435', 'U13926222435', '13926222435', '', '13926222435', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-22 11:10:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926222435' LIMIT 1);
UPDATE users SET nick_name='13926222435', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926222435';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998321818', 'U18998321818', '18998321818', '', '18998321818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-21 11:41:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998321818' LIMIT 1);
UPDATE users SET nick_name='18998321818', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998321818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666091413', 'U18666091413', '18666091413', '', '18666091413', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-21 11:41:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666091413' LIMIT 1);
UPDATE users SET nick_name='18666091413', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666091413';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826026436', 'U13826026436', 'Ai', '', '13826026436', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-20 12:54:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826026436' LIMIT 1);
UPDATE users SET nick_name='Ai', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826026436';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725408601', 'U13725408601', 'Electricity亮', '', '13725408601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-02-20 10:29:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725408601' LIMIT 1);
UPDATE users SET nick_name='Electricity亮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13725408601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815889184', 'U15815889184', '辉', '', '15815889184', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-19 22:07:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815889184' LIMIT 1);
UPDATE users SET nick_name='辉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815889184';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818868086', 'U18818868086', 'LFX', '', '18818868086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-18 18:15:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818868086' LIMIT 1);
UPDATE users SET nick_name='LFX', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818868086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760756529', 'U13760756529', '庆峰', '', '13760756529', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-18 15:47:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760756529' LIMIT 1);
UPDATE users SET nick_name='庆峰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760756529';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751738133', 'U13751738133', 'Sun', '', '13751738133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-15 19:34:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751738133' LIMIT 1);
UPDATE users SET nick_name='Sun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751738133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18594962799', 'U18594962799', '沉嚣', '', '18594962799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-15 17:44:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18594962799' LIMIT 1);
UPDATE users SET nick_name='沉嚣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18594962799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521181678', 'U15521181678', '桃仔', '', '15521181678', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-15 14:06:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521181678' LIMIT 1);
UPDATE users SET nick_name='桃仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521181678';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18078802076', 'U18078802076', '窝法氦镁烷', '', '18078802076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 267, '2026-02-14 16:35:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18078802076' LIMIT 1);
UPDATE users SET nick_name='窝法氦镁烷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 267) WHERE phone='18078802076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626286566', 'U15626286566', 'Cora', '', '15626286566', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-14 14:18:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626286566' LIMIT 1);
UPDATE users SET nick_name='Cora', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626286566';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642722706', 'U13642722706', '寶寶🎀', '', '13642722706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-14 10:21:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642722706' LIMIT 1);
UPDATE users SET nick_name='寶寶🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642722706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822279573', 'U13822279573', '杨洋', '', '13822279573', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-13 21:19:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822279573' LIMIT 1);
UPDATE users SET nick_name='杨洋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822279573';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688881623', 'U18688881623', '18688881623', '', '18688881623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-13 17:17:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688881623' LIMIT 1);
UPDATE users SET nick_name='18688881623', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688881623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924303066', 'U13924303066', '可', '', '13924303066', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-13 10:51:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924303066' LIMIT 1);
UPDATE users SET nick_name='可', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924303066';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15259206677', 'U15259206677', 'dszzz', '', '15259206677', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-13 10:49:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15259206677' LIMIT 1);
UPDATE users SET nick_name='dszzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15259206677';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622825027', 'U13622825027', '杰叔叔', '', '13622825027', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-12 19:05:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622825027' LIMIT 1);
UPDATE users SET nick_name='杰叔叔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622825027';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924151667', 'U13924151667', '13924151667', '', '13924151667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-12 18:05:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924151667' LIMIT 1);
UPDATE users SET nick_name='13924151667', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924151667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13432016361', 'U13432016361', 'dszzz', '', '13432016361', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-12 17:45:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13432016361' LIMIT 1);
UPDATE users SET nick_name='dszzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13432016361';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18200895991', 'U18200895991', '18200895991', '', '18200895991', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-12 17:11:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18200895991' LIMIT 1);
UPDATE users SET nick_name='18200895991', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18200895991';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18903076900', 'U18903076900', '18903076900', '', '18903076900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-12 16:03:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18903076900' LIMIT 1);
UPDATE users SET nick_name='18903076900', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18903076900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13336468976', 'U13336468976', '胜🐑🐑🐑🐑', '', '13336468976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-12 12:00:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13336468976' LIMIT 1);
UPDATE users SET nick_name='胜🐑🐑🐑🐑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13336468976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560043219', 'U13560043219', '13560043219', '', '13560043219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-11 18:33:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560043219' LIMIT 1);
UPDATE users SET nick_name='13560043219', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560043219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247685131', 'U13247685131', '🍜', '', '13247685131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-11 15:29:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247685131' LIMIT 1);
UPDATE users SET nick_name='🍜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13247685131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15122759885', 'U15122759885', '师太', '', '15122759885', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2026-02-11 07:44:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15122759885' LIMIT 1);
UPDATE users SET nick_name='师太', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='15122759885';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825180275', 'U18825180275', '阿炜', '', '18825180275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-02-10 13:12:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825180275' LIMIT 1);
UPDATE users SET nick_name='阿炜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18825180275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022871116', 'U18022871116', '胖五', '', '18022871116', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-10 12:21:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022871116' LIMIT 1);
UPDATE users SET nick_name='胖五', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022871116';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13054408261', 'U13054408261', '13054408261', '', '13054408261', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-10 12:20:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13054408261' LIMIT 1);
UPDATE users SET nick_name='13054408261', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13054408261';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922737191', 'U13922737191', '13922737191', '', '13922737191', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-09 21:50:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922737191' LIMIT 1);
UPDATE users SET nick_name='13922737191', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922737191';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828487726', 'U13828487726', 'kinkie', '', '13828487726', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-09 15:15:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828487726' LIMIT 1);
UPDATE users SET nick_name='kinkie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828487726';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13571431715', 'U13571431715', '13571431715', '', '13571431715', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-09 13:27:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13571431715' LIMIT 1);
UPDATE users SET nick_name='13571431715', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13571431715';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826273730', 'U13826273730', '13826273730', '', '13826273730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-09 13:02:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826273730' LIMIT 1);
UPDATE users SET nick_name='13826273730', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826273730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802760988', 'U13802760988', 'heavy', '', '13802760988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-08 23:45:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802760988' LIMIT 1);
UPDATE users SET nick_name='heavy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802760988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920348252', 'U15920348252', '双华', '', '15920348252', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-08 18:41:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920348252' LIMIT 1);
UPDATE users SET nick_name='双华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920348252';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620899200', 'U18620899200', '18620899200', '', '18620899200', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-08 15:16:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620899200' LIMIT 1);
UPDATE users SET nick_name='18620899200', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620899200';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826203137', 'U13826203137', '13826203137', '', '13826203137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-08 15:09:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826203137' LIMIT 1);
UPDATE users SET nick_name='13826203137', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826203137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13511025585', 'U13511025585', '13511025585', '', '13511025585', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-08 14:54:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13511025585' LIMIT 1);
UPDATE users SET nick_name='13511025585', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13511025585';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427590129', 'U13427590129', '可乐🍟', '', '13427590129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-08 12:06:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427590129' LIMIT 1);
UPDATE users SET nick_name='可乐🍟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427590129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826176448', 'U13826176448', 'TZB', '', '13826176448', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-07 22:48:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826176448' LIMIT 1);
UPDATE users SET nick_name='TZB', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826176448';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15814520251', 'U15814520251', '15814520251', '', '15814520251', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-07 18:59:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15814520251' LIMIT 1);
UPDATE users SET nick_name='15814520251', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15814520251';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352816160', 'U13352816160', 'jeremy', '', '13352816160', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-07 15:03:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352816160' LIMIT 1);
UPDATE users SET nick_name='jeremy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352816160';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665223152', 'U17665223152', '滴歪踢', '', '17665223152', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-07 11:53:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665223152' LIMIT 1);
UPDATE users SET nick_name='滴歪踢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665223152';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113072269', 'U13113072269', 'Chenh', '', '13113072269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-07 11:15:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113072269' LIMIT 1);
UPDATE users SET nick_name='Chenh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13113072269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609036851', 'U13609036851', '13609036851', '', '13609036851', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-06 13:08:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609036851' LIMIT 1);
UPDATE users SET nick_name='13609036851', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609036851';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625080812', 'U15625080812', 'Michae1🛠', '', '15625080812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-05 17:00:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625080812' LIMIT 1);
UPDATE users SET nick_name='Michae1🛠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625080812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928093129', 'U18928093129', '格子', '', '18928093129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-05 14:14:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928093129' LIMIT 1);
UPDATE users SET nick_name='格子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928093129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580330246', 'U13580330246', '黄', '', '13580330246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2026-02-04 20:10:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580330246' LIMIT 1);
UPDATE users SET nick_name='黄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13580330246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15923280208', 'U15923280208', '多多', '', '15923280208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-04 19:24:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15923280208' LIMIT 1);
UPDATE users SET nick_name='多多', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15923280208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928722000', 'U18928722000', '18928722000', '', '18928722000', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-04 17:42:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928722000' LIMIT 1);
UPDATE users SET nick_name='18928722000', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928722000';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923846889', 'U13923846889', 'mema', '', '13923846889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-04 15:38:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923846889' LIMIT 1);
UPDATE users SET nick_name='mema', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13923846889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13819110664', 'U13819110664', '木攸目-小木老师', '', '13819110664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-02-04 13:03:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13819110664' LIMIT 1);
UPDATE users SET nick_name='木攸目-小木老师', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13819110664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17811532286', 'U17811532286', 'Yanni', '', '17811532286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2026-02-04 11:54:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17811532286' LIMIT 1);
UPDATE users SET nick_name='Yanni', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='17811532286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418114399', 'U13418114399', '美丽', '', '13418114399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-04 11:02:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418114399' LIMIT 1);
UPDATE users SET nick_name='美丽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13418114399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13677666893', 'U13677666893', 'MuMu', '', '13677666893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-03 21:45:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13677666893' LIMIT 1);
UPDATE users SET nick_name='MuMu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13677666893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609761100', 'U13609761100', 'beetle', '', '13609761100', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-03 21:25:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609761100' LIMIT 1);
UPDATE users SET nick_name='beetle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609761100';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750576060', 'U13750576060', '睡不着', '', '13750576060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-03 20:48:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750576060' LIMIT 1);
UPDATE users SET nick_name='睡不着', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13750576060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15210011030', 'U15210011030', 'j', '', '15210011030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-03 20:26:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15210011030' LIMIT 1);
UPDATE users SET nick_name='j', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15210011030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688116666', 'U13688116666', 'Mr.Pine', '', '13688116666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-03 19:42:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688116666' LIMIT 1);
UPDATE users SET nick_name='Mr.Pine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13688116666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920846566', 'U15920846566', '15920846566', '', '15920846566', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-03 18:05:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920846566' LIMIT 1);
UPDATE users SET nick_name='15920846566', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920846566';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15718120050', 'U15718120050', 'Judy', '', '15718120050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-03 16:34:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15718120050' LIMIT 1);
UPDATE users SET nick_name='Judy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15718120050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520221325', 'U18520221325', 'Hiro', '', '18520221325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1, '2026-02-03 13:54:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520221325' LIMIT 1);
UPDATE users SET nick_name='Hiro', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1) WHERE phone='18520221325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665624989', 'U18665624989', '皮蛋solo粥', '', '18665624989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-03 13:32:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665624989' LIMIT 1);
UPDATE users SET nick_name='皮蛋solo粥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665624989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18301182117', 'U18301182117', 'padabong🌞', '', '18301182117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-03 13:12:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18301182117' LIMIT 1);
UPDATE users SET nick_name='padabong🌞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18301182117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610010176', 'U13610010176', '13610010176', '', '13610010176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-03 13:10:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610010176' LIMIT 1);
UPDATE users SET nick_name='13610010176', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610010176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18661234545', 'U18661234545', '18661234545', '', '18661234545', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-02 20:53:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18661234545' LIMIT 1);
UPDATE users SET nick_name='18661234545', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18661234545';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13625774201', 'U13625774201', '13625774201', '', '13625774201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-02 18:48:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13625774201' LIMIT 1);
UPDATE users SET nick_name='13625774201', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13625774201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989004563', 'U15989004563', '岑', '', '15989004563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-02 17:16:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989004563' LIMIT 1);
UPDATE users SET nick_name='岑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989004563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688872003', 'U13688872003', 'lau', '', '13688872003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-02 14:33:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688872003' LIMIT 1);
UPDATE users SET nick_name='lau', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13688872003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332774464', 'U13332774464', 'Claire', '', '13332774464', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-02 10:30:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332774464' LIMIT 1);
UPDATE users SET nick_name='Claire', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13332774464';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18188807801', 'U18188807801', '18188807801', '', '18188807801', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-01 20:51:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18188807801' LIMIT 1);
UPDATE users SET nick_name='18188807801', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18188807801';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13070100378', 'U13070100378', 'jiexun', '', '13070100378', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-01 19:36:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13070100378' LIMIT 1);
UPDATE users SET nick_name='jiexun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13070100378';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535048610', 'U13535048610', 'Step', '', '13535048610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-01 19:13:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535048610' LIMIT 1);
UPDATE users SET nick_name='Step', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535048610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18747369258', 'U18747369258', '晴天', '', '18747369258', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-01 18:23:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18747369258' LIMIT 1);
UPDATE users SET nick_name='晴天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18747369258';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520169494', 'U18520169494', 'C.', '', '18520169494', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-01 12:30:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520169494' LIMIT 1);
UPDATE users SET nick_name='C.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520169494';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18851059129', 'U18851059129', 'ᘉᗩᘉᖻᑘ🎀', '', '18851059129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-01 09:55:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18851059129' LIMIT 1);
UPDATE users SET nick_name='ᘉᗩᘉᖻᑘ🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18851059129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928841892', 'U18928841892', '18928841892', '', '18928841892', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-01 09:53:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928841892' LIMIT 1);
UPDATE users SET nick_name='18928841892', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928841892';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102731819', 'U18102731819', '18102731819', '', '18102731819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-31 18:49:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102731819' LIMIT 1);
UPDATE users SET nick_name='18102731819', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102731819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480976287', 'U13480976287', 'KaYung', '', '13480976287', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-31 16:11:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480976287' LIMIT 1);
UPDATE users SET nick_name='KaYung', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480976287';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19584736648', 'U19584736648', '阿金', '', '19584736648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-31 16:07:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19584736648' LIMIT 1);
UPDATE users SET nick_name='阿金', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19584736648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430238083', 'U13430238083', 'Azure.', '', '13430238083', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-31 15:17:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430238083' LIMIT 1);
UPDATE users SET nick_name='Azure.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430238083';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502092831', 'U18502092831', 'Carmen', '', '18502092831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 166, '2026-01-31 14:39:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502092831' LIMIT 1);
UPDATE users SET nick_name='Carmen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 166) WHERE phone='18502092831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17378233962', 'U17378233962', 'ʕ ᵔᴥᵔ ʔ', '', '17378233962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-31 13:10:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17378233962' LIMIT 1);
UPDATE users SET nick_name='ʕ ᵔᴥᵔ ʔ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17378233962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570575028', 'U13570575028', '咖啡猫CoCo', '', '13570575028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 15, '2026-01-31 13:07:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570575028' LIMIT 1);
UPDATE users SET nick_name='咖啡猫CoCo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 15) WHERE phone='13570575028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620367715', 'U16620367715', '小学森', '', '16620367715', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-31 12:32:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620367715' LIMIT 1);
UPDATE users SET nick_name='小学森', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620367715';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15994965901', 'U15994965901', '15994965901', '', '15994965901', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-31 11:01:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15994965901' LIMIT 1);
UPDATE users SET nick_name='15994965901', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15994965901';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602318462', 'U15602318462', '15602318462', '', '15602318462', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-31 10:53:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602318462' LIMIT 1);
UPDATE users SET nick_name='15602318462', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602318462';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18877423848', 'U18877423848', '黄鸿昌', '', '18877423848', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-30 10:05:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18877423848' LIMIT 1);
UPDATE users SET nick_name='黄鸿昌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18877423848';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665078402', 'U17665078402', '李阳_', '', '17665078402', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1657, '2026-01-30 07:51:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665078402' LIMIT 1);
UPDATE users SET nick_name='李阳_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1657) WHERE phone='17665078402';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13549967334', 'U13549967334', '1', '', '13549967334', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-29 22:15:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13549967334' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13549967334';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902063545', 'U15902063545', 'Angel', '', '15902063545', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-29 18:08:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902063545' LIMIT 1);
UPDATE users SET nick_name='Angel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902063545';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15873448253', 'U15873448253', '刘能能', '', '15873448253', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-29 17:43:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15873448253' LIMIT 1);
UPDATE users SET nick_name='刘能能', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15873448253';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826064964', 'U13826064964', 'Gaffey', '', '13826064964', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-29 15:19:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826064964' LIMIT 1);
UPDATE users SET nick_name='Gaffey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826064964';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666024331', 'U18666024331', 'vinn', '', '18666024331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-29 14:14:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666024331' LIMIT 1);
UPDATE users SET nick_name='vinn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666024331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711440422', 'U13711440422', '二十', '', '13711440422', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-29 10:15:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711440422' LIMIT 1);
UPDATE users SET nick_name='二十', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711440422';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18611240718', 'U18611240718', '陈妙远', '', '18611240718', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-28 20:44:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18611240718' LIMIT 1);
UPDATE users SET nick_name='陈妙远', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18611240718';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19128619778', 'U19128619778', '张生', '', '19128619778', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-28 17:11:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19128619778' LIMIT 1);
UPDATE users SET nick_name='张生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19128619778';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989238220', 'U15989238220', '15989238220', '', '15989238220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-28 16:13:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989238220' LIMIT 1);
UPDATE users SET nick_name='15989238220', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989238220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826038351', 'U13826038351', '1', '', '13826038351', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-27 19:15:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826038351' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826038351';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826311627', 'U18826311627', '_lRss', '', '18826311627', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-27 17:53:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826311627' LIMIT 1);
UPDATE users SET nick_name='_lRss', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826311627';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013375036', 'U15013375036', '筠筠', '', '15013375036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-26 15:18:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013375036' LIMIT 1);
UPDATE users SET nick_name='筠筠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013375036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19074707980', 'U19074707980', '丁妍', '', '19074707980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-26 15:08:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19074707980' LIMIT 1);
UPDATE users SET nick_name='丁妍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19074707980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19195558757', 'U19195558757', '💕KARY🕌', '', '19195558757', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-25 19:24:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19195558757' LIMIT 1);
UPDATE users SET nick_name='💕KARY🕌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19195558757';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818875103', 'U18818875103', 'W', '', '18818875103', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-25 11:12:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818875103' LIMIT 1);
UPDATE users SET nick_name='W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818875103';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126770701', 'U18126770701', '🍧', '', '18126770701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-25 11:04:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126770701' LIMIT 1);
UPDATE users SET nick_name='🍧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18126770701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15605297760', 'U15605297760', '15605297760', '', '15605297760', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-25 10:44:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15605297760' LIMIT 1);
UPDATE users SET nick_name='15605297760', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15605297760';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15220016826', 'U15220016826', 'Phyphy', '', '15220016826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-25 10:42:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15220016826' LIMIT 1);
UPDATE users SET nick_name='Phyphy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15220016826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697799121', 'U13697799121', 'j', '', '13697799121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-24 21:52:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697799121' LIMIT 1);
UPDATE users SET nick_name='j', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697799121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565402320', 'U18565402320', 'ddd', '', '18565402320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-24 17:31:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565402320' LIMIT 1);
UPDATE users SET nick_name='ddd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565402320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15822547428', 'U15822547428', '已经', '', '15822547428', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-24 14:41:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15822547428' LIMIT 1);
UPDATE users SET nick_name='已经', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15822547428';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102086026', 'U15102086026', 'zhiyong', '', '15102086026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-24 11:48:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102086026' LIMIT 1);
UPDATE users SET nick_name='zhiyong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15102086026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352897385', 'U13352897385', '13352897385', '', '13352897385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-24 11:40:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352897385' LIMIT 1);
UPDATE users SET nick_name='13352897385', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352897385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520123687', 'U18520123687', 'L', '', '18520123687', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-24 10:37:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520123687' LIMIT 1);
UPDATE users SET nick_name='L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520123687';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19166305113', 'U19166305113', '葡萄成熟時', '', '19166305113', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-24 10:21:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19166305113' LIMIT 1);
UPDATE users SET nick_name='葡萄成熟時', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19166305113';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18378525380', 'U18378525380', '天天开心没烦恼', '', '18378525380', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-24 10:21:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18378525380' LIMIT 1);
UPDATE users SET nick_name='天天开心没烦恼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18378525380';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18539797418', 'U18539797418', '66', '', '18539797418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-24 10:11:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18539797418' LIMIT 1);
UPDATE users SET nick_name='66', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18539797418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15328291656', 'U15328291656', '涂涂', '', '15328291656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-24 10:10:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15328291656' LIMIT 1);
UPDATE users SET nick_name='涂涂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15328291656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520392890', 'U18520392890', '木子', '', '18520392890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-23 21:35:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520392890' LIMIT 1);
UPDATE users SET nick_name='木子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520392890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13656539559', 'U13656539559', '13656539559', '', '13656539559', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-23 20:32:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13656539559' LIMIT 1);
UPDATE users SET nick_name='13656539559', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13656539559';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18929531570', 'U18929531570', '18929531570', '', '18929531570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-23 14:13:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18929531570' LIMIT 1);
UPDATE users SET nick_name='18929531570', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18929531570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711473766', 'U13711473766', 'Joey', '', '13711473766', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-23 13:30:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711473766' LIMIT 1);
UPDATE users SET nick_name='Joey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711473766';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332825213', 'U13332825213', '13332825213', '', '13332825213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-23 13:02:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332825213' LIMIT 1);
UPDATE users SET nick_name='13332825213', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13332825213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229979937', 'U13229979937', '白', '', '13229979937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-23 12:56:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229979937' LIMIT 1);
UPDATE users SET nick_name='白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229979937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926785023', 'U18926785023', '咕噜咕噜', '', '18926785023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-23 12:01:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926785023' LIMIT 1);
UPDATE users SET nick_name='咕噜咕噜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926785023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302072601', 'U18302072601', '美女', '', '18302072601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-22 19:57:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302072601' LIMIT 1);
UPDATE users SET nick_name='美女', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18302072601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680180587', 'U18680180587', '18680180587', '', '18680180587', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-22 17:04:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680180587' LIMIT 1);
UPDATE users SET nick_name='18680180587', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680180587';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724977014', 'U13724977014', 'kk醒了o', '', '13724977014', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-22 14:02:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724977014' LIMIT 1);
UPDATE users SET nick_name='kk醒了o', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724977014';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535441025', 'U13535441025', '饼', '', '13535441025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-22 10:04:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535441025' LIMIT 1);
UPDATE users SET nick_name='饼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535441025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802086908', 'U18802086908', '玻', '', '18802086908', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-21 23:59:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802086908' LIMIT 1);
UPDATE users SET nick_name='玻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802086908';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814146819', 'U18814146819', 'sunny', '', '18814146819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-21 18:32:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814146819' LIMIT 1);
UPDATE users SET nick_name='sunny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814146819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822262211', 'U13822262211', '13822262211', '', '13822262211', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-21 16:17:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822262211' LIMIT 1);
UPDATE users SET nick_name='13822262211', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822262211';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17278588034', 'U17278588034', 'cici', '', '17278588034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-21 13:26:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17278588034' LIMIT 1);
UPDATE users SET nick_name='cici', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17278588034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989051321', 'U15989051321', '不问二八', '', '15989051321', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-21 12:20:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989051321' LIMIT 1);
UPDATE users SET nick_name='不问二八', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989051321';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18487183695', 'U18487183695', 'miaomiao', '', '18487183695', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-21 11:18:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18487183695' LIMIT 1);
UPDATE users SET nick_name='miaomiao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18487183695';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826408690', 'U18826408690', '天南星', '', '18826408690', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-20 18:44:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826408690' LIMIT 1);
UPDATE users SET nick_name='天南星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826408690';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18872847648', 'U18872847648', '18872847648', '', '18872847648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-20 18:42:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18872847648' LIMIT 1);
UPDATE users SET nick_name='18872847648', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18872847648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19277530728', 'U19277530728', 'mini_lin__', '', '19277530728', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-19 19:24:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19277530728' LIMIT 1);
UPDATE users SET nick_name='mini_lin__', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19277530728';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13670997516', 'U13670997516', '13670997516', '', '13670997516', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-19 17:51:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13670997516' LIMIT 1);
UPDATE users SET nick_name='13670997516', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13670997516';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18023968891', 'U18023968891', 'S7', '', '18023968891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-19 17:21:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18023968891' LIMIT 1);
UPDATE users SET nick_name='S7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18023968891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600061816', 'U13600061816', '13600061816', '', '13600061816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-19 16:31:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600061816' LIMIT 1);
UPDATE users SET nick_name='13600061816', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600061816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13788885737', 'U13788885737', '13788885737', '', '13788885737', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-19 13:02:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13788885737' LIMIT 1);
UPDATE users SET nick_name='13788885737', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13788885737';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13523008899', 'U13523008899', 'Fáng😧', '', '13523008899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-18 20:51:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13523008899' LIMIT 1);
UPDATE users SET nick_name='Fáng😧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13523008899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18008601702', 'U18008601702', '昕', '', '18008601702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-18 16:33:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18008601702' LIMIT 1);
UPDATE users SET nick_name='昕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18008601702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302031026', 'U18302031026', '阿拉雷', '', '18302031026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-18 15:26:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302031026' LIMIT 1);
UPDATE users SET nick_name='阿拉雷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18302031026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899950779', 'U15899950779', '睿', '', '15899950779', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-18 15:24:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899950779' LIMIT 1);
UPDATE users SET nick_name='睿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15899950779';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302229582', 'U13302229582', '◆', '', '13302229582', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-18 13:44:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302229582' LIMIT 1);
UPDATE users SET nick_name='◆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302229582';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15295751891', 'U15295751891', 'hq', '', '15295751891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-18 13:30:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15295751891' LIMIT 1);
UPDATE users SET nick_name='hq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15295751891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660210130', 'U13660210130', 'x', '', '13660210130', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-17 20:42:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660210130' LIMIT 1);
UPDATE users SET nick_name='x', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660210130';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760690199', 'U13760690199', 'Tingel吴晓君', '', '13760690199', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-17 18:52:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760690199' LIMIT 1);
UPDATE users SET nick_name='Tingel吴晓君', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760690199';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18962100590', 'U18962100590', '18962100590', '', '18962100590', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-17 18:23:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18962100590' LIMIT 1);
UPDATE users SET nick_name='18962100590', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18962100590';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17806788303', 'U17806788303', '17806788303', '', '17806788303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-17 17:56:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17806788303' LIMIT 1);
UPDATE users SET nick_name='17806788303', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17806788303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680209733', 'U18680209733', 'Conny', '', '18680209733', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-17 15:09:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680209733' LIMIT 1);
UPDATE users SET nick_name='Conny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680209733';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13568199881', 'U13568199881', '13568199881', '', '13568199881', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-17 15:08:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13568199881' LIMIT 1);
UPDATE users SET nick_name='13568199881', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13568199881';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680289590', 'U18680289590', '18680289590', '', '18680289590', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-17 14:39:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680289590' LIMIT 1);
UPDATE users SET nick_name='18680289590', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680289590';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13806931608', 'U13806931608', 'L.XY', '', '13806931608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-17 14:15:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13806931608' LIMIT 1);
UPDATE users SET nick_name='L.XY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13806931608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826103854', 'U18826103854', '北極熊亮亮', '', '18826103854', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-01-17 14:13:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826103854' LIMIT 1);
UPDATE users SET nick_name='北極熊亮亮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18826103854';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128212464', 'U13128212464', 'Charlie', '', '13128212464', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-17 13:38:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128212464' LIMIT 1);
UPDATE users SET nick_name='Charlie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128212464';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578758984', 'U18578758984', '尚', '', '18578758984', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-17 12:50:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578758984' LIMIT 1);
UPDATE users SET nick_name='尚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578758984';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13178809780', 'U13178809780', '饼', '', '13178809780', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-17 12:48:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13178809780' LIMIT 1);
UPDATE users SET nick_name='饼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13178809780';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18501328846', 'U18501328846', '18501328846', '', '18501328846', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-16 21:51:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18501328846' LIMIT 1);
UPDATE users SET nick_name='18501328846', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18501328846';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17373449055', 'U17373449055', '17373449055', '', '17373449055', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-16 19:08:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17373449055' LIMIT 1);
UPDATE users SET nick_name='17373449055', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17373449055';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028099156', 'U18028099156', '丫丫', '', '18028099156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-16 18:08:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028099156' LIMIT 1);
UPDATE users SET nick_name='丫丫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028099156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560199881', 'U13560199881', '🔥INN小燃', '', '13560199881', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-16 15:35:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560199881' LIMIT 1);
UPDATE users SET nick_name='🔥INN小燃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560199881';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802880502', 'U13802880502', 'May Sun🍊', '', '13802880502', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-16 11:44:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802880502' LIMIT 1);
UPDATE users SET nick_name='May Sun🍊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802880502';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570435831', 'U13570435831', 'Tristan', '', '13570435831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-15 20:40:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570435831' LIMIT 1);
UPDATE users SET nick_name='Tristan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570435831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529232786', 'U18529232786', '乐银林', '', '18529232786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-15 20:13:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529232786' LIMIT 1);
UPDATE users SET nick_name='乐银林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529232786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13668952054', 'U13668952054', 'Elvis', '', '13668952054', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-15 15:47:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13668952054' LIMIT 1);
UPDATE users SET nick_name='Elvis', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13668952054';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825190293', 'U18825190293', 'TAORANYU 👧🏻', '', '18825190293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-15 12:04:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825190293' LIMIT 1);
UPDATE users SET nick_name='TAORANYU 👧🏻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825190293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800048491', 'U15800048491', 'Ben', '', '15800048491', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-15 12:02:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800048491' LIMIT 1);
UPDATE users SET nick_name='Ben', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800048491';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13502831136', 'U13502831136', '13502831136', '', '13502831136', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-14 21:30:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13502831136' LIMIT 1);
UPDATE users SET nick_name='13502831136', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13502831136';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18368612800', 'U18368612800', 'Don Carbo', '', '18368612800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2026-01-14 20:31:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18368612800' LIMIT 1);
UPDATE users SET nick_name='Don Carbo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18368612800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18980117818', 'U18980117818', 'spectrum', '', '18980117818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-14 19:43:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18980117818' LIMIT 1);
UPDATE users SET nick_name='spectrum', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18980117818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692406125', 'U15692406125', 'akizuki', '', '15692406125', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-14 15:39:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692406125' LIMIT 1);
UPDATE users SET nick_name='akizuki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692406125';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622711240', 'U15622711240', '得', '', '15622711240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-14 10:41:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622711240' LIMIT 1);
UPDATE users SET nick_name='得', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622711240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724888786', 'U13724888786', '吃宵夜', '', '13724888786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-14 09:56:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724888786' LIMIT 1);
UPDATE users SET nick_name='吃宵夜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724888786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13618474340', 'U13618474340', '燃燃', '', '13618474340', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-13 13:12:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13618474340' LIMIT 1);
UPDATE users SET nick_name='燃燃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13618474340';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926461857', 'U13926461857', '13926461857', '', '13926461857', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-13 13:04:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926461857' LIMIT 1);
UPDATE users SET nick_name='13926461857', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926461857';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826276799', 'U18826276799', '谭诗谕(谭格格)', '', '18826276799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-13 12:48:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826276799' LIMIT 1);
UPDATE users SET nick_name='谭诗谕(谭格格)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826276799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620741666', 'U17620741666', 'aaa', '', '17620741666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-13 12:40:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620741666' LIMIT 1);
UPDATE users SET nick_name='aaa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620741666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128256537', 'U13128256537', 'Pokyan', '', '13128256537', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-12 19:18:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128256537' LIMIT 1);
UPDATE users SET nick_name='Pokyan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128256537';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113761684', 'U15113761684', '00+', '', '15113761684', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-12 17:09:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113761684' LIMIT 1);
UPDATE users SET nick_name='00+', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113761684';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19880917273', 'U19880917273', '雪地', '', '19880917273', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2026-01-12 17:01:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19880917273' LIMIT 1);
UPDATE users SET nick_name='雪地', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='19880917273';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18211283640', 'U18211283640', '阿雅', '', '18211283640', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-12 14:26:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18211283640' LIMIT 1);
UPDATE users SET nick_name='阿雅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18211283640';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13048059129', 'U13048059129', '13048059129', '', '13048059129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-12 13:58:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13048059129' LIMIT 1);
UPDATE users SET nick_name='13048059129', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13048059129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18594921117', 'U18594921117', 'Niki_LEE', '', '18594921117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-12 13:46:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18594921117' LIMIT 1);
UPDATE users SET nick_name='Niki_LEE', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18594921117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989739439', 'U15989739439', 'W', '', '15989739439', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-12 13:44:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989739439' LIMIT 1);
UPDATE users SET nick_name='W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989739439';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312866286', 'U13312866286', '趙Joe', '', '13312866286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-12 10:33:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312866286' LIMIT 1);
UPDATE users SET nick_name='趙Joe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13312866286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15112189007', 'U15112189007', 'Jackson&ZHENG', '', '15112189007', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-12 09:26:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15112189007' LIMIT 1);
UPDATE users SET nick_name='Jackson&ZHENG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15112189007';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13809206006', 'U13809206006', '酷酷曲奇', '', '13809206006', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-11 19:56:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13809206006' LIMIT 1);
UPDATE users SET nick_name='酷酷曲奇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13809206006';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626884268', 'U15626884268', '15626884268', '', '15626884268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-11 12:56:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626884268' LIMIT 1);
UPDATE users SET nick_name='15626884268', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626884268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13670241550', 'U13670241550', '小维', '', '13670241550', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-11 11:45:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13670241550' LIMIT 1);
UPDATE users SET nick_name='小维', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13670241550';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17805899180', 'U17805899180', 'w', '', '17805899180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-11 11:00:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17805899180' LIMIT 1);
UPDATE users SET nick_name='w', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17805899180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318804947', 'U13318804947', '罗震', '', '13318804947', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-11 09:48:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318804947' LIMIT 1);
UPDATE users SET nick_name='罗震', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318804947';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15071210816', 'U15071210816', 'general', '', '15071210816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-10 21:23:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15071210816' LIMIT 1);
UPDATE users SET nick_name='general', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15071210816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19865848049', 'U19865848049', 'limeee', '', '19865848049', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-10 18:34:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19865848049' LIMIT 1);
UPDATE users SET nick_name='limeee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19865848049';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711628228', 'U13711628228', '13711628228', '', '13711628228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-10 14:44:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711628228' LIMIT 1);
UPDATE users SET nick_name='13711628228', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711628228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600492412', 'U13600492412', 'kalvin', '', '13600492412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-10 13:59:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600492412' LIMIT 1);
UPDATE users SET nick_name='kalvin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600492412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17673160033', 'U17673160033', 'Keith', '', '17673160033', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-10 12:19:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17673160033' LIMIT 1);
UPDATE users SET nick_name='Keith', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17673160033';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560023346', 'U13560023346', 'tt', '', '13560023346', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-10 11:38:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560023346' LIMIT 1);
UPDATE users SET nick_name='tt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560023346';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632321838', 'U13632321838', '魏', '', '13632321838', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-09 20:41:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632321838' LIMIT 1);
UPDATE users SET nick_name='魏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632321838';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022362619', 'U18022362619', '18022362619', '', '18022362619', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-09 20:07:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022362619' LIMIT 1);
UPDATE users SET nick_name='18022362619', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022362619';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416316247', 'U13416316247', '13416316247', '', '13416316247', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-09 10:36:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416316247' LIMIT 1);
UPDATE users SET nick_name='13416316247', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416316247';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697729214', 'U13697729214', 'RReNoa', '', '13697729214', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-08 19:27:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697729214' LIMIT 1);
UPDATE users SET nick_name='RReNoa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697729214';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610239282', 'U13610239282', '13610239282', '', '13610239282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-08 19:20:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610239282' LIMIT 1);
UPDATE users SET nick_name='13610239282', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610239282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15363382024', 'U15363382024', 'Reverie', '', '15363382024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-08 18:27:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15363382024' LIMIT 1);
UPDATE users SET nick_name='Reverie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15363382024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18148957559', 'U18148957559', 'Forky🦆', '', '18148957559', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-08 17:04:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18148957559' LIMIT 1);
UPDATE users SET nick_name='Forky🦆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18148957559';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18138344763', 'U18138344763', '🙂.', '', '18138344763', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-08 17:03:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18138344763' LIMIT 1);
UPDATE users SET nick_name='🙂.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18138344763';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026211168', 'U18026211168', '李先生', '', '18026211168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-08 16:52:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026211168' LIMIT 1);
UPDATE users SET nick_name='李先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026211168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588686703', 'U18588686703', '宁', '', '18588686703', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-08 12:13:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588686703' LIMIT 1);
UPDATE users SET nick_name='宁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588686703';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013317895', 'U15013317895', '11', '', '15013317895', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-07 17:09:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013317895' LIMIT 1);
UPDATE users SET nick_name='11', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013317895';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322196861', 'U17322196861', '不个元', '', '17322196861', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-07 09:22:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322196861' LIMIT 1);
UPDATE users SET nick_name='不个元', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322196861';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18870063100', 'U18870063100', '18870063100', '', '18870063100', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-06 16:02:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18870063100' LIMIT 1);
UPDATE users SET nick_name='18870063100', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18870063100';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15985863866', 'U15985863866', 'Simple', '', '15985863866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-06 13:44:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15985863866' LIMIT 1);
UPDATE users SET nick_name='Simple', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15985863866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920522163', 'U15920522163', 'Loreen', '', '15920522163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-06 13:12:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920522163' LIMIT 1);
UPDATE users SET nick_name='Loreen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920522163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724808371', 'U13724808371', '👋詠賢妹😉', '', '13724808371', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-06 13:06:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724808371' LIMIT 1);
UPDATE users SET nick_name='👋詠賢妹😉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724808371';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926242867', 'U13926242867', '然', '', '13926242867', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-06 12:59:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926242867' LIMIT 1);
UPDATE users SET nick_name='然', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926242867';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060603842', 'U13060603842', '🔆REYNG', '', '13060603842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-06 12:14:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060603842' LIMIT 1);
UPDATE users SET nick_name='🔆REYNG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060603842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13536144188', 'U13536144188', '13536144188', '', '13536144188', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-06 11:14:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13536144188' LIMIT 1);
UPDATE users SET nick_name='13536144188', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13536144188';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028013295', 'U18028013295', '🐈Jade🎡', '', '18028013295', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-06 09:12:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028013295' LIMIT 1);
UPDATE users SET nick_name='🐈Jade🎡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028013295';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928922910', 'U18928922910', '明鲲', '', '18928922910', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-05 17:28:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928922910' LIMIT 1);
UPDATE users SET nick_name='明鲲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928922910';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927460797', 'U19927460797', '1', '', '19927460797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-05 15:54:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927460797' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927460797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539970924', 'U13539970924', '曾小耀', '', '13539970924', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-05 13:56:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539970924' LIMIT 1);
UPDATE users SET nick_name='曾小耀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539970924';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533393922', 'U13533393922', 'Vivien X', '', '13533393922', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-05 13:02:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533393922' LIMIT 1);
UPDATE users SET nick_name='Vivien X', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533393922';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727226164', 'U13727226164', 'ws鲲(｢･ω･)｢', '', '13727226164', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-04 14:39:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727226164' LIMIT 1);
UPDATE users SET nick_name='ws鲲(｢･ω･)｢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13727226164';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18880485830', 'U18880485830', 'Yukiii', '', '18880485830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-04 12:24:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18880485830' LIMIT 1);
UPDATE users SET nick_name='Yukiii', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18880485830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15776768719', 'U15776768719', 'Wendy🍉', '', '15776768719', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-04 10:42:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15776768719' LIMIT 1);
UPDATE users SET nick_name='Wendy🍉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15776768719';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660785332', 'U13660785332', '你也喜欢鲜花吗', '', '13660785332', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-03 19:27:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660785332' LIMIT 1);
UPDATE users SET nick_name='你也喜欢鲜花吗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660785332';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15522065370', 'U15522065370', 'poli', '', '15522065370', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-03 18:57:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15522065370' LIMIT 1);
UPDATE users SET nick_name='poli', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15522065370';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18960704916', 'U18960704916', '王坤', '', '18960704916', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-03 16:29:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18960704916' LIMIT 1);
UPDATE users SET nick_name='王坤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18960704916';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503010403', 'U13503010403', '💎💰金灿灿林燕㊣', '', '13503010403', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-03 14:45:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503010403' LIMIT 1);
UPDATE users SET nick_name='💎💰金灿灿林燕㊣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503010403';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760862866', 'U13760862866', '1', '', '13760862866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-03 14:19:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760862866' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760862866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580483242', 'U13580483242', 'huang', '', '13580483242', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-03 14:11:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580483242' LIMIT 1);
UPDATE users SET nick_name='huang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580483242';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17860620985', 'U17860620985', '幸运薯饼🥔', '', '17860620985', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-03 14:05:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17860620985' LIMIT 1);
UPDATE users SET nick_name='幸运薯饼🥔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17860620985';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580353573', 'U13580353573', '小仁', '', '13580353573', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-03 12:21:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580353573' LIMIT 1);
UPDATE users SET nick_name='小仁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580353573';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13501537845', 'U13501537845', 'derrick', '', '13501537845', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-03 10:21:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13501537845' LIMIT 1);
UPDATE users SET nick_name='derrick', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13501537845';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692427015', 'U15692427015', '15692427015', '', '15692427015', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-03 10:05:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692427015' LIMIT 1);
UPDATE users SET nick_name='15692427015', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692427015';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18986541562', 'U18986541562', '哈哈', '', '18986541562', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-02 15:34:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18986541562' LIMIT 1);
UPDATE users SET nick_name='哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18986541562';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640661221', 'U13640661221', '刘小P', '', '13640661221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-02 15:21:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640661221' LIMIT 1);
UPDATE users SET nick_name='刘小P', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640661221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988448669', 'U18988448669', 'Cody', '', '18988448669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-01-02 14:28:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988448669' LIMIT 1);
UPDATE users SET nick_name='Cody', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18988448669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613148818', 'U18613148818', 'Ken', '', '18613148818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-02 13:41:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613148818' LIMIT 1);
UPDATE users SET nick_name='Ken', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613148818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660163935', 'U13660163935', '13660163935', '', '13660163935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-02 13:11:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660163935' LIMIT 1);
UPDATE users SET nick_name='13660163935', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660163935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18119406837', 'U18119406837', '西皮🌞', '', '18119406837', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-02 13:05:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18119406837' LIMIT 1);
UPDATE users SET nick_name='西皮🌞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18119406837';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14748100387', 'U14748100387', '14748100387', '', '14748100387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-02 13:04:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14748100387' LIMIT 1);
UPDATE users SET nick_name='14748100387', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14748100387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018796117', 'U15018796117', 'mei💋丹', '', '15018796117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-02 10:42:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018796117' LIMIT 1);
UPDATE users SET nick_name='mei💋丹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018796117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202901186', 'U13202901186', '。', '', '13202901186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-01 19:36:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202901186' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202901186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680524682', 'U18680524682', '18680524682', '', '18680524682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-01 13:39:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680524682' LIMIT 1);
UPDATE users SET nick_name='18680524682', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680524682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642699272', 'U13642699272', '13642699272', '', '13642699272', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-01 13:10:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642699272' LIMIT 1);
UPDATE users SET nick_name='13642699272', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642699272';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820774887', 'U18820774887', '鹏', '', '18820774887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-01-01 13:08:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820774887' LIMIT 1);
UPDATE users SET nick_name='鹏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820774887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917371347', 'U15917371347', 'Sam', '', '15917371347', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-31 19:38:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917371347' LIMIT 1);
UPDATE users SET nick_name='Sam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917371347';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19195591962', 'U19195591962', '大海', '', '19195591962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-31 18:47:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19195591962' LIMIT 1);
UPDATE users SET nick_name='大海', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19195591962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126752145', 'U18126752145', '18126752145', '', '18126752145', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-31 18:24:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126752145' LIMIT 1);
UPDATE users SET nick_name='18126752145', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18126752145';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602895083', 'U13602895083', '志华', '', '13602895083', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-31 15:33:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602895083' LIMIT 1);
UPDATE users SET nick_name='志华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602895083';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13875855553', 'U13875855553', '欧阳', '', '13875855553', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-12-31 11:53:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13875855553' LIMIT 1);
UPDATE users SET nick_name='欧阳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13875855553';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18821973723', 'U18821973723', '1', '', '18821973723', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-30 23:54:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18821973723' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18821973723';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828484433', 'U13828484433', '🔆Summer🌈', '', '13828484433', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-30 13:17:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828484433' LIMIT 1);
UPDATE users SET nick_name='🔆Summer🌈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828484433';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13039583561', 'U13039583561', '哇呜', '', '13039583561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-30 10:14:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13039583561' LIMIT 1);
UPDATE users SET nick_name='哇呜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13039583561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602378833', 'U13602378833', '🌞', '', '13602378833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-29 18:15:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602378833' LIMIT 1);
UPDATE users SET nick_name='🌞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602378833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622149660', 'U15622149660', '双蛋', '', '15622149660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 332, '2025-12-28 19:49:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622149660' LIMIT 1);
UPDATE users SET nick_name='双蛋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 332) WHERE phone='15622149660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18077221126', 'U18077221126', 'ha', '', '18077221126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-28 17:05:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18077221126' LIMIT 1);
UPDATE users SET nick_name='ha', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18077221126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631309028', 'U13631309028', '邓女士', '', '13631309028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-28 16:44:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631309028' LIMIT 1);
UPDATE users SET nick_name='邓女士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631309028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560353307', 'U13560353307', '13560353307', '', '13560353307', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-28 14:45:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560353307' LIMIT 1);
UPDATE users SET nick_name='13560353307', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560353307';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588502485', 'U18588502485', 'LCX🐮', '', '18588502485', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-28 11:43:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588502485' LIMIT 1);
UPDATE users SET nick_name='LCX🐮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588502485';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620027125', 'U17620027125', '17620027125', '', '17620027125', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-28 09:56:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620027125' LIMIT 1);
UPDATE users SET nick_name='17620027125', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620027125';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662501129', 'U13662501129', '大浪淘沙', '', '13662501129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-27 21:12:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662501129' LIMIT 1);
UPDATE users SET nick_name='大浪淘沙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662501129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927681741', 'U19927681741', '19927681741', '', '19927681741', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-27 18:47:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927681741' LIMIT 1);
UPDATE users SET nick_name='19927681741', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927681741';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925050224', 'U13925050224', 'Julie', '', '13925050224', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-27 17:26:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925050224' LIMIT 1);
UPDATE users SET nick_name='Julie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925050224';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13189299459', 'U13189299459', 'zz', '', '13189299459', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-27 17:05:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13189299459' LIMIT 1);
UPDATE users SET nick_name='zz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13189299459';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665090620', 'U18665090620', 'T_H', '', '18665090620', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-27 17:01:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665090620' LIMIT 1);
UPDATE users SET nick_name='T_H', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665090620';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17825493538', 'U17825493538', '17825493538', '', '17825493538', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-27 16:36:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17825493538' LIMIT 1);
UPDATE users SET nick_name='17825493538', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17825493538';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13423046656', 'U13423046656', '13423046656', '', '13423046656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-27 16:09:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13423046656' LIMIT 1);
UPDATE users SET nick_name='13423046656', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13423046656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933967490', 'U18933967490', '温', '', '18933967490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-27 14:14:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933967490' LIMIT 1);
UPDATE users SET nick_name='温', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933967490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13032870210', 'U13032870210', 'kyo', '', '13032870210', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-27 12:51:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13032870210' LIMIT 1);
UPDATE users SET nick_name='kyo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13032870210';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17827636666', 'U17827636666', 'zxh', '', '17827636666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-27 12:18:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17827636666' LIMIT 1);
UPDATE users SET nick_name='zxh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17827636666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268041638', 'U13268041638', 'Pyke', '', '13268041638', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-26 18:41:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268041638' LIMIT 1);
UPDATE users SET nick_name='Pyke', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268041638';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18420139979', 'U18420139979', '18420139979', '', '18420139979', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-26 16:26:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18420139979' LIMIT 1);
UPDATE users SET nick_name='18420139979', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18420139979';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539934946', 'U13539934946', 'Lok', '', '13539934946', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-26 16:23:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539934946' LIMIT 1);
UPDATE users SET nick_name='Lok', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539934946';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711621314', 'U13711621314', '13711621314', '', '13711621314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-26 13:45:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711621314' LIMIT 1);
UPDATE users SET nick_name='13711621314', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711621314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17819582117', 'U17819582117', '马吉马吉如意', '', '17819582117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-26 12:52:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17819582117' LIMIT 1);
UPDATE users SET nick_name='马吉马吉如意', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17819582117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17825253691', 'U17825253691', 'Heymi', '', '17825253691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-26 11:26:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17825253691' LIMIT 1);
UPDATE users SET nick_name='Heymi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17825253691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711621341', 'U13711621341', 'LR1Na.', '', '13711621341', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-26 10:51:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711621341' LIMIT 1);
UPDATE users SET nick_name='LR1Na.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711621341';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975244226', 'U15975244226', '01-🌊🌳', '', '15975244226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-25 16:06:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975244226' LIMIT 1);
UPDATE users SET nick_name='01-🌊🌳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975244226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750421813', 'U13750421813', 'Aria.', '', '13750421813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-25 16:06:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750421813' LIMIT 1);
UPDATE users SET nick_name='Aria.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13750421813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570073028', 'U13570073028', '13570073028', '', '13570073028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-25 16:05:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570073028' LIMIT 1);
UPDATE users SET nick_name='13570073028', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570073028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13860469130', 'U13860469130', 'tang', '', '13860469130', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-25 14:42:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13860469130' LIMIT 1);
UPDATE users SET nick_name='tang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13860469130';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902217601', 'U13902217601', '13902217601', '', '13902217601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-25 14:03:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902217601' LIMIT 1);
UPDATE users SET nick_name='13902217601', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902217601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018717125', 'U15018717125', '15018717125', '', '15018717125', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-25 13:53:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018717125' LIMIT 1);
UPDATE users SET nick_name='15018717125', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018717125';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450303190', 'U13450303190', 'lin', '', '13450303190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-25 12:20:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450303190' LIMIT 1);
UPDATE users SET nick_name='lin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450303190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989195020', 'U15989195020', '123', '', '15989195020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-25 10:57:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989195020' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989195020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18132799003', 'U18132799003', 'W', '', '18132799003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-24 23:15:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18132799003' LIMIT 1);
UPDATE users SET nick_name='W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18132799003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13637738346', 'U13637738346', '13637738346', '', '13637738346', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-24 20:51:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13637738346' LIMIT 1);
UPDATE users SET nick_name='13637738346', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13637738346';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18616376338', 'U18616376338', '嘿！', '', '18616376338', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-24 17:11:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18616376338' LIMIT 1);
UPDATE users SET nick_name='嘿！', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18616376338';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642727168', 'U13642727168', 'Vivian', '', '13642727168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-24 14:50:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642727168' LIMIT 1);
UPDATE users SET nick_name='Vivian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642727168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18002211928', 'U18002211928', '18002211928', '', '18002211928', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-24 12:59:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18002211928' LIMIT 1);
UPDATE users SET nick_name='18002211928', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18002211928';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998414428', 'U18998414428', '远远', '', '18998414428', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-24 12:41:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998414428' LIMIT 1);
UPDATE users SET nick_name='远远', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998414428';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026330772', 'U18026330772', 'JY Fang', '', '18026330772', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 21:18:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026330772' LIMIT 1);
UPDATE users SET nick_name='JY Fang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026330772';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520146508', 'U18520146508', 'kellen', '', '18520146508', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 21:01:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520146508' LIMIT 1);
UPDATE users SET nick_name='kellen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520146508';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19945000712', 'U19945000712', '19945000712', '', '19945000712', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 20:39:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19945000712' LIMIT 1);
UPDATE users SET nick_name='19945000712', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19945000712';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802502448', 'U13802502448', '13802502448', '', '13802502448', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 20:35:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802502448' LIMIT 1);
UPDATE users SET nick_name='13802502448', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802502448';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19520973434', 'U19520973434', '19520973434', '', '19520973434', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 20:34:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19520973434' LIMIT 1);
UPDATE users SET nick_name='19520973434', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19520973434';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13248250771', 'U13248250771', 'zzy', '', '13248250771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 11, '2025-12-23 17:43:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13248250771' LIMIT 1);
UPDATE users SET nick_name='zzy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 11) WHERE phone='13248250771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922487728', 'U13922487728', '苏聃', '', '13922487728', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 16:57:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922487728' LIMIT 1);
UPDATE users SET nick_name='苏聃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922487728';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19872816268', 'U19872816268', 'Bella', '', '19872816268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 13:28:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19872816268' LIMIT 1);
UPDATE users SET nick_name='Bella', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19872816268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242805131', 'U13242805131', 'Thea', '', '13242805131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 12:56:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242805131' LIMIT 1);
UPDATE users SET nick_name='Thea', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242805131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17301655563', 'U17301655563', 'alex', '', '17301655563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 12:54:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17301655563' LIMIT 1);
UPDATE users SET nick_name='alex', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17301655563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17820573640', 'U17820573640', '🍟', '', '17820573640', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 11:49:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17820573640' LIMIT 1);
UPDATE users SET nick_name='🍟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17820573640';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17727316881', 'U17727316881', 'My Chemical Romance 🍊', '', '17727316881', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 11:14:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17727316881' LIMIT 1);
UPDATE users SET nick_name='My Chemical Romance 🍊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17727316881';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122288969', 'U18122288969', '中西西', '', '18122288969', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-23 09:37:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122288969' LIMIT 1);
UPDATE users SET nick_name='中西西', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122288969';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760858238', 'U13760858238', 'S\\😱', '', '13760858238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-22 22:44:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760858238' LIMIT 1);
UPDATE users SET nick_name='S\\😱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760858238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17763765958', 'U17763765958', 'Phang', '', '17763765958', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-22 18:43:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17763765958' LIMIT 1);
UPDATE users SET nick_name='Phang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17763765958';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820118191', 'U18820118191', '洛洛', '', '18820118191', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-22 17:40:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820118191' LIMIT 1);
UPDATE users SET nick_name='洛洛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820118191';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975417536', 'U15975417536', '吖young', '', '15975417536', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-22 15:58:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975417536' LIMIT 1);
UPDATE users SET nick_name='吖young', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975417536';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13320081657', 'U13320081657', '13320081657', '', '13320081657', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-22 15:52:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13320081657' LIMIT 1);
UPDATE users SET nick_name='13320081657', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13320081657';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13321581990', 'U13321581990', 'Tsuki', '', '13321581990', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-22 14:08:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13321581990' LIMIT 1);
UPDATE users SET nick_name='Tsuki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13321581990';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18903051314', 'U18903051314', 'Queenie', '', '18903051314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-22 13:13:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18903051314' LIMIT 1);
UPDATE users SET nick_name='Queenie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18903051314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18040519420', 'U18040519420', '18040519420', '', '18040519420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-22 13:09:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18040519420' LIMIT 1);
UPDATE users SET nick_name='18040519420', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18040519420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17512894315', 'U17512894315', 'Edward宋🍁', '', '17512894315', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-22 12:48:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17512894315' LIMIT 1);
UPDATE users SET nick_name='Edward宋🍁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17512894315';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265518912', 'U13265518912', 'Hush!', '', '13265518912', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-22 12:42:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265518912' LIMIT 1);
UPDATE users SET nick_name='Hush!', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265518912';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682217249', 'U13682217249', '森焰崽', '', '13682217249', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-22 10:00:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682217249' LIMIT 1);
UPDATE users SET nick_name='森焰崽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13682217249';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13903856016', 'U13903856016', '昱婷王', '', '13903856016', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-21 23:00:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13903856016' LIMIT 1);
UPDATE users SET nick_name='昱婷王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13903856016';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924217799', 'U13924217799', '13924217799', '', '13924217799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-21 17:34:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924217799' LIMIT 1);
UPDATE users SET nick_name='13924217799', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924217799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521314021', 'U15521314021', 'Leonidas', '', '15521314021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-21 13:11:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521314021' LIMIT 1);
UPDATE users SET nick_name='Leonidas', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521314021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19907473156', 'U19907473156', '19907473156', '', '19907473156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-21 12:36:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19907473156' LIMIT 1);
UPDATE users SET nick_name='19907473156', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19907473156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17785252030', 'U17785252030', 'Roy', '', '17785252030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-21 11:52:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17785252030' LIMIT 1);
UPDATE users SET nick_name='Roy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17785252030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13910678422', 'U13910678422', 'Frank', '', '13910678422', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-21 11:27:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13910678422' LIMIT 1);
UPDATE users SET nick_name='Frank', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13910678422';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17379609181', 'U17379609181', 'xt。。', '', '17379609181', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-21 10:36:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17379609181' LIMIT 1);
UPDATE users SET nick_name='xt。。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17379609181';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926260405', 'U13926260405', '13926260405', '', '13926260405', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-21 10:21:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926260405' LIMIT 1);
UPDATE users SET nick_name='13926260405', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926260405';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13809899246', 'U13809899246', 'syswhugw', '', '13809899246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-21 10:20:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13809899246' LIMIT 1);
UPDATE users SET nick_name='syswhugw', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13809899246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19022025204', 'U19022025204', '星', '', '19022025204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-20 20:04:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19022025204' LIMIT 1);
UPDATE users SET nick_name='星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19022025204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824467809', 'U13824467809', '13824467809', '', '13824467809', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-20 18:15:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824467809' LIMIT 1);
UPDATE users SET nick_name='13824467809', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824467809';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18824179061', 'U18824179061', '阿Xiu', '', '18824179061', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-12-20 17:33:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18824179061' LIMIT 1);
UPDATE users SET nick_name='阿Xiu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18824179061';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914504759', 'U15914504759', 'Forky', '', '15914504759', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-20 17:05:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914504759' LIMIT 1);
UPDATE users SET nick_name='Forky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914504759';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925137669', 'U13925137669', 'MRT', '', '13925137669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-20 16:57:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925137669' LIMIT 1);
UPDATE users SET nick_name='MRT', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925137669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430128041', 'U13430128041', 'Alan Golphi', '', '13430128041', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-20 16:34:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430128041' LIMIT 1);
UPDATE users SET nick_name='Alan Golphi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430128041';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430356573', 'U13430356573', 't.🦖', '', '13430356573', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-20 14:24:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430356573' LIMIT 1);
UPDATE users SET nick_name='t.🦖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430356573';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826091246', 'U13826091246', 'QSL', '', '13826091246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-12-20 14:01:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826091246' LIMIT 1);
UPDATE users SET nick_name='QSL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13826091246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632346680', 'U13632346680', '13632346680', '', '13632346680', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-20 12:58:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632346680' LIMIT 1);
UPDATE users SET nick_name='13632346680', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632346680';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922232706', 'U13922232706', 'jeffery', '', '13922232706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-20 12:20:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922232706' LIMIT 1);
UPDATE users SET nick_name='jeffery', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922232706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168324413', 'U13168324413', 'Eileen', '', '13168324413', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-20 11:12:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168324413' LIMIT 1);
UPDATE users SET nick_name='Eileen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13168324413';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013191855', 'U15013191855', 'cimu🍬🎄', '', '15013191855', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-20 10:59:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013191855' LIMIT 1);
UPDATE users SET nick_name='cimu🍬🎄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013191855';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915816034', 'U15915816034', '大红花🙉', '', '15915816034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-19 20:46:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915816034' LIMIT 1);
UPDATE users SET nick_name='大红花🙉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915816034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13421117466', 'U13421117466', '13421117466', '', '13421117466', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-19 17:26:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13421117466' LIMIT 1);
UPDATE users SET nick_name='13421117466', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13421117466';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822149427', 'U13822149427', '🎀', '', '13822149427', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-19 17:10:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822149427' LIMIT 1);
UPDATE users SET nick_name='🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822149427';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18894665851', 'U18894665851', '.', '', '18894665851', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-19 15:01:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18894665851' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18894665851';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826257110', 'U13826257110', '13826257110', '', '13826257110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-19 13:08:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826257110' LIMIT 1);
UPDATE users SET nick_name='13826257110', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826257110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989019396', 'U15989019396', 'Sindy', '', '15989019396', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-19 13:06:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989019396' LIMIT 1);
UPDATE users SET nick_name='Sindy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989019396';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028669382', 'U18028669382', 'Lareina', '', '18028669382', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-18 20:20:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028669382' LIMIT 1);
UPDATE users SET nick_name='Lareina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028669382';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265176998', 'U13265176998', '陈黎平', '', '13265176998', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-18 16:16:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265176998' LIMIT 1);
UPDATE users SET nick_name='陈黎平', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265176998';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824480876', 'U13824480876', '米妮', '', '13824480876', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-18 16:10:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824480876' LIMIT 1);
UPDATE users SET nick_name='米妮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824480876';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217469648', 'U15217469648', 'Elena', '', '15217469648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-18 15:56:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217469648' LIMIT 1);
UPDATE users SET nick_name='Elena', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217469648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15216702022', 'U15216702022', 'Kimi Law', '', '15216702022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-18 15:37:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15216702022' LIMIT 1);
UPDATE users SET nick_name='Kimi Law', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15216702022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011875893', 'U18011875893', '祁哥', '', '18011875893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-18 15:00:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011875893' LIMIT 1);
UPDATE users SET nick_name='祁哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011875893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826124611', 'U13826124611', 'Gary雷', '', '13826124611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-18 12:50:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826124611' LIMIT 1);
UPDATE users SET nick_name='Gary雷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826124611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570504494', 'U13570504494', '🔔招财猫没了铃铛🔔', '', '13570504494', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-18 12:45:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570504494' LIMIT 1);
UPDATE users SET nick_name='🔔招财猫没了铃铛🔔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570504494';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535598982', 'U13535598982', 'Double', '', '13535598982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-18 11:34:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535598982' LIMIT 1);
UPDATE users SET nick_name='Double', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535598982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13723582539', 'U13723582539', '映雪', '', '13723582539', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-18 11:07:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13723582539' LIMIT 1);
UPDATE users SET nick_name='映雪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13723582539';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620489394', 'U18620489394', '18620489394', '', '18620489394', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-17 20:03:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620489394' LIMIT 1);
UPDATE users SET nick_name='18620489394', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620489394';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924271631', 'U13924271631', '13924271631', '', '13924271631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-17 18:00:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924271631' LIMIT 1);
UPDATE users SET nick_name='13924271631', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924271631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19925019514', 'U19925019514', '闪电', '', '19925019514', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-17 13:59:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19925019514' LIMIT 1);
UPDATE users SET nick_name='闪电', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19925019514';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822793628', 'U13822793628', 'RamoY', '', '13822793628', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-17 12:37:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822793628' LIMIT 1);
UPDATE users SET nick_name='RamoY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822793628';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902255495', 'U13902255495', '期开富来了', '', '13902255495', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-16 20:10:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902255495' LIMIT 1);
UPDATE users SET nick_name='期开富来了', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902255495';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013205217', 'U15013205217', 'CCC', '', '15013205217', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-16 19:25:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013205217' LIMIT 1);
UPDATE users SET nick_name='CCC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013205217';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13764222208', 'U13764222208', 'AuSe', '', '13764222208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-16 15:23:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13764222208' LIMIT 1);
UPDATE users SET nick_name='AuSe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13764222208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13360592354', 'U13360592354', '嘉颖KeepGoing', '', '13360592354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-16 14:08:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13360592354' LIMIT 1);
UPDATE users SET nick_name='嘉颖KeepGoing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13360592354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820004882', 'U18820004882', 'CATHERINE.', '', '18820004882', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-16 12:43:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820004882' LIMIT 1);
UPDATE users SET nick_name='CATHERINE.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820004882';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15279151864', 'U15279151864', '15279151864', '', '15279151864', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-15 18:52:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15279151864' LIMIT 1);
UPDATE users SET nick_name='15279151864', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15279151864';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17880505026', 'U17880505026', '17880505026', '', '17880505026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-15 17:52:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17880505026' LIMIT 1);
UPDATE users SET nick_name='17880505026', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17880505026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924799878', 'U13924799878', '泽', '', '13924799878', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-15 12:06:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924799878' LIMIT 1);
UPDATE users SET nick_name='泽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924799878';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710664816', 'U13710664816', 'Kaleidoscope', '', '13710664816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-15 01:24:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710664816' LIMIT 1);
UPDATE users SET nick_name='Kaleidoscope', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710664816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17836043295', 'U17836043295', '树', '', '17836043295', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-14 20:08:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17836043295' LIMIT 1);
UPDATE users SET nick_name='树', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17836043295';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760631111', 'U13760631111', '老叶', '', '13760631111', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 106, '2025-12-14 16:21:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760631111' LIMIT 1);
UPDATE users SET nick_name='老叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 106) WHERE phone='13760631111';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15210578045', 'U15210578045', '15210578045', '', '15210578045', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-14 16:05:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15210578045' LIMIT 1);
UPDATE users SET nick_name='15210578045', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15210578045';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826124688', 'U13826124688', '霍', '', '13826124688', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-14 16:03:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826124688' LIMIT 1);
UPDATE users SET nick_name='霍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826124688';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922208523', 'U13922208523', 'miko', '', '13922208523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2025-12-14 15:41:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922208523' LIMIT 1);
UPDATE users SET nick_name='miko', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='13922208523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688890202', 'U13688890202', '0Garry0', '', '13688890202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-14 12:45:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688890202' LIMIT 1);
UPDATE users SET nick_name='0Garry0', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13688890202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627863142', 'U15627863142', '全卡卡卡卡卡住了', '', '15627863142', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-14 12:04:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627863142' LIMIT 1);
UPDATE users SET nick_name='全卡卡卡卡卡住了', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627863142';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322271587', 'U15322271587', '郑zzz', '', '15322271587', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-14 11:30:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322271587' LIMIT 1);
UPDATE users SET nick_name='郑zzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15322271587';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16626729644', 'U16626729644', '梓盈🐷', '', '16626729644', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-12-14 11:24:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16626729644' LIMIT 1);
UPDATE users SET nick_name='梓盈🐷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='16626729644';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15542605159', 'U15542605159', 'Maxine', '', '15542605159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-14 11:15:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15542605159' LIMIT 1);
UPDATE users SET nick_name='Maxine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15542605159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120361926', 'U19120361926', '杨开心', '', '19120361926', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-14 10:22:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120361926' LIMIT 1);
UPDATE users SET nick_name='杨开心', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120361926';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122493420', 'U18122493420', 'T', '', '18122493420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-12-13 21:10:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122493420' LIMIT 1);
UPDATE users SET nick_name='T', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18122493420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15687384892', 'U15687384892', '我怀念的', '', '15687384892', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-13 20:34:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15687384892' LIMIT 1);
UPDATE users SET nick_name='我怀念的', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15687384892';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802933243', 'U13802933243', 'C', '', '13802933243', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-13 19:48:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802933243' LIMIT 1);
UPDATE users SET nick_name='C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802933243';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922361021', 'U18922361021', '笛珩', '', '18922361021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-13 16:23:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922361021' LIMIT 1);
UPDATE users SET nick_name='笛珩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922361021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17701919982', 'U17701919982', '17701919982', '', '17701919982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-13 15:35:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17701919982' LIMIT 1);
UPDATE users SET nick_name='17701919982', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17701919982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13528777336', 'U13528777336', '咸', '', '13528777336', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-13 15:27:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13528777336' LIMIT 1);
UPDATE users SET nick_name='咸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13528777336';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202518707', 'U13202518707', 'l', '', '13202518707', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-13 14:32:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202518707' LIMIT 1);
UPDATE users SET nick_name='l', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202518707';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15002020955', 'U15002020955', '陛下', '', '15002020955', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-13 13:24:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15002020955' LIMIT 1);
UPDATE users SET nick_name='陛下', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15002020955';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678953936', 'U13678953936', '座右铭', '', '13678953936', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-12 22:54:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678953936' LIMIT 1);
UPDATE users SET nick_name='座右铭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13678953936';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13165136192', 'U13165136192', 'nn', '', '13165136192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-12 20:45:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13165136192' LIMIT 1);
UPDATE users SET nick_name='nn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13165136192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664082206', 'U18664082206', '清凉', '', '18664082206', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-12 19:45:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664082206' LIMIT 1);
UPDATE users SET nick_name='清凉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664082206';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13118624763', 'U13118624763', '吴挂面🎾', '', '13118624763', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-12 14:43:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13118624763' LIMIT 1);
UPDATE users SET nick_name='吴挂面🎾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13118624763';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302097177', 'U18302097177', 'XCM👙', '', '18302097177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-12 14:41:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302097177' LIMIT 1);
UPDATE users SET nick_name='XCM👙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18302097177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18871657477', 'U18871657477', '方块', '', '18871657477', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-12 12:22:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18871657477' LIMIT 1);
UPDATE users SET nick_name='方块', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18871657477';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13870340087', 'U13870340087', 'debug', '', '13870340087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-12 11:05:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13870340087' LIMIT 1);
UPDATE users SET nick_name='debug', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13870340087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18017863560', 'U18017863560', 'Ha', '', '18017863560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-12 10:34:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18017863560' LIMIT 1);
UPDATE users SET nick_name='Ha', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18017863560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632393978', 'U13632393978', '元', '', '13632393978', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-11 20:57:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632393978' LIMIT 1);
UPDATE users SET nick_name='元', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632393978';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975346523', 'U15975346523', 'Wwei_', '', '15975346523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-11 19:13:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975346523' LIMIT 1);
UPDATE users SET nick_name='Wwei_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975346523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729885100', 'U13729885100', 'net', '', '13729885100', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-11 16:56:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729885100' LIMIT 1);
UPDATE users SET nick_name='net', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729885100';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989176069', 'U15989176069', '陳', '', '15989176069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-11 16:36:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989176069' LIMIT 1);
UPDATE users SET nick_name='陳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989176069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422108455', 'U13422108455', '爆锤椰壳', '', '13422108455', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-11 13:15:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422108455' LIMIT 1);
UPDATE users SET nick_name='爆锤椰壳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422108455';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15396252367', 'U15396252367', '15396252367', '', '15396252367', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-11 12:47:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15396252367' LIMIT 1);
UPDATE users SET nick_name='15396252367', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15396252367';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13645024115', 'U13645024115', '橙子鹤', '', '13645024115', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-11 12:01:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13645024115' LIMIT 1);
UPDATE users SET nick_name='橙子鹤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13645024115';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320150877', 'U18320150877', '枫少', '', '18320150877', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-10 20:57:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320150877' LIMIT 1);
UPDATE users SET nick_name='枫少', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320150877';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168852777', 'U13168852777', '13168852777', '', '13168852777', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-10 17:16:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168852777' LIMIT 1);
UPDATE users SET nick_name='13168852777', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13168852777';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13364300275', 'U13364300275', 'Kane.S', '', '13364300275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-10 17:06:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13364300275' LIMIT 1);
UPDATE users SET nick_name='Kane.S', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13364300275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17727905573', 'U17727905573', 'Wangkkk', '', '17727905573', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-10 16:39:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17727905573' LIMIT 1);
UPDATE users SET nick_name='Wangkkk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17727905573';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665066656', 'U17665066656', '17665066656', '', '17665066656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-10 15:50:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665066656' LIMIT 1);
UPDATE users SET nick_name='17665066656', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665066656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521088371', 'U15521088371', '加绒', '', '15521088371', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-10 15:13:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521088371' LIMIT 1);
UPDATE users SET nick_name='加绒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521088371';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13728893549', 'U13728893549', '13728893549', '', '13728893549', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-10 13:06:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13728893549' LIMIT 1);
UPDATE users SET nick_name='13728893549', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13728893549';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620107561', 'U18620107561', '柳', '', '18620107561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-10 10:48:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620107561' LIMIT 1);
UPDATE users SET nick_name='柳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620107561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925092814', 'U13925092814', 'HEY', '', '13925092814', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-09 22:33:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925092814' LIMIT 1);
UPDATE users SET nick_name='HEY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925092814';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434311105', 'U13434311105', '13434311105', '', '13434311105', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-09 19:00:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434311105' LIMIT 1);
UPDATE users SET nick_name='13434311105', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13434311105';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665728110', 'U18665728110', '🌞🌞', '', '18665728110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-09 18:14:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665728110' LIMIT 1);
UPDATE users SET nick_name='🌞🌞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665728110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609748162', 'U13609748162', '失魂🐟', '', '13609748162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-09 14:58:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609748162' LIMIT 1);
UPDATE users SET nick_name='失魂🐟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609748162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19979957452', 'U19979957452', '👀', '', '19979957452', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-09 11:14:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19979957452' LIMIT 1);
UPDATE users SET nick_name='👀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19979957452';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434310266', 'U13434310266', '咪！', '', '13434310266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-09 08:06:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434310266' LIMIT 1);
UPDATE users SET nick_name='咪！', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13434310266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18617369046', 'U18617369046', 'sea', '', '18617369046', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-08 20:11:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18617369046' LIMIT 1);
UPDATE users SET nick_name='sea', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18617369046';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922220876', 'U18922220876', '郑', '', '18922220876', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-08 16:06:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922220876' LIMIT 1);
UPDATE users SET nick_name='郑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922220876';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928789366', 'U13928789366', '13928789366', '', '13928789366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-08 15:54:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928789366' LIMIT 1);
UPDATE users SET nick_name='13928789366', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928789366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026137201', 'U18026137201', 'Yan🍔🥑', '', '18026137201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-08 14:30:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026137201' LIMIT 1);
UPDATE users SET nick_name='Yan🍔🥑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026137201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602498037', 'U13602498037', 'Yuri🌙玥希', '', '13602498037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-08 13:33:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602498037' LIMIT 1);
UPDATE users SET nick_name='Yuri🌙玥希', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602498037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929547710', 'U13929547710', 'Elvis', '', '13929547710', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-08 00:57:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929547710' LIMIT 1);
UPDATE users SET nick_name='Elvis', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929547710';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14717513026', 'U14717513026', '14717513026', '', '14717513026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-07 18:05:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14717513026' LIMIT 1);
UPDATE users SET nick_name='14717513026', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14717513026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600460716', 'U13600460716', 'Winnie', '', '13600460716', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-07 17:52:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600460716' LIMIT 1);
UPDATE users SET nick_name='Winnie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600460716';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19925800410', 'U19925800410', '🌚 TUO 🌝', '', '19925800410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-07 16:15:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19925800410' LIMIT 1);
UPDATE users SET nick_name='🌚 TUO 🌝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19925800410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924635208', 'U19924635208', 'Kong', '', '19924635208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-07 15:42:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924635208' LIMIT 1);
UPDATE users SET nick_name='Kong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924635208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127952794', 'U18127952794', '詹仕', '', '18127952794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-07 13:12:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127952794' LIMIT 1);
UPDATE users SET nick_name='詹仕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127952794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819489001', 'U18819489001', '郑zzz', '', '18819489001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-07 11:27:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819489001' LIMIT 1);
UPDATE users SET nick_name='郑zzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819489001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18624909280', 'U18624909280', '雷雨', '', '18624909280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-07 11:15:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18624909280' LIMIT 1);
UPDATE users SET nick_name='雷雨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18624909280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15278474766', 'U15278474766', '15278474766', '', '15278474766', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-07 11:04:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15278474766' LIMIT 1);
UPDATE users SET nick_name='15278474766', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15278474766';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13537194312', 'U13537194312', '13537194312', '', '13537194312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-07 10:54:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13537194312' LIMIT 1);
UPDATE users SET nick_name='13537194312', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13537194312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920112417', 'U15920112417', '兜兜🌱💰', '', '15920112417', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-07 10:34:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920112417' LIMIT 1);
UPDATE users SET nick_name='兜兜🌱💰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920112417';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302339887', 'U13302339887', 'lololo', '', '13302339887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 21:56:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302339887' LIMIT 1);
UPDATE users SET nick_name='lololo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302339887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19926242891', 'U19926242891', '19926242891', '', '19926242891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 21:46:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19926242891' LIMIT 1);
UPDATE users SET nick_name='19926242891', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19926242891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660826885', 'U13660826885', 'LL', '', '13660826885', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 19:43:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660826885' LIMIT 1);
UPDATE users SET nick_name='LL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660826885';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18023468486', 'U18023468486', '卡比', '', '18023468486', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 18:48:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18023468486' LIMIT 1);
UPDATE users SET nick_name='卡比', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18023468486';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18229890711', 'U18229890711', '18229890711', '', '18229890711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 18:47:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18229890711' LIMIT 1);
UPDATE users SET nick_name='18229890711', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18229890711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13038239267', 'U13038239267', '13038239267', '', '13038239267', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 18:29:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13038239267' LIMIT 1);
UPDATE users SET nick_name='13038239267', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13038239267';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13425721028', 'U13425721028', 'zjh', '', '13425721028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 15:08:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13425721028' LIMIT 1);
UPDATE users SET nick_name='zjh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13425721028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19988228924', 'U19988228924', 'Chris', '', '19988228924', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 14:33:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19988228924' LIMIT 1);
UPDATE users SET nick_name='Chris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19988228924';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826006275', 'U13826006275', 'Lyy', '', '13826006275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 14:24:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826006275' LIMIT 1);
UPDATE users SET nick_name='Lyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826006275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626296589', 'U15626296589', 'kk', '', '15626296589', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 12:24:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626296589' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626296589';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352842983', 'U13352842983', '13352842983', '', '13352842983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 12:10:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352842983' LIMIT 1);
UPDATE users SET nick_name='13352842983', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352842983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719095718', 'U13719095718', '13719095718', '', '13719095718', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-06 10:10:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719095718' LIMIT 1);
UPDATE users SET nick_name='13719095718', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719095718';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18301063722', 'U18301063722', '嘻嘻', '', '18301063722', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-05 17:25:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18301063722' LIMIT 1);
UPDATE users SET nick_name='嘻嘻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18301063722';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719407020', 'U13719407020', 'Joyin.X', '', '13719407020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-05 16:22:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719407020' LIMIT 1);
UPDATE users SET nick_name='Joyin.X', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719407020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825090236', 'U13825090236', '林海雪原', '', '13825090236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-05 15:54:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825090236' LIMIT 1);
UPDATE users SET nick_name='林海雪原', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825090236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632304456', 'U13632304456', '13632304456', '', '13632304456', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-05 15:32:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632304456' LIMIT 1);
UPDATE users SET nick_name='13632304456', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632304456';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926103317', 'U18926103317', '如如', '', '18926103317', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-04 20:29:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926103317' LIMIT 1);
UPDATE users SET nick_name='如如', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926103317';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15055160185', 'U15055160185', 'Cc', '', '15055160185', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-04 18:37:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15055160185' LIMIT 1);
UPDATE users SET nick_name='Cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15055160185';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602822561', 'U13602822561', '林先生', '', '13602822561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-04 17:58:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602822561' LIMIT 1);
UPDATE users SET nick_name='林先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602822561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918624745', 'U15918624745', '15918624745', '', '15918624745', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-04 15:27:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918624745' LIMIT 1);
UPDATE users SET nick_name='15918624745', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918624745';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620016542', 'U18620016542', 'PPPonyᐝ', '', '18620016542', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-04 10:01:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620016542' LIMIT 1);
UPDATE users SET nick_name='PPPonyᐝ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620016542';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13777451207', 'U13777451207', '胡', '', '13777451207', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-04 09:47:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13777451207' LIMIT 1);
UPDATE users SET nick_name='胡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13777451207';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711548560', 'U13711548560', '🙃', '', '13711548560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-03 22:45:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711548560' LIMIT 1);
UPDATE users SET nick_name='🙃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711548560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825263136', 'U13825263136', 'Dan', '', '13825263136', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-03 21:09:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825263136' LIMIT 1);
UPDATE users SET nick_name='Dan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825263136';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928738369', 'U18928738369', 'vivi', '', '18928738369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-03 12:54:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928738369' LIMIT 1);
UPDATE users SET nick_name='vivi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928738369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13186988794', 'U13186988794', '吴', '', '13186988794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-03 11:32:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13186988794' LIMIT 1);
UPDATE users SET nick_name='吴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13186988794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588299569', 'U18588299569', '唐羽宇', '', '18588299569', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-02 20:42:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588299569' LIMIT 1);
UPDATE users SET nick_name='唐羽宇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588299569';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13051558762', 'U13051558762', '孙当妮', '', '13051558762', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-02 19:26:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13051558762' LIMIT 1);
UPDATE users SET nick_name='孙当妮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13051558762';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521388158', 'U15521388158', '1', '', '15521388158', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-02 18:12:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521388158' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521388158';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902383572', 'U18902383572', '亚森', '', '18902383572', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-02 17:59:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902383572' LIMIT 1);
UPDATE users SET nick_name='亚森', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18902383572';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18344312194', 'U18344312194', '希', '', '18344312194', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-02 17:48:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18344312194' LIMIT 1);
UPDATE users SET nick_name='希', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18344312194';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927701027', 'U19927701027', '🔮micmicjy🔮', '', '19927701027', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-02 17:41:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927701027' LIMIT 1);
UPDATE users SET nick_name='🔮micmicjy🔮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927701027';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018754185', 'U15018754185', 'myth', '', '15018754185', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-02 15:44:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018754185' LIMIT 1);
UPDATE users SET nick_name='myth', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018754185';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989212563', 'U15989212563', 'EP', '', '15989212563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-02 11:04:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989212563' LIMIT 1);
UPDATE users SET nick_name='EP', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989212563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19200238192', 'U19200238192', '不会抓娃娃', '', '19200238192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-01 20:18:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19200238192' LIMIT 1);
UPDATE users SET nick_name='不会抓娃娃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19200238192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533546730', 'U13533546730', '圣莱Saintlai', '', '13533546730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-01 20:17:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533546730' LIMIT 1);
UPDATE users SET nick_name='圣莱Saintlai', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533546730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022489165', 'U18022489165', 'Dream Catcher', '', '18022489165', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-01 20:14:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022489165' LIMIT 1);
UPDATE users SET nick_name='Dream Catcher', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022489165';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18702076713', 'U18702076713', 'lily', '', '18702076713', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-01 19:35:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18702076713' LIMIT 1);
UPDATE users SET nick_name='lily', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18702076713';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15168886605', 'U15168886605', '15168886605', '', '15168886605', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-01 17:11:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15168886605' LIMIT 1);
UPDATE users SET nick_name='15168886605', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15168886605';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808840395', 'U13808840395', '卢劲劲 🍒', '', '13808840395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-01 13:45:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808840395' LIMIT 1);
UPDATE users SET nick_name='卢劲劲 🍒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808840395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19042361749', 'U19042361749', '雄波', '', '19042361749', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-12-01 13:36:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19042361749' LIMIT 1);
UPDATE users SET nick_name='雄波', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19042361749';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829736792', 'U13829736792', 'Jillian', '', '13829736792', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 22:37:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829736792' LIMIT 1);
UPDATE users SET nick_name='Jillian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829736792';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825160509', 'U13825160509', 'Ccc-YY🍭', '', '13825160509', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 21:44:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825160509' LIMIT 1);
UPDATE users SET nick_name='Ccc-YY🍭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825160509';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13126400200', 'U13126400200', 'Gxx', '', '13126400200', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 18:28:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13126400200' LIMIT 1);
UPDATE users SET nick_name='Gxx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13126400200';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822278974', 'U13822278974', '木', '', '13822278974', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 17:11:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822278974' LIMIT 1);
UPDATE users SET nick_name='木', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822278974';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15603003660', 'U15603003660', '青柠酸奶', '', '15603003660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 16:59:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15603003660' LIMIT 1);
UPDATE users SET nick_name='青柠酸奶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15603003660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660005913', 'U13660005913', 'Joy', '', '13660005913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 15:42:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660005913' LIMIT 1);
UPDATE users SET nick_name='Joy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660005913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798001848', 'U13798001848', 'Donald', '', '13798001848', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 15:03:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798001848' LIMIT 1);
UPDATE users SET nick_name='Donald', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798001848';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650760111', 'U13650760111', 'yy', '', '13650760111', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-11-30 13:47:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650760111' LIMIT 1);
UPDATE users SET nick_name='yy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13650760111';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512799294', 'U13512799294', '珈瑜🐰', '', '13512799294', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 13:18:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512799294' LIMIT 1);
UPDATE users SET nick_name='珈瑜🐰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512799294';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989154263', 'U15989154263', 'Keeeeee', '', '15989154263', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 12:49:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989154263' LIMIT 1);
UPDATE users SET nick_name='Keeeeee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989154263';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13415631605', 'U13415631605', 'binderok', '', '13415631605', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 10:38:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13415631605' LIMIT 1);
UPDATE users SET nick_name='binderok', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13415631605';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751783704', 'U13751783704', 'Colin Lee', '', '13751783704', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 01:29:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751783704' LIMIT 1);
UPDATE users SET nick_name='Colin Lee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751783704';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802416446', 'U13802416446', 'Miu C🐱', '', '13802416446', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-30 01:29:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802416446' LIMIT 1);
UPDATE users SET nick_name='Miu C🐱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802416446';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434163000', 'U13434163000', 'Vicky', '', '13434163000', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-11-29 17:47:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434163000' LIMIT 1);
UPDATE users SET nick_name='Vicky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13434163000';
