SET NAMES utf8mb4;
-- 中大店用户导入 part 9 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560363049', 'U13560363049', 'Jessie', '', '13560363049', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 10:43:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560363049' LIMIT 1);
UPDATE users SET nick_name='Jessie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560363049';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535522746', 'U13535522746', 'lamhiuwing', '', '13535522746', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 10:31:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535522746' LIMIT 1);
UPDATE users SET nick_name='lamhiuwing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535522746';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129398829', 'U13129398829', '宝', '', '13129398829', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 09:56:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129398829' LIMIT 1);
UPDATE users SET nick_name='宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13129398829';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450475175', 'U13450475175', '🍂lynn0', '', '13450475175', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 09:55:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450475175' LIMIT 1);
UPDATE users SET nick_name='🍂lynn0', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450475175';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826158996', 'U13826158996', '悟', '', '13826158996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 09:52:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826158996' LIMIT 1);
UPDATE users SET nick_name='悟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826158996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829810703', 'U13829810703', 'Paco', '', '13829810703', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-19 01:16:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829810703' LIMIT 1);
UPDATE users SET nick_name='Paco', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829810703';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13420111731', 'U13420111731', 'Cato', '', '13420111731', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 23:53:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13420111731' LIMIT 1);
UPDATE users SET nick_name='Cato', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13420111731';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128644080', 'U13128644080', 'yj', '', '13128644080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 23:25:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128644080' LIMIT 1);
UPDATE users SET nick_name='yj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128644080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560469619', 'U13560469619', '胡萝卜', '', '13560469619', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 23:22:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560469619' LIMIT 1);
UPDATE users SET nick_name='胡萝卜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560469619';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18675950190', 'U18675950190', '基路比罗斯', '', '18675950190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 22:42:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18675950190' LIMIT 1);
UPDATE users SET nick_name='基路比罗斯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18675950190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819254517', 'U18819254517', 'Yoga', '', '18819254517', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 22:37:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819254517' LIMIT 1);
UPDATE users SET nick_name='Yoga', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819254517';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626478350', 'U15626478350', '寧', '', '15626478350', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 22:30:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626478350' LIMIT 1);
UPDATE users SET nick_name='寧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626478350';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922138929', 'U18922138929', 'Barbie', '', '18922138929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 22:23:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922138929' LIMIT 1);
UPDATE users SET nick_name='Barbie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922138929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808898903', 'U13808898903', '13808898903', '', '13808898903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 21:20:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808898903' LIMIT 1);
UPDATE users SET nick_name='13808898903', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808898903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660866728', 'U13660866728', '13660866728', '', '13660866728', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 21:19:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660866728' LIMIT 1);
UPDATE users SET nick_name='13660866728', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660866728';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13069840171', 'U13069840171', '王后余生', '', '13069840171', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 20:17:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13069840171' LIMIT 1);
UPDATE users SET nick_name='王后余生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13069840171';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539438334', 'U13539438334', '一只小团子', '', '13539438334', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 19:41:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539438334' LIMIT 1);
UPDATE users SET nick_name='一只小团子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539438334';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760632120', 'U13760632120', 'hi', '', '13760632120', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 19:05:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760632120' LIMIT 1);
UPDATE users SET nick_name='hi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760632120';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15123433327', 'U15123433327', 'P P', '', '15123433327', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 16:54:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15123433327' LIMIT 1);
UPDATE users SET nick_name='P P', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15123433327';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928823873', 'U13928823873', 'Rain', '', '13928823873', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 16:14:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928823873' LIMIT 1);
UPDATE users SET nick_name='Rain', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928823873';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13119514158', 'U13119514158', 'JerryC', '', '13119514158', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 8, '2025-07-18 15:14:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13119514158' LIMIT 1);
UPDATE users SET nick_name='JerryC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 8) WHERE phone='13119514158';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556004929', 'U13556004929', '13556004929', '', '13556004929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 13:59:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556004929' LIMIT 1);
UPDATE users SET nick_name='13556004929', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556004929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922007365', 'U18922007365', 'winnie', '', '18922007365', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 13:59:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922007365' LIMIT 1);
UPDATE users SET nick_name='winnie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922007365';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588850395', 'U18588850395', 'Ling', '', '18588850395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 13:35:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588850395' LIMIT 1);
UPDATE users SET nick_name='Ling', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588850395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18945585883', 'U18945585883', 'Cheryl', '', '18945585883', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 13:20:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18945585883' LIMIT 1);
UPDATE users SET nick_name='Cheryl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18945585883';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664767957', 'U18664767957', 'Nicole', '', '18664767957', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 13:02:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664767957' LIMIT 1);
UPDATE users SET nick_name='Nicole', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664767957';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560227147', 'U13560227147', 'Spencer', '', '13560227147', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 12:49:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560227147' LIMIT 1);
UPDATE users SET nick_name='Spencer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560227147';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17727594548', 'U17727594548', '豆沙包.', '', '17727594548', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 12:44:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17727594548' LIMIT 1);
UPDATE users SET nick_name='豆沙包.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17727594548';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18920538670', 'U18920538670', 'Rachael', '', '18920538670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 12:43:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18920538670' LIMIT 1);
UPDATE users SET nick_name='Rachael', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18920538670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022342817', 'U18022342817', 'Being', '', '18022342817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 12:34:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022342817' LIMIT 1);
UPDATE users SET nick_name='Being', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022342817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13811177259', 'U13811177259', 'susu', '', '13811177259', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-07-18 12:21:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13811177259' LIMIT 1);
UPDATE users SET nick_name='susu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='13811177259';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15578820153', 'U15578820153', 'GD', '', '15578820153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 11:00:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15578820153' LIMIT 1);
UPDATE users SET nick_name='GD', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15578820153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15167803010', 'U15167803010', '🎾', '', '15167803010', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 10:58:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15167803010' LIMIT 1);
UPDATE users SET nick_name='🎾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15167803010';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18702007198', 'U18702007198', 'X', '', '18702007198', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-18 10:53:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18702007198' LIMIT 1);
UPDATE users SET nick_name='X', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18702007198';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817291451', 'U17817291451', '🌰', '', '17817291451', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 10:37:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817291451' LIMIT 1);
UPDATE users SET nick_name='🌰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817291451';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288689424', 'U13288689424', 'Punk', '', '13288689424', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-18 09:46:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288689424' LIMIT 1);
UPDATE users SET nick_name='Punk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288689424';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710728942', 'U13710728942', '神神的剑', '', '13710728942', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-07-17 23:18:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710728942' LIMIT 1);
UPDATE users SET nick_name='神神的剑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13710728942';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902289768', 'U18902289768', 'jj', '', '18902289768', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 22:32:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902289768' LIMIT 1);
UPDATE users SET nick_name='jj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18902289768';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15235354122', 'U15235354122', '大风起兮', '', '15235354122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 21:56:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15235354122' LIMIT 1);
UPDATE users SET nick_name='大风起兮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15235354122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022864508', 'U18022864508', '俊东', '', '18022864508', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 20:49:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022864508' LIMIT 1);
UPDATE users SET nick_name='俊东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022864508';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609012544', 'U13609012544', '张', '', '13609012544', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 19:22:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609012544' LIMIT 1);
UPDATE users SET nick_name='张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609012544';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760724160', 'U13760724160', '渣男来了', '', '13760724160', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 18:49:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760724160' LIMIT 1);
UPDATE users SET nick_name='渣男来了', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760724160';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13692164668', 'U13692164668', '汤圆', '', '13692164668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 18:13:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13692164668' LIMIT 1);
UPDATE users SET nick_name='汤圆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13692164668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202826139', 'U13202826139', 'jor', '', '13202826139', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 17:13:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202826139' LIMIT 1);
UPDATE users SET nick_name='jor', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202826139';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631424298', 'U13631424298', '13631424298', '', '13631424298', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 15:52:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631424298' LIMIT 1);
UPDATE users SET nick_name='13631424298', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631424298';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544120110', 'U13544120110', '13544120110', '', '13544120110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 15:15:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544120110' LIMIT 1);
UPDATE users SET nick_name='13544120110', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544120110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15237916935', 'U15237916935', '15237916935', '', '15237916935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 15:09:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15237916935' LIMIT 1);
UPDATE users SET nick_name='15237916935', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15237916935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18719921756', 'U18719921756', '18719921756', '', '18719921756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 14:24:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18719921756' LIMIT 1);
UPDATE users SET nick_name='18719921756', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18719921756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578333833', 'U18578333833', '18578333833', '', '18578333833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 14:22:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578333833' LIMIT 1);
UPDATE users SET nick_name='18578333833', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578333833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13278884227', 'U13278884227', '黑猫网球手', '', '13278884227', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 13:05:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13278884227' LIMIT 1);
UPDATE users SET nick_name='黑猫网球手', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13278884227';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602865495', 'U13602865495', 'Catherine', '', '13602865495', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-07-17 12:14:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602865495' LIMIT 1);
UPDATE users SET nick_name='Catherine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13602865495';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15397829625', 'U15397829625', '开心🥳', '', '15397829625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 12:12:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15397829625' LIMIT 1);
UPDATE users SET nick_name='开心🥳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15397829625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729811030', 'U13729811030', '小绿', '', '13729811030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 11:10:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729811030' LIMIT 1);
UPDATE users SET nick_name='小绿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729811030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127825879', 'U18127825879', 'aashhhhh', '', '18127825879', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 11:03:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127825879' LIMIT 1);
UPDATE users SET nick_name='aashhhhh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127825879';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13677089161', 'U13677089161', '胡饴然', '', '13677089161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-17 10:07:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13677089161' LIMIT 1);
UPDATE users SET nick_name='胡饴然', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13677089161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512703292', 'U13512703292', 'Miu', '', '13512703292', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 23:56:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512703292' LIMIT 1);
UPDATE users SET nick_name='Miu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512703292';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826074857', 'U18826074857', 'HiCheeZe', '', '18826074857', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 23:40:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826074857' LIMIT 1);
UPDATE users SET nick_name='HiCheeZe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826074857';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925124748', 'U13925124748', '迪- Nicky', '', '13925124748', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 23:13:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925124748' LIMIT 1);
UPDATE users SET nick_name='迪- Nicky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925124748';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13728549945', 'U13728549945', '伦先生', '', '13728549945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 23:10:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13728549945' LIMIT 1);
UPDATE users SET nick_name='伦先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13728549945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18984668114', 'U18984668114', '18984668114', '', '18984668114', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 20:33:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18984668114' LIMIT 1);
UPDATE users SET nick_name='18984668114', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18984668114';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18939685679', 'U18939685679', '18939685679', '', '18939685679', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 20:26:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18939685679' LIMIT 1);
UPDATE users SET nick_name='18939685679', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18939685679';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13507276168', 'U13507276168', '吉祥', '', '13507276168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-07-16 20:09:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13507276168' LIMIT 1);
UPDATE users SET nick_name='吉祥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='13507276168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15071334803', 'U15071334803', '15071334803', '', '15071334803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 18:42:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15071334803' LIMIT 1);
UPDATE users SET nick_name='15071334803', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15071334803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19521248390', 'U19521248390', '19521248390', '', '19521248390', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 18:30:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19521248390' LIMIT 1);
UPDATE users SET nick_name='19521248390', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19521248390';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322949803', 'U17322949803', '17322949803', '', '17322949803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 18:30:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322949803' LIMIT 1);
UPDATE users SET nick_name='17322949803', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322949803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13027960877', 'U13027960877', 'Gauss', '', '13027960877', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 18:29:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13027960877' LIMIT 1);
UPDATE users SET nick_name='Gauss', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13027960877';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18202004577', 'U18202004577', 'wytvok', '', '18202004577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 18:26:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18202004577' LIMIT 1);
UPDATE users SET nick_name='wytvok', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18202004577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915896020', 'U15915896020', '曾曾', '', '15915896020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 17:41:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915896020' LIMIT 1);
UPDATE users SET nick_name='曾曾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915896020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13648090790', 'U13648090790', 'WuLi陈三岁🌸', '', '13648090790', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 17:40:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13648090790' LIMIT 1);
UPDATE users SET nick_name='WuLi陈三岁🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13648090790';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322290317', 'U17322290317', 'aranami', '', '17322290317', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 854, '2025-07-16 17:27:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322290317' LIMIT 1);
UPDATE users SET nick_name='aranami', balance=GREATEST(balance, 0.00), points=GREATEST(points, 854) WHERE phone='17322290317';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929587156', 'U13929587156', 'bamboo', '', '13929587156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 17:15:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929587156' LIMIT 1);
UPDATE users SET nick_name='bamboo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929587156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521388165', 'U15521388165', 'dddd', '', '15521388165', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 17:02:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521388165' LIMIT 1);
UPDATE users SET nick_name='dddd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521388165';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13720622935', 'U13720622935', 'Friend', '', '13720622935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 16:01:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13720622935' LIMIT 1);
UPDATE users SET nick_name='Friend', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13720622935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13713815879', 'U13713815879', '黎', '', '13713815879', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 15:31:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13713815879' LIMIT 1);
UPDATE users SET nick_name='黎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13713815879';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16624778359', 'U16624778359', '16624778359', '', '16624778359', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 15:23:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16624778359' LIMIT 1);
UPDATE users SET nick_name='16624778359', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16624778359';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925086963', 'U13925086963', 'EricHuang', '', '13925086963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-07-16 15:13:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925086963' LIMIT 1);
UPDATE users SET nick_name='EricHuang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13925086963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15886665699', 'U15886665699', 'D', '', '15886665699', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 14:52:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15886665699' LIMIT 1);
UPDATE users SET nick_name='D', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15886665699';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998441211', 'U18998441211', '自在如风的娜娜子', '', '18998441211', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 14:40:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998441211' LIMIT 1);
UPDATE users SET nick_name='自在如风的娜娜子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998441211';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560325088', 'U13560325088', '林哥', '', '13560325088', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 14:34:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560325088' LIMIT 1);
UPDATE users SET nick_name='林哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560325088';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660151618', 'U13660151618', 'HUI', '', '13660151618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 14:09:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660151618' LIMIT 1);
UPDATE users SET nick_name='HUI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660151618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560045045', 'U13560045045', '卢猫儿🐱', '', '13560045045', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 13:58:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560045045' LIMIT 1);
UPDATE users SET nick_name='卢猫儿🐱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560045045';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19576366828', 'U19576366828', '觀賞魚', '', '19576366828', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 13:31:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19576366828' LIMIT 1);
UPDATE users SET nick_name='觀賞魚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19576366828';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999944479', 'U15999944479', '周周', '', '15999944479', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 13:24:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999944479' LIMIT 1);
UPDATE users SET nick_name='周周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999944479';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13564715649', 'U13564715649', '大花猫', '', '13564715649', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 11:46:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13564715649' LIMIT 1);
UPDATE users SET nick_name='大花猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13564715649';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620007383', 'U16620007383', 'Niffler', '', '16620007383', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-16 10:32:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620007383' LIMIT 1);
UPDATE users SET nick_name='Niffler', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620007383';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19700137993', 'U19700137993', '允允允允允', '', '19700137993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 22:04:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19700137993' LIMIT 1);
UPDATE users SET nick_name='允允允允允', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19700137993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17611497823', 'U17611497823', '不低于百斤不改名', '', '17611497823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 21:55:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17611497823' LIMIT 1);
UPDATE users SET nick_name='不低于百斤不改名', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17611497823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13794189276', 'U13794189276', '13794189276', '', '13794189276', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 21:40:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13794189276' LIMIT 1);
UPDATE users SET nick_name='13794189276', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13794189276';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640819761', 'U13640819761', 'Winwin', '', '13640819761', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 21:37:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640819761' LIMIT 1);
UPDATE users SET nick_name='Winwin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640819761';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802797401', 'U13802797401', '💙', '', '13802797401', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 21:33:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802797401' LIMIT 1);
UPDATE users SET nick_name='💙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802797401';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826250007', 'U13826250007', '李先生', '', '13826250007', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 20:54:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826250007' LIMIT 1);
UPDATE users SET nick_name='李先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826250007';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828360330', 'U13828360330', '潇船长', '', '13828360330', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 20:54:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828360330' LIMIT 1);
UPDATE users SET nick_name='潇船长', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828360330';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902263579', 'U13902263579', 'Sophia', '', '13902263579', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 20:46:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902263579' LIMIT 1);
UPDATE users SET nick_name='Sophia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902263579';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535124607', 'U13535124607', 'bobo', '', '13535124607', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 19:38:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535124607' LIMIT 1);
UPDATE users SET nick_name='bobo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535124607';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18810553662', 'U18810553662', 'LEE', '', '18810553662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 19:23:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18810553662' LIMIT 1);
UPDATE users SET nick_name='LEE', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18810553662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13076314961', 'U13076314961', '纪漩', '', '13076314961', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 19:15:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13076314961' LIMIT 1);
UPDATE users SET nick_name='纪漩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13076314961';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620465291', 'U18620465291', '小凡', '', '18620465291', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 18:13:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620465291' LIMIT 1);
UPDATE users SET nick_name='小凡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620465291';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18604592119', 'U18604592119', 'O＋Cu', '', '18604592119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 17:30:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18604592119' LIMIT 1);
UPDATE users SET nick_name='O＋Cu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18604592119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122027598', 'U18122027598', '18122027598', '', '18122027598', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 17:24:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122027598' LIMIT 1);
UPDATE users SET nick_name='18122027598', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122027598';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719043803', 'U13719043803', 'Irina🌻', '', '13719043803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 17:12:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719043803' LIMIT 1);
UPDATE users SET nick_name='Irina🌻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719043803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19102069644', 'U19102069644', '歌歌', '', '19102069644', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 16:48:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19102069644' LIMIT 1);
UPDATE users SET nick_name='歌歌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19102069644';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18858813232', 'U18858813232', '叶阿凯 jack', '', '18858813232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 16:36:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18858813232' LIMIT 1);
UPDATE users SET nick_name='叶阿凯 jack', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18858813232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028083648', 'U18028083648', 'Tuesday', '', '18028083648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 388, '2025-07-15 16:11:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028083648' LIMIT 1);
UPDATE users SET nick_name='Tuesday', balance=GREATEST(balance, 0.00), points=GREATEST(points, 388) WHERE phone='18028083648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13215551919', 'U13215551919', '陈椰璐Ruby', '', '13215551919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 14:21:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13215551919' LIMIT 1);
UPDATE users SET nick_name='陈椰璐Ruby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13215551919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578223833', 'U18578223833', '18578223833', '', '18578223833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 14:08:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578223833' LIMIT 1);
UPDATE users SET nick_name='18578223833', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578223833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19168789774', 'U19168789774', '要熊掌也要鱼', '', '19168789774', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 176, '2025-07-15 10:13:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19168789774' LIMIT 1);
UPDATE users SET nick_name='要熊掌也要鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 176) WHERE phone='19168789774';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332823668', 'U13332823668', 'Julie', '', '13332823668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 09:06:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332823668' LIMIT 1);
UPDATE users SET nick_name='Julie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13332823668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15718104774', 'U15718104774', '梁津菡', '', '15718104774', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 08:39:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15718104774' LIMIT 1);
UPDATE users SET nick_name='梁津菡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15718104774';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925022649', 'U18925022649', 'Hay', '', '18925022649', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-15 06:55:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925022649' LIMIT 1);
UPDATE users SET nick_name='Hay', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925022649';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918755367', 'U15918755367', 'Lu🍹', '', '15918755367', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 23:07:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918755367' LIMIT 1);
UPDATE users SET nick_name='Lu🍹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918755367';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726214156', 'U13726214156', '13726214156', '', '13726214156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 21:43:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726214156' LIMIT 1);
UPDATE users SET nick_name='13726214156', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726214156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724109899', 'U13724109899', '阿鱼', '', '13724109899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 21:29:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724109899' LIMIT 1);
UPDATE users SET nick_name='阿鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724109899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19950592036', 'U19950592036', 'begin again', '', '19950592036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 20:44:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19950592036' LIMIT 1);
UPDATE users SET nick_name='begin again', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19950592036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819255272', 'U18819255272', 'Yee', '', '18819255272', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 20:41:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819255272' LIMIT 1);
UPDATE users SET nick_name='Yee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819255272';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520440213', 'U18520440213', '忍者乱二郎🥷🏻～', '', '18520440213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 19:56:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520440213' LIMIT 1);
UPDATE users SET nick_name='忍者乱二郎🥷🏻～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520440213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533344950', 'U13533344950', '谢镇生', '', '13533344950', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 18:45:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533344950' LIMIT 1);
UPDATE users SET nick_name='谢镇生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533344950';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13728068388', 'U13728068388', '卞卞', '', '13728068388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-07-14 18:14:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13728068388' LIMIT 1);
UPDATE users SET nick_name='卞卞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13728068388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13877879472', 'U13877879472', '🍐', '', '13877879472', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 17:00:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13877879472' LIMIT 1);
UPDATE users SET nick_name='🍐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13877879472';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19865431646', 'U19865431646', 'hollyliii', '', '19865431646', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 16:40:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19865431646' LIMIT 1);
UPDATE users SET nick_name='hollyliii', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19865431646';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600063081', 'U13600063081', 'zy.', '', '13600063081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 16:32:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600063081' LIMIT 1);
UPDATE users SET nick_name='zy.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600063081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17329789693', 'U17329789693', 'Joey', '', '17329789693', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 16:31:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17329789693' LIMIT 1);
UPDATE users SET nick_name='Joey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17329789693';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719481684', 'U13719481684', '7889', '', '13719481684', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 16:29:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719481684' LIMIT 1);
UPDATE users SET nick_name='7889', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719481684';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13012509562', 'U13012509562', '李', '', '13012509562', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 16:18:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13012509562' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13012509562';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688484047', 'U18688484047', '🍎🍎🍎', '', '18688484047', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-14 15:15:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688484047' LIMIT 1);
UPDATE users SET nick_name='🍎🍎🍎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18688484047';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15000029786', 'U15000029786', '马', '', '15000029786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 15:09:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15000029786' LIMIT 1);
UPDATE users SET nick_name='马', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15000029786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922928494', 'U13922928494', '13922928494', '', '13922928494', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 14:57:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922928494' LIMIT 1);
UPDATE users SET nick_name='13922928494', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922928494';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19526281063', 'U19526281063', '🐹', '', '19526281063', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 14:56:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19526281063' LIMIT 1);
UPDATE users SET nick_name='🐹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19526281063';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825113881', 'U13825113881', '敏敏🍭', '', '13825113881', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 14:53:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825113881' LIMIT 1);
UPDATE users SET nick_name='敏敏🍭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825113881';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18807749915', 'U18807749915', 'Rae', '', '18807749915', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 14:31:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18807749915' LIMIT 1);
UPDATE users SET nick_name='Rae', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18807749915';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822171837', 'U13822171837', '不是你的糯米🦄', '', '13822171837', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 13:49:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822171837' LIMIT 1);
UPDATE users SET nick_name='不是你的糯米🦄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822171837';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924215945', 'U13924215945', '辰辰', '', '13924215945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 13:23:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924215945' LIMIT 1);
UPDATE users SET nick_name='辰辰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924215945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229978983', 'U13229978983', '.Jim_X.', '', '13229978983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 12:41:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229978983' LIMIT 1);
UPDATE users SET nick_name='.Jim_X.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229978983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665730460', 'U18665730460', 'Ellie', '', '18665730460', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-14 11:49:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665730460' LIMIT 1);
UPDATE users SET nick_name='Ellie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665730460';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926619988', 'U18926619988', 'Barnett', '', '18926619988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 109, '2025-07-14 09:24:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926619988' LIMIT 1);
UPDATE users SET nick_name='Barnett', balance=GREATEST(balance, 0.00), points=GREATEST(points, 109) WHERE phone='18926619988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620895717', 'U18620895717', 'wes', '', '18620895717', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 21:02:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620895717' LIMIT 1);
UPDATE users SET nick_name='wes', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620895717';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13838755259', 'U13838755259', '13838755259', '', '13838755259', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 20:54:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13838755259' LIMIT 1);
UPDATE users SET nick_name='13838755259', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13838755259';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19118758172', 'U19118758172', '19118758172', '', '19118758172', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 18:37:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19118758172' LIMIT 1);
UPDATE users SET nick_name='19118758172', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19118758172';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918680536', 'U15918680536', 'zoe', '', '15918680536', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-13 18:22:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918680536' LIMIT 1);
UPDATE users SET nick_name='zoe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15918680536';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802400240', 'U13802400240', '鳗鱼饭团', '', '13802400240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 17:57:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802400240' LIMIT 1);
UPDATE users SET nick_name='鳗鱼饭团', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802400240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13536912295', 'U13536912295', 'Leo', '', '13536912295', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 17:03:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13536912295' LIMIT 1);
UPDATE users SET nick_name='Leo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13536912295';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302206189', 'U13302206189', '䛥', '', '13302206189', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 16:30:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302206189' LIMIT 1);
UPDATE users SET nick_name='䛥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302206189';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13192364400', 'U13192364400', '陈阿瞒', '', '13192364400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 16:29:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13192364400' LIMIT 1);
UPDATE users SET nick_name='陈阿瞒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13192364400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13170333643', 'U13170333643', 'YOSHIKI', '', '13170333643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 16:05:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13170333643' LIMIT 1);
UPDATE users SET nick_name='YOSHIKI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13170333643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913231446', 'U15913231446', 'Puffpie-', '', '15913231446', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 15:21:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913231446' LIMIT 1);
UPDATE users SET nick_name='Puffpie-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913231446';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18301100325', 'U18301100325', '微笑）.com', '', '18301100325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 15:02:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18301100325' LIMIT 1);
UPDATE users SET nick_name='微笑）.com', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18301100325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824449861', 'U13824449861', '谢子', '', '13824449861', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 14:23:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824449861' LIMIT 1);
UPDATE users SET nick_name='谢子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824449861';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989099631', 'U15989099631', 'Miya', '', '15989099631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 14:15:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989099631' LIMIT 1);
UPDATE users SET nick_name='Miya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989099631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521225285', 'U15521225285', 'aa', '', '15521225285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 13:54:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521225285' LIMIT 1);
UPDATE users SET nick_name='aa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521225285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924697929', 'U18924697929', '18924697929', '', '18924697929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 13:45:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924697929' LIMIT 1);
UPDATE users SET nick_name='18924697929', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924697929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813947264', 'U15813947264', '15813947264', '', '15813947264', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 13:10:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813947264' LIMIT 1);
UPDATE users SET nick_name='15813947264', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813947264';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13048093048', 'U13048093048', '💏丿iee💍洁', '', '13048093048', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 13:09:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13048093048' LIMIT 1);
UPDATE users SET nick_name='💏丿iee💍洁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13048093048';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819374190', 'U18819374190', ' Judith', '', '18819374190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 13:01:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819374190' LIMIT 1);
UPDATE users SET nick_name=' Judith', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819374190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18198886789', 'U18198886789', 'Ying-G', '', '18198886789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 12:37:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18198886789' LIMIT 1);
UPDATE users SET nick_name='Ying-G', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18198886789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620109015', 'U18620109015', 'ninjahey', '', '18620109015', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 10:43:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620109015' LIMIT 1);
UPDATE users SET nick_name='ninjahey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620109015';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13692347519', 'U13692347519', 'comeback', '', '13692347519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 10:42:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13692347519' LIMIT 1);
UPDATE users SET nick_name='comeback', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13692347519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802096020', 'U18802096020', '王志善', '', '18802096020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 09:58:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802096020' LIMIT 1);
UPDATE users SET nick_name='王志善', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802096020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18841422567', 'U18841422567', 'Abby', '', '18841422567', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 09:40:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18841422567' LIMIT 1);
UPDATE users SET nick_name='Abby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18841422567';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664820684', 'U18664820684', '扯扯蛋', '', '18664820684', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2025-07-13 09:15:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664820684' LIMIT 1);
UPDATE users SET nick_name='扯扯蛋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='18664820684';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826231716', 'U13826231716', '网球', '', '13826231716', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 09:09:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826231716' LIMIT 1);
UPDATE users SET nick_name='网球', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826231716';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913161750', 'U15913161750', 'Ray.睿', '', '15913161750', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-13 08:06:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913161750' LIMIT 1);
UPDATE users SET nick_name='Ray.睿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913161750';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18200730602', 'U18200730602', 'Autumn', '', '18200730602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 22:38:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18200730602' LIMIT 1);
UPDATE users SET nick_name='Autumn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18200730602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15768191643', 'U15768191643', '严大大💃', '', '15768191643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 21:59:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15768191643' LIMIT 1);
UPDATE users SET nick_name='严大大💃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15768191643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19002057135', 'U19002057135', 'Q（见过容祖儿 汪苏泷版）', '', '19002057135', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 21:52:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19002057135' LIMIT 1);
UPDATE users SET nick_name='Q（见过容祖儿 汪苏泷版）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19002057135';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866211710', 'U19866211710', 'koi', '', '19866211710', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 21:46:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866211710' LIMIT 1);
UPDATE users SET nick_name='koi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19866211710';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18406650320', 'U18406650320', 'Ymx', '', '18406650320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 21:38:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18406650320' LIMIT 1);
UPDATE users SET nick_name='Ymx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18406650320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813327468', 'U15813327468', 'Linfu', '', '15813327468', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-07-12 21:32:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813327468' LIMIT 1);
UPDATE users SET nick_name='Linfu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='15813327468';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013071018', 'U15013071018', '安Q_Q', '', '15013071018', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 699, '2025-07-12 21:24:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013071018' LIMIT 1);
UPDATE users SET nick_name='安Q_Q', balance=GREATEST(balance, 0.00), points=GREATEST(points, 699) WHERE phone='15013071018';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18023076270', 'U18023076270', 'cyber', '', '18023076270', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 21:14:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18023076270' LIMIT 1);
UPDATE users SET nick_name='cyber', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18023076270';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602324497', 'U15602324497', '15602324497', '', '15602324497', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 20:58:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602324497' LIMIT 1);
UPDATE users SET nick_name='15602324497', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602324497';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620428557', 'U18620428557', '西尔莎 ·玉', '', '18620428557', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 20:55:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620428557' LIMIT 1);
UPDATE users SET nick_name='西尔莎 ·玉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620428557';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625168829', 'U15625168829', '15625168829', '', '15625168829', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 20:53:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625168829' LIMIT 1);
UPDATE users SET nick_name='15625168829', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625168829';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666507527', 'U17666507527', '17666507527', '', '17666507527', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 20:49:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666507527' LIMIT 1);
UPDATE users SET nick_name='17666507527', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666507527';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15716787251', 'U15716787251', 'Ding', '', '15716787251', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-07-12 20:43:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15716787251' LIMIT 1);
UPDATE users SET nick_name='Ding', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='15716787251';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802448701', 'U13802448701', '雀', '', '13802448701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 20:38:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802448701' LIMIT 1);
UPDATE users SET nick_name='雀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802448701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18428314963', 'U18428314963', '影子', '', '18428314963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 20:16:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18428314963' LIMIT 1);
UPDATE users SET nick_name='影子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18428314963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989043861', 'U15989043861', '勍', '', '15989043861', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 19:27:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989043861' LIMIT 1);
UPDATE users SET nick_name='勍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989043861';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15015614239', 'U15015614239', '月月', '', '15015614239', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 19:18:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15015614239' LIMIT 1);
UPDATE users SET nick_name='月月', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15015614239';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632274315', 'U13632274315', '小冉', '', '13632274315', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 18:57:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632274315' LIMIT 1);
UPDATE users SET nick_name='小冉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632274315';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819364145', 'U18819364145', '2蚊2', '', '18819364145', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 18:52:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819364145' LIMIT 1);
UPDATE users SET nick_name='2蚊2', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819364145';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217166897', 'U15217166897', '张小树🌲', '', '15217166897', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 656, '2025-07-12 18:48:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217166897' LIMIT 1);
UPDATE users SET nick_name='张小树🌲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 656) WHERE phone='15217166897';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19223202489', 'U19223202489', '5866', '', '19223202489', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 18:22:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19223202489' LIMIT 1);
UPDATE users SET nick_name='5866', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19223202489';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13643551661', 'U13643551661', '清', '', '13643551661', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 17:34:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13643551661' LIMIT 1);
UPDATE users SET nick_name='清', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13643551661';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18270770667', 'U18270770667', '八王wallflower（？？？', '', '18270770667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 16:47:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18270770667' LIMIT 1);
UPDATE users SET nick_name='八王wallflower（？？？', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18270770667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13620948389', 'U13620948389', '111', '', '13620948389', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 16:43:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13620948389' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13620948389';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265358889', 'U13265358889', 'King', '', '13265358889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 16:35:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265358889' LIMIT 1);
UPDATE users SET nick_name='King', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265358889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620546429', 'U18620546429', '溯.🎐', '', '18620546429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 16:19:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620546429' LIMIT 1);
UPDATE users SET nick_name='溯.🎐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620546429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620046834', 'U16620046834', 'ese', '', '16620046834', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 16:14:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620046834' LIMIT 1);
UPDATE users SET nick_name='ese', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620046834';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535407573', 'U13535407573', '邬耀文', '', '13535407573', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 16:08:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535407573' LIMIT 1);
UPDATE users SET nick_name='邬耀文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535407573';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13172583441', 'U13172583441', '🌬🌫💨', '', '13172583441', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 16:02:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13172583441' LIMIT 1);
UPDATE users SET nick_name='🌬🌫💨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13172583441';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13509835401', 'U13509835401', '13509835401', '', '13509835401', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 15:41:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13509835401' LIMIT 1);
UPDATE users SET nick_name='13509835401', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13509835401';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664819929', 'U18664819929', '郑国荣', '', '18664819929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 15:36:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664819929' LIMIT 1);
UPDATE users SET nick_name='郑国荣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664819929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760336678', 'U13760336678', 'Famm', '', '13760336678', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 15:09:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760336678' LIMIT 1);
UPDATE users SET nick_name='Famm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760336678';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312887065', 'U18312887065', 'KuRoI_', '', '18312887065', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 13:51:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312887065' LIMIT 1);
UPDATE users SET nick_name='KuRoI_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312887065';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18376524958', 'U18376524958', '18376524958', '', '18376524958', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 13:50:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18376524958' LIMIT 1);
UPDATE users SET nick_name='18376524958', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18376524958';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18476408579', 'U18476408579', '曾海敏', '', '18476408579', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 13:46:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18476408579' LIMIT 1);
UPDATE users SET nick_name='曾海敏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18476408579';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13737256610', 'U13737256610', '不吃貓de魚', '', '13737256610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 13:35:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13737256610' LIMIT 1);
UPDATE users SET nick_name='不吃貓de魚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13737256610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710288876', 'U13710288876', '黄', '', '13710288876', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 13:29:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710288876' LIMIT 1);
UPDATE users SET nick_name='黄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710288876';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533976201', 'U13533976201', 'Nostalgia', '', '13533976201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 13:13:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533976201' LIMIT 1);
UPDATE users SET nick_name='Nostalgia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533976201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15002125107', 'U15002125107', '爱国周', '', '15002125107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 12:39:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15002125107' LIMIT 1);
UPDATE users SET nick_name='爱国周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15002125107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13514216346', 'U13514216346', '黄欠登🤖', '', '13514216346', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 12:33:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13514216346' LIMIT 1);
UPDATE users SET nick_name='黄欠登🤖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13514216346';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18899717276', 'U18899717276', '季', '', '18899717276', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 11:49:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18899717276' LIMIT 1);
UPDATE users SET nick_name='季', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18899717276';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011914692', 'U15011914692', 'tong', '', '15011914692', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 11:19:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011914692' LIMIT 1);
UPDATE users SET nick_name='tong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15011914692';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565408484', 'U18565408484', '18565408484', '', '18565408484', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 10:49:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565408484' LIMIT 1);
UPDATE users SET nick_name='18565408484', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565408484';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819452696', 'U18819452696', '林十三', '', '18819452696', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 10:34:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819452696' LIMIT 1);
UPDATE users SET nick_name='林十三', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819452696';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18895581812', 'U18895581812', 'Woody👤', '', '18895581812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 10:16:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18895581812' LIMIT 1);
UPDATE users SET nick_name='Woody👤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18895581812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13537085141', 'U13537085141', '🌸 徐艺漫', '', '13537085141', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 09:20:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13537085141' LIMIT 1);
UPDATE users SET nick_name='🌸 徐艺漫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13537085141';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229795955', 'U13229795955', '0707', '', '13229795955', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-12 00:04:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229795955' LIMIT 1);
UPDATE users SET nick_name='0707', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229795955';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13119561519', 'U13119561519', '大铃', '', '13119561519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 23:53:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13119561519' LIMIT 1);
UPDATE users SET nick_name='大铃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13119561519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570999140', 'U13570999140', '🍰kiki wong🍦', '', '13570999140', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 21:33:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570999140' LIMIT 1);
UPDATE users SET nick_name='🍰kiki wong🍦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570999140';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17788886716', 'U17788886716', '陈懿轩', '', '17788886716', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 21:27:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17788886716' LIMIT 1);
UPDATE users SET nick_name='陈懿轩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17788886716';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13097333296', 'U13097333296', '。', '', '13097333296', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 21:20:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13097333296' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13097333296';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726273554', 'U13726273554', 'Eric', '', '13726273554', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-07-11 21:20:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726273554' LIMIT 1);
UPDATE users SET nick_name='Eric', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13726273554';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711712097', 'U13711712097', '__Dava', '', '13711712097', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 21:19:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711712097' LIMIT 1);
UPDATE users SET nick_name='__Dava', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711712097';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914293445', 'U15914293445', '胖胖', '', '15914293445', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 20:54:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914293445' LIMIT 1);
UPDATE users SET nick_name='胖胖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914293445';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17724161386', 'U17724161386', 'kilo', '', '17724161386', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 20:50:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17724161386' LIMIT 1);
UPDATE users SET nick_name='kilo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17724161386';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660874258', 'U13660874258', '水牛', '', '13660874258', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 20:46:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660874258' LIMIT 1);
UPDATE users SET nick_name='水牛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660874258';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025898806', 'U13025898806', '拉舍尔', '', '13025898806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 19:42:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025898806' LIMIT 1);
UPDATE users SET nick_name='拉舍尔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025898806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988838310', 'U18988838310', 'tt', '', '18988838310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 19:33:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988838310' LIMIT 1);
UPDATE users SET nick_name='tt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988838310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15222615202', 'U15222615202', 'ooc', '', '15222615202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 19:33:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15222615202' LIMIT 1);
UPDATE users SET nick_name='ooc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15222615202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570953612', 'U13570953612', '13570953612', '', '13570953612', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 19:14:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570953612' LIMIT 1);
UPDATE users SET nick_name='13570953612', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570953612';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416227098', 'U13416227098', '牛燕💤', '', '13416227098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 17:48:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416227098' LIMIT 1);
UPDATE users SET nick_name='牛燕💤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416227098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17397227699', 'U17397227699', '゛小小丸子', '', '17397227699', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 17:34:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17397227699' LIMIT 1);
UPDATE users SET nick_name='゛小小丸子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17397227699';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13324452678', 'U13324452678', '不幹了', '', '13324452678', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 16:33:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13324452678' LIMIT 1);
UPDATE users SET nick_name='不幹了', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13324452678';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902407350', 'U18902407350', '麦旋风还没吃完', '', '18902407350', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 15:41:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902407350' LIMIT 1);
UPDATE users SET nick_name='麦旋风还没吃完', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18902407350';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915885138', 'U15915885138', 'JP 健鹏', '', '15915885138', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 15:31:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915885138' LIMIT 1);
UPDATE users SET nick_name='JP 健鹏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915885138';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902240765', 'U13902240765', 'mimosa', '', '13902240765', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 14:53:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902240765' LIMIT 1);
UPDATE users SET nick_name='mimosa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902240765';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19123963820', 'U19123963820', '小鱼', '', '19123963820', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 14:34:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19123963820' LIMIT 1);
UPDATE users SET nick_name='小鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19123963820';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902240741', 'U13902240741', 'tom', '', '13902240741', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 14:33:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902240741' LIMIT 1);
UPDATE users SET nick_name='tom', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902240741';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13070224532', 'U13070224532', 'Ellen', '', '13070224532', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 14:29:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13070224532' LIMIT 1);
UPDATE users SET nick_name='Ellen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13070224532';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918695364', 'U15918695364', '22', '', '15918695364', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 14:03:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918695364' LIMIT 1);
UPDATE users SET nick_name='22', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918695364';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13005146611', 'U13005146611', '🎀', '', '13005146611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 13:29:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13005146611' LIMIT 1);
UPDATE users SET nick_name='🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13005146611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19830289958', 'U19830289958', '刘德华', '', '19830289958', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 12:46:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19830289958' LIMIT 1);
UPDATE users SET nick_name='刘德华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19830289958';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13728041513', 'U13728041513', 'Troyeee.', '', '13728041513', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 12:38:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13728041513' LIMIT 1);
UPDATE users SET nick_name='Troyeee.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13728041513';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13319559670', 'U13319559670', 'Belief', '', '13319559670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 12:15:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13319559670' LIMIT 1);
UPDATE users SET nick_name='Belief', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13319559670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824895847', 'U13824895847', '66', '', '13824895847', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 11:41:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824895847' LIMIT 1);
UPDATE users SET nick_name='66', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824895847';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666096243', 'U18666096243', 'Ding Zh', '', '18666096243', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-11 11:04:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666096243' LIMIT 1);
UPDATE users SET nick_name='Ding Zh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18666096243';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18707584860', 'U18707584860', '威士忌加冰', '', '18707584860', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 10:43:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18707584860' LIMIT 1);
UPDATE users SET nick_name='威士忌加冰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18707584860';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13286167082', 'U13286167082', 'ccccC', '', '13286167082', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 09:13:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13286167082' LIMIT 1);
UPDATE users SET nick_name='ccccC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13286167082';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450366824', 'U13450366824', 'Vincent', '', '13450366824', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-11 03:21:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450366824' LIMIT 1);
UPDATE users SET nick_name='Vincent', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450366824';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760831754', 'U13760831754', 'Vinca🖤', '', '13760831754', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-07-11 01:30:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760831754' LIMIT 1);
UPDATE users SET nick_name='Vinca🖤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='13760831754';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802739447', 'U13802739447', '毛', '', '13802739447', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 22:09:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802739447' LIMIT 1);
UPDATE users SET nick_name='毛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802739447';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665401224', 'U17665401224', '17665401224', '', '17665401224', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 21:35:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665401224' LIMIT 1);
UPDATE users SET nick_name='17665401224', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665401224';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18244941980', 'U18244941980', '嘻', '', '18244941980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 21:24:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18244941980' LIMIT 1);
UPDATE users SET nick_name='嘻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18244941980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18707584865', 'U18707584865', 'YL🌸', '', '18707584865', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 20:01:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18707584865' LIMIT 1);
UPDATE users SET nick_name='YL🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18707584865';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560336789', 'U13560336789', 'Crystal', '', '13560336789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 19:10:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560336789' LIMIT 1);
UPDATE users SET nick_name='Crystal', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560336789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751767654', 'U13751767654', '胡宇鹏', '', '13751767654', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 18:10:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751767654' LIMIT 1);
UPDATE users SET nick_name='胡宇鹏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751767654';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920497758', 'U15920497758', '🎗梁相宇Lila', '', '15920497758', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 17:19:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920497758' LIMIT 1);
UPDATE users SET nick_name='🎗梁相宇Lila', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920497758';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15766371343', 'U15766371343', '💗', '', '15766371343', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 16:35:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15766371343' LIMIT 1);
UPDATE users SET nick_name='💗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15766371343';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580425815', 'U13580425815', 'Lingling', '', '13580425815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 16:16:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580425815' LIMIT 1);
UPDATE users SET nick_name='Lingling', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580425815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18124217091', 'U18124217091', '18124217091', '', '18124217091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 16:03:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18124217091' LIMIT 1);
UPDATE users SET nick_name='18124217091', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18124217091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620182915', 'U17620182915', 'Liyt:', '', '17620182915', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 15:58:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620182915' LIMIT 1);
UPDATE users SET nick_name='Liyt:', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620182915';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322233989', 'U15322233989', 'ki里有个ki', '', '15322233989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 15:49:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322233989' LIMIT 1);
UPDATE users SET nick_name='ki里有个ki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15322233989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622165274', 'U15622165274', '酷哒', '', '15622165274', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 14:25:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622165274' LIMIT 1);
UPDATE users SET nick_name='酷哒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622165274';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13073094692', 'U13073094692', 'Niko', '', '13073094692', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 13:51:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13073094692' LIMIT 1);
UPDATE users SET nick_name='Niko', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13073094692';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15736467875', 'U15736467875', 'xx', '', '15736467875', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 13:18:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15736467875' LIMIT 1);
UPDATE users SET nick_name='xx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15736467875';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828482595', 'U13828482595', 'ZY', '', '13828482595', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 12:46:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828482595' LIMIT 1);
UPDATE users SET nick_name='ZY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828482595';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802972432', 'U13802972432', 'vivi', '', '13802972432', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-10 10:15:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802972432' LIMIT 1);
UPDATE users SET nick_name='vivi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802972432';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535260163', 'U13535260163', 'ME', '', '13535260163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 19:24:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535260163' LIMIT 1);
UPDATE users SET nick_name='ME', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535260163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620934409', 'U17620934409', 'Menny', '', '17620934409', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 17:26:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620934409' LIMIT 1);
UPDATE users SET nick_name='Menny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620934409';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922337514', 'U13922337514', '13922337514', '', '13922337514', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 17:07:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922337514' LIMIT 1);
UPDATE users SET nick_name='13922337514', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922337514';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18271439565', 'U18271439565', '吴科辰🎹', '', '18271439565', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 16:38:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18271439565' LIMIT 1);
UPDATE users SET nick_name='吴科辰🎹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18271439565';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622159503', 'U15622159503', '陈🌟🌟', '', '15622159503', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 16:14:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622159503' LIMIT 1);
UPDATE users SET nick_name='陈🌟🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622159503';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926012911', 'U13926012911', 'Eva', '', '13926012911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 15:52:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926012911' LIMIT 1);
UPDATE users SET nick_name='Eva', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926012911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13432257597', 'U13432257597', '鱼皮角', '', '13432257597', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 15:43:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13432257597' LIMIT 1);
UPDATE users SET nick_name='鱼皮角', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13432257597';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16626434824', 'U16626434824', 'Rainyy', '', '16626434824', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 15:26:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16626434824' LIMIT 1);
UPDATE users SET nick_name='Rainyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16626434824';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914437726', 'U15914437726', '翊瑶', '', '15914437726', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 14:21:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914437726' LIMIT 1);
UPDATE users SET nick_name='翊瑶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914437726';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933987629', 'U18933987629', '花花草草', '', '18933987629', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 14:09:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933987629' LIMIT 1);
UPDATE users SET nick_name='花花草草', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933987629';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620890270', 'U18620890270', '何恒羽（Penny）', '', '18620890270', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 13:46:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620890270' LIMIT 1);
UPDATE users SET nick_name='何恒羽（Penny）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620890270';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680407201', 'U18680407201', 'Jyang', '', '18680407201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 13:35:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680407201' LIMIT 1);
UPDATE users SET nick_name='Jyang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680407201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17872379787', 'U17872379787', '残酷月光', '', '17872379787', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 13:17:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17872379787' LIMIT 1);
UPDATE users SET nick_name='残酷月光', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17872379787';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025141383', 'U13025141383', '拿铁猫头鹰', '', '13025141383', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 12:57:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025141383' LIMIT 1);
UPDATE users SET nick_name='拿铁猫头鹰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025141383';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148910195', 'U13148910195', '👸🏻黑妹', '', '13148910195', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 12:44:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148910195' LIMIT 1);
UPDATE users SET nick_name='👸🏻黑妹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13148910195';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632254078', 'U13632254078', '肥包💤', '', '13632254078', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 12:33:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632254078' LIMIT 1);
UPDATE users SET nick_name='肥包💤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632254078';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662380287', 'U13662380287', 'yanyan', '', '13662380287', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 10:24:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662380287' LIMIT 1);
UPDATE users SET nick_name='yanyan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662380287';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19575179047', 'U19575179047', '吴漾', '', '19575179047', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 09:44:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19575179047' LIMIT 1);
UPDATE users SET nick_name='吴漾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19575179047';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15816982212', 'U15816982212', '文侠', '', '15816982212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-09 09:15:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15816982212' LIMIT 1);
UPDATE users SET nick_name='文侠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15816982212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929152521', 'U13929152521', 'Wen', '', '13929152521', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 180, '2025-07-08 23:53:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929152521' LIMIT 1);
UPDATE users SET nick_name='Wen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 180) WHERE phone='13929152521';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332893497', 'U13332893497', 'yy', '', '13332893497', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 22:59:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332893497' LIMIT 1);
UPDATE users SET nick_name='yy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13332893497';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535588623', 'U13535588623', 'Liverry', '', '13535588623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 22:54:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535588623' LIMIT 1);
UPDATE users SET nick_name='Liverry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535588623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802524224', 'U13802524224', 'Red', '', '13802524224', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 22:08:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802524224' LIMIT 1);
UPDATE users SET nick_name='Red', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802524224';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711632405', 'U13711632405', '米奇', '', '13711632405', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 20:48:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711632405' LIMIT 1);
UPDATE users SET nick_name='米奇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711632405';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13542670436', 'U13542670436', 'Kk', '', '13542670436', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 19:57:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13542670436' LIMIT 1);
UPDATE users SET nick_name='Kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13542670436';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750206282', 'U13750206282', '圈圈', '', '13750206282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 19:50:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750206282' LIMIT 1);
UPDATE users SET nick_name='圈圈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13750206282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989115402', 'U15989115402', 'suye', '', '15989115402', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 19:13:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989115402' LIMIT 1);
UPDATE users SET nick_name='suye', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989115402';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631470750', 'U13631470750', 'victoria-hsx', '', '13631470750', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 19:08:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631470750' LIMIT 1);
UPDATE users SET nick_name='victoria-hsx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631470750';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560187150', 'U13560187150', 'lsl1234', '', '13560187150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 19:07:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560187150' LIMIT 1);
UPDATE users SET nick_name='lsl1234', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560187150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13423605557', 'U13423605557', 'jackey', '', '13423605557', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 18:31:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13423605557' LIMIT 1);
UPDATE users SET nick_name='jackey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13423605557';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13728363608', 'U13728363608', '13728363608', '', '13728363608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 18:29:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13728363608' LIMIT 1);
UPDATE users SET nick_name='13728363608', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13728363608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610144265', 'U13610144265', '13610144265', '', '13610144265', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 15:58:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610144265' LIMIT 1);
UPDATE users SET nick_name='13610144265', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610144265';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588843303', 'U18588843303', '18588843303', '', '18588843303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 15:51:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588843303' LIMIT 1);
UPDATE users SET nick_name='18588843303', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588843303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18912312882', 'U18912312882', 'pplong', '', '18912312882', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-07-08 15:41:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18912312882' LIMIT 1);
UPDATE users SET nick_name='pplong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18912312882';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13680207810', 'U13680207810', '蹄蹄糕', '', '13680207810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 15:38:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13680207810' LIMIT 1);
UPDATE users SET nick_name='蹄蹄糕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13680207810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602234193', 'U15602234193', 'EvenMa', '', '15602234193', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 15:38:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602234193' LIMIT 1);
UPDATE users SET nick_name='EvenMa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602234193';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18244940054', 'U18244940054', 'HuAngAiYA 💤', '', '18244940054', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 15:16:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18244940054' LIMIT 1);
UPDATE users SET nick_name='HuAngAiYA 💤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18244940054';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660827563', 'U13660827563', '丹丹', '', '13660827563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 15:06:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660827563' LIMIT 1);
UPDATE users SET nick_name='丹丹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660827563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18577011074', 'U18577011074', 'Adoretheall', '', '18577011074', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 14:26:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18577011074' LIMIT 1);
UPDATE users SET nick_name='Adoretheall', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18577011074';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989247443', 'U15989247443', '1111', '', '15989247443', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 14:04:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989247443' LIMIT 1);
UPDATE users SET nick_name='1111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989247443';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15119389501', 'U15119389501', '李瑜、Y', '', '15119389501', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 13:54:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15119389501' LIMIT 1);
UPDATE users SET nick_name='李瑜、Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15119389501';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15767705285', 'U15767705285', '娜', '', '15767705285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 13:25:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15767705285' LIMIT 1);
UPDATE users SET nick_name='娜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15767705285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17722049446', 'U17722049446', '🐕🤺', '', '17722049446', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 13:12:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17722049446' LIMIT 1);
UPDATE users SET nick_name='🐕🤺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17722049446';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218127624', 'U15218127624', '九', '', '15218127624', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 10:47:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218127624' LIMIT 1);
UPDATE users SET nick_name='九', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218127624';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533910691', 'U13533910691', 'Jingyoo_aaah🐈🐾', '', '13533910691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 10:30:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533910691' LIMIT 1);
UPDATE users SET nick_name='Jingyoo_aaah🐈🐾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533910691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876065110', 'U15876065110', '🔆Seven', '', '15876065110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 73, '2025-07-08 10:28:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876065110' LIMIT 1);
UPDATE users SET nick_name='🔆Seven', balance=GREATEST(balance, 0.00), points=GREATEST(points, 73) WHERE phone='15876065110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18269704810', 'U18269704810', '橘粒遇星云', '', '18269704810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 10:28:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18269704810' LIMIT 1);
UPDATE users SET nick_name='橘粒遇星云', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18269704810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416505472', 'U13416505472', '谢儿', '', '13416505472', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2025-07-08 10:04:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416505472' LIMIT 1);
UPDATE users SET nick_name='谢儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='13416505472';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503094284', 'U13503094284', '青怡', '', '13503094284', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-08 08:56:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503094284' LIMIT 1);
UPDATE users SET nick_name='青怡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503094284';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680558058', 'U18680558058', '谭昊', '', '18680558058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 22:36:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680558058' LIMIT 1);
UPDATE users SET nick_name='谭昊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680558058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521297539', 'U15521297539', 'yang', '', '15521297539', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 21:17:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521297539' LIMIT 1);
UPDATE users SET nick_name='yang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521297539';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626128957', 'U15626128957', '胡小姐', '', '15626128957', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 20:31:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626128957' LIMIT 1);
UPDATE users SET nick_name='胡小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626128957';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925040502', 'U13925040502', '卡门', '', '13925040502', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 19:33:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925040502' LIMIT 1);
UPDATE users SET nick_name='卡门', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925040502';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588885463', 'U18588885463', '玖月', '', '18588885463', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-07-07 19:33:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588885463' LIMIT 1);
UPDATE users SET nick_name='玖月', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='18588885463';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620143464', 'U18620143464', '💤', '', '18620143464', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 18:56:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620143464' LIMIT 1);
UPDATE users SET nick_name='💤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620143464';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828441884', 'U13828441884', '李健💰66436💰', '', '13828441884', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 18:55:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828441884' LIMIT 1);
UPDATE users SET nick_name='李健💰66436💰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828441884';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120452499', 'U19120452499', '龟仙人', '', '19120452499', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 18:25:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120452499' LIMIT 1);
UPDATE users SET nick_name='龟仙人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120452499';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15024208883', 'U15024208883', '_xxxx4_', '', '15024208883', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 18:23:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15024208883' LIMIT 1);
UPDATE users SET nick_name='_xxxx4_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15024208883';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160860154', 'U13160860154', 'poopoo', '', '13160860154', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 17:56:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160860154' LIMIT 1);
UPDATE users SET nick_name='poopoo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13160860154';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751883487', 'U13751883487', 'Heidi茵', '', '13751883487', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 17:22:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751883487' LIMIT 1);
UPDATE users SET nick_name='Heidi茵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751883487';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13049131130', 'U13049131130', 'HaHa', '', '13049131130', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 17:06:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13049131130' LIMIT 1);
UPDATE users SET nick_name='HaHa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13049131130';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18682176109', 'U18682176109', 'Jack', '', '18682176109', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 16:46:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18682176109' LIMIT 1);
UPDATE users SET nick_name='Jack', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18682176109';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613081821', 'U18613081821', '小企鹅🐬', '', '18613081821', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 16:42:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613081821' LIMIT 1);
UPDATE users SET nick_name='小企鹅🐬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613081821';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822114835', 'U13822114835', '13822114835', '', '13822114835', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 15:18:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822114835' LIMIT 1);
UPDATE users SET nick_name='13822114835', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822114835';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660215523', 'U13660215523', 'Jean', '', '13660215523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 15:13:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660215523' LIMIT 1);
UPDATE users SET nick_name='Jean', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660215523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922176609', 'U13922176609', '曼巴打网球', '', '13922176609', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 14:30:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922176609' LIMIT 1);
UPDATE users SET nick_name='曼巴打网球', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922176609';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694260845', 'U13694260845', '13694260845', '', '13694260845', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 13:43:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694260845' LIMIT 1);
UPDATE users SET nick_name='13694260845', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13694260845';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15701546360', 'U15701546360', '15701546360', '', '15701546360', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 13:38:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15701546360' LIMIT 1);
UPDATE users SET nick_name='15701546360', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15701546360';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250243176', 'U13250243176', '张悦辉', '', '13250243176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 13:34:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250243176' LIMIT 1);
UPDATE users SET nick_name='张悦辉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250243176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028067823', 'U18028067823', 'etujvfg', '', '18028067823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 13:06:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028067823' LIMIT 1);
UPDATE users SET nick_name='etujvfg', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028067823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15295870996', 'U15295870996', 'Sher', '', '15295870996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 11:25:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15295870996' LIMIT 1);
UPDATE users SET nick_name='Sher', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15295870996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17799301023', 'U17799301023', '17799301023', '', '17799301023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 11:22:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17799301023' LIMIT 1);
UPDATE users SET nick_name='17799301023', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17799301023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819258586', 'U18819258586', '团子', '', '18819258586', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 11:21:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819258586' LIMIT 1);
UPDATE users SET nick_name='团子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819258586';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521160369', 'U15521160369', '小喇叭你好', '', '15521160369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 11:18:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521160369' LIMIT 1);
UPDATE users SET nick_name='小喇叭你好', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521160369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760849514', 'U13760849514', 'awing', '', '13760849514', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 164, '2025-07-07 10:57:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760849514' LIMIT 1);
UPDATE users SET nick_name='awing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 164) WHERE phone='13760849514';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13350088897', 'U13350088897', 'cyberH', '', '13350088897', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-07 09:48:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13350088897' LIMIT 1);
UPDATE users SET nick_name='cyberH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13350088897';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602476351', 'U13602476351', 'HUMBLE.', '', '13602476351', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 21:26:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602476351' LIMIT 1);
UPDATE users SET nick_name='HUMBLE.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602476351';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13522935137', 'U13522935137', '王师傅Alice', '', '13522935137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-07-06 20:33:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13522935137' LIMIT 1);
UPDATE users SET nick_name='王师傅Alice', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13522935137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825186660', 'U13825186660', '2XX2', '', '13825186660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 20:13:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825186660' LIMIT 1);
UPDATE users SET nick_name='2XX2', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825186660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620534488', 'U18620534488', '18620534488', '', '18620534488', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 19:37:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620534488' LIMIT 1);
UPDATE users SET nick_name='18620534488', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620534488';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622772871', 'U15622772871', '彬', '', '15622772871', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 18:34:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622772871' LIMIT 1);
UPDATE users SET nick_name='彬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622772871';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433893429', 'U13433893429', '13433893429', '', '13433893429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 18:26:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433893429' LIMIT 1);
UPDATE users SET nick_name='13433893429', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433893429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13189601913', 'U13189601913', 'Joey', '', '13189601913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 17:58:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13189601913' LIMIT 1);
UPDATE users SET nick_name='Joey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13189601913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14748094213', 'U14748094213', '多姿', '', '14748094213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 17:30:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14748094213' LIMIT 1);
UPDATE users SET nick_name='多姿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14748094213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18898419401', 'U18898419401', '阿吱吱💫', '', '18898419401', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 17:25:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18898419401' LIMIT 1);
UPDATE users SET nick_name='阿吱吱💫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18898419401';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660256210', 'U13660256210', '13660256210', '', '13660256210', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 17:15:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660256210' LIMIT 1);
UPDATE users SET nick_name='13660256210', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660256210';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320163595', 'U18320163595', '18320163595', '', '18320163595', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 16:32:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320163595' LIMIT 1);
UPDATE users SET nick_name='18320163595', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320163595';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19857812304', 'U19857812304', '禾只木及', '', '19857812304', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 16:23:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19857812304' LIMIT 1);
UPDATE users SET nick_name='禾只木及', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19857812304';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013550202', 'U15013550202', '王琎', '', '15013550202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 16:10:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013550202' LIMIT 1);
UPDATE users SET nick_name='王琎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013550202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060891669', 'U13060891669', '悦斯精品', '', '13060891669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 16:08:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060891669' LIMIT 1);
UPDATE users SET nick_name='悦斯精品', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060891669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19576168627', 'U19576168627', '鱼', '', '19576168627', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 15:36:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19576168627' LIMIT 1);
UPDATE users SET nick_name='鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19576168627';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15080074981', 'U15080074981', 'yyreal', '', '15080074981', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 15:29:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15080074981' LIMIT 1);
UPDATE users SET nick_name='yyreal', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15080074981';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570369323', 'U13570369323', 'Adella 小殷子', '', '13570369323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 15:22:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570369323' LIMIT 1);
UPDATE users SET nick_name='Adella 小殷子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570369323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13077477371', 'U13077477371', 'williamLAI', '', '13077477371', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 14:57:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13077477371' LIMIT 1);
UPDATE users SET nick_name='williamLAI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13077477371';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19854066889', 'U19854066889', 'maggie', '', '19854066889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 14:48:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19854066889' LIMIT 1);
UPDATE users SET nick_name='maggie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19854066889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15099977611', 'U15099977611', 'charni', '', '15099977611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 14:48:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15099977611' LIMIT 1);
UPDATE users SET nick_name='charni', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15099977611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802036287', 'U18802036287', '18802036287', '', '18802036287', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 14:45:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802036287' LIMIT 1);
UPDATE users SET nick_name='18802036287', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802036287';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927453348', 'U19927453348', '正一', '', '19927453348', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 14:41:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927453348' LIMIT 1);
UPDATE users SET nick_name='正一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927453348';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16621158013', 'U16621158013', '大亮', '', '16621158013', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 14:29:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16621158013' LIMIT 1);
UPDATE users SET nick_name='大亮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16621158013';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18829570610', 'U18829570610', '五指毛桃靓汤', '', '18829570610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 14:26:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18829570610' LIMIT 1);
UPDATE users SET nick_name='五指毛桃靓汤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18829570610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665175537', 'U17665175537', '金毛狮王', '', '17665175537', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 14:17:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665175537' LIMIT 1);
UPDATE users SET nick_name='金毛狮王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665175537';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202093327', 'U13202093327', 'mao', '', '13202093327', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 14:14:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202093327' LIMIT 1);
UPDATE users SET nick_name='mao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202093327';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588745303', 'U18588745303', 'cocoઈઉ', '', '18588745303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 14:11:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588745303' LIMIT 1);
UPDATE users SET nick_name='cocoઈઉ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588745303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920358604', 'U15920358604', 'Linus', '', '15920358604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 14:10:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920358604' LIMIT 1);
UPDATE users SET nick_name='Linus', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920358604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17188889954', 'U17188889954', '玖月', '', '17188889954', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 13:59:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17188889954' LIMIT 1);
UPDATE users SET nick_name='玖月', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17188889954';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13027829042', 'U13027829042', '靓女', '', '13027829042', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 13:47:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13027829042' LIMIT 1);
UPDATE users SET nick_name='靓女', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13027829042';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13054498686', 'U13054498686', '刘刘刘', '', '13054498686', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 12:56:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13054498686' LIMIT 1);
UPDATE users SET nick_name='刘刘刘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13054498686';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819481573', 'U18819481573', '略略略', '', '18819481573', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-07-06 12:42:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819481573' LIMIT 1);
UPDATE users SET nick_name='略略略', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18819481573';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565466781', 'U18565466781', '返场健', '', '18565466781', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 12:34:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565466781' LIMIT 1);
UPDATE users SET nick_name='返场健', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565466781';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13946365969', 'U13946365969', 'daxing', '', '13946365969', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 12:32:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13946365969' LIMIT 1);
UPDATE users SET nick_name='daxing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13946365969';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15603067072', 'U15603067072', '王佳思', '', '15603067072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 12:21:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15603067072' LIMIT 1);
UPDATE users SET nick_name='王佳思', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15603067072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13686946643', 'U13686946643', '🍔', '', '13686946643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 12:01:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13686946643' LIMIT 1);
UPDATE users SET nick_name='🍔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13686946643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933994329', 'U18933994329', '18933994329', '', '18933994329', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 11:28:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933994329' LIMIT 1);
UPDATE users SET nick_name='18933994329', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933994329';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710420458', 'U13710420458', 'Vivi', '', '13710420458', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 11:10:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710420458' LIMIT 1);
UPDATE users SET nick_name='Vivi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710420458';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688871716', 'U18688871716', '郭馥茹', '', '18688871716', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-07-06 10:52:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688871716' LIMIT 1);
UPDATE users SET nick_name='郭馥茹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18688871716';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250707634', 'U13250707634', '13250707634', '', '13250707634', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 10:31:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250707634' LIMIT 1);
UPDATE users SET nick_name='13250707634', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250707634';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13668966388', 'U13668966388', '肥鸟', '', '13668966388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 09:10:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13668966388' LIMIT 1);
UPDATE users SET nick_name='肥鸟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13668966388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580516137', 'U13580516137', '聪聪', '', '13580516137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 07:38:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580516137' LIMIT 1);
UPDATE users SET nick_name='聪聪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580516137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512797163', 'U13512797163', '洪生', '', '13512797163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 07:38:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512797163' LIMIT 1);
UPDATE users SET nick_name='洪生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512797163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13488220241', 'U13488220241', '飞溅', '', '13488220241', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-06 01:27:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13488220241' LIMIT 1);
UPDATE users SET nick_name='飞溅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13488220241';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13226777156', 'U13226777156', 'Jim', '', '13226777156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 22:47:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13226777156' LIMIT 1);
UPDATE users SET nick_name='Jim', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13226777156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246885783', 'U13246885783', '隔壁家小王', '', '13246885783', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 22:40:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246885783' LIMIT 1);
UPDATE users SET nick_name='隔壁家小王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246885783';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19225226266', 'U19225226266', 'ling', '', '19225226266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 22:07:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19225226266' LIMIT 1);
UPDATE users SET nick_name='ling', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19225226266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433739149', 'U13433739149', '阿豪', '', '13433739149', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 21:50:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433739149' LIMIT 1);
UPDATE users SET nick_name='阿豪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433739149';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922143484', 'U13922143484', 'ch', '', '13922143484', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 21:23:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922143484' LIMIT 1);
UPDATE users SET nick_name='ch', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922143484';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539467706', 'U13539467706', 'Therese', '', '13539467706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 21:12:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539467706' LIMIT 1);
UPDATE users SET nick_name='Therese', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539467706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642623331', 'U13642623331', '盛', '', '13642623331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 20:24:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642623331' LIMIT 1);
UPDATE users SET nick_name='盛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642623331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13286513019', 'U13286513019', '诗韵', '', '13286513019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 20:24:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13286513019' LIMIT 1);
UPDATE users SET nick_name='诗韵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13286513019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13180806860', 'U13180806860', 'l', '', '13180806860', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 19:52:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13180806860' LIMIT 1);
UPDATE users SET nick_name='l', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13180806860';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824478794', 'U13824478794', 'Y', '', '13824478794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 19:51:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824478794' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824478794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122301400', 'U18122301400', '考拉', '', '18122301400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 19:47:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122301400' LIMIT 1);
UPDATE users SET nick_name='考拉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122301400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819453442', 'U18819453442', '小咪', '', '18819453442', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-07-05 17:38:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819453442' LIMIT 1);
UPDATE users SET nick_name='小咪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18819453442';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13794339567', 'U13794339567', '黄宇琛', '', '13794339567', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 17:34:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13794339567' LIMIT 1);
UPDATE users SET nick_name='黄宇琛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13794339567';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120513659', 'U19120513659', 'Shine', '', '19120513659', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 15:15:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120513659' LIMIT 1);
UPDATE users SET nick_name='Shine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120513659';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800955689', 'U15800955689', 'cirE', '', '15800955689', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 15:12:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800955689' LIMIT 1);
UPDATE users SET nick_name='cirE', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800955689';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13728070811', 'U13728070811', 'fifi', '', '13728070811', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 14:11:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13728070811' LIMIT 1);
UPDATE users SET nick_name='fifi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13728070811';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710381123', 'U13710381123', 'Betty😍', '', '13710381123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 14:08:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710381123' LIMIT 1);
UPDATE users SET nick_name='Betty😍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710381123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18042597539', 'U18042597539', 'Freya', '', '18042597539', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 13:42:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18042597539' LIMIT 1);
UPDATE users SET nick_name='Freya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18042597539';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580397763', 'U13580397763', '一勺', '', '13580397763', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-07-05 13:38:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580397763' LIMIT 1);
UPDATE users SET nick_name='一勺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13580397763';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826487657', 'U18826487657', 'Jamie', '', '18826487657', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-07-05 12:39:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826487657' LIMIT 1);
UPDATE users SET nick_name='Jamie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18826487657';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15362901415', 'U15362901415', 'darren', '', '15362901415', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 12:23:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15362901415' LIMIT 1);
UPDATE users SET nick_name='darren', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15362901415';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802437045', 'U13802437045', '13802437045', '', '13802437045', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 10:41:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802437045' LIMIT 1);
UPDATE users SET nick_name='13802437045', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802437045';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710180042', 'U13710180042', '13710180042', '', '13710180042', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 10:39:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710180042' LIMIT 1);
UPDATE users SET nick_name='13710180042', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710180042';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920320878', 'U15920320878', 'j先生', '', '15920320878', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 10:37:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920320878' LIMIT 1);
UPDATE users SET nick_name='j先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920320878';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126827196', 'U18126827196', '小洪', '', '18126827196', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-05 08:43:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126827196' LIMIT 1);
UPDATE users SET nick_name='小洪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18126827196';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19854542119', 'U19854542119', '核桃包', '', '19854542119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 23:41:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19854542119' LIMIT 1);
UPDATE users SET nick_name='核桃包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19854542119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819461426', 'U18819461426', '白白', '', '18819461426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 22:20:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819461426' LIMIT 1);
UPDATE users SET nick_name='白白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819461426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521035364', 'U15521035364', '5ml', '', '15521035364', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 21:43:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521035364' LIMIT 1);
UPDATE users SET nick_name='5ml', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521035364';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13670612956', 'U13670612956', '13670612956', '', '13670612956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 21:38:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13670612956' LIMIT 1);
UPDATE users SET nick_name='13670612956', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13670612956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17302708920', 'U17302708920', '北望🧊（有事直接语音）', '', '17302708920', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 20:55:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17302708920' LIMIT 1);
UPDATE users SET nick_name='北望🧊（有事直接语音）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17302708920';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15767208092', 'U15767208092', '青椒饅頭', '', '15767208092', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 20:46:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15767208092' LIMIT 1);
UPDATE users SET nick_name='青椒饅頭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15767208092';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15071456774', 'U15071456774', '枫叶', '', '15071456774', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 20:34:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15071456774' LIMIT 1);
UPDATE users SET nick_name='枫叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15071456774';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13537187014', 'U13537187014', '一颗小冰块🧊', '', '13537187014', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 19:20:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13537187014' LIMIT 1);
UPDATE users SET nick_name='一颗小冰块🧊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13537187014';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876520960', 'U15876520960', '文昌鱼', '', '15876520960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 19:08:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876520960' LIMIT 1);
UPDATE users SET nick_name='文昌鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876520960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666573259', 'U17666573259', 'Hhhhhhhh.', '', '17666573259', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 18:31:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666573259' LIMIT 1);
UPDATE users SET nick_name='Hhhhhhhh.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666573259';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18679036880', 'U18679036880', 'Oli', '', '18679036880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 18:18:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18679036880' LIMIT 1);
UPDATE users SET nick_name='Oli', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18679036880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719308280', 'U13719308280', 'Y🐶', '', '13719308280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 18:17:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719308280' LIMIT 1);
UPDATE users SET nick_name='Y🐶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719308280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18897493278', 'U18897493278', '黎佳佳', '', '18897493278', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 17:57:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18897493278' LIMIT 1);
UPDATE users SET nick_name='黎佳佳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18897493278';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18292812058', 'U18292812058', 'Jimmy', '', '18292812058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 17:56:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18292812058' LIMIT 1);
UPDATE users SET nick_name='Jimmy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18292812058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688383258', 'U18688383258', '18688383258', '', '18688383258', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 17:14:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688383258' LIMIT 1);
UPDATE users SET nick_name='18688383258', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688383258';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820240076', 'U15820240076', 'DragonLee', '', '15820240076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 24, '2025-07-04 17:09:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820240076' LIMIT 1);
UPDATE users SET nick_name='DragonLee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 24) WHERE phone='15820240076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889909155', 'U15889909155', '田大仙', '', '15889909155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 598, '2025-07-04 16:58:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889909155' LIMIT 1);
UPDATE users SET nick_name='田大仙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 598) WHERE phone='15889909155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915940931', 'U15915940931', '余小姐', '', '15915940931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 16:48:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915940931' LIMIT 1);
UPDATE users SET nick_name='余小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915940931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727981429', 'U13727981429', 'Destiny', '', '13727981429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 16:46:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727981429' LIMIT 1);
UPDATE users SET nick_name='Destiny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13727981429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632423249', 'U13632423249', '森', '', '13632423249', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 16:46:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632423249' LIMIT 1);
UPDATE users SET nick_name='森', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632423249';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14718076137', 'U14718076137', 'Yeah', '', '14718076137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 16:35:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14718076137' LIMIT 1);
UPDATE users SET nick_name='Yeah', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14718076137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129399045', 'U13129399045', 'xuan xuan', '', '13129399045', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 14:10:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129399045' LIMIT 1);
UPDATE users SET nick_name='xuan xuan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13129399045';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218019387', 'U18218019387', '18218019387', '', '18218019387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 14:05:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218019387' LIMIT 1);
UPDATE users SET nick_name='18218019387', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218019387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15347609198', 'U15347609198', '15347609198', '', '15347609198', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 13:35:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15347609198' LIMIT 1);
UPDATE users SET nick_name='15347609198', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15347609198';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929504551', 'U13929504551', '13929504551', '', '13929504551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 13:27:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929504551' LIMIT 1);
UPDATE users SET nick_name='13929504551', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929504551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322029382', 'U17322029382', 'fan', '', '17322029382', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 13:22:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322029382' LIMIT 1);
UPDATE users SET nick_name='fan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322029382';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17278609964', 'U17278609964', '1', '', '17278609964', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 12:43:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17278609964' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17278609964';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688485790', 'U18688485790', 'kk', '', '18688485790', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 09:23:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688485790' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688485790';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18724218783', 'U18724218783', '李💦。', '', '18724218783', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-04 08:00:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18724218783' LIMIT 1);
UPDATE users SET nick_name='李💦。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18724218783';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15814860254', 'U15814860254', '傻猪猪', '', '15814860254', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 22:37:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15814860254' LIMIT 1);
UPDATE users SET nick_name='傻猪猪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15814860254';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989121022', 'U15989121022', 'Kelly', '', '15989121022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 17, '2025-07-03 22:28:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989121022' LIMIT 1);
UPDATE users SET nick_name='Kelly', balance=GREATEST(balance, 0.00), points=GREATEST(points, 17) WHERE phone='15989121022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719319613', 'U13719319613', '江江🌟', '', '13719319613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 21:58:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719319613' LIMIT 1);
UPDATE users SET nick_name='江江🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719319613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660162150', 'U13660162150', 'Js.', '', '13660162150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 21:00:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660162150' LIMIT 1);
UPDATE users SET nick_name='Js.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660162150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613122288', 'U18613122288', 'Ericyuan', '', '18613122288', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 20:15:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613122288' LIMIT 1);
UPDATE users SET nick_name='Ericyuan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613122288';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602874692', 'U13602874692', 'humintred', '', '13602874692', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 19:39:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602874692' LIMIT 1);
UPDATE users SET nick_name='humintred', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602874692';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660842930', 'U13660842930', 'L\'Lu', '', '13660842930', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 18:59:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660842930' LIMIT 1);
UPDATE users SET nick_name='L\'Lu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660842930';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17793051715', 'U17793051715', 'Celeste.', '', '17793051715', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 17:09:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17793051715' LIMIT 1);
UPDATE users SET nick_name='Celeste.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17793051715';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17288476807', 'U17288476807', '对方正在输入中...', '', '17288476807', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 17:07:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17288476807' LIMIT 1);
UPDATE users SET nick_name='对方正在输入中...', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17288476807';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725589937', 'U13725589937', '13725589937', '', '13725589937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 17:07:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725589937' LIMIT 1);
UPDATE users SET nick_name='13725589937', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725589937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620090242', 'U16620090242', 'zhang', '', '16620090242', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 16:07:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620090242' LIMIT 1);
UPDATE users SET nick_name='zhang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620090242';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217306074', 'U15217306074', 'Sherry', '', '15217306074', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 15:21:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217306074' LIMIT 1);
UPDATE users SET nick_name='Sherry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217306074';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922403236', 'U13922403236', 'Anney_Y', '', '13922403236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 14:45:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922403236' LIMIT 1);
UPDATE users SET nick_name='Anney_Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922403236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15724115070', 'U15724115070', 'Cc', '', '15724115070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 14:36:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15724115070' LIMIT 1);
UPDATE users SET nick_name='Cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15724115070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664687766', 'U18664687766', '兆丰年', '', '18664687766', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 13:04:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664687766' LIMIT 1);
UPDATE users SET nick_name='兆丰年', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664687766';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929994976', 'U13929994976', 'Cc', '', '13929994976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 12:57:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929994976' LIMIT 1);
UPDATE users SET nick_name='Cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929994976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316170432', 'U13316170432', 'Sunny', '', '13316170432', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 12:19:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316170432' LIMIT 1);
UPDATE users SET nick_name='Sunny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316170432';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18029973744', 'U18029973744', '靓女', '', '18029973744', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 11:59:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18029973744' LIMIT 1);
UPDATE users SET nick_name='靓女', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18029973744';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18035355950', 'U18035355950', '大脸猫', '', '18035355950', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 11:18:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18035355950' LIMIT 1);
UPDATE users SET nick_name='大脸猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18035355950';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18682082704', 'U18682082704', 'pinkpig', '', '18682082704', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 11:03:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18682082704' LIMIT 1);
UPDATE users SET nick_name='pinkpig', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18682082704';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808823757', 'U13808823757', 'Jenny🇨🇳', '', '13808823757', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 11:02:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808823757' LIMIT 1);
UPDATE users SET nick_name='Jenny🇨🇳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808823757';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17520442094', 'U17520442094', 'Æ', '', '17520442094', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 09:56:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17520442094' LIMIT 1);
UPDATE users SET nick_name='Æ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17520442094';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229499180', 'U13229499180', 'Sheren.Z', '', '13229499180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-03 00:31:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229499180' LIMIT 1);
UPDATE users SET nick_name='Sheren.Z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229499180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13883029197', 'U13883029197', '于哇哇', '', '13883029197', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 22:30:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13883029197' LIMIT 1);
UPDATE users SET nick_name='于哇哇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13883029197';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710459559', 'U13710459559', '我球呢', '', '13710459559', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 21:34:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710459559' LIMIT 1);
UPDATE users SET nick_name='我球呢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710459559';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729205661', 'U13729205661', 'a杜', '', '13729205661', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 21:22:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729205661' LIMIT 1);
UPDATE users SET nick_name='a杜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729205661';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622709033', 'U15622709033', '15622709033', '', '15622709033', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 19:47:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622709033' LIMIT 1);
UPDATE users SET nick_name='15622709033', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622709033';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926110734', 'U13926110734', '蚊子晶🎾', '', '13926110734', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 19:39:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926110734' LIMIT 1);
UPDATE users SET nick_name='蚊子晶🎾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926110734';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521133043', 'U15521133043', '琪', '', '15521133043', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 18:19:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521133043' LIMIT 1);
UPDATE users SET nick_name='琪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521133043';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13169640486', 'U13169640486', 'JOJO', '', '13169640486', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 17:51:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13169640486' LIMIT 1);
UPDATE users SET nick_name='JOJO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13169640486';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927540031', 'U19927540031', '诗诗', '', '19927540031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 50, '2025-07-02 17:26:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927540031' LIMIT 1);
UPDATE users SET nick_name='诗诗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 50) WHERE phone='19927540031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18612247282', 'U18612247282', '鸭鸭', '', '18612247282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 16:53:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18612247282' LIMIT 1);
UPDATE users SET nick_name='鸭鸭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18612247282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902573277', 'U13902573277', '1', '', '13902573277', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 16:41:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902573277' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902573277';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13016010708', 'U13016010708', '', '', '13016010708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 15:50:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13016010708' LIMIT 1);
UPDATE users SET nick_name='', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13016010708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600050512', 'U13600050512', '太白', '', '13600050512', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 15:47:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600050512' LIMIT 1);
UPDATE users SET nick_name='太白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600050512';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17802033280', 'U17802033280', '.', '', '17802033280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 15:38:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17802033280' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17802033280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218726672', 'U15218726672', '🎈🎈Feng🌸sister', '', '15218726672', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 13:48:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218726672' LIMIT 1);
UPDATE users SET nick_name='🎈🎈Feng🌸sister', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218726672';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113328197', 'U13113328197', 'Jie.', '', '13113328197', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 13:48:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113328197' LIMIT 1);
UPDATE users SET nick_name='Jie.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13113328197';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688494549', 'U18688494549', '徐先生', '', '18688494549', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 62, '2025-07-02 13:07:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688494549' LIMIT 1);
UPDATE users SET nick_name='徐先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 62) WHERE phone='18688494549';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719191569', 'U13719191569', '陈口米', '', '13719191569', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-07-02 12:43:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719191569' LIMIT 1);
UPDATE users SET nick_name='陈口米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13719191569';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13423601492', 'U13423601492', '花城', '', '13423601492', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 11:58:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13423601492' LIMIT 1);
UPDATE users SET nick_name='花城', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13423601492';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570276643', 'U13570276643', '大蚊', '', '13570276643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 11:55:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570276643' LIMIT 1);
UPDATE users SET nick_name='大蚊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570276643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249602591', 'U13249602591', '老年学堂', '', '13249602591', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 11:38:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249602591' LIMIT 1);
UPDATE users SET nick_name='老年学堂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249602591';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520332388', 'U18520332388', '🎉 ༺程梓洋༻', '', '18520332388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-02 10:08:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520332388' LIMIT 1);
UPDATE users SET nick_name='🎉 ༺程梓洋༻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520332388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813368651', 'U15813368651', '大门🐯', '', '15813368651', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 114, '2025-07-02 00:25:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813368651' LIMIT 1);
UPDATE users SET nick_name='大门🐯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 114) WHERE phone='15813368651';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620729915', 'U18620729915', '王网球', '', '18620729915', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 22:07:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620729915' LIMIT 1);
UPDATE users SET nick_name='王网球', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620729915';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18327001357', 'U18327001357', 'A', '', '18327001357', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 21:33:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18327001357' LIMIT 1);
UPDATE users SET nick_name='A', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18327001357';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813021324', 'U15813021324', 'HUANGLY', '', '15813021324', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 20:11:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813021324' LIMIT 1);
UPDATE users SET nick_name='HUANGLY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813021324';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15122297251', 'U15122297251', '京北', '', '15122297251', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 18:56:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15122297251' LIMIT 1);
UPDATE users SET nick_name='京北', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15122297251';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229468760', 'U13229468760', '何镇宇', '', '13229468760', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 18:08:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229468760' LIMIT 1);
UPDATE users SET nick_name='何镇宇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229468760';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813348164', 'U15813348164', '呖咕呖咕', '', '15813348164', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 16:53:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813348164' LIMIT 1);
UPDATE users SET nick_name='呖咕呖咕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813348164';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18747814296', 'U18747814296', '盛夏', '', '18747814296', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 16:39:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18747814296' LIMIT 1);
UPDATE users SET nick_name='盛夏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18747814296';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640260802', 'U13640260802', 'Hazel', '', '13640260802', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 15:43:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640260802' LIMIT 1);
UPDATE users SET nick_name='Hazel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640260802';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18676886116', 'U18676886116', '18676886116', '', '18676886116', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 15:20:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18676886116' LIMIT 1);
UPDATE users SET nick_name='18676886116', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18676886116';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13903070505', 'U13903070505', '闪念', '', '13903070505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 15:17:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13903070505' LIMIT 1);
UPDATE users SET nick_name='闪念', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13903070505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813392386', 'U15813392386', '荷子', '', '15813392386', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 14:18:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813392386' LIMIT 1);
UPDATE users SET nick_name='荷子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813392386';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13471419036', 'U13471419036', '走你', '', '13471419036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 12:07:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13471419036' LIMIT 1);
UPDATE users SET nick_name='走你', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13471419036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18062678027', 'U18062678027', 'Folklore', '', '18062678027', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 11:16:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18062678027' LIMIT 1);
UPDATE users SET nick_name='Folklore', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18062678027';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17818905675', 'U17818905675', '就这样吧', '', '17818905675', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 10:12:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17818905675' LIMIT 1);
UPDATE users SET nick_name='就这样吧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17818905675';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666621533', 'U18666621533', '菲菲', '', '18666621533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 599, '2025-07-01 10:06:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666621533' LIMIT 1);
UPDATE users SET nick_name='菲菲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 599) WHERE phone='18666621533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15656289889', 'U15656289889', '月半小木土', '', '15656289889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 09:29:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15656289889' LIMIT 1);
UPDATE users SET nick_name='月半小木土', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15656289889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13061931462', 'U13061931462', 'angel', '', '13061931462', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-07-01 07:51:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13061931462' LIMIT 1);
UPDATE users SET nick_name='angel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13061931462';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18938368904', 'U18938368904', '舒琪', '', '18938368904', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 21:20:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18938368904' LIMIT 1);
UPDATE users SET nick_name='舒琪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18938368904';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520356092', 'U18520356092', 'Peggy', '', '18520356092', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 20:17:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520356092' LIMIT 1);
UPDATE users SET nick_name='Peggy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520356092';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665609135', 'U18665609135', 'layla🎀', '', '18665609135', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 18:01:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665609135' LIMIT 1);
UPDATE users SET nick_name='layla🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665609135';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512724798', 'U13512724798', '小葛一定要早点毕业', '', '13512724798', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-06-30 17:59:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512724798' LIMIT 1);
UPDATE users SET nick_name='小葛一定要早点毕业', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13512724798';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819252877', 'U18819252877', 'LFC_GYer', '', '18819252877', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 17:50:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819252877' LIMIT 1);
UPDATE users SET nick_name='LFC_GYer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819252877';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503391171', 'U13503391171', 'spice', '', '13503391171', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 17:26:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503391171' LIMIT 1);
UPDATE users SET nick_name='spice', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503391171';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17873943992', 'U17873943992', 'dx', '', '17873943992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 15:02:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17873943992' LIMIT 1);
UPDATE users SET nick_name='dx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17873943992';
