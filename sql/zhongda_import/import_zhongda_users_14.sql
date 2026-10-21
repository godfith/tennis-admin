SET NAMES utf8mb4;
-- 中大店用户导入 part 14 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680536211', 'U18680536211', 'Yvonne', '', '18680536211', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 15:41:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680536211' LIMIT 1);
UPDATE users SET nick_name='Yvonne', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680536211';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15768310499', 'U15768310499', '不怕周一.', '', '15768310499', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 15:19:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15768310499' LIMIT 1);
UPDATE users SET nick_name='不怕周一.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15768310499';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678999913', 'U13678999913', '13678999913', '', '13678999913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 14:45:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678999913' LIMIT 1);
UPDATE users SET nick_name='13678999913', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13678999913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626175834', 'U15626175834', 'móu', '', '15626175834', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-03-15 13:30:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626175834' LIMIT 1);
UPDATE users SET nick_name='móu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15626175834';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17328509621', 'U17328509621', 'Alma', '', '17328509621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 12:52:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17328509621' LIMIT 1);
UPDATE users SET nick_name='Alma', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17328509621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918533835', 'U15918533835', '15918533835', '', '15918533835', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 12:49:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918533835' LIMIT 1);
UPDATE users SET nick_name='15918533835', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918533835';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533859631', 'U13533859631', '-Elaine', '', '13533859631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 12:44:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533859631' LIMIT 1);
UPDATE users SET nick_name='-Elaine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533859631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18289799736', 'U18289799736', '18289799736', '', '18289799736', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 11:55:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18289799736' LIMIT 1);
UPDATE users SET nick_name='18289799736', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18289799736';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018327438', 'U15018327438', 'Quanita', '', '15018327438', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 11:47:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018327438' LIMIT 1);
UPDATE users SET nick_name='Quanita', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018327438';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822170820', 'U13822170820', '钟嘉欣', '', '13822170820', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 11:10:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822170820' LIMIT 1);
UPDATE users SET nick_name='钟嘉欣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822170820';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620492268', 'U16620492268', '16620492268', '', '16620492268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 10:18:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620492268' LIMIT 1);
UPDATE users SET nick_name='16620492268', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620492268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18750906694', 'U18750906694', '18750906694', '', '18750906694', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 10:14:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18750906694' LIMIT 1);
UPDATE users SET nick_name='18750906694', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18750906694';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148979715', 'U13148979715', '13148979715', '', '13148979715', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 10:07:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148979715' LIMIT 1);
UPDATE users SET nick_name='13148979715', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13148979715';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15976262175', 'U15976262175', '15976262175', '', '15976262175', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 10:03:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15976262175' LIMIT 1);
UPDATE users SET nick_name='15976262175', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15976262175';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808818614', 'U13808818614', 'milk', '', '13808818614', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2025-03-15 09:46:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808818614' LIMIT 1);
UPDATE users SET nick_name='milk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13808818614';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521759219', 'U15521759219', 'Dd', '', '15521759219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 00:27:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521759219' LIMIT 1);
UPDATE users SET nick_name='Dd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521759219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19395719151', 'U19395719151', 'Lynn', '', '19395719151', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-15 00:12:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19395719151' LIMIT 1);
UPDATE users SET nick_name='Lynn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19395719151';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815874542', 'U15815874542', 'Xii-NyIng', '', '15815874542', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 20:44:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815874542' LIMIT 1);
UPDATE users SET nick_name='Xii-NyIng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815874542';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820787584', 'U18820787584', '谢', '', '18820787584', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 20:32:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820787584' LIMIT 1);
UPDATE users SET nick_name='谢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820787584';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825009552', 'U13825009552', '13825009552', '', '13825009552', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 19:27:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825009552' LIMIT 1);
UPDATE users SET nick_name='13825009552', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825009552';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13078862598', 'U13078862598', 'roey', '', '13078862598', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 19:02:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13078862598' LIMIT 1);
UPDATE users SET nick_name='roey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13078862598';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19210328243', 'U19210328243', '19210328243', '', '19210328243', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 18:34:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19210328243' LIMIT 1);
UPDATE users SET nick_name='19210328243', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19210328243';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666195575', 'U18666195575', '翅尖', '', '18666195575', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 18:27:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666195575' LIMIT 1);
UPDATE users SET nick_name='翅尖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666195575';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17688395303', 'U17688395303', 'Celine', '', '17688395303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 18:16:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17688395303' LIMIT 1);
UPDATE users SET nick_name='Celine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17688395303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18500373253', 'U18500373253', 'Jerry', '', '18500373253', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-03-14 17:45:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18500373253' LIMIT 1);
UPDATE users SET nick_name='Jerry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='18500373253';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13590452060', 'U13590452060', '呀比', '', '13590452060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 17:16:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13590452060' LIMIT 1);
UPDATE users SET nick_name='呀比', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13590452060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15382865845', 'U15382865845', '15382865845', '', '15382865845', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 16:46:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15382865845' LIMIT 1);
UPDATE users SET nick_name='15382865845', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15382865845';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512715485', 'U13512715485', '13512715485', '', '13512715485', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 16:33:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512715485' LIMIT 1);
UPDATE users SET nick_name='13512715485', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512715485';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922380909', 'U18922380909', '18922380909', '', '18922380909', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 16:25:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922380909' LIMIT 1);
UPDATE users SET nick_name='18922380909', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922380909';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13317623787', 'U13317623787', '13317623787', '', '13317623787', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 16:04:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13317623787' LIMIT 1);
UPDATE users SET nick_name='13317623787', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13317623787';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318899684', 'U13318899684', '慢溜尾袋', '', '13318899684', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 15:37:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318899684' LIMIT 1);
UPDATE users SET nick_name='慢溜尾袋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318899684';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320690090', 'U18320690090', '老李', '', '18320690090', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 14:47:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320690090' LIMIT 1);
UPDATE users SET nick_name='老李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320690090';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822201905', 'U13822201905', '13822201905', '', '13822201905', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 14:10:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822201905' LIMIT 1);
UPDATE users SET nick_name='13822201905', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822201905';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826210208', 'U13826210208', 'Roger', '', '13826210208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 13:00:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826210208' LIMIT 1);
UPDATE users SET nick_name='Roger', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826210208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430206696', 'U13430206696', '13430206696', '', '13430206696', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 12:01:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430206696' LIMIT 1);
UPDATE users SET nick_name='13430206696', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430206696';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688654808', 'U18688654808', '18688654808', '', '18688654808', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 11:44:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688654808' LIMIT 1);
UPDATE users SET nick_name='18688654808', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688654808';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640715578', 'U13640715578', '13640715578', '', '13640715578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 11:41:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640715578' LIMIT 1);
UPDATE users SET nick_name='13640715578', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640715578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15116155897', 'U15116155897', '威', '', '15116155897', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 13, '2025-03-14 11:03:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15116155897' LIMIT 1);
UPDATE users SET nick_name='威', balance=GREATEST(balance, 0.00), points=GREATEST(points, 13) WHERE phone='15116155897';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19802085578', 'U19802085578', '如花呀🌸', '', '19802085578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-14 10:28:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19802085578' LIMIT 1);
UPDATE users SET nick_name='如花呀🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19802085578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19518295502', 'U19518295502', '19518295502', '', '19518295502', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 20:37:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19518295502' LIMIT 1);
UPDATE users SET nick_name='19518295502', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19518295502';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580393861', 'U13580393861', '何婉华', '', '13580393861', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 66, '2025-03-13 20:31:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580393861' LIMIT 1);
UPDATE users SET nick_name='何婉华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 66) WHERE phone='13580393861';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18270914300', 'U18270914300', '木木', '', '18270914300', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 19:48:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18270914300' LIMIT 1);
UPDATE users SET nick_name='木木', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18270914300';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16675240107', 'U16675240107', '越前龙马', '', '16675240107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 18:16:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16675240107' LIMIT 1);
UPDATE users SET nick_name='越前龙马', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16675240107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128585288', 'U13128585288', '晴子🦋', '', '13128585288', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 18:03:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128585288' LIMIT 1);
UPDATE users SET nick_name='晴子🦋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128585288';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352830956', 'U13352830956', '棉花', '', '13352830956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 17:55:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352830956' LIMIT 1);
UPDATE users SET nick_name='棉花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352830956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18823212247', 'U18823212247', 'Sonia', '', '18823212247', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-13 17:43:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18823212247' LIMIT 1);
UPDATE users SET nick_name='Sonia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18823212247';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819813450', 'U18819813450', '大海', '', '18819813450', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-13 17:11:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819813450' LIMIT 1);
UPDATE users SET nick_name='大海', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18819813450';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18855147572', 'U18855147572', 'i', '', '18855147572', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 44, '2025-03-13 16:21:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18855147572' LIMIT 1);
UPDATE users SET nick_name='i', balance=GREATEST(balance, 0.00), points=GREATEST(points, 44) WHERE phone='18855147572';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13117974600', 'U13117974600', 'Epi', '', '13117974600', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 15:11:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13117974600' LIMIT 1);
UPDATE users SET nick_name='Epi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13117974600';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265982966', 'U13265982966', '13265982966', '', '13265982966', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 15:02:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265982966' LIMIT 1);
UPDATE users SET nick_name='13265982966', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265982966';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808828294', 'U13808828294', '13808828294', '', '13808828294', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 15:01:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808828294' LIMIT 1);
UPDATE users SET nick_name='13808828294', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808828294';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13635797749', 'U13635797749', '小苏', '', '13635797749', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 14:38:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13635797749' LIMIT 1);
UPDATE users SET nick_name='小苏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13635797749';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13313661119', 'U13313661119', '13313661119', '', '13313661119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 14:19:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13313661119' LIMIT 1);
UPDATE users SET nick_name='13313661119', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13313661119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13507051298', 'U13507051298', '13507051298', '', '13507051298', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 14:17:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13507051298' LIMIT 1);
UPDATE users SET nick_name='13507051298', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13507051298';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760726294', 'U13760726294', 'A.', '', '13760726294', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-13 13:54:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760726294' LIMIT 1);
UPDATE users SET nick_name='A.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760726294';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013275608', 'U15013275608', '婷', '', '15013275608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 599, '2025-03-12 20:02:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013275608' LIMIT 1);
UPDATE users SET nick_name='婷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 599) WHERE phone='15013275608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15768734220', 'U15768734220', '15768734220', '', '15768734220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-12 18:55:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15768734220' LIMIT 1);
UPDATE users SET nick_name='15768734220', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15768734220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202026087', 'U15202026087', 'riki', '', '15202026087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-03-12 18:45:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202026087' LIMIT 1);
UPDATE users SET nick_name='riki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15202026087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17846791557', 'U17846791557', '17846791557', '', '17846791557', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-12 18:07:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17846791557' LIMIT 1);
UPDATE users SET nick_name='17846791557', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17846791557';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602777688', 'U13602777688', '13602777688', '', '13602777688', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-12 17:45:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602777688' LIMIT 1);
UPDATE users SET nick_name='13602777688', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602777688';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820048781', 'U18820048781', '17', '', '18820048781', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-12 17:20:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820048781' LIMIT 1);
UPDATE users SET nick_name='17', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820048781';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312810840', 'U13312810840', '芝士拌饭', '', '13312810840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-12 16:51:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312810840' LIMIT 1);
UPDATE users SET nick_name='芝士拌饭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13312810840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13048059119', 'U13048059119', '乔治', '', '13048059119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 18, '2025-03-12 15:23:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13048059119' LIMIT 1);
UPDATE users SET nick_name='乔治', balance=GREATEST(balance, 0.00), points=GREATEST(points, 18) WHERE phone='13048059119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819201425', 'U18819201425', 'Wing H', '', '18819201425', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-12 14:49:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819201425' LIMIT 1);
UPDATE users SET nick_name='Wing H', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819201425';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18571638911', 'U18571638911', 'W L L', '', '18571638911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-12 14:11:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18571638911' LIMIT 1);
UPDATE users SET nick_name='W L L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18571638911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813329363', 'U15813329363', '黄晓燕', '', '15813329363', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-12 13:02:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813329363' LIMIT 1);
UPDATE users SET nick_name='黄晓燕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813329363';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17728163307', 'U17728163307', '啊啊么姚', '', '17728163307', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-12 12:18:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17728163307' LIMIT 1);
UPDATE users SET nick_name='啊啊么姚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17728163307';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610119265', 'U13610119265', '雪翡瑙瓦', '', '13610119265', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-12 11:07:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610119265' LIMIT 1);
UPDATE users SET nick_name='雪翡瑙瓦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13610119265';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570071972', 'U13570071972', 'Banzh', '', '13570071972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-11 21:38:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570071972' LIMIT 1);
UPDATE users SET nick_name='Banzh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570071972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302019023', 'U18302019023', 'wxq', '', '18302019023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-11 21:30:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302019023' LIMIT 1);
UPDATE users SET nick_name='wxq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18302019023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688853575', 'U13688853575', '小琼', '', '13688853575', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-11 21:15:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688853575' LIMIT 1);
UPDATE users SET nick_name='小琼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13688853575';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920426708', 'U15920426708', '阿大君', '', '15920426708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-11 20:00:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920426708' LIMIT 1);
UPDATE users SET nick_name='阿大君', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920426708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664673702', 'U18664673702', '18664673702', '', '18664673702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-11 18:13:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664673702' LIMIT 1);
UPDATE users SET nick_name='18664673702', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664673702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17811884507', 'U17811884507', '大威哥哥', '', '17811884507', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-03-11 17:36:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17811884507' LIMIT 1);
UPDATE users SET nick_name='大威哥哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='17811884507';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17386338530', 'U17386338530', 'Tanson', '', '17386338530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-11 17:23:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17386338530' LIMIT 1);
UPDATE users SET nick_name='Tanson', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17386338530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822190625', 'U13822190625', 'Yugi', '', '13822190625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-11 17:10:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822190625' LIMIT 1);
UPDATE users SET nick_name='Yugi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822190625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710665559', 'U13710665559', '13710665559', '', '13710665559', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-11 16:10:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710665559' LIMIT 1);
UPDATE users SET nick_name='13710665559', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710665559';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710412606', 'U13710412606', 'amiko', '', '13710412606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-11 16:03:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710412606' LIMIT 1);
UPDATE users SET nick_name='amiko', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710412606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288671135', 'U13288671135', 'zoey', '', '13288671135', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-03-11 14:56:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288671135' LIMIT 1);
UPDATE users SET nick_name='zoey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13288671135';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19898284043', 'U19898284043', 'zan', '', '19898284043', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-11 11:40:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19898284043' LIMIT 1);
UPDATE users SET nick_name='zan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19898284043';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13258667256', 'U13258667256', '13258667256', '', '13258667256', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-10 19:52:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13258667256' LIMIT 1);
UPDATE users SET nick_name='13258667256', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13258667256';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18759277135', 'U18759277135', '付纪秋', '', '18759277135', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-10 18:45:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18759277135' LIMIT 1);
UPDATE users SET nick_name='付纪秋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18759277135';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533777239', 'U13533777239', '毛毛🐛', '', '13533777239', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-10 18:00:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533777239' LIMIT 1);
UPDATE users SET nick_name='毛毛🐛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533777239';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15600222221', 'U15600222221', 'Zoe', '', '15600222221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-10 17:26:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15600222221' LIMIT 1);
UPDATE users SET nick_name='Zoe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15600222221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580507324', 'U13580507324', '杨桃', '', '13580507324', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-10 15:18:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580507324' LIMIT 1);
UPDATE users SET nick_name='杨桃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580507324';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13823790682', 'U13823790682', '13823790682', '', '13823790682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-10 13:29:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13823790682' LIMIT 1);
UPDATE users SET nick_name='13823790682', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13823790682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710665558', 'U13710665558', '吴', '', '13710665558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-10 13:25:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710665558' LIMIT 1);
UPDATE users SET nick_name='吴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710665558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928893500', 'U13928893500', '马兜兜', '', '13928893500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-10 12:19:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928893500' LIMIT 1);
UPDATE users SET nick_name='马兜兜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928893500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17691118329', 'U17691118329', '彼岸', '', '17691118329', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-10 10:21:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17691118329' LIMIT 1);
UPDATE users SET nick_name='彼岸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='17691118329';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560153149', 'U13560153149', '🌈9cMInG', '', '13560153149', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 22:02:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560153149' LIMIT 1);
UPDATE users SET nick_name='🌈9cMInG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560153149';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249609662', 'U13249609662', '13249609662', '', '13249609662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 21:13:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249609662' LIMIT 1);
UPDATE users SET nick_name='13249609662', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249609662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692021937', 'U15692021937', 'Cham', '', '15692021937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 19:54:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692021937' LIMIT 1);
UPDATE users SET nick_name='Cham', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692021937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16626448185', 'U16626448185', 'Aki', '', '16626448185', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 19:50:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16626448185' LIMIT 1);
UPDATE users SET nick_name='Aki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16626448185';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533028038', 'U13533028038', '13533028038', '', '13533028038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 18:55:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533028038' LIMIT 1);
UPDATE users SET nick_name='13533028038', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533028038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694944336', 'U13694944336', '13694944336', '', '13694944336', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 18:27:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694944336' LIMIT 1);
UPDATE users SET nick_name='13694944336', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13694944336';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13594944336', 'U13594944336', '顺时针', '', '13594944336', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 18:00:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13594944336' LIMIT 1);
UPDATE users SET nick_name='顺时针', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13594944336';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316862542', 'U18316862542', '郭', '', '18316862542', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 16:06:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316862542' LIMIT 1);
UPDATE users SET nick_name='郭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316862542';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570448874', 'U13570448874', 'Xu', '', '13570448874', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 15:28:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570448874' LIMIT 1);
UPDATE users SET nick_name='Xu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570448874';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18852860361', 'U18852860361', '椿与木春', '', '18852860361', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 14:48:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18852860361' LIMIT 1);
UPDATE users SET nick_name='椿与木春', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18852860361';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15207548651', 'U15207548651', 'Aki', '', '15207548651', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 14:26:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15207548651' LIMIT 1);
UPDATE users SET nick_name='Aki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15207548651';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820031499', 'U18820031499', '十巳', '', '18820031499', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 14:21:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820031499' LIMIT 1);
UPDATE users SET nick_name='十巳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820031499';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17502080070', 'U17502080070', '其实生活很简单', '', '17502080070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 14:19:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17502080070' LIMIT 1);
UPDATE users SET nick_name='其实生活很简单', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17502080070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620440584', 'U18620440584', '🧀', '', '18620440584', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 14:15:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620440584' LIMIT 1);
UPDATE users SET nick_name='🧀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620440584';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914235040', 'U15914235040', '小胖熊', '', '15914235040', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 14:14:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914235040' LIMIT 1);
UPDATE users SET nick_name='小胖熊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914235040';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17324092150', 'U17324092150', 'Kyle', '', '17324092150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 14:14:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17324092150' LIMIT 1);
UPDATE users SET nick_name='Kyle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17324092150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927522911', 'U19927522911', '👑Michael.I👑', '', '19927522911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 14:06:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927522911' LIMIT 1);
UPDATE users SET nick_name='👑Michael.I👑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927522911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13380537454', 'U13380537454', '史努比吃土豆', '', '13380537454', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 13:55:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13380537454' LIMIT 1);
UPDATE users SET nick_name='史努比吃土豆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13380537454';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113964891', 'U13113964891', '😎', '', '13113964891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-09 13:52:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113964891' LIMIT 1);
UPDATE users SET nick_name='😎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13113964891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17689327151', 'U17689327151', 'Dylan', '', '17689327151', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 13:51:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17689327151' LIMIT 1);
UPDATE users SET nick_name='Dylan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17689327151';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600046183', 'U13600046183', 'Tia_', '', '13600046183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 13:29:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600046183' LIMIT 1);
UPDATE users SET nick_name='Tia_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600046183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15112045498', 'U15112045498', '如意咸鱼', '', '15112045498', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 13:05:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15112045498' LIMIT 1);
UPDATE users SET nick_name='如意咸鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15112045498';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660969670', 'U13660969670', '贰🐰🐰Zoey', '', '13660969670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 13:02:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660969670' LIMIT 1);
UPDATE users SET nick_name='贰🐰🐰Zoey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660969670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928868774', 'U18928868774', 'mr liang', '', '18928868774', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 12:36:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928868774' LIMIT 1);
UPDATE users SET nick_name='mr liang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928868774';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15347432677', 'U15347432677', '马丽', '', '15347432677', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 12:27:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15347432677' LIMIT 1);
UPDATE users SET nick_name='马丽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15347432677';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920485315', 'U15920485315', 'CARSON🏠', '', '15920485315', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 11:57:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920485315' LIMIT 1);
UPDATE users SET nick_name='CARSON🏠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920485315';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632225433', 'U13632225433', '13632225433', '', '13632225433', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 11:57:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632225433' LIMIT 1);
UPDATE users SET nick_name='13632225433', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632225433';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920146683', 'U15920146683', 'cc', '', '15920146683', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 11:33:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920146683' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920146683';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15090924205', 'U15090924205', '蚊子', '', '15090924205', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 11:29:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15090924205' LIMIT 1);
UPDATE users SET nick_name='蚊子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15090924205';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570576661', 'U13570576661', 'Joshua', '', '13570576661', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 10:43:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570576661' LIMIT 1);
UPDATE users SET nick_name='Joshua', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570576661';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13261091525', 'U13261091525', 'Jeannie🥃', '', '13261091525', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 10:18:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13261091525' LIMIT 1);
UPDATE users SET nick_name='Jeannie🥃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13261091525';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18774813546', 'U18774813546', 'Via', '', '18774813546', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 09:26:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18774813546' LIMIT 1);
UPDATE users SET nick_name='Via', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18774813546';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560104341', 'U13560104341', '是雨字头的雯啊~', '', '13560104341', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-09 09:16:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560104341' LIMIT 1);
UPDATE users SET nick_name='是雨字头的雯啊~', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560104341';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18511374953', 'U18511374953', 'Bestbefore', '', '18511374953', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-08 23:11:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18511374953' LIMIT 1);
UPDATE users SET nick_name='Bestbefore', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18511374953';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217686833', 'U15217686833', '恶男', '', '15217686833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 22:41:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217686833' LIMIT 1);
UPDATE users SET nick_name='恶男', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217686833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427766725', 'U13427766725', '胡萝卜须', '', '13427766725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 22:36:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427766725' LIMIT 1);
UPDATE users SET nick_name='胡萝卜须', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427766725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915914588', 'U15915914588', 'Steven', '', '15915914588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 180, '2025-03-08 21:10:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915914588' LIMIT 1);
UPDATE users SET nick_name='Steven', balance=GREATEST(balance, 0.00), points=GREATEST(points, 180) WHERE phone='15915914588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602220706', 'U13602220706', 'Michelle', '', '13602220706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 19:14:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602220706' LIMIT 1);
UPDATE users SET nick_name='Michelle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602220706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602405012', 'U13602405012', '聪', '', '13602405012', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 19:01:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602405012' LIMIT 1);
UPDATE users SET nick_name='聪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602405012';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027307687', 'U18027307687', '书婷', '', '18027307687', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 18:41:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027307687' LIMIT 1);
UPDATE users SET nick_name='书婷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027307687';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17722383739', 'U17722383739', '17722383739', '', '17722383739', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 18:30:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17722383739' LIMIT 1);
UPDATE users SET nick_name='17722383739', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17722383739';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826792388', 'U13826792388', '讨论组', '', '13826792388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 17:02:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826792388' LIMIT 1);
UPDATE users SET nick_name='讨论组', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826792388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989026360', 'U15989026360', 'cc', '', '15989026360', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 16:52:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989026360' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989026360';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622237472', 'U13622237472', '13622237472', '', '13622237472', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 16:29:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622237472' LIMIT 1);
UPDATE users SET nick_name='13622237472', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622237472';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521121370', 'U15521121370', '震震', '', '15521121370', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 16:22:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521121370' LIMIT 1);
UPDATE users SET nick_name='震震', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521121370';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560107188', 'U13560107188', '李和捷', '', '13560107188', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 15:51:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560107188' LIMIT 1);
UPDATE users SET nick_name='李和捷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560107188';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19878124304', 'U19878124304', '19878124304', '', '19878124304', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 15:35:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19878124304' LIMIT 1);
UPDATE users SET nick_name='19878124304', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19878124304';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250213258', 'U13250213258', '宇宙冠军', '', '13250213258', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 14:14:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250213258' LIMIT 1);
UPDATE users SET nick_name='宇宙冠军', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250213258';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632494049', 'U13632494049', '13632494049', '', '13632494049', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 14:06:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632494049' LIMIT 1);
UPDATE users SET nick_name='13632494049', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632494049';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521303240', 'U15521303240', 'lhy', '', '15521303240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 13:51:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521303240' LIMIT 1);
UPDATE users SET nick_name='lhy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521303240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602729441', 'U13602729441', 'Schumann', '', '13602729441', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 13:26:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602729441' LIMIT 1);
UPDATE users SET nick_name='Schumann', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602729441';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626178668', 'U15626178668', '猴头菇', '', '15626178668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 149, '2025-03-08 12:43:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626178668' LIMIT 1);
UPDATE users SET nick_name='猴头菇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 149) WHERE phone='15626178668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450275076', 'U13450275076', '13450275076', '', '13450275076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 12:28:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450275076' LIMIT 1);
UPDATE users SET nick_name='13450275076', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450275076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588311387', 'U18588311387', '18588311387', '', '18588311387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 11:49:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588311387' LIMIT 1);
UPDATE users SET nick_name='18588311387', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588311387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826462623', 'U18826462623', '星云', '', '18826462623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 11:27:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826462623' LIMIT 1);
UPDATE users SET nick_name='星云', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826462623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15112136091', 'U15112136091', '15112136091', '', '15112136091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 11:18:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15112136091' LIMIT 1);
UPDATE users SET nick_name='15112136091', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15112136091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660674087', 'U13660674087', '🌞Mara🌞', '', '13660674087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 11:17:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660674087' LIMIT 1);
UPDATE users SET nick_name='🌞Mara🌞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660674087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18111562232', 'U18111562232', '厚朴妈妈', '', '18111562232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 10:05:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18111562232' LIMIT 1);
UPDATE users SET nick_name='厚朴妈妈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18111562232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13927169162', 'U13927169162', '吃饱了', '', '13927169162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 09:44:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13927169162' LIMIT 1);
UPDATE users SET nick_name='吃饱了', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13927169162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19880964932', 'U19880964932', '老朱', '', '19880964932', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-08 08:46:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19880964932' LIMIT 1);
UPDATE users SET nick_name='老朱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19880964932';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102006075', 'U15102006075', '哈皮', '', '15102006075', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 21:56:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102006075' LIMIT 1);
UPDATE users SET nick_name='哈皮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15102006075';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989000044', 'U15989000044', '15989000044', '', '15989000044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 19:52:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989000044' LIMIT 1);
UPDATE users SET nick_name='15989000044', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989000044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13532638269', 'U13532638269', '279', '', '13532638269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 19:39:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13532638269' LIMIT 1);
UPDATE users SET nick_name='279', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13532638269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660502842', 'U13660502842', '夏瑈', '', '13660502842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 19:37:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660502842' LIMIT 1);
UPDATE users SET nick_name='夏瑈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660502842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533828368', 'U13533828368', '幸运星', '', '13533828368', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 19:06:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533828368' LIMIT 1);
UPDATE users SET nick_name='幸运星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533828368';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928742329', 'U13928742329', 'Galun', '', '13928742329', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 18:38:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928742329' LIMIT 1);
UPDATE users SET nick_name='Galun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928742329';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168383170', 'U13168383170', 'luke萧', '', '13168383170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 18:14:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168383170' LIMIT 1);
UPDATE users SET nick_name='luke萧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13168383170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613033837', 'U18613033837', '玲玲', '', '18613033837', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 18:03:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613033837' LIMIT 1);
UPDATE users SET nick_name='玲玲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613033837';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18816781397', 'U18816781397', '18816781397', '', '18816781397', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 18:02:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18816781397' LIMIT 1);
UPDATE users SET nick_name='18816781397', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18816781397';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825485859', 'U18825485859', '🐳', '', '18825485859', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 17:25:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825485859' LIMIT 1);
UPDATE users SET nick_name='🐳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825485859';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620863207', 'U18620863207', 't', '', '18620863207', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 14:45:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620863207' LIMIT 1);
UPDATE users SET nick_name='t', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620863207';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920396701', 'U15920396701', '王先生🇨🇳', '', '15920396701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 14:40:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920396701' LIMIT 1);
UPDATE users SET nick_name='王先生🇨🇳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920396701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751750468', 'U13751750468', '13751750468', '', '13751750468', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 14:31:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751750468' LIMIT 1);
UPDATE users SET nick_name='13751750468', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751750468';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15767520320', 'U15767520320', 'Lydia', '', '15767520320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 13:47:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15767520320' LIMIT 1);
UPDATE users SET nick_name='Lydia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15767520320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18653260282', 'U18653260282', '卜', '', '18653260282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-03-07 12:32:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18653260282' LIMIT 1);
UPDATE users SET nick_name='卜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18653260282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920553669', 'U15920553669', 'lisa', '', '15920553669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-03-07 12:28:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920553669' LIMIT 1);
UPDATE users SET nick_name='lisa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='15920553669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922298893', 'U13922298893', '顾顾', '', '13922298893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 11:49:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922298893' LIMIT 1);
UPDATE users SET nick_name='顾顾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922298893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819872599', 'U18819872599', '紫色', '', '18819872599', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 10:10:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819872599' LIMIT 1);
UPDATE users SET nick_name='紫色', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819872599';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268269620', 'U13268269620', 'fernweh', '', '13268269620', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 09:50:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268269620' LIMIT 1);
UPDATE users SET nick_name='fernweh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268269620';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302393333', 'U13302393333', '于先生', '', '13302393333', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-07 09:35:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302393333' LIMIT 1);
UPDATE users SET nick_name='于先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302393333';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15992936973', 'U15992936973', 'Jin', '', '15992936973', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 21:40:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15992936973' LIMIT 1);
UPDATE users SET nick_name='Jin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15992936973';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17875205908', 'U17875205908', 'LIHONG', '', '17875205908', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 20:52:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17875205908' LIMIT 1);
UPDATE users SET nick_name='LIHONG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17875205908';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13651727390', 'U13651727390', '13651727390', '', '13651727390', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 20:49:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13651727390' LIMIT 1);
UPDATE users SET nick_name='13651727390', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13651727390';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13046196999', 'U13046196999', 'Dream', '', '13046196999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 20:34:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13046196999' LIMIT 1);
UPDATE users SET nick_name='Dream', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13046196999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924071212', 'U18924071212', '18924071212', '', '18924071212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 20:17:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924071212' LIMIT 1);
UPDATE users SET nick_name='18924071212', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924071212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539712236', 'U13539712236', '谭生', '', '13539712236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 20:05:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539712236' LIMIT 1);
UPDATE users SET nick_name='谭生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539712236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422054336', 'U13422054336', 'Ann', '', '13422054336', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 20:03:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422054336' LIMIT 1);
UPDATE users SET nick_name='Ann', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422054336';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18801750673', 'U18801750673', '18801750673', '', '18801750673', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 17:52:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18801750673' LIMIT 1);
UPDATE users SET nick_name='18801750673', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18801750673';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876431917', 'U17876431917', '遥望', '', '17876431917', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 17:48:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876431917' LIMIT 1);
UPDATE users SET nick_name='遥望', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876431917';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15112085806', 'U15112085806', '黄鸭', '', '15112085806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 17:03:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15112085806' LIMIT 1);
UPDATE users SET nick_name='黄鸭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15112085806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602761811', 'U13602761811', '翁先生', '', '13602761811', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 17:00:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602761811' LIMIT 1);
UPDATE users SET nick_name='翁先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602761811';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13436945512', 'U13436945512', '彭蕊🎈', '', '13436945512', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 15:41:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13436945512' LIMIT 1);
UPDATE users SET nick_name='彭蕊🎈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13436945512';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15099988747', 'U15099988747', '梁展展', '', '15099988747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 15:32:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15099988747' LIMIT 1);
UPDATE users SET nick_name='梁展展', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15099988747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580434906', 'U13580434906', 'fafa', '', '13580434906', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 213, '2025-03-06 15:29:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580434906' LIMIT 1);
UPDATE users SET nick_name='fafa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 213) WHERE phone='13580434906';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808896326', 'U13808896326', '飞飞', '', '13808896326', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 13:15:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808896326' LIMIT 1);
UPDATE users SET nick_name='飞飞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808896326';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143395653', 'U13143395653', 'David', '', '13143395653', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 12:22:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143395653' LIMIT 1);
UPDATE users SET nick_name='David', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143395653';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13901315563', 'U13901315563', '农生', '', '13901315563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-06 12:03:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13901315563' LIMIT 1);
UPDATE users SET nick_name='农生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13901315563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925018092', 'U13925018092', '刘小姐', '', '13925018092', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-05 22:18:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925018092' LIMIT 1);
UPDATE users SET nick_name='刘小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13925018092';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13054440867', 'U13054440867', 'WWW', '', '13054440867', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 19:46:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13054440867' LIMIT 1);
UPDATE users SET nick_name='WWW', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13054440867';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13360553362', 'U13360553362', '残雨胧晴', '', '13360553362', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 18:31:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13360553362' LIMIT 1);
UPDATE users SET nick_name='残雨胧晴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13360553362';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570504974', 'U13570504974', '周小姐', '', '13570504974', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 17:34:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570504974' LIMIT 1);
UPDATE users SET nick_name='周小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570504974';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218049465', 'U18218049465', '🌸 Maecy', '', '18218049465', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-05 17:30:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218049465' LIMIT 1);
UPDATE users SET nick_name='🌸 Maecy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18218049465';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926276777', 'U18926276777', '网球小白', '', '18926276777', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-05 17:22:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926276777' LIMIT 1);
UPDATE users SET nick_name='网球小白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18926276777';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17873116432', 'U17873116432', '王子航Ian', '', '17873116432', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 16:05:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17873116432' LIMIT 1);
UPDATE users SET nick_name='王子航Ian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17873116432';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918774312', 'U15918774312', 'Kristy.', '', '15918774312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 15:40:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918774312' LIMIT 1);
UPDATE users SET nick_name='Kristy.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918774312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13912128712', 'U13912128712', '戴贝', '', '13912128712', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 14:22:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13912128712' LIMIT 1);
UPDATE users SET nick_name='戴贝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13912128712';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011901586', 'U18011901586', '习习', '', '18011901586', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 13:11:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011901586' LIMIT 1);
UPDATE users SET nick_name='习习', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011901586';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18327135854', 'U18327135854', '123', '', '18327135854', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 12:54:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18327135854' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18327135854';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588898044', 'U18588898044', 'kkqq', '', '18588898044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 12:46:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588898044' LIMIT 1);
UPDATE users SET nick_name='kkqq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588898044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664828741', 'U18664828741', '牛牛牛', '', '18664828741', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 11:07:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664828741' LIMIT 1);
UPDATE users SET nick_name='牛牛牛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664828741';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913070227', 'U15913070227', '翁楚玲', '', '15913070227', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 11:01:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913070227' LIMIT 1);
UPDATE users SET nick_name='翁楚玲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913070227';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520280179', 'U18520280179', '谭', '', '18520280179', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-05 09:45:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520280179' LIMIT 1);
UPDATE users SET nick_name='谭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520280179';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521278306', 'U15521278306', '高高', '', '15521278306', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 23:10:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521278306' LIMIT 1);
UPDATE users SET nick_name='高高', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521278306';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922776761', 'U13922776761', '清水河', '', '13922776761', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-03-04 19:26:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922776761' LIMIT 1);
UPDATE users SET nick_name='清水河', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13922776761';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18477436067', 'U18477436067', '18477436067', '', '18477436067', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 19:12:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18477436067' LIMIT 1);
UPDATE users SET nick_name='18477436067', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18477436067';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642786709', 'U13642786709', 'echo', '', '13642786709', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 18:31:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642786709' LIMIT 1);
UPDATE users SET nick_name='echo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642786709';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430346179', 'U13430346179', '13430346179', '', '13430346179', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 16:30:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430346179' LIMIT 1);
UPDATE users SET nick_name='13430346179', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430346179';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521148391', 'U15521148391', 'mmcheung', '', '15521148391', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 15:53:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521148391' LIMIT 1);
UPDATE users SET nick_name='mmcheung', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521148391';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631418380', 'U13631418380', '新旺达～佳玟', '', '13631418380', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 15:04:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631418380' LIMIT 1);
UPDATE users SET nick_name='新旺达～佳玟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631418380';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126791416', 'U18126791416', '18126791416', '', '18126791416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 13:23:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126791416' LIMIT 1);
UPDATE users SET nick_name='18126791416', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18126791416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13423618285', 'U13423618285', 'WQ', '', '13423618285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 12:51:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13423618285' LIMIT 1);
UPDATE users SET nick_name='WQ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13423618285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998290002', 'U18998290002', '小吉妈', '', '18998290002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 12:49:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998290002' LIMIT 1);
UPDATE users SET nick_name='小吉妈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998290002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620083020', 'U18620083020', 'kitman', '', '18620083020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 12:49:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620083020' LIMIT 1);
UPDATE users SET nick_name='kitman', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620083020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13531052131', 'U13531052131', '陈', '', '13531052131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 10:38:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13531052131' LIMIT 1);
UPDATE users SET nick_name='陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13531052131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13901167390', 'U13901167390', '13901167390', '', '13901167390', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 10:34:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13901167390' LIMIT 1);
UPDATE users SET nick_name='13901167390', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13901167390';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316138821', 'U13316138821', '567', '', '13316138821', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-04 10:24:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316138821' LIMIT 1);
UPDATE users SET nick_name='567', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316138821';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692009528', 'U15692009528', 'Koi', '', '15692009528', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-03 21:13:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692009528' LIMIT 1);
UPDATE users SET nick_name='Koi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692009528';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18476311303', 'U18476311303', '18476311303', '', '18476311303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-03 21:12:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18476311303' LIMIT 1);
UPDATE users SET nick_name='18476311303', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18476311303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922112168', 'U13922112168', '黄屋村夫', '', '13922112168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-03 20:28:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922112168' LIMIT 1);
UPDATE users SET nick_name='黄屋村夫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922112168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028081913', 'U18028081913', '18028081913', '', '18028081913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-03 19:56:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028081913' LIMIT 1);
UPDATE users SET nick_name='18028081913', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028081913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018738228', 'U15018738228', 'vicki', '', '15018738228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-03 18:46:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018738228' LIMIT 1);
UPDATE users SET nick_name='vicki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018738228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664609047', 'U18664609047', '18664609047', '', '18664609047', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-03 18:29:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664609047' LIMIT 1);
UPDATE users SET nick_name='18664609047', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664609047';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011755998', 'U18011755998', '牛逼', '', '18011755998', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-03 15:31:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011755998' LIMIT 1);
UPDATE users SET nick_name='牛逼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011755998';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570408935', 'U13570408935', 'kai🐧', '', '13570408935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-03 12:55:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570408935' LIMIT 1);
UPDATE users SET nick_name='kai🐧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570408935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15827154907', 'U15827154907', '干炒牛何', '', '15827154907', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-03 12:44:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15827154907' LIMIT 1);
UPDATE users SET nick_name='干炒牛何', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15827154907';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18898641005', 'U18898641005', '苗田雨', '', '18898641005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-03-03 11:24:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18898641005' LIMIT 1);
UPDATE users SET nick_name='苗田雨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='18898641005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650865010', 'U13650865010', '徐凌', '', '13650865010', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 21:59:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650865010' LIMIT 1);
UPDATE users SET nick_name='徐凌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13650865010';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544456985', 'U13544456985', '13544456985', '', '13544456985', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 20:52:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544456985' LIMIT 1);
UPDATE users SET nick_name='13544456985', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544456985';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060652928', 'U13060652928', 'william', '', '13060652928', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-02 20:39:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060652928' LIMIT 1);
UPDATE users SET nick_name='william', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13060652928';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15802834196', 'U15802834196', '15802834196', '', '15802834196', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 20:16:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15802834196' LIMIT 1);
UPDATE users SET nick_name='15802834196', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15802834196';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602412526', 'U13602412526', '13602412526', '', '13602412526', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 17:23:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602412526' LIMIT 1);
UPDATE users SET nick_name='13602412526', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602412526';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800281486', 'U15800281486', '黄哥哥', '', '15800281486', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 17:07:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800281486' LIMIT 1);
UPDATE users SET nick_name='黄哥哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800281486';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18954102349', 'U18954102349', '诗航', '', '18954102349', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 16:35:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18954102349' LIMIT 1);
UPDATE users SET nick_name='诗航', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18954102349';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625135770', 'U15625135770', 'Saye', '', '15625135770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 16:24:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625135770' LIMIT 1);
UPDATE users SET nick_name='Saye', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625135770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632290624', 'U13632290624', '🎨', '', '13632290624', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 16:23:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632290624' LIMIT 1);
UPDATE users SET nick_name='🎨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632290624';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18373230602', 'U18373230602', '18373230602', '', '18373230602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 15:54:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18373230602' LIMIT 1);
UPDATE users SET nick_name='18373230602', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18373230602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632209291', 'U13632209291', 'being-towards-death', '', '13632209291', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 15:44:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632209291' LIMIT 1);
UPDATE users SET nick_name='being-towards-death', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632209291';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17288095081', 'U17288095081', '蜡笔不小新', '', '17288095081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 15:41:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17288095081' LIMIT 1);
UPDATE users SET nick_name='蜡笔不小新', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17288095081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13336402788', 'U13336402788', '羊仔', '', '13336402788', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-02 14:13:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13336402788' LIMIT 1);
UPDATE users SET nick_name='羊仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13336402788';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825058019', 'U18825058019', '淑淑', '', '18825058019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 13:32:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825058019' LIMIT 1);
UPDATE users SET nick_name='淑淑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825058019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642645328', 'U13642645328', '（曹） ykcaJ', '', '13642645328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 12:59:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642645328' LIMIT 1);
UPDATE users SET nick_name='（曹） ykcaJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642645328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416474788', 'U13416474788', '13416474788', '', '13416474788', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 12:56:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416474788' LIMIT 1);
UPDATE users SET nick_name='13416474788', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416474788';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13078428097', 'U13078428097', 'Him', '', '13078428097', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 12:52:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13078428097' LIMIT 1);
UPDATE users SET nick_name='Him', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13078428097';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15937574701', 'U15937574701', '我是', '', '15937574701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 12:39:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15937574701' LIMIT 1);
UPDATE users SET nick_name='我是', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15937574701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15520591552', 'U15520591552', '李', '', '15520591552', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 12:37:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15520591552' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15520591552';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631425283', 'U13631425283', '周一一', '', '13631425283', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 12:29:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631425283' LIMIT 1);
UPDATE users SET nick_name='周一一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631425283';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889283264', 'U15889283264', '人间小仙女', '', '15889283264', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 12:29:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889283264' LIMIT 1);
UPDATE users SET nick_name='人间小仙女', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889283264';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15529350089', 'U15529350089', 'why', '', '15529350089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 12:01:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15529350089' LIMIT 1);
UPDATE users SET nick_name='why', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15529350089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15814177351', 'U15814177351', '10', '', '15814177351', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 11:26:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15814177351' LIMIT 1);
UPDATE users SET nick_name='10', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15814177351';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660085331', 'U13660085331', '拯救地球的和平使者', '', '13660085331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 11:15:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660085331' LIMIT 1);
UPDATE users SET nick_name='拯救地球的和平使者', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660085331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527636846', 'U13527636846', '黄小姐', '', '13527636846', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 10:55:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527636846' LIMIT 1);
UPDATE users SET nick_name='黄小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527636846';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828409685', 'U13828409685', 'Vitamin', '', '13828409685', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 10:47:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828409685' LIMIT 1);
UPDATE users SET nick_name='Vitamin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828409685';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18319093310', 'U18319093310', '孙好运-', '', '18319093310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-02 10:09:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18319093310' LIMIT 1);
UPDATE users SET nick_name='孙好运-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18319093310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360888629', 'U15360888629', 'cc', '', '15360888629', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 22:11:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360888629' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360888629';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18406615952', 'U18406615952', '18406615952', '', '18406615952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 21:48:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18406615952' LIMIT 1);
UPDATE users SET nick_name='18406615952', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18406615952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660646417', 'U13660646417', 'Yo_landa', '', '13660646417', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 20:42:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660646417' LIMIT 1);
UPDATE users SET nick_name='Yo_landa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660646417';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13219146266', 'U13219146266', 'Destoo', '', '13219146266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 19:27:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13219146266' LIMIT 1);
UPDATE users SET nick_name='Destoo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13219146266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665461822', 'U17665461822', '17665461822', '', '17665461822', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 18:09:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665461822' LIMIT 1);
UPDATE users SET nick_name='17665461822', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665461822';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538886895', 'U13538886895', '🐴', '', '13538886895', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 17:51:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538886895' LIMIT 1);
UPDATE users SET nick_name='🐴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538886895';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17728827284', 'U17728827284', '00🧸ྀི', '', '17728827284', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-03-01 17:40:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17728827284' LIMIT 1);
UPDATE users SET nick_name='00🧸ྀི', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='17728827284';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18698899325', 'U18698899325', 'ak', '', '18698899325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-03-01 17:16:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18698899325' LIMIT 1);
UPDATE users SET nick_name='ak', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='18698899325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923497607', 'U13923497607', '13923497607', '', '13923497607', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 15:59:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923497607' LIMIT 1);
UPDATE users SET nick_name='13923497607', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13923497607';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392838179', 'U13392838179', '灿灿', '', '13392838179', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 15:56:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392838179' LIMIT 1);
UPDATE users SET nick_name='灿灿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392838179';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632247788', 'U13632247788', 'KK🤎🧸🥂', '', '13632247788', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 15:24:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632247788' LIMIT 1);
UPDATE users SET nick_name='KK🤎🧸🥂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632247788';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434160812', 'U13434160812', 'xNikiiiix', '', '13434160812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 14:13:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434160812' LIMIT 1);
UPDATE users SET nick_name='xNikiiiix', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13434160812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819473079', 'U18819473079', '朱有为', '', '18819473079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 14:12:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819473079' LIMIT 1);
UPDATE users SET nick_name='朱有为', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819473079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15016364715', 'U15016364715', '哆啦A梦', '', '15016364715', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 13:46:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15016364715' LIMIT 1);
UPDATE users SET nick_name='哆啦A梦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15016364715';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15159550101', 'U15159550101', '鳟鱼', '', '15159550101', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 13:44:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15159550101' LIMIT 1);
UPDATE users SET nick_name='鳟鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15159550101';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416158800', 'U13416158800', '白豆腐', '', '13416158800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 13:14:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416158800' LIMIT 1);
UPDATE users SET nick_name='白豆腐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416158800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918487275', 'U15918487275', '蛮', '', '15918487275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 13:11:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918487275' LIMIT 1);
UPDATE users SET nick_name='蛮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918487275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918785834', 'U15918785834', '方包', '', '15918785834', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 12:55:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918785834' LIMIT 1);
UPDATE users SET nick_name='方包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918785834';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527893134', 'U13527893134', '13527893134', '', '13527893134', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 12:45:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527893134' LIMIT 1);
UPDATE users SET nick_name='13527893134', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527893134';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13042051898', 'U13042051898', 'GUZY', '', '13042051898', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 12:13:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13042051898' LIMIT 1);
UPDATE users SET nick_name='GUZY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13042051898';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17512844025', 'U17512844025', '龙头头', '', '17512844025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 10:12:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17512844025' LIMIT 1);
UPDATE users SET nick_name='龙头头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17512844025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17306675571', 'U17306675571', '吉利布丁', '', '17306675571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 10:12:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17306675571' LIMIT 1);
UPDATE users SET nick_name='吉利布丁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17306675571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318895001', 'U13318895001', '13318895001', '', '13318895001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-03-01 09:56:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318895001' LIMIT 1);
UPDATE users SET nick_name='13318895001', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318895001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15384327437', 'U15384327437', 'Abby', '', '15384327437', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 21:17:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15384327437' LIMIT 1);
UPDATE users SET nick_name='Abby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15384327437';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19875276951', 'U19875276951', '19875276951', '', '19875276951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 21:16:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19875276951' LIMIT 1);
UPDATE users SET nick_name='19875276951', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19875276951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989290986', 'U15989290986', 'Shamy', '', '15989290986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 20:09:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989290986' LIMIT 1);
UPDATE users SET nick_name='Shamy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989290986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726229575', 'U13726229575', 'liupf', '', '13726229575', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 19:30:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726229575' LIMIT 1);
UPDATE users SET nick_name='liupf', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726229575';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18985202889', 'U18985202889', 'wyq', '', '18985202889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 19:28:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18985202889' LIMIT 1);
UPDATE users SET nick_name='wyq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18985202889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265929113', 'U13265929113', 'LUYUANLIANG', '', '13265929113', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 18:50:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265929113' LIMIT 1);
UPDATE users SET nick_name='LUYUANLIANG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265929113';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578749027', 'U18578749027', '👑', '', '18578749027', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 17:12:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578749027' LIMIT 1);
UPDATE users SET nick_name='👑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578749027';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926158044', 'U18926158044', 'yeahsyeaba', '', '18926158044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 16:38:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926158044' LIMIT 1);
UPDATE users SET nick_name='yeahsyeaba', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926158044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18640956670', 'U18640956670', '土旦的哥', '', '18640956670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 16:04:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18640956670' LIMIT 1);
UPDATE users SET nick_name='土旦的哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18640956670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613099183', 'U18613099183', 'crush', '', '18613099183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 15:13:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613099183' LIMIT 1);
UPDATE users SET nick_name='crush', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613099183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915765773', 'U15915765773', '15915765773', '', '15915765773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 15:04:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915765773' LIMIT 1);
UPDATE users SET nick_name='15915765773', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915765773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613053205', 'U18613053205', '运动康复金教[福][福]', '', '18613053205', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 14:43:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613053205' LIMIT 1);
UPDATE users SET nick_name='运动康复金教[福][福]', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613053205';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826468203', 'U13826468203', '朱生', '', '13826468203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 14:37:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826468203' LIMIT 1);
UPDATE users SET nick_name='朱生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826468203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022890158', 'U18022890158', 'KEN', '', '18022890158', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 13:41:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022890158' LIMIT 1);
UPDATE users SET nick_name='KEN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022890158';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13978666873', 'U13978666873', '13978666873', '', '13978666873', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 12:51:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13978666873' LIMIT 1);
UPDATE users SET nick_name='13978666873', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13978666873';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622887369', 'U13622887369', '小白', '', '13622887369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 105, '2025-02-28 11:51:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622887369' LIMIT 1);
UPDATE users SET nick_name='小白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 105) WHERE phone='13622887369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826409052', 'U18826409052', 'Kit', '', '18826409052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 10:45:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826409052' LIMIT 1);
UPDATE users SET nick_name='Kit', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826409052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13818503755', 'U13818503755', '南瓜', '', '13818503755', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-02-28 10:00:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13818503755' LIMIT 1);
UPDATE users SET nick_name='南瓜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13818503755';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914311484', 'U15914311484', '15914311484', '', '15914311484', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 09:51:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914311484' LIMIT 1);
UPDATE users SET nick_name='15914311484', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914311484';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824432783', 'U13824432783', '莲', '', '13824432783', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-28 08:37:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824432783' LIMIT 1);
UPDATE users SET nick_name='莲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824432783';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202037477', 'U15202037477', 'sea.', '', '15202037477', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 23:20:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202037477' LIMIT 1);
UPDATE users SET nick_name='sea.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15202037477';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760854284', 'U13760854284', '🥑ᴘᴏᴘᴏ_ʟᴇᴜɴɢ🦖', '', '13760854284', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 22:48:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760854284' LIMIT 1);
UPDATE users SET nick_name='🥑ᴘᴏᴘᴏ_ʟᴇᴜɴɢ🦖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760854284';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924071262', 'U18924071262', '18924071262', '', '18924071262', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 19:46:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924071262' LIMIT 1);
UPDATE users SET nick_name='18924071262', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924071262';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422001148', 'U13422001148', 'p1ngki_10', '', '13422001148', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 19:28:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422001148' LIMIT 1);
UPDATE users SET nick_name='p1ngki_10', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422001148';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422021804', 'U13422021804', 'Brittany', '', '13422021804', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 19:27:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422021804' LIMIT 1);
UPDATE users SET nick_name='Brittany', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422021804';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535228969', 'U13535228969', 'С.', '', '13535228969', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 19:12:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535228969' LIMIT 1);
UPDATE users SET nick_name='С.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535228969';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813753559', 'U18813753559', '12', '', '18813753559', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 18:55:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813753559' LIMIT 1);
UPDATE users SET nick_name='12', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18813753559';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13777869626', 'U13777869626', '珠珠', '', '13777869626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 18:11:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13777869626' LIMIT 1);
UPDATE users SET nick_name='珠珠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13777869626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527829634', 'U13527829634', '13527829634', '', '13527829634', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 17:17:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527829634' LIMIT 1);
UPDATE users SET nick_name='13527829634', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527829634';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915771193', 'U15915771193', '李', '', '15915771193', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 16:43:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915771193' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915771193';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15811888970', 'U15811888970', '15811888970', '', '15811888970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 16:29:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15811888970' LIMIT 1);
UPDATE users SET nick_name='15811888970', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15811888970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640728438', 'U13640728438', 'Lam', '', '13640728438', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-02-27 16:17:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640728438' LIMIT 1);
UPDATE users SET nick_name='Lam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13640728438';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13285302427', 'U13285302427', 'good沫萱子', '', '13285302427', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 15:20:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13285302427' LIMIT 1);
UPDATE users SET nick_name='good沫萱子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13285302427';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819269541', 'U18819269541', '小夜', '', '18819269541', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 109, '2025-02-27 14:02:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819269541' LIMIT 1);
UPDATE users SET nick_name='小夜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 109) WHERE phone='18819269541';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925040420', 'U13925040420', 'Mavis', '', '13925040420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-02-27 12:53:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925040420' LIMIT 1);
UPDATE users SET nick_name='Mavis', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13925040420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602883661', 'U13602883661', 'Moko', '', '13602883661', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 12:44:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602883661' LIMIT 1);
UPDATE users SET nick_name='Moko', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602883661';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13502411109', 'U13502411109', 'Amber景信', '', '13502411109', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-27 10:34:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13502411109' LIMIT 1);
UPDATE users SET nick_name='Amber景信', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13502411109';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13006880668', 'U13006880668', 'joe', '', '13006880668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 149, '2025-02-26 19:42:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13006880668' LIMIT 1);
UPDATE users SET nick_name='joe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 149) WHERE phone='13006880668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129388445', 'U13129388445', 'WHY', '', '13129388445', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 16:51:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129388445' LIMIT 1);
UPDATE users SET nick_name='WHY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13129388445';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13903001323', 'U13903001323', 'Elaine Lin', '', '13903001323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 16:42:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13903001323' LIMIT 1);
UPDATE users SET nick_name='Elaine Lin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13903001323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660232341', 'U13660232341', 'L1ME1x1N🙋', '', '13660232341', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 16:00:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660232341' LIMIT 1);
UPDATE users SET nick_name='L1ME1x1N🙋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660232341';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18068751702', 'U18068751702', '有氧', '', '18068751702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 16:00:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18068751702' LIMIT 1);
UPDATE users SET nick_name='有氧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18068751702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13226648132', 'U13226648132', 'YaᴗaY', '', '13226648132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 15:57:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13226648132' LIMIT 1);
UPDATE users SET nick_name='YaᴗaY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13226648132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13172279140', 'U13172279140', '进宝', '', '13172279140', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 15:53:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13172279140' LIMIT 1);
UPDATE users SET nick_name='进宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13172279140';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625809329', 'U15625809329', 'dudd', '', '15625809329', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 15:24:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625809329' LIMIT 1);
UPDATE users SET nick_name='dudd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625809329';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13827724107', 'U13827724107', '蔚然。风', '', '13827724107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 62, '2025-02-26 14:53:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13827724107' LIMIT 1);
UPDATE users SET nick_name='蔚然。风', balance=GREATEST(balance, 0.00), points=GREATEST(points, 62) WHERE phone='13827724107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570341189', 'U13570341189', '霭玲Elaine', '', '13570341189', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 14:39:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570341189' LIMIT 1);
UPDATE users SET nick_name='霭玲Elaine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570341189';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18676893121', 'U18676893121', 'Jn', '', '18676893121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 109, '2025-02-26 13:19:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18676893121' LIMIT 1);
UPDATE users SET nick_name='Jn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 109) WHERE phone='18676893121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15015209918', 'U15015209918', '15015209918', '', '15015209918', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 12:12:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15015209918' LIMIT 1);
UPDATE users SET nick_name='15015209918', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15015209918';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322072702', 'U15322072702', 'Valeriia', '', '15322072702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 11:48:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322072702' LIMIT 1);
UPDATE users SET nick_name='Valeriia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15322072702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580455256', 'U13580455256', '🎀Shanly_', '', '13580455256', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 10:30:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580455256' LIMIT 1);
UPDATE users SET nick_name='🎀Shanly_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580455256';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249780625', 'U13249780625', '一只', '', '13249780625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 10:14:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249780625' LIMIT 1);
UPDATE users SET nick_name='一只', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249780625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602331560', 'U15602331560', 'Way', '', '15602331560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-26 09:30:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602331560' LIMIT 1);
UPDATE users SET nick_name='Way', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602331560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602062150', 'U18602062150', '文', '', '18602062150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-25 20:44:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602062150' LIMIT 1);
UPDATE users SET nick_name='文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602062150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15679217385', 'U15679217385', '15679217385', '', '15679217385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-25 19:22:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15679217385' LIMIT 1);
UPDATE users SET nick_name='15679217385', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15679217385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18801770757', 'U18801770757', '18801770757', '', '18801770757', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-25 18:26:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18801770757' LIMIT 1);
UPDATE users SET nick_name='18801770757', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18801770757';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13933581566', 'U13933581566', 'sun', '', '13933581566', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-25 18:26:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13933581566' LIMIT 1);
UPDATE users SET nick_name='sun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13933581566';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926013761', 'U18926013761', '十二壶铜币', '', '18926013761', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-25 18:19:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926013761' LIMIT 1);
UPDATE users SET nick_name='十二壶铜币', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926013761';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529620824', 'U18529620824', '18529620824', '', '18529620824', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-25 18:18:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529620824' LIMIT 1);
UPDATE users SET nick_name='18529620824', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529620824';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18810871238', 'U18810871238', 'DJJ', '', '18810871238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-25 18:14:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18810871238' LIMIT 1);
UPDATE users SET nick_name='DJJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18810871238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609760181', 'U13609760181', '13609760181', '', '13609760181', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-25 12:31:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609760181' LIMIT 1);
UPDATE users SET nick_name='13609760181', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609760181';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15374001397', 'U15374001397', '15374001397', '', '15374001397', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-25 10:11:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15374001397' LIMIT 1);
UPDATE users SET nick_name='15374001397', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15374001397';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600074776', 'U13600074776', 'M', '', '13600074776', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-25 08:02:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600074776' LIMIT 1);
UPDATE users SET nick_name='M', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600074776';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533431687', 'U13533431687', '13533431687', '', '13533431687', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 20:20:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533431687' LIMIT 1);
UPDATE users SET nick_name='13533431687', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533431687';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920110069', 'U15920110069', '15920110069', '', '15920110069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 19:21:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920110069' LIMIT 1);
UPDATE users SET nick_name='15920110069', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920110069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826141534', 'U13826141534', 'peiyao2003', '', '13826141534', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 18:58:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826141534' LIMIT 1);
UPDATE users SET nick_name='peiyao2003', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826141534';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18890343930', 'U18890343930', '凤梨酥哇^ ^', '', '18890343930', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 18:49:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18890343930' LIMIT 1);
UPDATE users SET nick_name='凤梨酥哇^ ^', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18890343930';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18054250768', 'U18054250768', 'cwwww', '', '18054250768', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 18:02:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18054250768' LIMIT 1);
UPDATE users SET nick_name='cwwww', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18054250768';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18511565386', 'U18511565386', 'WW', '', '18511565386', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 17:56:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18511565386' LIMIT 1);
UPDATE users SET nick_name='WW', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18511565386';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18159669970', 'U18159669970', '乐怡李', '', '18159669970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 16:28:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18159669970' LIMIT 1);
UPDATE users SET nick_name='乐怡李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18159669970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798027447', 'U13798027447', 'LIu🐚', '', '13798027447', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 16:17:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798027447' LIMIT 1);
UPDATE users SET nick_name='LIu🐚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798027447';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316665962', 'U18316665962', '18316665962', '', '18316665962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 15:13:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316665962' LIMIT 1);
UPDATE users SET nick_name='18316665962', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316665962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631293353', 'U13631293353', '13631293353', '', '13631293353', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 15:13:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631293353' LIMIT 1);
UPDATE users SET nick_name='13631293353', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631293353';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924352034', 'U19924352034', '19924352034', '', '19924352034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 11:17:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924352034' LIMIT 1);
UPDATE users SET nick_name='19924352034', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924352034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620005714', 'U18620005714', 'Eva妮娃', '', '18620005714', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-24 10:08:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620005714' LIMIT 1);
UPDATE users SET nick_name='Eva妮娃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620005714';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729814583', 'U13729814583', 'CK鼠', '', '13729814583', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-02-23 21:31:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729814583' LIMIT 1);
UPDATE users SET nick_name='CK鼠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13729814583';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560483948', 'U13560483948', 'lily', '', '13560483948', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 19:16:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560483948' LIMIT 1);
UPDATE users SET nick_name='lily', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560483948';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15267352450', 'U15267352450', 'kkk', '', '15267352450', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 19:03:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15267352450' LIMIT 1);
UPDATE users SET nick_name='kkk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15267352450';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610068797', 'U13610068797', 'Katharine', '', '13610068797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 17:13:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610068797' LIMIT 1);
UPDATE users SET nick_name='Katharine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610068797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535352503', 'U13535352503', '采文', '', '13535352503', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-02-23 16:53:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535352503' LIMIT 1);
UPDATE users SET nick_name='采文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13535352503';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229129163', 'U13229129163', '婷', '', '13229129163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 15:51:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229129163' LIMIT 1);
UPDATE users SET nick_name='婷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229129163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922314411', 'U13922314411', 'Apple', '', '13922314411', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 15:30:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922314411' LIMIT 1);
UPDATE users SET nick_name='Apple', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922314411';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13780198367', 'U13780198367', '范', '', '13780198367', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 15:29:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13780198367' LIMIT 1);
UPDATE users SET nick_name='范', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13780198367';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128662611', 'U13128662611', '银河ii', '', '13128662611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 15:28:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128662611' LIMIT 1);
UPDATE users SET nick_name='银河ii', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128662611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15042720013', 'U15042720013', '冯', '', '15042720013', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-02-23 14:48:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15042720013' LIMIT 1);
UPDATE users SET nick_name='冯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='15042720013';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13286515755', 'U13286515755', 'J_C', '', '13286515755', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 14:41:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13286515755' LIMIT 1);
UPDATE users SET nick_name='J_C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13286515755';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435280747', 'U13435280747', '飞', '', '13435280747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 14:15:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435280747' LIMIT 1);
UPDATE users SET nick_name='飞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13435280747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15364285651', 'U15364285651', 'fl', '', '15364285651', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 13:12:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15364285651' LIMIT 1);
UPDATE users SET nick_name='fl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15364285651';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820796854', 'U18820796854', '迪迪麦满分', '', '18820796854', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 97.00, 75, '2025-02-23 13:04:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820796854' LIMIT 1);
UPDATE users SET nick_name='迪迪麦满分', balance=GREATEST(balance, 97.00), points=GREATEST(points, 75) WHERE phone='18820796854';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13353060591', 'U13353060591', 'Gee', '', '13353060591', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 12:07:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13353060591' LIMIT 1);
UPDATE users SET nick_name='Gee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13353060591';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18025546645', 'U18025546645', '18025546645', '', '18025546645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 11:25:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18025546645' LIMIT 1);
UPDATE users SET nick_name='18025546645', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18025546645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814370607', 'U18814370607', 'kun', '', '18814370607', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-02-23 11:13:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814370607' LIMIT 1);
UPDATE users SET nick_name='kun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='18814370607';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826217801', 'U18826217801', 'ONE.₍•͈˽•͈₎✧', '', '18826217801', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 09:56:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826217801' LIMIT 1);
UPDATE users SET nick_name='ONE.₍•͈˽•͈₎✧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826217801';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620322429', 'U18620322429', '雪玲shelly', '', '18620322429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-23 09:47:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620322429' LIMIT 1);
UPDATE users SET nick_name='雪玲shelly', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620322429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826074712', 'U18826074712', '正在疯', '', '18826074712', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 282, '2025-02-23 00:21:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826074712' LIMIT 1);
UPDATE users SET nick_name='正在疯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 282) WHERE phone='18826074712';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710223159', 'U13710223159', 'Nicky', '', '13710223159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-02-23 00:17:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710223159' LIMIT 1);
UPDATE users SET nick_name='Nicky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13710223159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15014115295', 'U15014115295', 'William Lu | Würth', '', '15014115295', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 23:07:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15014115295' LIMIT 1);
UPDATE users SET nick_name='William Lu | Würth', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15014115295';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819491610', 'U18819491610', '陈先生', '', '18819491610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 22:05:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819491610' LIMIT 1);
UPDATE users SET nick_name='陈先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819491610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13557547400', 'U13557547400', 'Michael.Lu', '', '13557547400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 21:35:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13557547400' LIMIT 1);
UPDATE users SET nick_name='Michael.Lu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13557547400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826056998', 'U18826056998', 'zys', '', '18826056998', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-02-22 18:50:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826056998' LIMIT 1);
UPDATE users SET nick_name='zys', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18826056998';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18377110421', 'U18377110421', 'Uncle、伦', '', '18377110421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 16:57:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18377110421' LIMIT 1);
UPDATE users SET nick_name='Uncle、伦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18377110421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15707660128', 'U15707660128', 'biubiu～～', '', '15707660128', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 15:08:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15707660128' LIMIT 1);
UPDATE users SET nick_name='biubiu～～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15707660128';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520062539', 'U18520062539', 'MrCloud', '', '18520062539', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 14:28:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520062539' LIMIT 1);
UPDATE users SET nick_name='MrCloud', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520062539';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18938323176', 'U18938323176', 'Stone.', '', '18938323176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 14:27:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18938323176' LIMIT 1);
UPDATE users SET nick_name='Stone.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18938323176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620503345', 'U18620503345', 'XiXi', '', '18620503345', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 13:52:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620503345' LIMIT 1);
UPDATE users SET nick_name='XiXi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620503345';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922182888', 'U18922182888', 'Kit', '', '18922182888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 96, '2025-02-22 13:19:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922182888' LIMIT 1);
UPDATE users SET nick_name='Kit', balance=GREATEST(balance, 0.00), points=GREATEST(points, 96) WHERE phone='18922182888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914478345', 'U15914478345', '微笑', '', '15914478345', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 13:16:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914478345' LIMIT 1);
UPDATE users SET nick_name='微笑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914478345';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17621323388', 'U17621323388', '17621323388', '', '17621323388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 13:07:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17621323388' LIMIT 1);
UPDATE users SET nick_name='17621323388', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17621323388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533531084', 'U13533531084', 'Jackie', '', '13533531084', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 13:05:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533531084' LIMIT 1);
UPDATE users SET nick_name='Jackie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533531084';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017576525', 'U15017576525', '木纸', '', '15017576525', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 12:33:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017576525' LIMIT 1);
UPDATE users SET nick_name='木纸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017576525';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102560353', 'U18102560353', '灿烂的太阳猪', '', '18102560353', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 12:25:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102560353' LIMIT 1);
UPDATE users SET nick_name='灿烂的太阳猪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102560353';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19850813885', 'U19850813885', 'zz', '', '19850813885', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 11:47:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19850813885' LIMIT 1);
UPDATE users SET nick_name='zz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19850813885';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18929544549', 'U18929544549', 'LH', '', '18929544549', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 11:21:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18929544549' LIMIT 1);
UPDATE users SET nick_name='LH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18929544549';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13543021642', 'U13543021642', 'Kay Young', '', '13543021642', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 11:06:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13543021642' LIMIT 1);
UPDATE users SET nick_name='Kay Young', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13543021642';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15768806299', 'U15768806299', '小柒', '', '15768806299', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 10:36:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15768806299' LIMIT 1);
UPDATE users SET nick_name='小柒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15768806299';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013337773', 'U15013337773', '陈', '', '15013337773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 10:26:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013337773' LIMIT 1);
UPDATE users SET nick_name='陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013337773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18643507070', 'U18643507070', '孙先生', '', '18643507070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-22 09:59:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18643507070' LIMIT 1);
UPDATE users SET nick_name='孙先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18643507070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18062757693', 'U18062757693', 'Rachel_he', '', '18062757693', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-21 21:49:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18062757693' LIMIT 1);
UPDATE users SET nick_name='Rachel_he', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18062757693';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13189691322', 'U13189691322', '13189691322', '', '13189691322', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-21 20:24:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13189691322' LIMIT 1);
UPDATE users SET nick_name='13189691322', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13189691322';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218325168', 'U15218325168', 'a', '', '15218325168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-21 20:11:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218325168' LIMIT 1);
UPDATE users SET nick_name='a', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218325168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922378718', 'U13922378718', 'Eric.', '', '13922378718', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-21 20:08:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922378718' LIMIT 1);
UPDATE users SET nick_name='Eric.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922378718';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622280003', 'U13622280003', '玲', '', '13622280003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-21 20:04:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622280003' LIMIT 1);
UPDATE users SET nick_name='玲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622280003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13051326699', 'U13051326699', 'Chris', '', '13051326699', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-21 19:53:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13051326699' LIMIT 1);
UPDATE users SET nick_name='Chris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13051326699';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760994741', 'U13760994741', 'Amber', '', '13760994741', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-21 15:00:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760994741' LIMIT 1);
UPDATE users SET nick_name='Amber', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760994741';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622475667', 'U15622475667', '汤梓颍', '', '15622475667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 66, '2025-02-21 11:51:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622475667' LIMIT 1);
UPDATE users SET nick_name='汤梓颍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 66) WHERE phone='15622475667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18617320773', 'U18617320773', '威David', '', '18617320773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 21:59:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18617320773' LIMIT 1);
UPDATE users SET nick_name='威David', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18617320773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15259588890', 'U15259588890', '15259588890', '', '15259588890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 21:16:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15259588890' LIMIT 1);
UPDATE users SET nick_name='15259588890', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15259588890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15059588890', 'U15059588890', 'H', '', '15059588890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-02-20 21:06:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15059588890' LIMIT 1);
UPDATE users SET nick_name='H', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15059588890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15058588890', 'U15058588890', '15058588890', '', '15058588890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 20:58:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15058588890' LIMIT 1);
UPDATE users SET nick_name='15058588890', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15058588890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18730278595', 'U18730278595', 'Fralsau', '', '18730278595', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 17:37:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18730278595' LIMIT 1);
UPDATE users SET nick_name='Fralsau', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18730278595';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802000831', 'U18802000831', 'susie', '', '18802000831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 17:37:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802000831' LIMIT 1);
UPDATE users SET nick_name='susie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802000831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422118857', 'U13422118857', 'RosannaGao', '', '13422118857', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 15:55:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422118857' LIMIT 1);
UPDATE users SET nick_name='RosannaGao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422118857';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520220407', 'U18520220407', '谭律师', '', '18520220407', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 15:12:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520220407' LIMIT 1);
UPDATE users SET nick_name='谭律师', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520220407';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13066931189', 'U13066931189', 'kk', '', '13066931189', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 14:00:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13066931189' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13066931189';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913129830', 'U15913129830', 'Ivy', '', '15913129830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 13:33:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913129830' LIMIT 1);
UPDATE users SET nick_name='Ivy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913129830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143756109', 'U13143756109', '13143756109', '', '13143756109', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 11:43:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143756109' LIMIT 1);
UPDATE users SET nick_name='13143756109', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143756109';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520050282', 'U18520050282', '6', '', '18520050282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 11:38:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520050282' LIMIT 1);
UPDATE users SET nick_name='6', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520050282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914286080', 'U15914286080', '卡魔拉', '', '15914286080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 11:29:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914286080' LIMIT 1);
UPDATE users SET nick_name='卡魔拉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914286080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922325830', 'U18922325830', '。', '', '18922325830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-20 10:49:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922325830' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922325830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250274644', 'U13250274644', '1', '', '13250274644', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-02-19 22:39:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250274644' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13250274644';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318919668', 'U13318919668', 'M', '', '13318919668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-19 20:01:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318919668' LIMIT 1);
UPDATE users SET nick_name='M', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318919668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902389964', 'U13902389964', '📞', '', '13902389964', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-19 19:38:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902389964' LIMIT 1);
UPDATE users SET nick_name='📞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902389964';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802921601', 'U13802921601', '🌳 Anthea 🌳', '', '13802921601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-19 18:16:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802921601' LIMIT 1);
UPDATE users SET nick_name='🌳 Anthea 🌳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802921601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15283145291', 'U15283145291', 'Zoe', '', '15283145291', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-19 16:15:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15283145291' LIMIT 1);
UPDATE users SET nick_name='Zoe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15283145291';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15595594399', 'U15595594399', '萝卜', '', '15595594399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-19 14:10:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15595594399' LIMIT 1);
UPDATE users SET nick_name='萝卜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15595594399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666569763', 'U17666569763', 'Se7en🌒', '', '17666569763', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-19 13:09:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666569763' LIMIT 1);
UPDATE users SET nick_name='Se7en🌒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666569763';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826234210', 'U13826234210', 'Jason Yuan', '', '13826234210', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-19 12:04:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826234210' LIMIT 1);
UPDATE users SET nick_name='Jason Yuan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826234210';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18682271454', 'U18682271454', 'jim', '', '18682271454', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-18 23:54:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18682271454' LIMIT 1);
UPDATE users SET nick_name='jim', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18682271454';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725379700', 'U13725379700', 'yt', '', '13725379700', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-18 23:25:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725379700' LIMIT 1);
UPDATE users SET nick_name='yt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725379700';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15728686694', 'U15728686694', 'Hong', '', '15728686694', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-18 19:18:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15728686694' LIMIT 1);
UPDATE users SET nick_name='Hong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15728686694';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027188899', 'U18027188899', '18027188899', '', '18027188899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-18 17:37:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027188899' LIMIT 1);
UPDATE users SET nick_name='18027188899', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027188899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933963347', 'U18933963347', '18933963347', '', '18933963347', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-18 17:02:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933963347' LIMIT 1);
UPDATE users SET nick_name='18933963347', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933963347';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819472934', 'U18819472934', '夏天吃冬瓜', '', '18819472934', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-18 12:46:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819472934' LIMIT 1);
UPDATE users SET nick_name='夏天吃冬瓜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819472934';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520143597', 'U18520143597', '18520143597', '', '18520143597', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-17 20:07:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520143597' LIMIT 1);
UPDATE users SET nick_name='18520143597', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520143597';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15707972162', 'U15707972162', '余佳宁', '', '15707972162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-17 19:29:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15707972162' LIMIT 1);
UPDATE users SET nick_name='余佳宁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15707972162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15603016407', 'U15603016407', '林', '', '15603016407', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-17 18:50:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15603016407' LIMIT 1);
UPDATE users SET nick_name='林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15603016407';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15361722563', 'U15361722563', 'Allez', '', '15361722563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-17 18:13:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15361722563' LIMIT 1);
UPDATE users SET nick_name='Allez', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15361722563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688882095', 'U18688882095', '鱼', '', '18688882095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-17 16:11:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688882095' LIMIT 1);
UPDATE users SET nick_name='鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688882095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800243829', 'U15800243829', 'keli', '', '15800243829', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-17 15:58:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800243829' LIMIT 1);
UPDATE users SET nick_name='keli', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800243829';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535469025', 'U13535469025', 'lin', '', '13535469025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-17 15:58:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535469025' LIMIT 1);
UPDATE users SET nick_name='lin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535469025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825053086', 'U18825053086', '侬侬', '', '18825053086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-17 15:54:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825053086' LIMIT 1);
UPDATE users SET nick_name='侬侬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825053086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17827832163', 'U17827832163', '李', '', '17827832163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-17 11:57:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17827832163' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17827832163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922326830', 'U18922326830', '18922326830', '', '18922326830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-17 11:18:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922326830' LIMIT 1);
UPDATE users SET nick_name='18922326830', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922326830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929506731', 'U13929506731', '山茶花小王子', '', '13929506731', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-17 11:11:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929506731' LIMIT 1);
UPDATE users SET nick_name='山茶花小王子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929506731';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14750032150', 'U14750032150', '哲', '', '14750032150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-02-16 19:24:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14750032150' LIMIT 1);
UPDATE users SET nick_name='哲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='14750032150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13066193607', 'U13066193607', '@我', '', '13066193607', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-16 19:04:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13066193607' LIMIT 1);
UPDATE users SET nick_name='@我', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13066193607';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19822906771', 'U19822906771', '17 🎐', '', '19822906771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-16 16:30:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19822906771' LIMIT 1);
UPDATE users SET nick_name='17 🎐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19822906771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798089295', 'U13798089295', '贤', '', '13798089295', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 70, '2025-02-16 15:11:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798089295' LIMIT 1);
UPDATE users SET nick_name='贤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 70) WHERE phone='13798089295';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122173611', 'U18122173611', 'king', '', '18122173611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-02-16 15:10:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122173611' LIMIT 1);
UPDATE users SET nick_name='king', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18122173611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975591754', 'U15975591754', 'Titi', '', '15975591754', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-16 15:05:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975591754' LIMIT 1);
UPDATE users SET nick_name='Titi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975591754';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18277714531', 'U18277714531', '何', '', '18277714531', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-16 15:04:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18277714531' LIMIT 1);
UPDATE users SET nick_name='何', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18277714531';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556125900', 'U13556125900', '多多', '', '13556125900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-16 13:04:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556125900' LIMIT 1);
UPDATE users SET nick_name='多多', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556125900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13417292421', 'U13417292421', '13417292421', '', '13417292421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-16 12:05:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13417292421' LIMIT 1);
UPDATE users SET nick_name='13417292421', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13417292421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933941560', 'U18933941560', 'leung天天🍒', '', '18933941560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-16 11:19:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933941560' LIMIT 1);
UPDATE users SET nick_name='leung天天🍒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933941560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434288687', 'U13434288687', '小宸宸', '', '13434288687', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 135, '2025-02-16 10:54:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434288687' LIMIT 1);
UPDATE users SET nick_name='小宸宸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 135) WHERE phone='13434288687';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913141678', 'U15913141678', 'Yumiᰔᩚ', '', '15913141678', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-16 10:44:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913141678' LIMIT 1);
UPDATE users SET nick_name='Yumiᰔᩚ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913141678';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18336060551', 'U18336060551', 'wwt', '', '18336060551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-16 10:19:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18336060551' LIMIT 1);
UPDATE users SET nick_name='wwt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18336060551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17824930956', 'U17824930956', '17824930956', '', '17824930956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-16 10:17:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17824930956' LIMIT 1);
UPDATE users SET nick_name='17824930956', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17824930956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622244419', 'U15622244419', '曾女士', '', '15622244419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 22:40:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622244419' LIMIT 1);
UPDATE users SET nick_name='曾女士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622244419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924276225', 'U19924276225', 'Lynn Wu', '', '19924276225', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 21:05:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924276225' LIMIT 1);
UPDATE users SET nick_name='Lynn Wu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924276225';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520548698', 'U18520548698', '18520548698', '', '18520548698', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 19:52:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520548698' LIMIT 1);
UPDATE users SET nick_name='18520548698', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520548698';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15384421678', 'U15384421678', 'Yumi', '', '15384421678', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 18:42:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15384421678' LIMIT 1);
UPDATE users SET nick_name='Yumi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15384421678';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13054462312', 'U13054462312', 'Charr', '', '13054462312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 17:48:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13054462312' LIMIT 1);
UPDATE users SET nick_name='Charr', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13054462312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13112271561', 'U13112271561', 'Lyon Ru', '', '13112271561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 17:20:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13112271561' LIMIT 1);
UPDATE users SET nick_name='Lyon Ru', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13112271561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15007370847', 'U15007370847', '15007370847', '', '15007370847', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 17:17:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15007370847' LIMIT 1);
UPDATE users SET nick_name='15007370847', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15007370847';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763373623', 'U13763373623', 'Charlene🤍', '', '13763373623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 17:02:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763373623' LIMIT 1);
UPDATE users SET nick_name='Charlene🤍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763373623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763309917', 'U13763309917', '+0', '', '13763309917', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-02-15 15:51:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763309917' LIMIT 1);
UPDATE users SET nick_name='+0', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13763309917';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17841823119', 'U17841823119', '邹女士', '', '17841823119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 15:40:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17841823119' LIMIT 1);
UPDATE users SET nick_name='邹女士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17841823119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664761213', 'U18664761213', 'kiki', '', '18664761213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-02-15 15:34:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664761213' LIMIT 1);
UPDATE users SET nick_name='kiki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18664761213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580468095', 'U13580468095', 'XZL', '', '13580468095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 14:58:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580468095' LIMIT 1);
UPDATE users SET nick_name='XZL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580468095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802011816', 'U18802011816', '18802011816', '', '18802011816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 14:18:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802011816' LIMIT 1);
UPDATE users SET nick_name='18802011816', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802011816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826032661', 'U13826032661', '13826032661', '', '13826032661', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 14:08:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826032661' LIMIT 1);
UPDATE users SET nick_name='13826032661', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826032661';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520077464', 'U18520077464', 'Amy', '', '18520077464', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-02-15 12:05:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520077464' LIMIT 1);
UPDATE users SET nick_name='Amy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18520077464';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18817272507', 'U18817272507', 'ᰔᩚ', '', '18817272507', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 10:51:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18817272507' LIMIT 1);
UPDATE users SET nick_name='ᰔᩚ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18817272507';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660304387', 'U13660304387', 'Lily', '', '13660304387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-15 09:52:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660304387' LIMIT 1);
UPDATE users SET nick_name='Lily', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660304387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570083079', 'U13570083079', 'Ling', '', '13570083079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-14 19:29:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570083079' LIMIT 1);
UPDATE users SET nick_name='Ling', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570083079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392148193', 'U13392148193', 'riomok', '', '13392148193', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-14 18:43:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392148193' LIMIT 1);
UPDATE users SET nick_name='riomok', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392148193';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18920538070', 'U18920538070', '18920538070', '', '18920538070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-14 16:30:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18920538070' LIMIT 1);
UPDATE users SET nick_name='18920538070', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18920538070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520636882', 'U18520636882', '18520636882', '', '18520636882', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-14 15:54:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520636882' LIMIT 1);
UPDATE users SET nick_name='18520636882', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520636882';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18202799561', 'U18202799561', 'Cherish Yang', '', '18202799561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-14 14:38:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18202799561' LIMIT 1);
UPDATE users SET nick_name='Cherish Yang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18202799561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13910856806', 'U13910856806', '肚包', '', '13910856806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 199, '2025-02-13 21:06:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13910856806' LIMIT 1);
UPDATE users SET nick_name='肚包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 199) WHERE phone='13910856806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18610943328', 'U18610943328', '肚包', '', '18610943328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1098, '2025-02-13 21:05:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18610943328' LIMIT 1);
UPDATE users SET nick_name='肚包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1098) WHERE phone='18610943328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688454597', 'U18688454597', '18688454597', '', '18688454597', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-13 15:39:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688454597' LIMIT 1);
UPDATE users SET nick_name='18688454597', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688454597';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620498669', 'U18620498669', '18620498669', '', '18620498669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-13 15:34:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620498669' LIMIT 1);
UPDATE users SET nick_name='18620498669', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620498669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18898876086', 'U18898876086', '斯文孙', '', '18898876086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-13 12:36:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18898876086' LIMIT 1);
UPDATE users SET nick_name='斯文孙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18898876086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711668087', 'U13711668087', '叶生', '', '13711668087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-13 10:25:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711668087' LIMIT 1);
UPDATE users SET nick_name='叶生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711668087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218896318', 'U15218896318', 'gavin', '', '15218896318', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-12 22:18:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218896318' LIMIT 1);
UPDATE users SET nick_name='gavin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218896318';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521318708', 'U15521318708', '15521318708', '', '15521318708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-12 21:15:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521318708' LIMIT 1);
UPDATE users SET nick_name='15521318708', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521318708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13377185404', 'U13377185404', 'xv', '', '13377185404', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-12 20:37:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13377185404' LIMIT 1);
UPDATE users SET nick_name='xv', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13377185404';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533572093', 'U13533572093', '13533572093', '', '13533572093', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-12 17:01:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533572093' LIMIT 1);
UPDATE users SET nick_name='13533572093', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533572093';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18177549714', 'U18177549714', '18177549714', '', '18177549714', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-12 16:49:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18177549714' LIMIT 1);
UPDATE users SET nick_name='18177549714', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18177549714';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13286863300', 'U13286863300', '小林', '', '13286863300', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-12 14:24:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13286863300' LIMIT 1);
UPDATE users SET nick_name='小林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13286863300';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13787006742', 'U13787006742', 'neo小鹿', '', '13787006742', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-12 14:20:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13787006742' LIMIT 1);
UPDATE users SET nick_name='neo小鹿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13787006742';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813394189', 'U15813394189', '🦖', '', '15813394189', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-12 13:49:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813394189' LIMIT 1);
UPDATE users SET nick_name='🦖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813394189';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539873909', 'U13539873909', 'papa', '', '13539873909', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-12 11:48:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539873909' LIMIT 1);
UPDATE users SET nick_name='papa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539873909';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660407095', 'U13660407095', '米兰', '', '13660407095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-12 11:27:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660407095' LIMIT 1);
UPDATE users SET nick_name='米兰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660407095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13173395653', 'U13173395653', '13173395653', '', '13173395653', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-11 19:30:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13173395653' LIMIT 1);
UPDATE users SET nick_name='13173395653', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13173395653';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822161025', 'U13822161025', '冷超鹏😱', '', '13822161025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-11 17:41:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822161025' LIMIT 1);
UPDATE users SET nick_name='冷超鹏😱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822161025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19129252019', 'U19129252019', '19129252019', '', '19129252019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-11 16:27:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19129252019' LIMIT 1);
UPDATE users SET nick_name='19129252019', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19129252019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535513881', 'U13535513881', 'susan', '', '13535513881', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-11 14:22:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535513881' LIMIT 1);
UPDATE users SET nick_name='susan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535513881';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533071487', 'U13533071487', 'sakura', '', '13533071487', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-11 13:15:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533071487' LIMIT 1);
UPDATE users SET nick_name='sakura', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533071487';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13272150003', 'U13272150003', 'Lexie', '', '13272150003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-11 12:55:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13272150003' LIMIT 1);
UPDATE users SET nick_name='Lexie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13272150003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933909113', 'U18933909113', '欣加特机械-Miss Chen 18933909113', '', '18933909113', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-11 11:22:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933909113' LIMIT 1);
UPDATE users SET nick_name='欣加特机械-Miss Chen 18933909113', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933909113';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800268945', 'U15800268945', 'Dulcie', '', '15800268945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-11 11:00:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800268945' LIMIT 1);
UPDATE users SET nick_name='Dulcie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800268945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924274560', 'U13924274560', 'Tan', '', '13924274560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-10 22:42:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924274560' LIMIT 1);
UPDATE users SET nick_name='Tan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924274560';
