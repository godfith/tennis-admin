SET NAMES utf8mb4;
-- 中大店用户导入 part 1 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202025054', 'U13202025054', '13202025054', '', '13202025054', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-21 18:52:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202025054' LIMIT 1);
UPDATE users SET nick_name='13202025054', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202025054';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247541641', 'U13247541641', '喵喵', '', '13247541641', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-21 18:15:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247541641' LIMIT 1);
UPDATE users SET nick_name='喵喵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13247541641';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126715357', 'U18126715357', '18126715357', '', '18126715357', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-21 16:40:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126715357' LIMIT 1);
UPDATE users SET nick_name='18126715357', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18126715357';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813440149', 'U15813440149', '15813440149', '', '15813440149', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-21 14:17:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813440149' LIMIT 1);
UPDATE users SET nick_name='15813440149', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813440149';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544489067', 'U13544489067', '13544489067', '', '13544489067', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-21 10:23:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544489067' LIMIT 1);
UPDATE users SET nick_name='13544489067', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544489067';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622764675', 'U15622764675', '黄俊辉', '', '15622764675', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-21 10:15:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622764675' LIMIT 1);
UPDATE users SET nick_name='黄俊辉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622764675';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751769079', 'U13751769079', '邦邦', '', '13751769079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-20 13:33:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751769079' LIMIT 1);
UPDATE users SET nick_name='邦邦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751769079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570110102', 'U13570110102', '桃子', '', '13570110102', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-20 12:57:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570110102' LIMIT 1);
UPDATE users SET nick_name='桃子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570110102';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13515200859', 'U13515200859', '13515200859', '', '13515200859', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-20 11:24:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13515200859' LIMIT 1);
UPDATE users SET nick_name='13515200859', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13515200859';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711065773', 'U13711065773', '🍡丸子🐵', '', '13711065773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-19 19:56:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711065773' LIMIT 1);
UPDATE users SET nick_name='🍡丸子🐵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711065773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120011110', 'U19120011110', '国足全明星', '', '19120011110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-19 16:18:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120011110' LIMIT 1);
UPDATE users SET nick_name='国足全明星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120011110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18990628445', 'U18990628445', '18990628445', '', '18990628445', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-19 14:00:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18990628445' LIMIT 1);
UPDATE users SET nick_name='18990628445', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18990628445';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724033226', 'U13724033226', 'tracy', '', '13724033226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-19 10:28:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724033226' LIMIT 1);
UPDATE users SET nick_name='tracy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724033226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19539247963', 'U19539247963', 'joanne', '', '19539247963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-19 10:25:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19539247963' LIMIT 1);
UPDATE users SET nick_name='joanne', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19539247963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14750933152', 'U14750933152', 'DH', '', '14750933152', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-18 21:21:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14750933152' LIMIT 1);
UPDATE users SET nick_name='DH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14750933152';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600082483', 'U13600082483', '13600082483', '', '13600082483', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-18 20:30:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600082483' LIMIT 1);
UPDATE users SET nick_name='13600082483', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600082483';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18148942236', 'U18148942236', '18148942236', '', '18148942236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-18 15:30:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18148942236' LIMIT 1);
UPDATE users SET nick_name='18148942236', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18148942236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18816793753', 'U18816793753', 'MAKIKI', '', '18816793753', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-18 14:36:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18816793753' LIMIT 1);
UPDATE users SET nick_name='MAKIKI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18816793753';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13823673805', 'U13823673805', '13823673805', '', '13823673805', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-18 12:06:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13823673805' LIMIT 1);
UPDATE users SET nick_name='13823673805', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13823673805';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580315773', 'U13580315773', '13580315773', '', '13580315773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-18 10:46:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580315773' LIMIT 1);
UPDATE users SET nick_name='13580315773', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580315773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924713505', 'U19924713505', 'Neva', '', '19924713505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-18 10:35:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924713505' LIMIT 1);
UPDATE users SET nick_name='Neva', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924713505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18319109102', 'U18319109102', '_N。', '', '18319109102', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-18 10:04:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18319109102' LIMIT 1);
UPDATE users SET nick_name='_N。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18319109102';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642656236', 'U13642656236', '13642656236', '', '13642656236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 21:59:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642656236' LIMIT 1);
UPDATE users SET nick_name='13642656236', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642656236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998434934', 'U18998434934', '18998434934', '', '18998434934', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 20:35:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998434934' LIMIT 1);
UPDATE users SET nick_name='18998434934', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998434934';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533530126', 'U13533530126', '#FF0000', '', '13533530126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 20:28:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533530126' LIMIT 1);
UPDATE users SET nick_name='#FF0000', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533530126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13027207523', 'U13027207523', '13027207523', '', '13027207523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 19:55:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13027207523' LIMIT 1);
UPDATE users SET nick_name='13027207523', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13027207523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17688266736', 'U17688266736', '17688266736', '', '17688266736', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 17:43:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17688266736' LIMIT 1);
UPDATE users SET nick_name='17688266736', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17688266736';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18977535061', 'U18977535061', '18977535061', '', '18977535061', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 16:22:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18977535061' LIMIT 1);
UPDATE users SET nick_name='18977535061', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18977535061';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450219694', 'U13450219694', '13450219694', '', '13450219694', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 16:15:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450219694' LIMIT 1);
UPDATE users SET nick_name='13450219694', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450219694';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15277066234', 'U15277066234', '陳欣🧸', '', '15277066234', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 16:11:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15277066234' LIMIT 1);
UPDATE users SET nick_name='陳欣🧸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15277066234';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899972026', 'U15899972026', 'Jared', '', '15899972026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 14:35:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899972026' LIMIT 1);
UPDATE users SET nick_name='Jared', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15899972026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19129273807', 'U19129273807', '赖先生', '', '19129273807', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 14:26:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19129273807' LIMIT 1);
UPDATE users SET nick_name='赖先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19129273807';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570904888', 'U13570904888', '13570904888', '', '13570904888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 14:13:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570904888' LIMIT 1);
UPDATE users SET nick_name='13570904888', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570904888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602286616', 'U13602286616', '13602286616', '', '13602286616', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 11:15:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602286616' LIMIT 1);
UPDATE users SET nick_name='13602286616', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602286616';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866723005', 'U19866723005', '19866723005', '', '19866723005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 11:13:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866723005' LIMIT 1);
UPDATE users SET nick_name='19866723005', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19866723005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15356549438', 'U15356549438', '15356549438', '', '15356549438', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-16 20:15:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15356549438' LIMIT 1);
UPDATE users SET nick_name='15356549438', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15356549438';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15026702029', 'U15026702029', '15026702029', '', '15026702029', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-16 20:06:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15026702029' LIMIT 1);
UPDATE users SET nick_name='15026702029', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15026702029';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560016121', 'U13560016121', '13560016121', '', '13560016121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-16 19:55:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560016121' LIMIT 1);
UPDATE users SET nick_name='13560016121', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560016121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13428046474', 'U13428046474', '13428046474', '', '13428046474', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-16 15:09:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13428046474' LIMIT 1);
UPDATE users SET nick_name='13428046474', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13428046474';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975631903', 'U15975631903', 'hyun', '', '15975631903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-15 19:59:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975631903' LIMIT 1);
UPDATE users SET nick_name='hyun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975631903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620111277', 'U18620111277', '18620111277', '', '18620111277', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-15 18:31:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620111277' LIMIT 1);
UPDATE users SET nick_name='18620111277', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620111277';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588948153', 'U18588948153', '康', '', '18588948153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-15 18:12:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588948153' LIMIT 1);
UPDATE users SET nick_name='康', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588948153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925165360', 'U18925165360', '12345678', '', '18925165360', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-15 17:42:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925165360' LIMIT 1);
UPDATE users SET nick_name='12345678', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925165360';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15099889681', 'U15099889681', 'K', '', '15099889681', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-15 17:41:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15099889681' LIMIT 1);
UPDATE users SET nick_name='K', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15099889681';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798001190', 'U13798001190', '白桃重度爱好者', '', '13798001190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-15 17:30:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798001190' LIMIT 1);
UPDATE users SET nick_name='白桃重度爱好者', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798001190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521330304', 'U15521330304', '👑Mr.ShA', '', '15521330304', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-15 10:24:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521330304' LIMIT 1);
UPDATE users SET nick_name='👑Mr.ShA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521330304';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814280607', 'U18814280607', '18814280607', '', '18814280607', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-14 18:25:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814280607' LIMIT 1);
UPDATE users SET nick_name='18814280607', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814280607';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13528314223', 'U13528314223', '13528314223', '', '13528314223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-14 17:28:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13528314223' LIMIT 1);
UPDATE users SET nick_name='13528314223', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13528314223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866616500', 'U19866616500', '🥥Jackson 🍉', '', '19866616500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-14 16:51:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866616500' LIMIT 1);
UPDATE users SET nick_name='🥥Jackson 🍉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19866616500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642570177', 'U13642570177', '昭禾舒婷', '', '13642570177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-14 16:14:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642570177' LIMIT 1);
UPDATE users SET nick_name='昭禾舒婷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642570177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18652837071', 'U18652837071', 'dj', '', '18652837071', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-14 14:11:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18652837071' LIMIT 1);
UPDATE users SET nick_name='dj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18652837071';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678968012', 'U13678968012', '一闪一闪亮晶晶', '', '13678968012', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-13 23:33:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678968012' LIMIT 1);
UPDATE users SET nick_name='一闪一闪亮晶晶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13678968012';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18251933020', 'U18251933020', '山药💦', '', '18251933020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-13 21:21:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18251933020' LIMIT 1);
UPDATE users SET nick_name='山药💦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18251933020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13878803685', 'U13878803685', 'uniRR!!!', '', '13878803685', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-13 18:06:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13878803685' LIMIT 1);
UPDATE users SET nick_name='uniRR!!!', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13878803685';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13536293022', 'U13536293022', '只买上海青', '', '13536293022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-13 10:59:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13536293022' LIMIT 1);
UPDATE users SET nick_name='只买上海青', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13536293022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13237352636', 'U13237352636', 'Jasmine', '', '13237352636', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-13 10:16:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13237352636' LIMIT 1);
UPDATE users SET nick_name='Jasmine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13237352636';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925133626', 'U13925133626', '13925133626', '', '13925133626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-12 21:40:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925133626' LIMIT 1);
UPDATE users SET nick_name='13925133626', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925133626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17775174578', 'U17775174578', '17775174578', '', '17775174578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-12 19:55:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17775174578' LIMIT 1);
UPDATE users SET nick_name='17775174578', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17775174578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480277255', 'U13480277255', '13480277255', '', '13480277255', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-12 19:40:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480277255' LIMIT 1);
UPDATE users SET nick_name='13480277255', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480277255';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609772851', 'U13609772851', '曾芸 Sabrina', '', '13609772851', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-12 17:16:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609772851' LIMIT 1);
UPDATE users SET nick_name='曾芸 Sabrina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609772851';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802934813', 'U13802934813', 'jog  ', '', '13802934813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-12 10:21:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802934813' LIMIT 1);
UPDATE users SET nick_name='jog  ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802934813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18002297418', 'U18002297418', '不侍仁', '', '18002297418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 21:00:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18002297418' LIMIT 1);
UPDATE users SET nick_name='不侍仁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18002297418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826208608', 'U13826208608', '13826208608', '', '13826208608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 20:29:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826208608' LIMIT 1);
UPDATE users SET nick_name='13826208608', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826208608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760002875', 'U13760002875', '13760002875', '', '13760002875', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 20:17:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760002875' LIMIT 1);
UPDATE users SET nick_name='13760002875', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760002875';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826232935', 'U13826232935', '13826232935', '', '13826232935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 19:03:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826232935' LIMIT 1);
UPDATE users SET nick_name='13826232935', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826232935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18211470474', 'U18211470474', '👻🎊💐💐', '', '18211470474', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 18:32:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18211470474' LIMIT 1);
UPDATE users SET nick_name='👻🎊💐💐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18211470474';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15382835718', 'U15382835718', 'zzx', '', '15382835718', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 16:19:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15382835718' LIMIT 1);
UPDATE users SET nick_name='zzx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15382835718';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352780983', 'U13352780983', '13352780983', '', '13352780983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 15:45:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352780983' LIMIT 1);
UPDATE users SET nick_name='13352780983', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352780983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127550919', 'U18127550919', '18127550919', '', '18127550919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 15:15:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127550919' LIMIT 1);
UPDATE users SET nick_name='18127550919', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127550919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622845247', 'U13622845247', 'LULUB', '', '13622845247', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 15:10:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622845247' LIMIT 1);
UPDATE users SET nick_name='LULUB', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622845247';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825056993', 'U18825056993', 'ʚKyoɞ', '', '18825056993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 14:50:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825056993' LIMIT 1);
UPDATE users SET nick_name='ʚKyoɞ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825056993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620572208', 'U18620572208', '水手', '', '18620572208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 14:19:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620572208' LIMIT 1);
UPDATE users SET nick_name='水手', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620572208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818138409', 'U15818138409', '15818138409', '', '15818138409', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-11 11:06:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818138409' LIMIT 1);
UPDATE users SET nick_name='15818138409', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818138409';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316483071', 'U18316483071', '空欢喜', '', '18316483071', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 16:44:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316483071' LIMIT 1);
UPDATE users SET nick_name='空欢喜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316483071';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18575427977', 'U18575427977', '18575427977', '', '18575427977', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 16:33:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18575427977' LIMIT 1);
UPDATE users SET nick_name='18575427977', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18575427977';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928820208', 'U18928820208', '庄庄同学', '', '18928820208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 15:51:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928820208' LIMIT 1);
UPDATE users SET nick_name='庄庄同学', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928820208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922213430', 'U13922213430', '13922213430', '', '13922213430', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 14:42:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922213430' LIMIT 1);
UPDATE users SET nick_name='13922213430', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922213430';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570943082', 'U13570943082', '13570943082', '', '13570943082', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 14:36:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570943082' LIMIT 1);
UPDATE users SET nick_name='13570943082', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570943082';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13267018628', 'U13267018628', '555', '', '13267018628', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 14:28:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13267018628' LIMIT 1);
UPDATE users SET nick_name='555', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13267018628';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710463762', 'U13710463762', '13710463762', '', '13710463762', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 14:27:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710463762' LIMIT 1);
UPDATE users SET nick_name='13710463762', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710463762';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17278618305', 'U17278618305', 'Monique', '', '17278618305', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 14:25:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17278618305' LIMIT 1);
UPDATE users SET nick_name='Monique', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17278618305';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013110505', 'U15013110505', 'ϵ( \'Θ\' )϶', '', '15013110505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 13:40:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013110505' LIMIT 1);
UPDATE users SET nick_name='ϵ( \'Θ\' )϶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013110505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902064910', 'U15902064910', 'Tony', '', '15902064910', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 13:38:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902064910' LIMIT 1);
UPDATE users SET nick_name='Tony', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902064910';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539486649', 'U13539486649', '柏翔', '', '13539486649', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 13:24:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539486649' LIMIT 1);
UPDATE users SET nick_name='柏翔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539486649';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320038265', 'U18320038265', '18320038265', '', '18320038265', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-10 10:10:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320038265' LIMIT 1);
UPDATE users SET nick_name='18320038265', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320038265';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18817561396', 'U18817561396', '18817561396', '', '18817561396', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-09 18:52:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18817561396' LIMIT 1);
UPDATE users SET nick_name='18817561396', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18817561396';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15367267437', 'U15367267437', '15367267437', '', '15367267437', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-09 18:02:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15367267437' LIMIT 1);
UPDATE users SET nick_name='15367267437', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15367267437';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920501119', 'U15920501119', '15920501119', '', '15920501119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-09 13:59:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920501119' LIMIT 1);
UPDATE users SET nick_name='15920501119', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920501119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560282282', 'U13560282282', '维他奶', '', '13560282282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-09 00:10:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560282282' LIMIT 1);
UPDATE users SET nick_name='维他奶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560282282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18773772711', 'U18773772711', '18773772711', '', '18773772711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-08 18:01:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18773772711' LIMIT 1);
UPDATE users SET nick_name='18773772711', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18773772711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422388263', 'U13422388263', '菇🍄', '', '13422388263', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-08 10:48:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422388263' LIMIT 1);
UPDATE users SET nick_name='菇🍄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422388263';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19022069572', 'U19022069572', '19022069572', '', '19022069572', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-07 17:07:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19022069572' LIMIT 1);
UPDATE users SET nick_name='19022069572', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19022069572';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917494285', 'U15917494285', 'tarto', '', '15917494285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-07 12:29:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917494285' LIMIT 1);
UPDATE users SET nick_name='tarto', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917494285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914367259', 'U15914367259', '👑wanmy🐱', '', '15914367259', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-07 12:02:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914367259' LIMIT 1);
UPDATE users SET nick_name='👑wanmy🐱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914367259';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622834608', 'U13622834608', '13622834608', '', '13622834608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-07 11:58:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622834608' LIMIT 1);
UPDATE users SET nick_name='13622834608', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622834608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19157693363', 'U19157693363', '19157693363', '', '19157693363', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-06 18:45:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19157693363' LIMIT 1);
UPDATE users SET nick_name='19157693363', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19157693363';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13051168581', 'U13051168581', 'QINX', '', '13051168581', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-06 18:01:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13051168581' LIMIT 1);
UPDATE users SET nick_name='QINX', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13051168581';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822119609', 'U13822119609', '羊头', '', '13822119609', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-06 17:45:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822119609' LIMIT 1);
UPDATE users SET nick_name='羊头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822119609';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316082782', 'U13316082782', '13316082782', '', '13316082782', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-06 16:44:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316082782' LIMIT 1);
UPDATE users SET nick_name='13316082782', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316082782';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924027273', 'U18924027273', '东城西咎', '', '18924027273', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-06 15:30:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924027273' LIMIT 1);
UPDATE users SET nick_name='东城西咎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924027273';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15767196866', 'U15767196866', '15767196866', '', '15767196866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-06 15:27:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15767196866' LIMIT 1);
UPDATE users SET nick_name='15767196866', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15767196866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13424007388', 'U13424007388', '13424007388', '', '13424007388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-06 15:26:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13424007388' LIMIT 1);
UPDATE users SET nick_name='13424007388', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13424007388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18821205126', 'U18821205126', '燊', '', '18821205126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-06 13:56:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18821205126' LIMIT 1);
UPDATE users SET nick_name='燊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18821205126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502016199', 'U18502016199', 'STELLAR', '', '18502016199', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-06 13:41:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502016199' LIMIT 1);
UPDATE users SET nick_name='STELLAR', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18502016199';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060080781', 'U13060080781', 'Constance', '', '13060080781', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-06 13:21:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060080781' LIMIT 1);
UPDATE users SET nick_name='Constance', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060080781';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622792641', 'U15622792641', '热狗', '', '15622792641', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-06 13:19:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622792641' LIMIT 1);
UPDATE users SET nick_name='热狗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622792641';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15019931662', 'U15019931662', '15019931662', '', '15019931662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 20:20:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15019931662' LIMIT 1);
UPDATE users SET nick_name='15019931662', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15019931662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719421528', 'U13719421528', '13719421528', '', '13719421528', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 20:15:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719421528' LIMIT 1);
UPDATE users SET nick_name='13719421528', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719421528';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250557498', 'U13250557498', '13250557498', '', '13250557498', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 19:54:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250557498' LIMIT 1);
UPDATE users SET nick_name='13250557498', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250557498';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928869996', 'U18928869996', '18928869996', '', '18928869996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 19:41:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928869996' LIMIT 1);
UPDATE users SET nick_name='18928869996', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928869996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17800211297', 'U17800211297', '17800211297', '', '17800211297', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 17:23:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17800211297' LIMIT 1);
UPDATE users SET nick_name='17800211297', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17800211297';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018728764', 'U15018728764', '15018728764', '', '15018728764', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 17:00:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018728764' LIMIT 1);
UPDATE users SET nick_name='15018728764', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018728764';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18726195187', 'U18726195187', '时樾', '', '18726195187', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 15:42:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18726195187' LIMIT 1);
UPDATE users SET nick_name='时樾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18726195187';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640719996', 'U13640719996', '13640719996', '', '13640719996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 15:17:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640719996' LIMIT 1);
UPDATE users SET nick_name='13640719996', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640719996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925092556', 'U13925092556', '嘉', '', '13925092556', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 15:13:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925092556' LIMIT 1);
UPDATE users SET nick_name='嘉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925092556';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924244130', 'U19924244130', '李斯文', '', '19924244130', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 14:11:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924244130' LIMIT 1);
UPDATE users SET nick_name='李斯文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924244130';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19700200718', 'U19700200718', '19700200718', '', '19700200718', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 14:04:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19700200718' LIMIT 1);
UPDATE users SET nick_name='19700200718', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19700200718';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19292094931', 'U19292094931', '19292094931', '', '19292094931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 11:54:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19292094931' LIMIT 1);
UPDATE users SET nick_name='19292094931', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19292094931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18281065237', 'U18281065237', '18281065237', '', '18281065237', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-04 18:23:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18281065237' LIMIT 1);
UPDATE users SET nick_name='18281065237', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18281065237';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688895959', 'U13688895959', '乔乔', '', '13688895959', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2026-10-04 16:23:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688895959' LIMIT 1);
UPDATE users SET nick_name='乔乔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='13688895959';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503068819', 'U13503068819', '13503068819', '', '13503068819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-04 16:19:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503068819' LIMIT 1);
UPDATE users SET nick_name='13503068819', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503068819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602526872', 'U18602526872', '云的致礼', '', '18602526872', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-04 14:36:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602526872' LIMIT 1);
UPDATE users SET nick_name='云的致礼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602526872';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724882231', 'U13724882231', '13724882231', '', '13724882231', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-04 14:13:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724882231' LIMIT 1);
UPDATE users SET nick_name='13724882231', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724882231';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18681496348', 'U18681496348', '18681496348', '', '18681496348', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-04 12:15:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18681496348' LIMIT 1);
UPDATE users SET nick_name='18681496348', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18681496348';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19921128221', 'U19921128221', 'Lumi', '', '19921128221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-04 11:24:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19921128221' LIMIT 1);
UPDATE users SET nick_name='Lumi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19921128221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13842014620', 'U13842014620', 'X', '', '13842014620', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-03 20:42:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13842014620' LIMIT 1);
UPDATE users SET nick_name='X', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13842014620';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922253751', 'U13922253751', '13922253751', '', '13922253751', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-03 20:41:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922253751' LIMIT 1);
UPDATE users SET nick_name='13922253751', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922253751';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13364060425', 'U13364060425', '13364060425', '', '13364060425', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-03 20:10:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13364060425' LIMIT 1);
UPDATE users SET nick_name='13364060425', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13364060425';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538750057', 'U13538750057', 'kk', '', '13538750057', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-10-03 18:52:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538750057' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13538750057';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680214206', 'U18680214206', 'cathead', '', '18680214206', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-03 16:52:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680214206' LIMIT 1);
UPDATE users SET nick_name='cathead', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680214206';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729060318', 'U13729060318', '13729060318', '', '13729060318', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-03 11:36:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729060318' LIMIT 1);
UPDATE users SET nick_name='13729060318', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729060318';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060790534', 'U13060790534', 'lcc', '', '13060790534', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-03 10:19:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060790534' LIMIT 1);
UPDATE users SET nick_name='lcc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060790534';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312019236', 'U18312019236', '张土土', '', '18312019236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-10-02 21:46:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312019236' LIMIT 1);
UPDATE users SET nick_name='张土土', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18312019236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15515765313', 'U15515765313', '鱼儿溪中游', '', '15515765313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-02 21:15:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15515765313' LIMIT 1);
UPDATE users SET nick_name='鱼儿溪中游', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15515765313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902092700', 'U15902092700', '15902092700', '', '15902092700', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-02 20:34:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902092700' LIMIT 1);
UPDATE users SET nick_name='15902092700', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902092700';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13119590554', 'U13119590554', 'synnie+', '', '13119590554', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-02 20:34:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13119590554' LIMIT 1);
UPDATE users SET nick_name='synnie+', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13119590554';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826056524', 'U13826056524', 'Mk', '', '13826056524', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-10-02 19:57:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826056524' LIMIT 1);
UPDATE users SET nick_name='Mk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13826056524';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17600826837', 'U17600826837', 'Hero.🎩', '', '17600826837', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-10-02 15:36:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17600826837' LIMIT 1);
UPDATE users SET nick_name='Hero.🎩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='17600826837';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588646248', 'U18588646248', '18588646248', '', '18588646248', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-02 15:25:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588646248' LIMIT 1);
UPDATE users SET nick_name='18588646248', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588646248';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660325757', 'U13660325757', '小小酥^O^', '', '13660325757', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-02 13:07:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660325757' LIMIT 1);
UPDATE users SET nick_name='小小酥^O^', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660325757';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13425198122', 'U13425198122', '13425198122', '', '13425198122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-02 11:09:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13425198122' LIMIT 1);
UPDATE users SET nick_name='13425198122', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13425198122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18670702747', 'U18670702747', '吴卷卷啊卷', '', '18670702747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-01 23:29:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18670702747' LIMIT 1);
UPDATE users SET nick_name='吴卷卷啊卷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18670702747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19875600475', 'U19875600475', 'Will', '', '19875600475', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-01 19:53:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19875600475' LIMIT 1);
UPDATE users SET nick_name='Will', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19875600475';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662244514', 'U13662244514', '阿飏', '', '13662244514', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-01 14:49:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662244514' LIMIT 1);
UPDATE users SET nick_name='阿飏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662244514';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202042885', 'U15202042885', '15202042885', '', '15202042885', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-01 14:34:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202042885' LIMIT 1);
UPDATE users SET nick_name='15202042885', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15202042885';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16624770508', 'U16624770508', '洲洲', '', '16624770508', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-01 10:05:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16624770508' LIMIT 1);
UPDATE users SET nick_name='洲洲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16624770508';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580533632', 'U13580533632', '13580533632', '', '13580533632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-01 08:50:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580533632' LIMIT 1);
UPDATE users SET nick_name='13580533632', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580533632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318748999', 'U13318748999', '.w', '', '13318748999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-30 20:42:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318748999' LIMIT 1);
UPDATE users SET nick_name='.w', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318748999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15803539159', 'U15803539159', '梁子云', '', '15803539159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-30 19:51:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15803539159' LIMIT 1);
UPDATE users SET nick_name='梁子云', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15803539159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13341306286', 'U13341306286', '13341306286', '', '13341306286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-30 19:03:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13341306286' LIMIT 1);
UPDATE users SET nick_name='13341306286', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13341306286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15346663249', 'U15346663249', 'Rokaihc', '', '15346663249', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-30 18:50:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15346663249' LIMIT 1);
UPDATE users SET nick_name='Rokaihc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15346663249';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751745826', 'U13751745826', '13751745826', '', '13751745826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-30 14:54:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751745826' LIMIT 1);
UPDATE users SET nick_name='13751745826', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751745826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600044816', 'U13600044816', '13600044816', '', '13600044816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-30 13:08:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600044816' LIMIT 1);
UPDATE users SET nick_name='13600044816', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600044816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925348898', 'U13925348898', '陈雪飞', '', '13925348898', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-30 12:57:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925348898' LIMIT 1);
UPDATE users SET nick_name='陈雪飞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925348898';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688865147', 'U13688865147', '🐷', '', '13688865147', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 135, '2026-09-30 11:16:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688865147' LIMIT 1);
UPDATE users SET nick_name='🐷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 135) WHERE phone='13688865147';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666081030', 'U18666081030', 'MillerSo ™', '', '18666081030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-29 17:41:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666081030' LIMIT 1);
UPDATE users SET nick_name='MillerSo ™', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666081030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246822331', 'U13246822331', 'Elaine', '', '13246822331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-29 16:19:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246822331' LIMIT 1);
UPDATE users SET nick_name='Elaine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246822331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13126489621', 'U13126489621', '13126489621', '', '13126489621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-29 14:59:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13126489621' LIMIT 1);
UPDATE users SET nick_name='13126489621', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13126489621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688878024', 'U18688878024', 'kk', '', '18688878024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-29 11:45:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688878024' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688878024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665638393', 'U18665638393', 'Lin Yu🍒🎾', '', '18665638393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-28 23:38:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665638393' LIMIT 1);
UPDATE users SET nick_name='Lin Yu🍒🎾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665638393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613192261', 'U18613192261', 'tcl', '', '18613192261', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-28 15:51:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613192261' LIMIT 1);
UPDATE users SET nick_name='tcl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613192261';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17687651585', 'U17687651585', '🌟', '', '17687651585', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-28 12:25:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17687651585' LIMIT 1);
UPDATE users SET nick_name='🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17687651585';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725109983', 'U13725109983', '13725109983', '', '13725109983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 22:50:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725109983' LIMIT 1);
UPDATE users SET nick_name='13725109983', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725109983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602745152', 'U13602745152', 'Jacky 黄', '', '13602745152', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 18:13:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602745152' LIMIT 1);
UPDATE users SET nick_name='Jacky 黄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602745152';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826094373', 'U13826094373', 'o.o', '', '13826094373', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 17:27:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826094373' LIMIT 1);
UPDATE users SET nick_name='o.o', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826094373';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922768858', 'U18922768858', '18922768858', '', '18922768858', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 17:21:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922768858' LIMIT 1);
UPDATE users SET nick_name='18922768858', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922768858';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316484732', 'U13316484732', 'K', '', '13316484732', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 12:43:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316484732' LIMIT 1);
UPDATE users SET nick_name='K', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316484732';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544358186', 'U13544358186', 'Molly🤗婉清', '', '13544358186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 12:16:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544358186' LIMIT 1);
UPDATE users SET nick_name='Molly🤗婉清', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544358186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826224025', 'U18826224025', '18826224025', '', '18826224025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 12:14:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826224025' LIMIT 1);
UPDATE users SET nick_name='18826224025', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826224025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664681820', 'U18664681820', '18664681820', '', '18664681820', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 11:55:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664681820' LIMIT 1);
UPDATE users SET nick_name='18664681820', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664681820';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660681049', 'U13660681049', '13660681049', '', '13660681049', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 11:16:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660681049' LIMIT 1);
UPDATE users SET nick_name='13660681049', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660681049';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920413500', 'U15920413500', '15920413500', '', '15920413500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 11:15:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920413500' LIMIT 1);
UPDATE users SET nick_name='15920413500', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920413500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922211436', 'U13922211436', '13922211436', '', '13922211436', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 10:37:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922211436' LIMIT 1);
UPDATE users SET nick_name='13922211436', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922211436';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826258124', 'U18826258124', '_截屏🐾', '', '18826258124', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-27 00:36:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826258124' LIMIT 1);
UPDATE users SET nick_name='_截屏🐾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826258124';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800033975', 'U15800033975', 'Elsa', '', '15800033975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-27 00:13:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800033975' LIMIT 1);
UPDATE users SET nick_name='Elsa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='15800033975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18824711118', 'U18824711118', '加氢啊呀', '', '18824711118', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-26 23:16:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18824711118' LIMIT 1);
UPDATE users SET nick_name='加氢啊呀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18824711118';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650781047', 'U13650781047', '胡萝卜🥕', '', '13650781047', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-26 20:36:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650781047' LIMIT 1);
UPDATE users SET nick_name='胡萝卜🥕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13650781047';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13028877549', 'U13028877549', '刘', '', '13028877549', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-09-26 20:34:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13028877549' LIMIT 1);
UPDATE users SET nick_name='刘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13028877549';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15394728501', 'U15394728501', 'Kate', '', '15394728501', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-26 17:16:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15394728501' LIMIT 1);
UPDATE users SET nick_name='Kate', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15394728501';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450422947', 'U13450422947', '13450422947', '', '13450422947', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-26 16:22:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450422947' LIMIT 1);
UPDATE users SET nick_name='13450422947', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450422947';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17802148658', 'U17802148658', 'tofu', '', '17802148658', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-26 16:06:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17802148658' LIMIT 1);
UPDATE users SET nick_name='tofu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17802148658';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060932734', 'U13060932734', 'ddddd', '', '13060932734', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-26 15:33:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060932734' LIMIT 1);
UPDATE users SET nick_name='ddddd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060932734';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925037984', 'U18925037984', '星', '', '18925037984', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-26 15:30:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925037984' LIMIT 1);
UPDATE users SET nick_name='星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18925037984';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826448787', 'U18826448787', '18826448787', '', '18826448787', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-26 13:34:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826448787' LIMIT 1);
UPDATE users SET nick_name='18826448787', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826448787';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642719069', 'U13642719069', 'Brittany', '', '13642719069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-26 10:59:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642719069' LIMIT 1);
UPDATE users SET nick_name='Brittany', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642719069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620016028', 'U18620016028', '敏儿', '', '18620016028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-09-25 16:36:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620016028' LIMIT 1);
UPDATE users SET nick_name='敏儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18620016028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527880178', 'U13527880178', 'f', '', '13527880178', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-25 15:44:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527880178' LIMIT 1);
UPDATE users SET nick_name='f', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527880178';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922556981', 'U18922556981', '波宜安', '', '18922556981', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-09-25 15:19:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922556981' LIMIT 1);
UPDATE users SET nick_name='波宜安', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18922556981';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17728245592', 'U17728245592', 'Clix', '', '17728245592', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-25 13:58:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17728245592' LIMIT 1);
UPDATE users SET nick_name='Clix', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17728245592';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13574119319', 'U13574119319', '13574119319', '', '13574119319', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-25 10:51:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13574119319' LIMIT 1);
UPDATE users SET nick_name='13574119319', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13574119319';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918470682', 'U15918470682', 'Genius 🍎 🚲 💻', '', '15918470682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-24 23:15:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918470682' LIMIT 1);
UPDATE users SET nick_name='Genius 🍎 🚲 💻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918470682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825058143', 'U18825058143', '下星期', '', '18825058143', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-24 20:57:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825058143' LIMIT 1);
UPDATE users SET nick_name='下星期', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18825058143';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918886628', 'U15918886628', '琛', '', '15918886628', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-24 19:12:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918886628' LIMIT 1);
UPDATE users SET nick_name='琛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918886628';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622177206', 'U15622177206', '匹克匹克', '', '15622177206', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-24 19:07:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622177206' LIMIT 1);
UPDATE users SET nick_name='匹克匹克', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622177206';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620623001', 'U18620623001', '斌', '', '18620623001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 157, '2026-09-24 17:24:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620623001' LIMIT 1);
UPDATE users SET nick_name='斌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 157) WHERE phone='18620623001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763344749', 'U13763344749', 'custiny', '', '13763344749', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-24 17:13:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763344749' LIMIT 1);
UPDATE users SET nick_name='custiny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763344749';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13421254243', 'U13421254243', '13421254243', '', '13421254243', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-24 16:27:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13421254243' LIMIT 1);
UPDATE users SET nick_name='13421254243', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13421254243';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18869723690', 'U18869723690', '18869723690', '', '18869723690', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-24 14:55:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18869723690' LIMIT 1);
UPDATE users SET nick_name='18869723690', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18869723690';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19878870470', 'U19878870470', '南瓜', '', '19878870470', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-24 14:26:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19878870470' LIMIT 1);
UPDATE users SET nick_name='南瓜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19878870470';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15021414346', 'U15021414346', '犀先生 Raymon', '', '15021414346', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-24 12:08:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15021414346' LIMIT 1);
UPDATE users SET nick_name='犀先生 Raymon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15021414346';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18872491219', 'U18872491219', '小芯', '', '18872491219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-23 21:59:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18872491219' LIMIT 1);
UPDATE users SET nick_name='小芯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18872491219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15015890261', 'U15015890261', 'Jaunehyatt', '', '15015890261', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-23 21:33:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15015890261' LIMIT 1);
UPDATE users SET nick_name='Jaunehyatt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15015890261';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13414142301', 'U13414142301', '13414142301', '', '13414142301', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-23 20:28:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13414142301' LIMIT 1);
UPDATE users SET nick_name='13414142301', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13414142301';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15901166286', 'U15901166286', 'Ghm.', '', '15901166286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-23 18:40:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15901166286' LIMIT 1);
UPDATE users SET nick_name='Ghm.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15901166286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602389493', 'U15602389493', '15602389493', '', '15602389493', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-23 18:09:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602389493' LIMIT 1);
UPDATE users SET nick_name='15602389493', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602389493';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15817128582', 'U15817128582', 'w', '', '15817128582', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-23 13:22:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15817128582' LIMIT 1);
UPDATE users SET nick_name='w', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15817128582';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613131611', 'U18613131611', 'Lily喵🐱', '', '18613131611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-23 09:43:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613131611' LIMIT 1);
UPDATE users SET nick_name='Lily喵🐱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18613131611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392116988', 'U13392116988', '雨后阳光', '', '13392116988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-23 08:38:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392116988' LIMIT 1);
UPDATE users SET nick_name='雨后阳光', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13392116988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011919696', 'U18011919696', '吴歌', '', '18011919696', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-23 08:32:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011919696' LIMIT 1);
UPDATE users SET nick_name='吴歌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011919696';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128528515', 'U13128528515', '13128528515', '', '13128528515', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-22 18:26:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128528515' LIMIT 1);
UPDATE users SET nick_name='13128528515', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128528515';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825234602', 'U18825234602', '18825234602', '', '18825234602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-21 15:25:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825234602' LIMIT 1);
UPDATE users SET nick_name='18825234602', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825234602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989236791', 'U15989236791', '🍳', '', '15989236791', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-21 14:42:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989236791' LIMIT 1);
UPDATE users SET nick_name='🍳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989236791';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665195803', 'U17665195803', 'Emma', '', '17665195803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 119, '2026-09-21 14:28:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665195803' LIMIT 1);
UPDATE users SET nick_name='Emma', balance=GREATEST(balance, 0.00), points=GREATEST(points, 119) WHERE phone='17665195803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268303320', 'U13268303320', '荔枝', '', '13268303320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-21 13:24:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268303320' LIMIT 1);
UPDATE users SET nick_name='荔枝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268303320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18645767257', 'U18645767257', '芝麻酱超人', '', '18645767257', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-21 12:15:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18645767257' LIMIT 1);
UPDATE users SET nick_name='芝麻酱超人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18645767257';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15828966949', 'U15828966949', '123', '', '15828966949', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-20 23:15:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15828966949' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15828966949';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664850484', 'U18664850484', '18664850484', '', '18664850484', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-20 22:41:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664850484' LIMIT 1);
UPDATE users SET nick_name='18664850484', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664850484';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512744036', 'U13512744036', '13512744036', '', '13512744036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-20 20:39:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512744036' LIMIT 1);
UPDATE users SET nick_name='13512744036', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512744036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666020830', 'U18666020830', '`-黃先生...', '', '18666020830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-20 16:07:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666020830' LIMIT 1);
UPDATE users SET nick_name='`-黃先生...', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666020830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332828398', 'U13332828398', '阿土仔', '', '13332828398', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-20 11:51:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332828398' LIMIT 1);
UPDATE users SET nick_name='阿土仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13332828398';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926066799', 'U13926066799', '阿勉', '', '13926066799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-20 11:49:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926066799' LIMIT 1);
UPDATE users SET nick_name='阿勉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926066799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929559238', 'U13929559238', 'DD', '', '13929559238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-20 10:53:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929559238' LIMIT 1);
UPDATE users SET nick_name='DD', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929559238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922271040', 'U13922271040', '郝思远', '', '13922271040', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-20 10:07:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922271040' LIMIT 1);
UPDATE users SET nick_name='郝思远', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13922271040';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902021954', 'U15902021954', '阿奇', '', '15902021954', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-20 09:21:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902021954' LIMIT 1);
UPDATE users SET nick_name='阿奇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902021954';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602002033', 'U18602002033', '18602002033', '', '18602002033', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 18:50:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602002033' LIMIT 1);
UPDATE users SET nick_name='18602002033', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602002033';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450219976', 'U13450219976', '13450219976', '', '13450219976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 18:49:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450219976' LIMIT 1);
UPDATE users SET nick_name='13450219976', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450219976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13192273228', 'U13192273228', '13192273228', '', '13192273228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 18:32:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13192273228' LIMIT 1);
UPDATE users SET nick_name='13192273228', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13192273228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312869085', 'U13312869085', '13312869085', '', '13312869085', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 18:31:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312869085' LIMIT 1);
UPDATE users SET nick_name='13312869085', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13312869085';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246888228', 'U13246888228', '咩yee', '', '13246888228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-19 15:49:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246888228' LIMIT 1);
UPDATE users SET nick_name='咩yee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13246888228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822203999', 'U13822203999', '13822203999', '', '13822203999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 15:42:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822203999' LIMIT 1);
UPDATE users SET nick_name='13822203999', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822203999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18816832803', 'U18816832803', 'emma', '', '18816832803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 13:57:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18816832803' LIMIT 1);
UPDATE users SET nick_name='emma', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18816832803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622287989', 'U13622287989', 'kindaichi', '', '13622287989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 13:47:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622287989' LIMIT 1);
UPDATE users SET nick_name='kindaichi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622287989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18216363180', 'U18216363180', 'e7', '', '18216363180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 13:39:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18216363180' LIMIT 1);
UPDATE users SET nick_name='e7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18216363180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15971496646', 'U15971496646', '15971496646', '', '15971496646', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 13:17:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15971496646' LIMIT 1);
UPDATE users SET nick_name='15971496646', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15971496646';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19157401313', 'U19157401313', '19157401313', '', '19157401313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 11:26:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19157401313' LIMIT 1);
UPDATE users SET nick_name='19157401313', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19157401313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660890605', 'U13660890605', '❤ kitty 🏊', '', '13660890605', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 11:22:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660890605' LIMIT 1);
UPDATE users SET nick_name='❤ kitty 🏊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660890605';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18319703074', 'U18319703074', '0', '', '18319703074', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 10:04:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18319703074' LIMIT 1);
UPDATE users SET nick_name='0', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18319703074';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18165921373', 'U18165921373', '穎', '', '18165921373', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-18 20:34:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18165921373' LIMIT 1);
UPDATE users SET nick_name='穎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18165921373';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17302023780', 'U17302023780', 'H', '', '17302023780', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-18 19:36:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17302023780' LIMIT 1);
UPDATE users SET nick_name='H', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17302023780';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435642458', 'U13435642458', 'NicKyNicKy', '', '13435642458', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-18 19:27:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435642458' LIMIT 1);
UPDATE users SET nick_name='NicKyNicKy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13435642458';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18375631956', 'U18375631956', '她不是瑞秋', '', '18375631956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-18 18:22:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18375631956' LIMIT 1);
UPDATE users SET nick_name='她不是瑞秋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18375631956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19886029956', 'U19886029956', 'SNOoOW', '', '19886029956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-18 15:43:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19886029956' LIMIT 1);
UPDATE users SET nick_name='SNOoOW', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19886029956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520212975', 'U18520212975', 'Lulu', '', '18520212975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-18 13:19:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520212975' LIMIT 1);
UPDATE users SET nick_name='Lulu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520212975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19118857501', 'U19118857501', 'Emma哎呀嘛', '', '19118857501', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-18 12:04:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19118857501' LIMIT 1);
UPDATE users SET nick_name='Emma哎呀嘛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19118857501';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011965291', 'U18011965291', 'wing', '', '18011965291', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-18 11:15:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011965291' LIMIT 1);
UPDATE users SET nick_name='wing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18011965291';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18816800830', 'U18816800830', '犀利蔻', '', '18816800830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-18 10:48:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18816800830' LIMIT 1);
UPDATE users SET nick_name='犀利蔻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18816800830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318874738', 'U13318874738', 'QQKK', '', '13318874738', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-18 08:51:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318874738' LIMIT 1);
UPDATE users SET nick_name='QQKK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13318874738';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682753490', 'U13682753490', '🌈', '', '13682753490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-17 22:58:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682753490' LIMIT 1);
UPDATE users SET nick_name='🌈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13682753490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15080187938', 'U15080187938', 'CM', '', '15080187938', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-17 15:40:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15080187938' LIMIT 1);
UPDATE users SET nick_name='CM', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15080187938';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450395534', 'U13450395534', '13450395534', '', '13450395534', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-17 13:56:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450395534' LIMIT 1);
UPDATE users SET nick_name='13450395534', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450395534';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926962720', 'U13926962720', '🍀sam', '', '13926962720', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-17 13:22:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926962720' LIMIT 1);
UPDATE users SET nick_name='🍀sam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926962720';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922248195', 'U13922248195', '老马', '', '13922248195', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-16 22:21:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922248195' LIMIT 1);
UPDATE users SET nick_name='老马', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13922248195';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763392612', 'U13763392612', 'Chloe静', '', '13763392612', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 21:28:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763392612' LIMIT 1);
UPDATE users SET nick_name='Chloe静', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763392612';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265152860', 'U13265152860', '蛋挞', '', '13265152860', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 20:58:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265152860' LIMIT 1);
UPDATE users SET nick_name='蛋挞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265152860';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924202166', 'U13924202166', '13924202166', '', '13924202166', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 20:27:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924202166' LIMIT 1);
UPDATE users SET nick_name='13924202166', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924202166';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826003890', 'U13826003890', 'ANDY', '', '13826003890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-16 20:01:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826003890' LIMIT 1);
UPDATE users SET nick_name='ANDY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13826003890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302232072', 'U13302232072', 'Joe', '', '13302232072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 19:53:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302232072' LIMIT 1);
UPDATE users SET nick_name='Joe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302232072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529456126', 'U18529456126', '18529456126', '', '18529456126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 19:09:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529456126' LIMIT 1);
UPDATE users SET nick_name='18529456126', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529456126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18703955203', 'U18703955203', '苑', '', '18703955203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-16 18:12:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18703955203' LIMIT 1);
UPDATE users SET nick_name='苑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18703955203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533480708', 'U13533480708', 'Maureen', '', '13533480708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 16:33:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533480708' LIMIT 1);
UPDATE users SET nick_name='Maureen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533480708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660620712', 'U13660620712', '小青', '', '13660620712', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 16:24:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660620712' LIMIT 1);
UPDATE users SET nick_name='小青', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660620712';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625088417', 'U15625088417', '圣斗士', '', '15625088417', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-16 15:59:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625088417' LIMIT 1);
UPDATE users SET nick_name='圣斗士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='15625088417';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13838236696', 'U13838236696', '卿', '', '13838236696', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 15:40:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13838236696' LIMIT 1);
UPDATE users SET nick_name='卿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13838236696';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902490816', 'U13902490816', '一叶知秋', '', '13902490816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 14:41:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902490816' LIMIT 1);
UPDATE users SET nick_name='一叶知秋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902490816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521609875', 'U15521609875', '东东', '', '15521609875', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 14:29:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521609875' LIMIT 1);
UPDATE users SET nick_name='东东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521609875';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565374462', 'U18565374462', '舟', '', '18565374462', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 12:50:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565374462' LIMIT 1);
UPDATE users SET nick_name='舟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565374462';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14778816998', 'U14778816998', 'Kevin', '', '14778816998', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-16 11:58:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14778816998' LIMIT 1);
UPDATE users SET nick_name='Kevin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14778816998';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332844968', 'U13332844968', '13332844968', '', '13332844968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-15 14:46:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332844968' LIMIT 1);
UPDATE users SET nick_name='13332844968', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13332844968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521299579', 'U15521299579', '15521299579', '', '15521299579', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-15 12:55:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521299579' LIMIT 1);
UPDATE users SET nick_name='15521299579', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521299579';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688873842', 'U13688873842', '13688873842', '', '13688873842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-15 12:51:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688873842' LIMIT 1);
UPDATE users SET nick_name='13688873842', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13688873842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430052691', 'U13430052691', '13430052691', '', '13430052691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-14 19:46:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430052691' LIMIT 1);
UPDATE users SET nick_name='13430052691', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430052691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920459867', 'U15920459867', '15920459867', '', '15920459867', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-14 19:30:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920459867' LIMIT 1);
UPDATE users SET nick_name='15920459867', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920459867';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13058496759', 'U13058496759', '13058496759', '', '13058496759', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-14 19:03:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13058496759' LIMIT 1);
UPDATE users SET nick_name='13058496759', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13058496759';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819239587', 'U18819239587', 'Nnnm', '', '18819239587', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-14 18:08:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819239587' LIMIT 1);
UPDATE users SET nick_name='Nnnm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819239587';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18118412366', 'U18118412366', '18118412366', '', '18118412366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-14 15:06:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18118412366' LIMIT 1);
UPDATE users SET nick_name='18118412366', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18118412366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602267469', 'U15602267469', '彦·页', '', '15602267469', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-14 11:52:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602267469' LIMIT 1);
UPDATE users SET nick_name='彦·页', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602267469';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922350450', 'U13922350450', 'Chris', '', '13922350450', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-14 09:33:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922350450' LIMIT 1);
UPDATE users SET nick_name='Chris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922350450';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620951714', 'U17620951714', '树枝', '', '17620951714', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-13 21:34:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620951714' LIMIT 1);
UPDATE users SET nick_name='树枝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620951714';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632203220', 'U13632203220', 'Tegen', '', '13632203220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-13 19:43:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632203220' LIMIT 1);
UPDATE users SET nick_name='Tegen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632203220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826967823', 'U13826967823', '13826967823', '', '13826967823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-13 17:45:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826967823' LIMIT 1);
UPDATE users SET nick_name='13826967823', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826967823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316226993', 'U13316226993', '周璐', '', '13316226993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-13 14:58:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316226993' LIMIT 1);
UPDATE users SET nick_name='周璐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316226993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122355816', 'U18122355816', 'Aaa', '', '18122355816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-13 14:43:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122355816' LIMIT 1);
UPDATE users SET nick_name='Aaa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122355816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632356029', 'U13632356029', 'Emily', '', '13632356029', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-13 13:49:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632356029' LIMIT 1);
UPDATE users SET nick_name='Emily', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632356029';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556108804', 'U13556108804', '13556108804', '', '13556108804', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-13 13:26:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556108804' LIMIT 1);
UPDATE users SET nick_name='13556108804', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556108804';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13532148596', 'U13532148596', 'FLOWER  ROAD', '', '13532148596', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-13 13:09:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13532148596' LIMIT 1);
UPDATE users SET nick_name='FLOWER  ROAD', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13532148596';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288801202', 'U13288801202', '陳小C', '', '13288801202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-13 12:50:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288801202' LIMIT 1);
UPDATE users SET nick_name='陳小C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288801202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570231755', 'U13570231755', '13570231755', '', '13570231755', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-13 12:49:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570231755' LIMIT 1);
UPDATE users SET nick_name='13570231755', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570231755';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15546001631', 'U15546001631', '15546001631', '', '15546001631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-12 21:58:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15546001631' LIMIT 1);
UPDATE users SET nick_name='15546001631', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15546001631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027478132', 'U18027478132', '。。。。。。', '', '18027478132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-12 17:39:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027478132' LIMIT 1);
UPDATE users SET nick_name='。。。。。。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027478132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602220835', 'U13602220835', '13602220835', '', '13602220835', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-12 17:34:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602220835' LIMIT 1);
UPDATE users SET nick_name='13602220835', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602220835';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533710551', 'U13533710551', '13533710551', '', '13533710551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-12 16:22:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533710551' LIMIT 1);
UPDATE users SET nick_name='13533710551', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533710551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529289137', 'U18529289137', '18529289137', '', '18529289137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-12 15:38:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529289137' LIMIT 1);
UPDATE users SET nick_name='18529289137', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529289137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521398569', 'U15521398569', '苏', '', '15521398569', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-12 14:52:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521398569' LIMIT 1);
UPDATE users SET nick_name='苏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521398569';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18883199671', 'U18883199671', '18883199671', '', '18883199671', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-12 13:02:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18883199671' LIMIT 1);
UPDATE users SET nick_name='18883199671', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18883199671';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13112279413', 'U13112279413', '麦子和麦（flora麦田）', '', '13112279413', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-12 11:12:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13112279413' LIMIT 1);
UPDATE users SET nick_name='麦子和麦（flora麦田）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13112279413';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113470791', 'U15113470791', '15113470791', '', '15113470791', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-12 10:48:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113470791' LIMIT 1);
UPDATE users SET nick_name='15113470791', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113470791';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602844782', 'U13602844782', '13602844782', '', '13602844782', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-12 09:54:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602844782' LIMIT 1);
UPDATE users SET nick_name='13602844782', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602844782';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620223989', 'U18620223989', 'Ada', '', '18620223989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-12 00:01:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620223989' LIMIT 1);
UPDATE users SET nick_name='Ada', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620223989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825018683', 'U13825018683', 'Situ', '', '13825018683', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-11 19:24:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825018683' LIMIT 1);
UPDATE users SET nick_name='Situ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825018683';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650829705', 'U13650829705', '欣', '', '13650829705', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-11 18:51:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650829705' LIMIT 1);
UPDATE users SET nick_name='欣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13650829705';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18700485312', 'U18700485312', '18700485312', '', '18700485312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-11 17:59:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18700485312' LIMIT 1);
UPDATE users SET nick_name='18700485312', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18700485312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13066346108', 'U13066346108', '13066346108', '', '13066346108', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-11 16:19:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13066346108' LIMIT 1);
UPDATE users SET nick_name='13066346108', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13066346108';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632377029', 'U13632377029', '13632377029', '', '13632377029', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-11 15:16:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632377029' LIMIT 1);
UPDATE users SET nick_name='13632377029', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632377029';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18277331302', 'U18277331302', '18277331302', '', '18277331302', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-11 13:38:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18277331302' LIMIT 1);
UPDATE users SET nick_name='18277331302', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18277331302';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665632010', 'U18665632010', '18665632010', '', '18665632010', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-11 13:01:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665632010' LIMIT 1);
UPDATE users SET nick_name='18665632010', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665632010';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913181086', 'U15913181086', '15913181086', '', '15913181086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-10 20:04:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913181086' LIMIT 1);
UPDATE users SET nick_name='15913181086', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913181086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480255959', 'U13480255959', '娜塔莉', '', '13480255959', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-10 17:26:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480255959' LIMIT 1);
UPDATE users SET nick_name='娜塔莉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480255959';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13165079617', 'U13165079617', '13165079617', '', '13165079617', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-10 17:19:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13165079617' LIMIT 1);
UPDATE users SET nick_name='13165079617', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13165079617';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120689591', 'U19120689591', '豆沙包', '', '19120689591', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-10 11:24:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120689591' LIMIT 1);
UPDATE users SET nick_name='豆沙包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120689591';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822221691', 'U13822221691', '13822221691', '', '13822221691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-09 20:24:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822221691' LIMIT 1);
UPDATE users SET nick_name='13822221691', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822221691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560075001', 'U13560075001', '13560075001', '', '13560075001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-09 19:27:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560075001' LIMIT 1);
UPDATE users SET nick_name='13560075001', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560075001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433936331', 'U13433936331', '巴士9路', '', '13433936331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-09 17:05:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433936331' LIMIT 1);
UPDATE users SET nick_name='巴士9路', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433936331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13557336511', 'U13557336511', 'the', '', '13557336511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-09 17:00:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13557336511' LIMIT 1);
UPDATE users SET nick_name='the', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13557336511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19125103038', 'U19125103038', 'L', '', '19125103038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-09 16:53:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19125103038' LIMIT 1);
UPDATE users SET nick_name='L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19125103038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802433577', 'U13802433577', '13802433577', '', '13802433577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-09 14:09:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802433577' LIMIT 1);
UPDATE users SET nick_name='13802433577', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802433577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18811779186', 'U18811779186', '111', '', '18811779186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-09 12:59:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18811779186' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18811779186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817715971', 'U17817715971', '：）', '', '17817715971', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-09 12:08:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817715971' LIMIT 1);
UPDATE users SET nick_name='：）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817715971';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18574923183', 'U18574923183', '18574923183', '', '18574923183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-09 11:58:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18574923183' LIMIT 1);
UPDATE users SET nick_name='18574923183', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18574923183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920307084', 'U15920307084', '茉莉', '', '15920307084', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-09-09 11:20:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920307084' LIMIT 1);
UPDATE users SET nick_name='茉莉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15920307084';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217821502', 'U15217821502', '～forever', '', '15217821502', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-08 18:12:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217821502' LIMIT 1);
UPDATE users SET nick_name='～forever', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217821502';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18165564077', 'U18165564077', '花花', '', '18165564077', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-08 18:06:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18165564077' LIMIT 1);
UPDATE users SET nick_name='花花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18165564077';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060586656', 'U13060586656', '13060586656', '', '13060586656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-08 17:24:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060586656' LIMIT 1);
UPDATE users SET nick_name='13060586656', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060586656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19158469315', 'U19158469315', '啾', '', '19158469315', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-08 14:51:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19158469315' LIMIT 1);
UPDATE users SET nick_name='啾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19158469315';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813370262', 'U15813370262', '15813370262', '', '15813370262', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-08 14:47:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813370262' LIMIT 1);
UPDATE users SET nick_name='15813370262', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813370262';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13380053942', 'U13380053942', 'KAROL', '', '13380053942', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-08 13:29:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13380053942' LIMIT 1);
UPDATE users SET nick_name='KAROL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13380053942';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302330255', 'U13302330255', 'viney', '', '13302330255', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2026-09-08 12:47:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302330255' LIMIT 1);
UPDATE users SET nick_name='viney', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13302330255';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18566593397', 'U18566593397', 'Gyu_shua~', '', '18566593397', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-08 10:58:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18566593397' LIMIT 1);
UPDATE users SET nick_name='Gyu_shua~', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18566593397';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925101342', 'U13925101342', 'Willis', '', '13925101342', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-08 08:50:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925101342' LIMIT 1);
UPDATE users SET nick_name='Willis', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925101342';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19587410232', 'U19587410232', 'FFFFf', '', '19587410232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2026-09-07 19:22:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19587410232' LIMIT 1);
UPDATE users SET nick_name='FFFFf', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='19587410232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925001523', 'U13925001523', 'L', '', '13925001523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-07 15:11:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925001523' LIMIT 1);
UPDATE users SET nick_name='L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925001523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13978612465', 'U13978612465', '猪猪娟🎀', '', '13978612465', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-07 08:35:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13978612465' LIMIT 1);
UPDATE users SET nick_name='猪猪娟🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13978612465';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920178918', 'U15920178918', 'Sumitta', '', '15920178918', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-07 01:01:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920178918' LIMIT 1);
UPDATE users SET nick_name='Sumitta', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920178918';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802066707', 'U18802066707', '金斯坦', '', '18802066707', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 22:15:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802066707' LIMIT 1);
UPDATE users SET nick_name='金斯坦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802066707';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13048986517', 'U13048986517', '13048986517', '', '13048986517', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 20:05:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13048986517' LIMIT 1);
UPDATE users SET nick_name='13048986517', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13048986517';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160549967', 'U13160549967', '13160549967', '', '13160549967', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 18:13:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160549967' LIMIT 1);
UPDATE users SET nick_name='13160549967', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13160549967';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632405771', 'U13632405771', '🦄Agnes', '', '13632405771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 17:31:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632405771' LIMIT 1);
UPDATE users SET nick_name='🦄Agnes', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632405771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18359348592', 'U18359348592', '18359348592', '', '18359348592', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 17:27:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18359348592' LIMIT 1);
UPDATE users SET nick_name='18359348592', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18359348592';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924122844', 'U13924122844', '13924122844', '', '13924122844', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 16:25:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924122844' LIMIT 1);
UPDATE users SET nick_name='13924122844', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924122844';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926071735', 'U13926071735', 'HTPZ', '', '13926071735', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 16:03:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926071735' LIMIT 1);
UPDATE users SET nick_name='HTPZ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926071735';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622864713', 'U13622864713', '13622864713', '', '13622864713', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 15:17:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622864713' LIMIT 1);
UPDATE users SET nick_name='13622864713', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622864713';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751855870', 'U13751855870', '小马识途', '', '13751855870', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 15:08:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751855870' LIMIT 1);
UPDATE users SET nick_name='小马识途', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751855870';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022342807', 'U18022342807', '18022342807', '', '18022342807', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 15:01:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022342807' LIMIT 1);
UPDATE users SET nick_name='18022342807', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022342807';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631350121', 'U13631350121', 'Jangzi', '', '13631350121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 14:58:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631350121' LIMIT 1);
UPDATE users SET nick_name='Jangzi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631350121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622254974', 'U13622254974', '🌸珍珍🌸', '', '13622254974', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 14:55:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622254974' LIMIT 1);
UPDATE users SET nick_name='🌸珍珍🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622254974';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13078623116', 'U13078623116', '13078623116', '', '13078623116', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 14:17:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13078623116' LIMIT 1);
UPDATE users SET nick_name='13078623116', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13078623116';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13286865798', 'U13286865798', '13286865798', '', '13286865798', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 13:29:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13286865798' LIMIT 1);
UPDATE users SET nick_name='13286865798', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13286865798';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664627065', 'U18664627065', '刘泳欣', '', '18664627065', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 12:53:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664627065' LIMIT 1);
UPDATE users SET nick_name='刘泳欣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664627065';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332828139', 'U13332828139', '周', '', '13332828139', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 11:29:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332828139' LIMIT 1);
UPDATE users SET nick_name='周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13332828139';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502079619', 'U18502079619', '18502079619', '', '18502079619', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 11:13:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502079619' LIMIT 1);
UPDATE users SET nick_name='18502079619', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18502079619';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13144420327', 'U13144420327', 'Belair', '', '13144420327', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 11:05:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13144420327' LIMIT 1);
UPDATE users SET nick_name='Belair', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13144420327';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570429509', 'U13570429509', '13570429509', '', '13570429509', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-06 10:17:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570429509' LIMIT 1);
UPDATE users SET nick_name='13570429509', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570429509';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217624729', 'U15217624729', '辉', '', '15217624729', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 21:29:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217624729' LIMIT 1);
UPDATE users SET nick_name='辉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217624729';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622136584', 'U15622136584', '15622136584', '', '15622136584', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 20:58:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622136584' LIMIT 1);
UPDATE users SET nick_name='15622136584', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622136584';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13026312610', 'U13026312610', '13026312610', '', '13026312610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 19:26:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13026312610' LIMIT 1);
UPDATE users SET nick_name='13026312610', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13026312610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13611420682', 'U13611420682', '13611420682', '', '13611420682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 18:36:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13611420682' LIMIT 1);
UPDATE users SET nick_name='13611420682', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13611420682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826076358', 'U13826076358', '13826076358', '', '13826076358', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 17:20:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826076358' LIMIT 1);
UPDATE users SET nick_name='13826076358', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826076358';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18768184658', 'U18768184658', 'sususu', '', '18768184658', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 17:15:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18768184658' LIMIT 1);
UPDATE users SET nick_name='sususu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18768184658';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666524019', 'U17666524019', '韬韬er😈', '', '17666524019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 16:58:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666524019' LIMIT 1);
UPDATE users SET nick_name='韬韬er😈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666524019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18903011556', 'U18903011556', '德约', '', '18903011556', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 15:43:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18903011556' LIMIT 1);
UPDATE users SET nick_name='德约', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18903011556';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818955543', 'U15818955543', '15818955543', '', '15818955543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 14:05:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818955543' LIMIT 1);
UPDATE users SET nick_name='15818955543', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818955543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15272418592', 'U15272418592', 'M', '', '15272418592', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 13:29:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15272418592' LIMIT 1);
UPDATE users SET nick_name='M', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15272418592';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18923310276', 'U18923310276', '🌰', '', '18923310276', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 12:46:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18923310276' LIMIT 1);
UPDATE users SET nick_name='🌰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18923310276';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13888196531', 'U13888196531', '峥云🍃', '', '13888196531', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 12:17:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13888196531' LIMIT 1);
UPDATE users SET nick_name='峥云🍃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13888196531';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989251700', 'U15989251700', '15989251700', '', '15989251700', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 12:03:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989251700' LIMIT 1);
UPDATE users SET nick_name='15989251700', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989251700';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13728088656', 'U13728088656', '13728088656', '', '13728088656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 10:11:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13728088656' LIMIT 1);
UPDATE users SET nick_name='13728088656', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13728088656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17872114391', 'U17872114391', 'N', '', '17872114391', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-05 00:57:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17872114391' LIMIT 1);
UPDATE users SET nick_name='N', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17872114391';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692435580', 'U15692435580', '咩啊', '', '15692435580', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-04 22:45:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692435580' LIMIT 1);
UPDATE users SET nick_name='咩啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692435580';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512767827', 'U13512767827', '13512767827', '', '13512767827', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-04 22:09:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512767827' LIMIT 1);
UPDATE users SET nick_name='13512767827', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512767827';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288844767', 'U13288844767', '🦁四洋', '', '13288844767', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-04 20:59:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288844767' LIMIT 1);
UPDATE users SET nick_name='🦁四洋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288844767';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680288789', 'U18680288789', '欣欣乐', '', '18680288789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-04 20:30:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680288789' LIMIT 1);
UPDATE users SET nick_name='欣欣乐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680288789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13197134378', 'U13197134378', '一期一会。', '', '13197134378', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-04 14:17:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13197134378' LIMIT 1);
UPDATE users SET nick_name='一期一会。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13197134378';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538919836', 'U13538919836', 'Buer周助', '', '13538919836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-04 14:11:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538919836' LIMIT 1);
UPDATE users SET nick_name='Buer周助', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538919836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16729693214', 'U16729693214', '16729693214', '', '16729693214', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-04 11:59:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16729693214' LIMIT 1);
UPDATE users SET nick_name='16729693214', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16729693214';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352835314', 'U13352835314', '13352835314', '', '13352835314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-04 10:40:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352835314' LIMIT 1);
UPDATE users SET nick_name='13352835314', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352835314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933136367', 'U18933136367', '执波仔', '', '18933136367', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-03 20:55:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933136367' LIMIT 1);
UPDATE users SET nick_name='执波仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933136367';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17857332767', 'U17857332767', '海珠费德勒', '', '17857332767', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-03 20:53:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17857332767' LIMIT 1);
UPDATE users SET nick_name='海珠费德勒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17857332767';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988672551', 'U18988672551', '18988672551', '', '18988672551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-03 20:08:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988672551' LIMIT 1);
UPDATE users SET nick_name='18988672551', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988672551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925459665', 'U18925459665', 'Oliver', '', '18925459665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-03 18:33:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925459665' LIMIT 1);
UPDATE users SET nick_name='Oliver', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925459665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15635390809', 'U15635390809', '15635390809', '', '15635390809', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-03 17:47:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15635390809' LIMIT 1);
UPDATE users SET nick_name='15635390809', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15635390809';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928658387', 'U18928658387', '18928658387', '', '18928658387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-03 16:39:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928658387' LIMIT 1);
UPDATE users SET nick_name='18928658387', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928658387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920170911', 'U15920170911', '陈艳华', '', '15920170911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-03 14:09:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920170911' LIMIT 1);
UPDATE users SET nick_name='陈艳华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920170911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688888842', 'U18688888842', 'kimlau', '', '18688888842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-03 12:50:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688888842' LIMIT 1);
UPDATE users SET nick_name='kimlau', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688888842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15816229818', 'U15816229818', '🐣(发疯版）', '', '15816229818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-02 19:38:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15816229818' LIMIT 1);
UPDATE users SET nick_name='🐣(发疯版）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15816229818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19128934556', 'U19128934556', '19128934556', '', '19128934556', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-02 19:31:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19128934556' LIMIT 1);
UPDATE users SET nick_name='19128934556', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19128934556';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15311480395', 'U15311480395', '15311480395', '', '15311480395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-02 16:00:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15311480395' LIMIT 1);
UPDATE users SET nick_name='15311480395', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15311480395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13414630426', 'U13414630426', 'Expecto Patronum', '', '13414630426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-02 08:21:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13414630426' LIMIT 1);
UPDATE users SET nick_name='Expecto Patronum', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13414630426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102018031', 'U15102018031', '张贤恺｜中银律师', '', '15102018031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-02 04:45:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102018031' LIMIT 1);
UPDATE users SET nick_name='张贤恺｜中银律师', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15102018031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986343395', 'U15986343395', 'qiuqiu🍞', '', '15986343395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-01 22:27:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986343395' LIMIT 1);
UPDATE users SET nick_name='qiuqiu🍞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15986343395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560018436', 'U13560018436', '13560018436', '', '13560018436', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-01 21:15:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560018436' LIMIT 1);
UPDATE users SET nick_name='13560018436', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560018436';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520007959', 'U18520007959', '麻友', '', '18520007959', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-01 12:30:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520007959' LIMIT 1);
UPDATE users SET nick_name='麻友', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520007959';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680291917', 'U18680291917', '18680291917', '', '18680291917', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-01 10:19:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680291917' LIMIT 1);
UPDATE users SET nick_name='18680291917', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680291917';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13178828742', 'U13178828742', '王', '', '13178828742', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-31 23:29:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13178828742' LIMIT 1);
UPDATE users SET nick_name='王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13178828742';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602833372', 'U13602833372', '13602833372', '', '13602833372', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-31 16:43:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602833372' LIMIT 1);
UPDATE users SET nick_name='13602833372', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602833372';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18616940719', 'U18616940719', '18616940719', '', '18616940719', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-31 16:08:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18616940719' LIMIT 1);
UPDATE users SET nick_name='18616940719', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18616940719';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13017897980', 'U13017897980', '13017897980', '', '13017897980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-31 13:42:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13017897980' LIMIT 1);
UPDATE users SET nick_name='13017897980', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13017897980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556402504', 'U13556402504', 'YanYan^o^', '', '13556402504', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-30 23:32:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556402504' LIMIT 1);
UPDATE users SET nick_name='YanYan^o^', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556402504';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632336588', 'U13632336588', 'zsh', '', '13632336588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-30 15:38:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632336588' LIMIT 1);
UPDATE users SET nick_name='zsh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632336588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600073327', 'U13600073327', 'Miki', '', '13600073327', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-30 14:24:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600073327' LIMIT 1);
UPDATE users SET nick_name='Miki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600073327';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512736176', 'U13512736176', '老李', '', '13512736176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-30 14:18:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512736176' LIMIT 1);
UPDATE users SET nick_name='老李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512736176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15385648130', 'U15385648130', '15385648130', '', '15385648130', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-30 13:13:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15385648130' LIMIT 1);
UPDATE users SET nick_name='15385648130', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15385648130';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13048071845', 'U13048071845', '木子', '', '13048071845', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-30 13:12:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13048071845' LIMIT 1);
UPDATE users SET nick_name='木子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13048071845';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902266037', 'U13902266037', '13902266037', '', '13902266037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-30 12:46:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902266037' LIMIT 1);
UPDATE users SET nick_name='13902266037', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902266037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922768328', 'U18922768328', '18922768328', '', '18922768328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-30 12:36:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922768328' LIMIT 1);
UPDATE users SET nick_name='18922768328', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922768328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622744890', 'U15622744890', '15622744890', '', '15622744890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-30 10:39:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622744890' LIMIT 1);
UPDATE users SET nick_name='15622744890', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622744890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602263124', 'U15602263124', '15602263124', '', '15602263124', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-30 10:37:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602263124' LIMIT 1);
UPDATE users SET nick_name='15602263124', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602263124';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660584489', 'U13660584489', '娜娜醬~', '', '13660584489', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 23:40:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660584489' LIMIT 1);
UPDATE users SET nick_name='娜娜醬~', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660584489';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13414005419', 'U13414005419', 'lynn', '', '13414005419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 21:10:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13414005419' LIMIT 1);
UPDATE users SET nick_name='lynn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13414005419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826030020', 'U13826030020', 'Freefree', '', '13826030020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 18:53:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826030020' LIMIT 1);
UPDATE users SET nick_name='Freefree', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826030020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560476061', 'U13560476061', '13560476061', '', '13560476061', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 16:44:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560476061' LIMIT 1);
UPDATE users SET nick_name='13560476061', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560476061';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918836442', 'U15918836442', '15918836442', '', '15918836442', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 16:29:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918836442' LIMIT 1);
UPDATE users SET nick_name='15918836442', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918836442';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660503501', 'U13660503501', '13660503501', '', '13660503501', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 16:20:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660503501' LIMIT 1);
UPDATE users SET nick_name='13660503501', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660503501';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13036870516', 'U13036870516', 'LBJ', '', '13036870516', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 16:05:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13036870516' LIMIT 1);
UPDATE users SET nick_name='LBJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13036870516';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660310524', 'U13660310524', '13660310524', '', '13660310524', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 15:31:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660310524' LIMIT 1);
UPDATE users SET nick_name='13660310524', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660310524';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560150055', 'U13560150055', 'Joe Yu_乔', '', '13560150055', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 14:41:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560150055' LIMIT 1);
UPDATE users SET nick_name='Joe Yu_乔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560150055';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620578741', 'U18620578741', '18620578741', '', '18620578741', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 14:03:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620578741' LIMIT 1);
UPDATE users SET nick_name='18620578741', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620578741';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529180362', 'U18529180362', '18529180362', '', '18529180362', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 14:03:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529180362' LIMIT 1);
UPDATE users SET nick_name='18529180362', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529180362';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18983492185', 'U18983492185', 'Joey', '', '18983492185', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 12:18:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18983492185' LIMIT 1);
UPDATE users SET nick_name='Joey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18983492185';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503057176', 'U13503057176', '13503057176', '', '13503057176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 11:39:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503057176' LIMIT 1);
UPDATE users SET nick_name='13503057176', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503057176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13676296896', 'U13676296896', 'Lilli', '', '13676296896', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 11:37:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13676296896' LIMIT 1);
UPDATE users SET nick_name='Lilli', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13676296896';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922187711', 'U13922187711', '临时出差无法过来 欠一次匹克球', '', '13922187711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 11:24:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922187711' LIMIT 1);
UPDATE users SET nick_name='临时出差无法过来 欠一次匹克球', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922187711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17677268540', 'U17677268540', '冧', '', '17677268540', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 11:20:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17677268540' LIMIT 1);
UPDATE users SET nick_name='冧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17677268540';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013154062', 'U15013154062', '徐仁真🦈', '', '15013154062', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2026-08-29 09:53:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013154062' LIMIT 1);
UPDATE users SET nick_name='徐仁真🦈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='15013154062';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631383771', 'U13631383771', '油菠萝子王', '', '13631383771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-29 00:57:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631383771' LIMIT 1);
UPDATE users SET nick_name='油菠萝子王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631383771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642612814', 'U13642612814', '13642612814', '', '13642612814', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-28 21:08:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642612814' LIMIT 1);
UPDATE users SET nick_name='13642612814', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642612814';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622743663', 'U13622743663', '杜嘉仪Carrie', '', '13622743663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-28 20:29:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622743663' LIMIT 1);
UPDATE users SET nick_name='杜嘉仪Carrie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622743663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922495713', 'U18922495713', 'dd', '', '18922495713', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-28 17:55:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922495713' LIMIT 1);
UPDATE users SET nick_name='dd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922495713';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15292177823', 'U15292177823', '15292177823', '', '15292177823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-28 12:43:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15292177823' LIMIT 1);
UPDATE users SET nick_name='15292177823', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15292177823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665414069', 'U18665414069', '锅盖', '', '18665414069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-08-28 10:36:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665414069' LIMIT 1);
UPDATE users SET nick_name='锅盖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18665414069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819475492', 'U18819475492', 'pp', '', '18819475492', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-27 23:43:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819475492' LIMIT 1);
UPDATE users SET nick_name='pp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819475492';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17875045510', 'U17875045510', '吉良吉影的一天', '', '17875045510', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-27 21:36:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17875045510' LIMIT 1);
UPDATE users SET nick_name='吉良吉影的一天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17875045510';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17637675199', 'U17637675199', '17637675199', '', '17637675199', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-27 21:19:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17637675199' LIMIT 1);
UPDATE users SET nick_name='17637675199', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17637675199';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060501311', 'U13060501311', '小詩', '', '13060501311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-27 20:49:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060501311' LIMIT 1);
UPDATE users SET nick_name='小詩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060501311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521083235', 'U15521083235', 'Loo', '', '15521083235', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-27 19:05:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521083235' LIMIT 1);
UPDATE users SET nick_name='Loo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521083235';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017258122', 'U15017258122', '15017258122', '', '15017258122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-27 17:49:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017258122' LIMIT 1);
UPDATE users SET nick_name='15017258122', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017258122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922226077', 'U13922226077', '13922226077', '', '13922226077', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-27 17:44:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922226077' LIMIT 1);
UPDATE users SET nick_name='13922226077', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922226077';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148918387', 'U13148918387', 'Stacey🧸', '', '13148918387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-27 17:23:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148918387' LIMIT 1);
UPDATE users SET nick_name='Stacey🧸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13148918387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13059152999', 'U13059152999', 'ss', '', '13059152999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-27 16:50:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13059152999' LIMIT 1);
UPDATE users SET nick_name='ss', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13059152999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18684532796', 'U18684532796', '18684532796', '', '18684532796', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-27 15:42:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18684532796' LIMIT 1);
UPDATE users SET nick_name='18684532796', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18684532796';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929552483', 'U13929552483', 'Kristen', '', '13929552483', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-27 14:59:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929552483' LIMIT 1);
UPDATE users SET nick_name='Kristen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929552483';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102677617', 'U18102677617', '韦小宝', '', '18102677617', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-26 15:14:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102677617' LIMIT 1);
UPDATE users SET nick_name='韦小宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102677617';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922433007', 'U18922433007', 'Eitsu', '', '18922433007', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-26 15:02:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922433007' LIMIT 1);
UPDATE users SET nick_name='Eitsu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922433007';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13689576104', 'U13689576104', 'Xixi', '', '13689576104', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-26 14:39:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13689576104' LIMIT 1);
UPDATE users SET nick_name='Xixi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13689576104';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13502469836', 'U13502469836', 'nk', '', '13502469836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-25 19:38:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13502469836' LIMIT 1);
UPDATE users SET nick_name='nk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13502469836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18562520702', 'U18562520702', '💥', '', '18562520702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-25 18:38:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18562520702' LIMIT 1);
UPDATE users SET nick_name='💥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18562520702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15791749109', 'U15791749109', '15791749109', '', '15791749109', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-25 15:48:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15791749109' LIMIT 1);
UPDATE users SET nick_name='15791749109', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15791749109';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719777069', 'U13719777069', '菠罗小面包', '', '13719777069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-25 12:50:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719777069' LIMIT 1);
UPDATE users SET nick_name='菠罗小面包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719777069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15754508532', 'U15754508532', '.', '', '15754508532', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 23:01:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15754508532' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15754508532';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028021788', 'U18028021788', '18028021788', '', '18028021788', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 20:35:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028021788' LIMIT 1);
UPDATE users SET nick_name='18028021788', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028021788';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520064192', 'U18520064192', '🐛', '', '18520064192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 20:16:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520064192' LIMIT 1);
UPDATE users SET nick_name='🐛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520064192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600420469', 'U13600420469', 'zz', '', '13600420469', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 20:15:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600420469' LIMIT 1);
UPDATE users SET nick_name='zz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600420469';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15015681989', 'U15015681989', 'glh', '', '15015681989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 19:25:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15015681989' LIMIT 1);
UPDATE users SET nick_name='glh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15015681989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15580313675', 'U15580313675', '你的肥肥o', '', '15580313675', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 19:21:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15580313675' LIMIT 1);
UPDATE users SET nick_name='你的肥肥o', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15580313675';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392608630', 'U13392608630', '13392608630', '', '13392608630', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 18:28:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392608630' LIMIT 1);
UPDATE users SET nick_name='13392608630', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392608630';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288194761', 'U13288194761', '13288194761', '', '13288194761', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 18:11:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288194761' LIMIT 1);
UPDATE users SET nick_name='13288194761', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288194761';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13794574510', 'U13794574510', '彭彩琴', '', '13794574510', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 17:54:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13794574510' LIMIT 1);
UPDATE users SET nick_name='彭彩琴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13794574510';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802936981', 'U13802936981', '13802936981', '', '13802936981', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 17:35:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802936981' LIMIT 1);
UPDATE users SET nick_name='13802936981', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802936981';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798174812', 'U13798174812', '文武贝', '', '13798174812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 15:24:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798174812' LIMIT 1);
UPDATE users SET nick_name='文武贝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798174812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928780831', 'U13928780831', 'yukie啊', '', '13928780831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 14:49:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928780831' LIMIT 1);
UPDATE users SET nick_name='yukie啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928780831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688468996', 'U18688468996', 'Frank', '', '18688468996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 14:28:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688468996' LIMIT 1);
UPDATE users SET nick_name='Frank', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688468996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13811608633', 'U13811608633', '13811608633', '', '13811608633', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 11:29:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13811608633' LIMIT 1);
UPDATE users SET nick_name='13811608633', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13811608633';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15001862005', 'U15001862005', 'Du', '', '15001862005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 120, '2026-08-24 09:33:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15001862005' LIMIT 1);
UPDATE users SET nick_name='Du', balance=GREATEST(balance, 0.00), points=GREATEST(points, 120) WHERE phone='15001862005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19102035895', 'U19102035895', '小火人', '', '19102035895', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-24 02:55:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19102035895' LIMIT 1);
UPDATE users SET nick_name='小火人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19102035895';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570954187', 'U13570954187', 'Damon', '', '13570954187', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-23 19:46:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570954187' LIMIT 1);
UPDATE users SET nick_name='Damon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570954187';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989178567', 'U15989178567', '《《《🐳》》》', '', '15989178567', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-23 17:05:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989178567' LIMIT 1);
UPDATE users SET nick_name='《《《🐳》》》', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989178567';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692428350', 'U15692428350', 'Zwm', '', '15692428350', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-23 15:30:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692428350' LIMIT 1);
UPDATE users SET nick_name='Zwm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692428350';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15976698051', 'U15976698051', '15976698051', '', '15976698051', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-23 14:24:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15976698051' LIMIT 1);
UPDATE users SET nick_name='15976698051', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15976698051';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17612234873', 'U17612234873', 'jim', '', '17612234873', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-23 13:49:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17612234873' LIMIT 1);
UPDATE users SET nick_name='jim', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17612234873';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18773115917', 'U18773115917', '18773115917', '', '18773115917', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-23 13:35:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18773115917' LIMIT 1);
UPDATE users SET nick_name='18773115917', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18773115917';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13911836192', 'U13911836192', '지혜꽃（索兰雀存）', '', '13911836192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-23 12:47:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13911836192' LIMIT 1);
UPDATE users SET nick_name='지혜꽃（索兰雀存）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13911836192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17806599027', 'U17806599027', 'Solitude', '', '17806599027', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-23 11:43:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17806599027' LIMIT 1);
UPDATE users SET nick_name='Solitude', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17806599027';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15875802473', 'U15875802473', 'Anny', '', '15875802473', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-23 11:41:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15875802473' LIMIT 1);
UPDATE users SET nick_name='Anny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15875802473';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13071439351', 'U13071439351', 'Irving', '', '13071439351', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-23 09:58:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13071439351' LIMIT 1);
UPDATE users SET nick_name='Irving', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13071439351';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565278006', 'U18565278006', '时雨', '', '18565278006', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-23 09:44:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565278006' LIMIT 1);
UPDATE users SET nick_name='时雨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565278006';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920889173', 'U15920889173', 'ꕥ Yan ꕥ', '', '15920889173', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-22 22:26:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920889173' LIMIT 1);
UPDATE users SET nick_name='ꕥ Yan ꕥ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920889173';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480250666', 'U13480250666', '对方正在翻字典夸你', '', '13480250666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-22 19:51:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480250666' LIMIT 1);
UPDATE users SET nick_name='对方正在翻字典夸你', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480250666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986374743', 'U15986374743', '15986374743', '', '15986374743', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-22 18:54:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986374743' LIMIT 1);
UPDATE users SET nick_name='15986374743', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15986374743';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113439755', 'U13113439755', '13113439755', '', '13113439755', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-22 18:15:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113439755' LIMIT 1);
UPDATE users SET nick_name='13113439755', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13113439755';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813303855', 'U15813303855', '15813303855', '', '15813303855', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-22 15:28:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813303855' LIMIT 1);
UPDATE users SET nick_name='15813303855', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813303855';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710995660', 'U13710995660', '13710995660', '', '13710995660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-22 13:29:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710995660' LIMIT 1);
UPDATE users SET nick_name='13710995660', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710995660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620145435', 'U16620145435', '.', '', '16620145435', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-22 11:06:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620145435' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620145435';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609745478', 'U13609745478', '红袖', '', '13609745478', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-22 09:25:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609745478' LIMIT 1);
UPDATE users SET nick_name='红袖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609745478';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18594020702', 'U18594020702', '麦', '', '18594020702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-22 01:07:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18594020702' LIMIT 1);
UPDATE users SET nick_name='麦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18594020702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19106674098', 'U19106674098', '19106674098', '', '19106674098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-21 22:14:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19106674098' LIMIT 1);
UPDATE users SET nick_name='19106674098', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19106674098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18575634058', 'U18575634058', '额', '', '18575634058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-21 18:17:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18575634058' LIMIT 1);
UPDATE users SET nick_name='额', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18575634058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18552196829', 'U18552196829', '吕小步', '', '18552196829', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-21 16:49:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18552196829' LIMIT 1);
UPDATE users SET nick_name='吕小步', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18552196829';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610110091', 'U13610110091', 'Laura', '', '13610110091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-21 15:24:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610110091' LIMIT 1);
UPDATE users SET nick_name='Laura', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610110091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602680976', 'U15602680976', 'santorini', '', '15602680976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-21 12:40:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602680976' LIMIT 1);
UPDATE users SET nick_name='santorini', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602680976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19250667578', 'U19250667578', '包包', '', '19250667578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-21 11:52:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19250667578' LIMIT 1);
UPDATE users SET nick_name='包包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19250667578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13794301594', 'U13794301594', '11', '', '13794301594', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-20 17:20:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13794301594' LIMIT 1);
UPDATE users SET nick_name='11', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13794301594';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711698468', 'U13711698468', '13711698468', '', '13711698468', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-20 16:56:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711698468' LIMIT 1);
UPDATE users SET nick_name='13711698468', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711698468';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15019762044', 'U15019762044', '15019762044', '', '15019762044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-20 16:27:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15019762044' LIMIT 1);
UPDATE users SET nick_name='15019762044', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15019762044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13510013010', 'U13510013010', '老莫', '', '13510013010', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-20 15:29:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13510013010' LIMIT 1);
UPDATE users SET nick_name='老莫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13510013010';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18675823255', 'U18675823255', '肥而不腻', '', '18675823255', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-20 15:02:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18675823255' LIMIT 1);
UPDATE users SET nick_name='肥而不腻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18675823255';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127993581', 'U18127993581', '刘小姐', '', '18127993581', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-20 14:22:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127993581' LIMIT 1);
UPDATE users SET nick_name='刘小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127993581';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13172053995', 'U13172053995', '1989', '', '13172053995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-08-20 13:49:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13172053995' LIMIT 1);
UPDATE users SET nick_name='1989', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13172053995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719342904', 'U13719342904', '13719342904', '', '13719342904', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-20 13:30:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719342904' LIMIT 1);
UPDATE users SET nick_name='13719342904', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719342904';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15807532544', 'U15807532544', '李思思思Esnice', '', '15807532544', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-20 13:00:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15807532544' LIMIT 1);
UPDATE users SET nick_name='李思思思Esnice', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15807532544';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19539999087', 'U19539999087', '精灵', '', '19539999087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-20 12:14:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19539999087' LIMIT 1);
UPDATE users SET nick_name='精灵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19539999087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729825789', 'U13729825789', '富立业', '', '13729825789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-20 11:12:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729825789' LIMIT 1);
UPDATE users SET nick_name='富立业', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729825789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520515269', 'U18520515269', '微漾', '', '18520515269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-08-20 10:24:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520515269' LIMIT 1);
UPDATE users SET nick_name='微漾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520515269';
