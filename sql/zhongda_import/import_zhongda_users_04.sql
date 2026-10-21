SET NAMES utf8mb4;
-- 中大店用户导入 part 4 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610296085', 'U13610296085', '13610296085', '', '13610296085', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-11 16:43:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610296085' LIMIT 1);
UPDATE users SET nick_name='13610296085', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610296085';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710073377', 'U13710073377', '13710073377', '', '13710073377', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-11 16:22:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710073377' LIMIT 1);
UPDATE users SET nick_name='13710073377', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710073377';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13437845024', 'U13437845024', '耶耶', '', '13437845024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-11 14:27:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13437845024' LIMIT 1);
UPDATE users SET nick_name='耶耶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13437845024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826262286', 'U18826262286', '18826262286', '', '18826262286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-11 10:33:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826262286' LIMIT 1);
UPDATE users SET nick_name='18826262286', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826262286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18210668022', 'U18210668022', '珉琦', '', '18210668022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-11 10:23:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18210668022' LIMIT 1);
UPDATE users SET nick_name='珉琦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18210668022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102599758', 'U18102599758', 'a', '', '18102599758', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-11 00:19:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102599758' LIMIT 1);
UPDATE users SET nick_name='a', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102599758';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15702133020', 'U15702133020', 'Sophia', '', '15702133020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-10 22:10:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15702133020' LIMIT 1);
UPDATE users SET nick_name='Sophia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15702133020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620244240', 'U18620244240', '左拾遗', '', '18620244240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-10 18:43:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620244240' LIMIT 1);
UPDATE users SET nick_name='左拾遗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620244240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688203373', 'U18688203373', '18688203373', '', '18688203373', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-10 18:06:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688203373' LIMIT 1);
UPDATE users SET nick_name='18688203373', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688203373';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632463663', 'U13632463663', '13632463663', '', '13632463663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-10 17:04:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632463663' LIMIT 1);
UPDATE users SET nick_name='13632463663', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632463663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320242460', 'U18320242460', '18320242460', '', '18320242460', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-10 14:00:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320242460' LIMIT 1);
UPDATE users SET nick_name='18320242460', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320242460';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826048608', 'U13826048608', 'RAYMOND', '', '13826048608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-10 13:59:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826048608' LIMIT 1);
UPDATE users SET nick_name='RAYMOND', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826048608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570297068', 'U13570297068', '531368', '', '13570297068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-10 13:05:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570297068' LIMIT 1);
UPDATE users SET nick_name='531368', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570297068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556744186', 'U13556744186', '13556744186', '', '13556744186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-10 10:23:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556744186' LIMIT 1);
UPDATE users SET nick_name='13556744186', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556744186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688750200', 'U18688750200', '粉', '', '18688750200', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-09 21:40:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688750200' LIMIT 1);
UPDATE users SET nick_name='粉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688750200';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917455595', 'U15917455595', '最爱么啾的红萝卜', '', '15917455595', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-09 17:59:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917455595' LIMIT 1);
UPDATE users SET nick_name='最爱么啾的红萝卜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917455595';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626102685', 'U15626102685', 'Linky', '', '15626102685', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-09 16:42:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626102685' LIMIT 1);
UPDATE users SET nick_name='Linky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626102685';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028847081', 'U18028847081', '挂々', '', '18028847081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-09 15:24:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028847081' LIMIT 1);
UPDATE users SET nick_name='挂々', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028847081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18318520819', 'U18318520819', '18318520819', '', '18318520819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-09 13:25:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18318520819' LIMIT 1);
UPDATE users SET nick_name='18318520819', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18318520819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565805951', 'U18565805951', 'u', '', '18565805951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-09 13:06:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565805951' LIMIT 1);
UPDATE users SET nick_name='u', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565805951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988803811', 'U18988803811', '温康康', '', '18988803811', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2026-05-09 12:25:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988803811' LIMIT 1);
UPDATE users SET nick_name='温康康', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='18988803811';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13130044615', 'U13130044615', 'Tabris', '', '13130044615', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-09 11:49:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13130044615' LIMIT 1);
UPDATE users SET nick_name='Tabris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13130044615';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18114306859', 'U18114306859', '球在弦上', '', '18114306859', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-09 09:10:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18114306859' LIMIT 1);
UPDATE users SET nick_name='球在弦上', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18114306859';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925605393', 'U18925605393', 'u.', '', '18925605393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-09 00:39:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925605393' LIMIT 1);
UPDATE users SET nick_name='u.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925605393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570297083', 'U13570297083', '黎女士', '', '13570297083', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-08 23:23:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570297083' LIMIT 1);
UPDATE users SET nick_name='黎女士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570297083';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666658287', 'U18666658287', '18666658287', '', '18666658287', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-08 20:29:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666658287' LIMIT 1);
UPDATE users SET nick_name='18666658287', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666658287';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250554922', 'U13250554922', '13250554922', '', '13250554922', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-08 20:27:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250554922' LIMIT 1);
UPDATE users SET nick_name='13250554922', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250554922';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13411050869', 'U13411050869', '🍉 贰柒', '', '13411050869', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-08 18:33:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13411050869' LIMIT 1);
UPDATE users SET nick_name='🍉 贰柒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13411050869';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989043694', 'U15989043694', '15989043694', '', '15989043694', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-08 15:40:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989043694' LIMIT 1);
UPDATE users SET nick_name='15989043694', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989043694';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127974005', 'U18127974005', '18127974005', '', '18127974005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-08 15:23:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127974005' LIMIT 1);
UPDATE users SET nick_name='18127974005', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127974005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925120220', 'U13925120220', '13925120220', '', '13925120220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-08 12:52:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925120220' LIMIT 1);
UPDATE users SET nick_name='13925120220', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925120220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15349996983', 'U15349996983', '15349996983', '', '15349996983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-08 12:48:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15349996983' LIMIT 1);
UPDATE users SET nick_name='15349996983', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15349996983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060621864', 'U13060621864', '不等于', '', '13060621864', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-08 10:51:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060621864' LIMIT 1);
UPDATE users SET nick_name='不等于', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060621864';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148932711', 'U13148932711', 'Lynne🌟', '', '13148932711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-07 22:32:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148932711' LIMIT 1);
UPDATE users SET nick_name='Lynne🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13148932711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19515080756', 'U19515080756', 'shirley', '', '19515080756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-07 19:13:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19515080756' LIMIT 1);
UPDATE users SET nick_name='shirley', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19515080756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265041292', 'U13265041292', '13265041292', '', '13265041292', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-07 18:49:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265041292' LIMIT 1);
UPDATE users SET nick_name='13265041292', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265041292';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19128750830', 'U19128750830', '19128750830', '', '19128750830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-07 15:00:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19128750830' LIMIT 1);
UPDATE users SET nick_name='19128750830', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19128750830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318720030', 'U13318720030', '子集为空', '', '13318720030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-07 14:24:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318720030' LIMIT 1);
UPDATE users SET nick_name='子集为空', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318720030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826295884', 'U13826295884', '13826295884', '', '13826295884', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-07 13:09:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826295884' LIMIT 1);
UPDATE users SET nick_name='13826295884', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826295884';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17724616090', 'U17724616090', 'C.Stan', '', '17724616090', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-07 13:06:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17724616090' LIMIT 1);
UPDATE users SET nick_name='C.Stan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17724616090';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18523185673', 'U18523185673', '无虞', '', '18523185673', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-06 19:02:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18523185673' LIMIT 1);
UPDATE users SET nick_name='无虞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18523185673';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18002244625', 'U18002244625', '18002244625', '', '18002244625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-06 18:30:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18002244625' LIMIT 1);
UPDATE users SET nick_name='18002244625', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18002244625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13872529163', 'U13872529163', 'Nicole', '', '13872529163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-06 18:02:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13872529163' LIMIT 1);
UPDATE users SET nick_name='Nicole', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13872529163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15603063801', 'U15603063801', '15603063801', '', '15603063801', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-06 17:14:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15603063801' LIMIT 1);
UPDATE users SET nick_name='15603063801', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15603063801';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626468011', 'U15626468011', 'Sss', '', '15626468011', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-06 14:31:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626468011' LIMIT 1);
UPDATE users SET nick_name='Sss', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626468011';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15099951577', 'U15099951577', '15099951577', '', '15099951577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-06 14:30:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15099951577' LIMIT 1);
UPDATE users SET nick_name='15099951577', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15099951577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15310802590', 'U15310802590', '15310802590', '', '15310802590', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-06 13:05:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15310802590' LIMIT 1);
UPDATE users SET nick_name='15310802590', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15310802590';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560256665', 'U13560256665', 'N', '', '13560256665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-06 12:53:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560256665' LIMIT 1);
UPDATE users SET nick_name='N', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560256665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318014044', 'U13318014044', '啊桂', '', '13318014044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-06 11:57:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318014044' LIMIT 1);
UPDATE users SET nick_name='啊桂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318014044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924328662', 'U18924328662', 'Anni', '', '18924328662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 22:14:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924328662' LIMIT 1);
UPDATE users SET nick_name='Anni', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924328662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520492435', 'U18520492435', '18520492435', '', '18520492435', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 20:15:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520492435' LIMIT 1);
UPDATE users SET nick_name='18520492435', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520492435';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148969817', 'U13148969817', '13148969817', '', '13148969817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 19:12:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148969817' LIMIT 1);
UPDATE users SET nick_name='13148969817', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13148969817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822169492', 'U13822169492', 'Pablo', '', '13822169492', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 18:51:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822169492' LIMIT 1);
UPDATE users SET nick_name='Pablo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822169492';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824429753', 'U13824429753', '13824429753', '', '13824429753', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 15:58:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824429753' LIMIT 1);
UPDATE users SET nick_name='13824429753', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824429753';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13330249046', 'U13330249046', '13330249046', '', '13330249046', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 15:55:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13330249046' LIMIT 1);
UPDATE users SET nick_name='13330249046', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13330249046';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13138668836', 'U13138668836', '13138668836', '', '13138668836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 15:40:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13138668836' LIMIT 1);
UPDATE users SET nick_name='13138668836', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13138668836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15302481966', 'U15302481966', 'Bryce', '', '15302481966', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 15:04:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15302481966' LIMIT 1);
UPDATE users SET nick_name='Bryce', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15302481966';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602470138', 'U13602470138', '13602470138', '', '13602470138', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 14:35:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602470138' LIMIT 1);
UPDATE users SET nick_name='13602470138', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602470138';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503024056', 'U13503024056', '汉哥', '', '13503024056', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 13:16:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503024056' LIMIT 1);
UPDATE users SET nick_name='汉哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503024056';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664852790', 'U18664852790', '18664852790', '', '18664852790', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 13:12:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664852790' LIMIT 1);
UPDATE users SET nick_name='18664852790', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664852790';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16226646111', 'U16226646111', '16226646111', '', '16226646111', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-05 13:01:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16226646111' LIMIT 1);
UPDATE users SET nick_name='16226646111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16226646111';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902388132', 'U18902388132', '吴小姐', '', '18902388132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-04 20:44:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902388132' LIMIT 1);
UPDATE users SET nick_name='吴小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18902388132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15717032182', 'U15717032182', '周五见', '', '15717032182', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-04 20:34:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15717032182' LIMIT 1);
UPDATE users SET nick_name='周五见', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15717032182';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922106218', 'U13922106218', '💗Suki🌹', '', '13922106218', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-04 20:30:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922106218' LIMIT 1);
UPDATE users SET nick_name='💗Suki🌹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922106218';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711036096', 'U13711036096', '何生', '', '13711036096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-04 20:05:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711036096' LIMIT 1);
UPDATE users SET nick_name='何生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711036096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694272294', 'U13694272294', '13694272294', '', '13694272294', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-04 18:54:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694272294' LIMIT 1);
UPDATE users SET nick_name='13694272294', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13694272294';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13286816475', 'U13286816475', '🍅打匀滴🍇', '', '13286816475', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-04 16:43:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13286816475' LIMIT 1);
UPDATE users SET nick_name='🍅打匀滴🍇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13286816475';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928812426', 'U13928812426', '罗山', '', '13928812426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-04 14:53:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928812426' LIMIT 1);
UPDATE users SET nick_name='罗山', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928812426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926016282', 'U13926016282', 'Aroma🥕', '', '13926016282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-04 13:44:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926016282' LIMIT 1);
UPDATE users SET nick_name='Aroma🥕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926016282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989042742', 'U15989042742', 'a', '', '15989042742', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-04 10:20:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989042742' LIMIT 1);
UPDATE users SET nick_name='a', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989042742';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430218161', 'U13430218161', 'CY_Candy', '', '13430218161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-04 10:04:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430218161' LIMIT 1);
UPDATE users SET nick_name='CY_Candy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430218161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527631227', 'U13527631227', '13527631227', '', '13527631227', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-03 20:52:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527631227' LIMIT 1);
UPDATE users SET nick_name='13527631227', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527631227';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565208999', 'U18565208999', '18565208999', '', '18565208999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-03 17:10:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565208999' LIMIT 1);
UPDATE users SET nick_name='18565208999', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565208999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18024056777', 'U18024056777', 'Jack', '', '18024056777', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-03 16:51:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18024056777' LIMIT 1);
UPDATE users SET nick_name='Jack', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18024056777';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922265385', 'U13922265385', '蔡卫平', '', '13922265385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-03 15:24:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922265385' LIMIT 1);
UPDATE users SET nick_name='蔡卫平', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922265385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18322970058', 'U18322970058', '18322970058', '', '18322970058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-03 14:42:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18322970058' LIMIT 1);
UPDATE users SET nick_name='18322970058', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18322970058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520708065', 'U18520708065', 'Kelvin', '', '18520708065', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-03 14:28:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520708065' LIMIT 1);
UPDATE users SET nick_name='Kelvin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520708065';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143388367', 'U13143388367', '13143388367', '', '13143388367', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-03 13:50:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143388367' LIMIT 1);
UPDATE users SET nick_name='13143388367', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143388367';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13800161298', 'U13800161298', '13800161298', '', '13800161298', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-02 19:16:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13800161298' LIMIT 1);
UPDATE users SET nick_name='13800161298', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13800161298';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570002470', 'U13570002470', '13570002470', '', '13570002470', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-02 18:38:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570002470' LIMIT 1);
UPDATE users SET nick_name='13570002470', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570002470';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660008970', 'U13660008970', '🌸蓝生 Lisa', '', '13660008970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-02 18:24:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660008970' LIMIT 1);
UPDATE users SET nick_name='🌸蓝生 Lisa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660008970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544488643', 'U13544488643', '13544488643', '', '13544488643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-02 17:12:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544488643' LIMIT 1);
UPDATE users SET nick_name='13544488643', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544488643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13196540604', 'U13196540604', '船', '', '13196540604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-02 17:07:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13196540604' LIMIT 1);
UPDATE users SET nick_name='船', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13196540604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026185309', 'U18026185309', '18026185309', '', '18026185309', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-02 14:45:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026185309' LIMIT 1);
UPDATE users SET nick_name='18026185309', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026185309';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13411974751', 'U13411974751', '糖水鱼', '', '13411974751', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-02 14:17:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13411974751' LIMIT 1);
UPDATE users SET nick_name='糖水鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13411974751';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434277665', 'U13434277665', '13434277665', '', '13434277665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-02 13:25:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434277665' LIMIT 1);
UPDATE users SET nick_name='13434277665', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13434277665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19509808904', 'U19509808904', '19509808904', '', '19509808904', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-02 11:41:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19509808904' LIMIT 1);
UPDATE users SET nick_name='19509808904', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19509808904';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13686968960', 'U13686968960', '梁小文', '', '13686968960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-02 02:06:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13686968960' LIMIT 1);
UPDATE users SET nick_name='梁小文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13686968960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18611797766', 'U18611797766', '隔壁王教兽', '', '18611797766', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-01 23:53:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18611797766' LIMIT 1);
UPDATE users SET nick_name='隔壁王教兽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18611797766';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15727781968', 'U15727781968', '李', '', '15727781968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-01 22:22:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15727781968' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15727781968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017599019', 'U15017599019', '油桃🍑', '', '15017599019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-01 22:18:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017599019' LIMIT 1);
UPDATE users SET nick_name='油桃🍑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017599019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15703207632', 'U15703207632', '于h', '', '15703207632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2026-05-01 20:15:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15703207632' LIMIT 1);
UPDATE users SET nick_name='于h', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='15703207632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288650058', 'U13288650058', 'liuguigui', '', '13288650058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-01 17:06:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288650058' LIMIT 1);
UPDATE users SET nick_name='liuguigui', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288650058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19303011006', 'U19303011006', '19303011006', '', '19303011006', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-01 16:57:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19303011006' LIMIT 1);
UPDATE users SET nick_name='19303011006', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19303011006';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662310030', 'U13662310030', '13662310030', '', '13662310030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-01 16:44:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662310030' LIMIT 1);
UPDATE users SET nick_name='13662310030', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662310030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660883790', 'U13660883790', '13660883790', '', '13660883790', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-05-01 15:10:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660883790' LIMIT 1);
UPDATE users SET nick_name='13660883790', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660883790';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15766592612', 'U15766592612', '15766592612', '', '15766592612', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-30 15:39:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15766592612' LIMIT 1);
UPDATE users SET nick_name='15766592612', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15766592612';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19195565831', 'U19195565831', 'zzf', '', '19195565831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-30 13:06:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19195565831' LIMIT 1);
UPDATE users SET nick_name='zzf', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19195565831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622744872', 'U13622744872', '13622744872', '', '13622744872', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-30 12:57:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622744872' LIMIT 1);
UPDATE users SET nick_name='13622744872', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622744872';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580701707', 'U13580701707', '网球王子', '', '13580701707', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-30 12:06:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580701707' LIMIT 1);
UPDATE users SET nick_name='网球王子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580701707';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026398246', 'U18026398246', '18026398246', '', '18026398246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-29 20:29:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026398246' LIMIT 1);
UPDATE users SET nick_name='18026398246', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026398246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826224940', 'U13826224940', '陈生', '', '13826224940', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-29 15:59:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826224940' LIMIT 1);
UPDATE users SET nick_name='陈生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826224940';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814144203', 'U18814144203', '18814144203', '', '18814144203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-29 13:00:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814144203' LIMIT 1);
UPDATE users SET nick_name='18814144203', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814144203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824433543', 'U13824433543', '💗Cathy 💓', '', '13824433543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-29 10:10:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824433543' LIMIT 1);
UPDATE users SET nick_name='💗Cathy 💓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824433543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625900056', 'U15625900056', '网球王子克拉克森', '', '15625900056', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-28 19:48:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625900056' LIMIT 1);
UPDATE users SET nick_name='网球王子克拉克森', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625900056';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560302177', 'U13560302177', '13560302177', '', '13560302177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-28 19:20:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560302177' LIMIT 1);
UPDATE users SET nick_name='13560302177', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560302177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19864761108', 'U19864761108', '19864761108', '', '19864761108', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-28 18:22:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19864761108' LIMIT 1);
UPDATE users SET nick_name='19864761108', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19864761108';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602597253', 'U13602597253', '骑士年代', '', '13602597253', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-28 13:06:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602597253' LIMIT 1);
UPDATE users SET nick_name='骑士年代', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602597253';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928815049', 'U18928815049', '18928815049', '', '18928815049', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-28 13:05:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928815049' LIMIT 1);
UPDATE users SET nick_name='18928815049', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928815049';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922131199', 'U13922131199', 'a❤微微宜笑 ❤', '', '13922131199', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2026-04-27 20:34:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922131199' LIMIT 1);
UPDATE users SET nick_name='a❤微微宜笑 ❤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13922131199';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588749292', 'U18588749292', '18588749292', '', '18588749292', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-27 20:28:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588749292' LIMIT 1);
UPDATE users SET nick_name='18588749292', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588749292';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18923003297', 'U18923003297', '18923003297', '', '18923003297', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-27 17:58:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18923003297' LIMIT 1);
UPDATE users SET nick_name='18923003297', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18923003297';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719295373', 'U13719295373', '健⸝ဗီူ⸜', '', '13719295373', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-27 17:46:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719295373' LIMIT 1);
UPDATE users SET nick_name='健⸝ဗီူ⸜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719295373';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902410401', 'U18902410401', '橙子', '', '18902410401', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-27 17:36:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902410401' LIMIT 1);
UPDATE users SET nick_name='橙子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18902410401';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13066317190', 'U13066317190', 'JT Cao', '', '13066317190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-27 16:44:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13066317190' LIMIT 1);
UPDATE users SET nick_name='JT Cao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13066317190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13073093473', 'U13073093473', 'Vincent_杰', '', '13073093473', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-27 15:46:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13073093473' LIMIT 1);
UPDATE users SET nick_name='Vincent_杰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13073093473';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929155858', 'U13929155858', '13929155858', '', '13929155858', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-27 14:42:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929155858' LIMIT 1);
UPDATE users SET nick_name='13929155858', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929155858';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15976677277', 'U15976677277', '幽色淡香', '', '15976677277', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-27 11:30:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15976677277' LIMIT 1);
UPDATE users SET nick_name='幽色淡香', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15976677277';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18605876518', 'U18605876518', '18605876518', '', '18605876518', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-26 17:32:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18605876518' LIMIT 1);
UPDATE users SET nick_name='18605876518', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18605876518';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632315087', 'U13632315087', '13632315087', '', '13632315087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-26 16:24:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632315087' LIMIT 1);
UPDATE users SET nick_name='13632315087', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632315087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533511288', 'U13533511288', 's', '', '13533511288', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-26 16:12:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533511288' LIMIT 1);
UPDATE users SET nick_name='s', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533511288';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13566228966', 'U13566228966', '13566228966', '', '13566228966', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-26 14:33:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13566228966' LIMIT 1);
UPDATE users SET nick_name='13566228966', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13566228966';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918817117', 'U15918817117', '15918817117', '', '15918817117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-26 14:26:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918817117' LIMIT 1);
UPDATE users SET nick_name='15918817117', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918817117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609744005', 'U13609744005', 'ᴋᴛ🥦', '', '13609744005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-25 21:26:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609744005' LIMIT 1);
UPDATE users SET nick_name='ᴋᴛ🥦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609744005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622739273', 'U15622739273', '15622739273', '', '15622739273', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-25 18:13:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622739273' LIMIT 1);
UPDATE users SET nick_name='15622739273', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622739273';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17765635797', 'U17765635797', '.', '', '17765635797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-25 15:06:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17765635797' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17765635797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578601005', 'U18578601005', '18578601005', '', '18578601005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-25 11:01:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578601005' LIMIT 1);
UPDATE users SET nick_name='18578601005', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578601005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13336937128', 'U13336937128', '随性从心', '', '13336937128', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-25 10:54:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13336937128' LIMIT 1);
UPDATE users SET nick_name='随性从心', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13336937128';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15112124294', 'U15112124294', 'zhang', '', '15112124294', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-24 20:42:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15112124294' LIMIT 1);
UPDATE users SET nick_name='zhang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15112124294';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620060938', 'U17620060938', 'momo', '', '17620060938', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-24 19:53:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620060938' LIMIT 1);
UPDATE users SET nick_name='momo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620060938';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13972393420', 'U13972393420', '💕', '', '13972393420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-24 15:30:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13972393420' LIMIT 1);
UPDATE users SET nick_name='💕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13972393420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15112129398', 'U15112129398', 'ftt', '', '15112129398', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-24 15:02:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15112129398' LIMIT 1);
UPDATE users SET nick_name='ftt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15112129398';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726640275', 'U13726640275', '13726640275', '', '13726640275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-24 14:18:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726640275' LIMIT 1);
UPDATE users SET nick_name='13726640275', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726640275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122002812', 'U18122002812', '好运来', '', '18122002812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-24 13:43:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122002812' LIMIT 1);
UPDATE users SET nick_name='好运来', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122002812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18522133309', 'U18522133309', '2397 1999 73', '', '18522133309', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-24 13:31:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18522133309' LIMIT 1);
UPDATE users SET nick_name='2397 1999 73', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18522133309';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13336486774', 'U13336486774', '13336486774', '', '13336486774', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-24 13:12:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13336486774' LIMIT 1);
UPDATE users SET nick_name='13336486774', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13336486774';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19327590709', 'U19327590709', '糖糖爱打球', '', '19327590709', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-24 13:08:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19327590709' LIMIT 1);
UPDATE users SET nick_name='糖糖爱打球', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19327590709';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725245043', 'U13725245043', '13725245043', '', '13725245043', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-23 17:27:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725245043' LIMIT 1);
UPDATE users SET nick_name='13725245043', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725245043';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622281102', 'U13622281102', '晴儿', '', '13622281102', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-23 16:04:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622281102' LIMIT 1);
UPDATE users SET nick_name='晴儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622281102';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826013147', 'U13826013147', 'kk', '', '13826013147', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-23 15:04:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826013147' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826013147';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826285180', 'U13826285180', '蔓延', '', '13826285180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-23 15:03:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826285180' LIMIT 1);
UPDATE users SET nick_name='蔓延', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826285180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265517643', 'U13265517643', 'JT CAO', '', '13265517643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-23 14:49:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265517643' LIMIT 1);
UPDATE users SET nick_name='JT CAO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265517643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15190829127', 'U15190829127', '15190829127', '', '15190829127', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-23 14:28:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15190829127' LIMIT 1);
UPDATE users SET nick_name='15190829127', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15190829127';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18661810391', 'U18661810391', '18661810391', '', '18661810391', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-23 13:22:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18661810391' LIMIT 1);
UPDATE users SET nick_name='18661810391', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18661810391';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15398190900', 'U15398190900', '别两难', '', '15398190900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-23 12:15:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15398190900' LIMIT 1);
UPDATE users SET nick_name='别两难', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15398190900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011760162', 'U18011760162', 'Anisa', '', '18011760162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-22 21:30:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011760162' LIMIT 1);
UPDATE users SET nick_name='Anisa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011760162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763352325', 'U13763352325', '小虎', '', '13763352325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-22 20:57:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763352325' LIMIT 1);
UPDATE users SET nick_name='小虎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763352325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422034865', 'U13422034865', '13422034865', '', '13422034865', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-22 16:36:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422034865' LIMIT 1);
UPDATE users SET nick_name='13422034865', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422034865';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13903011043', 'U13903011043', '魚飯兒', '', '13903011043', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-22 10:08:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13903011043' LIMIT 1);
UPDATE users SET nick_name='魚飯兒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13903011043';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602324076', 'U15602324076', '🚗💨', '', '15602324076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-21 15:40:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602324076' LIMIT 1);
UPDATE users SET nick_name='🚗💨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602324076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660781262', 'U13660781262', 'ki_', '', '13660781262', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-21 13:56:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660781262' LIMIT 1);
UPDATE users SET nick_name='ki_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660781262';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660496094', 'U13660496094', 'is_🍪', '', '13660496094', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-21 13:34:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660496094' LIMIT 1);
UPDATE users SET nick_name='is_🍪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660496094';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666019819', 'U18666019819', 'Bobby', '', '18666019819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-21 13:03:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666019819' LIMIT 1);
UPDATE users SET nick_name='Bobby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666019819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989074154', 'U15989074154', '🐈Lia-P🇮🇹', '', '15989074154', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-20 19:53:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989074154' LIMIT 1);
UPDATE users SET nick_name='🐈Lia-P🇮🇹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989074154';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13552323647', 'U13552323647', '🍏', '', '13552323647', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-20 17:59:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13552323647' LIMIT 1);
UPDATE users SET nick_name='🍏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13552323647';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19731614601', 'U19731614601', 'magnol-ian', '', '19731614601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-20 16:27:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19731614601' LIMIT 1);
UPDATE users SET nick_name='magnol-ian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19731614601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13676088640', 'U13676088640', '13676088640', '', '13676088640', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-20 14:12:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13676088640' LIMIT 1);
UPDATE users SET nick_name='13676088640', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13676088640';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15833049326', 'U15833049326', '15833049326', '', '15833049326', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-19 17:06:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15833049326' LIMIT 1);
UPDATE users SET nick_name='15833049326', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15833049326';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15320321657', 'U15320321657', '喜洋洋', '', '15320321657', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-19 17:04:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15320321657' LIMIT 1);
UPDATE users SET nick_name='喜洋洋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15320321657';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15830404086', 'U15830404086', 'TSDDC', '', '15830404086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-19 17:03:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15830404086' LIMIT 1);
UPDATE users SET nick_name='TSDDC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15830404086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13809214089', 'U13809214089', '南江行歌', '', '13809214089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-19 16:17:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13809214089' LIMIT 1);
UPDATE users SET nick_name='南江行歌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13809214089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660343403', 'U13660343403', '得闲饮芝士奶茶', '', '13660343403', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-19 16:02:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660343403' LIMIT 1);
UPDATE users SET nick_name='得闲饮芝士奶茶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660343403';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18070129961', 'U18070129961', 'Julius', '', '18070129961', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-19 15:49:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18070129961' LIMIT 1);
UPDATE users SET nick_name='Julius', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18070129961';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825111718', 'U18825111718', '18825111718', '', '18825111718', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-19 15:36:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825111718' LIMIT 1);
UPDATE users SET nick_name='18825111718', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825111718';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15604409896', 'U15604409896', 'leah', '', '15604409896', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-19 14:58:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15604409896' LIMIT 1);
UPDATE users SET nick_name='leah', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15604409896';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480248034', 'U13480248034', '13480248034', '', '13480248034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-19 14:05:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480248034' LIMIT 1);
UPDATE users SET nick_name='13480248034', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480248034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13336459550', 'U13336459550', 'Treasure', '', '13336459550', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-19 10:37:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13336459550' LIMIT 1);
UPDATE users SET nick_name='Treasure', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13336459550';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529125060', 'U18529125060', '18529125060', '', '18529125060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-18 20:35:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529125060' LIMIT 1);
UPDATE users SET nick_name='18529125060', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529125060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580533784', 'U13580533784', '13580533784', '', '13580533784', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-18 18:29:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580533784' LIMIT 1);
UPDATE users SET nick_name='13580533784', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580533784';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17301484624', 'U17301484624', '爱吃肉的小何', '', '17301484624', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-18 17:38:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17301484624' LIMIT 1);
UPDATE users SET nick_name='爱吃肉的小何', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17301484624';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17651048937', 'U17651048937', '11', '', '17651048937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-18 16:59:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17651048937' LIMIT 1);
UPDATE users SET nick_name='11', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17651048937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660828011', 'U13660828011', 'Walnut Tree', '', '13660828011', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-18 16:20:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660828011' LIMIT 1);
UPDATE users SET nick_name='Walnut Tree', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660828011';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922184621', 'U13922184621', 'sugar', '', '13922184621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-18 14:52:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922184621' LIMIT 1);
UPDATE users SET nick_name='sugar', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922184621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520189031', 'U18520189031', 'Jane', '', '18520189031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-18 13:57:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520189031' LIMIT 1);
UPDATE users SET nick_name='Jane', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520189031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662425192', 'U13662425192', '13662425192', '', '13662425192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-18 13:46:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662425192' LIMIT 1);
UPDATE users SET nick_name='13662425192', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662425192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18811616896', 'U18811616896', '春归时', '', '18811616896', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-18 13:03:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18811616896' LIMIT 1);
UPDATE users SET nick_name='春归时', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18811616896';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13643465608', 'U13643465608', 'Kop', '', '13643465608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-18 12:44:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13643465608' LIMIT 1);
UPDATE users SET nick_name='Kop', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13643465608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622148064', 'U15622148064', '兴龙_Leo 15622148064', '', '15622148064', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-17 22:27:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622148064' LIMIT 1);
UPDATE users SET nick_name='兴龙_Leo 15622148064', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622148064';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918769324', 'U15918769324', '15918769324', '', '15918769324', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-17 20:15:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918769324' LIMIT 1);
UPDATE users SET nick_name='15918769324', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918769324';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13172034899', 'U13172034899', '玖', '', '13172034899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-17 19:11:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13172034899' LIMIT 1);
UPDATE users SET nick_name='玖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13172034899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15091197947', 'U15091197947', '15091197947', '', '15091197947', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-17 18:20:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15091197947' LIMIT 1);
UPDATE users SET nick_name='15091197947', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15091197947';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13516597038', 'U13516597038', '13516597038', '', '13516597038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-17 18:05:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13516597038' LIMIT 1);
UPDATE users SET nick_name='13516597038', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13516597038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229919630', 'U13229919630', '13229919630', '', '13229919630', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-17 15:13:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229919630' LIMIT 1);
UPDATE users SET nick_name='13229919630', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229919630';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312448104', 'U18312448104', '曾子', '', '18312448104', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-17 12:12:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312448104' LIMIT 1);
UPDATE users SET nick_name='曾子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312448104';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013980696', 'U15013980696', 'W', '', '15013980696', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2026-04-17 09:51:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013980696' LIMIT 1);
UPDATE users SET nick_name='W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='15013980696';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15388629528', 'U15388629528', 'FAN.', '', '15388629528', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-17 09:11:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15388629528' LIMIT 1);
UPDATE users SET nick_name='FAN.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15388629528';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697510980', 'U13697510980', '游戏不爱玩游戏', '', '13697510980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-16 21:54:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697510980' LIMIT 1);
UPDATE users SET nick_name='游戏不爱玩游戏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697510980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18319086089', 'U18319086089', '凌小迪', '', '18319086089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-04-16 19:50:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18319086089' LIMIT 1);
UPDATE users SET nick_name='凌小迪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18319086089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602298500', 'U13602298500', '科比', '', '13602298500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-16 15:03:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602298500' LIMIT 1);
UPDATE users SET nick_name='科比', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602298500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18067405555', 'U18067405555', '18067405555', '', '18067405555', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-16 13:57:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18067405555' LIMIT 1);
UPDATE users SET nick_name='18067405555', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18067405555';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918769823', 'U15918769823', '15918769823', '', '15918769823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-16 13:13:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918769823' LIMIT 1);
UPDATE users SET nick_name='15918769823', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918769823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819165127', 'U18819165127', '18819165127', '', '18819165127', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-16 12:42:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819165127' LIMIT 1);
UPDATE users SET nick_name='18819165127', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819165127';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15513655133', 'U15513655133', 'Kop', '', '15513655133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-16 00:53:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15513655133' LIMIT 1);
UPDATE users SET nick_name='Kop', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15513655133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640316666', 'U13640316666', '13640316666', '', '13640316666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-15 17:28:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640316666' LIMIT 1);
UPDATE users SET nick_name='13640316666', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640316666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13049161309', 'U13049161309', '刘', '', '13049161309', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-15 13:13:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13049161309' LIMIT 1);
UPDATE users SET nick_name='刘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13049161309';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560399609', 'U13560399609', 'tulip', '', '13560399609', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-15 12:54:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560399609' LIMIT 1);
UPDATE users SET nick_name='tulip', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560399609';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17702698894', 'U17702698894', '善文', '', '17702698894', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-14 19:57:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17702698894' LIMIT 1);
UPDATE users SET nick_name='善文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17702698894';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13021931011', 'U13021931011', '13021931011', '', '13021931011', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-14 18:04:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13021931011' LIMIT 1);
UPDATE users SET nick_name='13021931011', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13021931011';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18858112354', 'U18858112354', '18858112354', '', '18858112354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-14 17:13:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18858112354' LIMIT 1);
UPDATE users SET nick_name='18858112354', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18858112354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18967008799', 'U18967008799', '🍊', '', '18967008799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-14 17:07:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18967008799' LIMIT 1);
UPDATE users SET nick_name='🍊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18967008799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622298832', 'U13622298832', '13622298832', '', '13622298832', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-14 16:59:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622298832' LIMIT 1);
UPDATE users SET nick_name='13622298832', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622298832';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422965820', 'U13422965820', '13422965820', '', '13422965820', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-14 16:55:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422965820' LIMIT 1);
UPDATE users SET nick_name='13422965820', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422965820';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711634072', 'U13711634072', '马克', '', '13711634072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-14 15:40:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711634072' LIMIT 1);
UPDATE users SET nick_name='马克', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711634072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15938003932', 'U15938003932', 'jjx', '', '15938003932', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-14 14:13:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15938003932' LIMIT 1);
UPDATE users SET nick_name='jjx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15938003932';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13192521067', 'U13192521067', '13192521067', '', '13192521067', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-14 14:09:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13192521067' LIMIT 1);
UPDATE users SET nick_name='13192521067', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13192521067';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609048885', 'U13609048885', '13609048885', '', '13609048885', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-14 12:51:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609048885' LIMIT 1);
UPDATE users SET nick_name='13609048885', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609048885';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19876628797', 'U19876628797', 'Linn', '', '19876628797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-14 12:38:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19876628797' LIMIT 1);
UPDATE users SET nick_name='Linn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19876628797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680474982', 'U18680474982', '18680474982', '', '18680474982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-13 21:38:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680474982' LIMIT 1);
UPDATE users SET nick_name='18680474982', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680474982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760820066', 'U13760820066', '13760820066', '', '13760820066', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-13 19:35:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760820066' LIMIT 1);
UPDATE users SET nick_name='13760820066', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760820066';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820298168', 'U15820298168', 'Prodigy', '', '15820298168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-13 17:21:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820298168' LIMIT 1);
UPDATE users SET nick_name='Prodigy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820298168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18774057116', 'U18774057116', '18774057116', '', '18774057116', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-13 17:10:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18774057116' LIMIT 1);
UPDATE users SET nick_name='18774057116', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18774057116';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15678905956', 'U15678905956', '玉米🌽', '', '15678905956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-13 14:24:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15678905956' LIMIT 1);
UPDATE users SET nick_name='玉米🌽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15678905956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915929280', 'U15915929280', 'JvK.', '', '15915929280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-13 13:00:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915929280' LIMIT 1);
UPDATE users SET nick_name='JvK.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915929280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660716476', 'U13660716476', '🐾小瀠瀠🍃', '', '13660716476', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-13 13:00:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660716476' LIMIT 1);
UPDATE users SET nick_name='🐾小瀠瀠🍃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660716476';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18673691551', 'U18673691551', '能不能过', '', '18673691551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-12 16:47:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18673691551' LIMIT 1);
UPDATE users SET nick_name='能不能过', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18673691551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19521174025', 'U19521174025', 'Winnie', '', '19521174025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-12 15:04:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19521174025' LIMIT 1);
UPDATE users SET nick_name='Winnie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19521174025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813002982', 'U18813002982', '雪晨🌰', '', '18813002982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-12 12:23:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813002982' LIMIT 1);
UPDATE users SET nick_name='雪晨🌰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18813002982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13668986825', 'U13668986825', 'Gavin', '', '13668986825', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-12 11:40:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13668986825' LIMIT 1);
UPDATE users SET nick_name='Gavin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13668986825';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13728744763', 'U13728744763', '13728744763', '', '13728744763', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-12 10:28:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13728744763' LIMIT 1);
UPDATE users SET nick_name='13728744763', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13728744763';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15845303657', 'U15845303657', '饭盒', '', '15845303657', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-11 19:43:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15845303657' LIMIT 1);
UPDATE users SET nick_name='饭盒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15845303657';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876380569', 'U17876380569', '17876380569', '', '17876380569', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-11 18:29:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876380569' LIMIT 1);
UPDATE users SET nick_name='17876380569', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876380569';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751890796', 'U13751890796', '小爆炸', '', '13751890796', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-11 17:45:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751890796' LIMIT 1);
UPDATE users SET nick_name='小爆炸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751890796';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697499760', 'U13697499760', 'w°', '', '13697499760', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-11 15:39:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697499760' LIMIT 1);
UPDATE users SET nick_name='w°', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697499760';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751845099', 'U13751845099', '13751845099', '', '13751845099', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-11 15:38:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751845099' LIMIT 1);
UPDATE users SET nick_name='13751845099', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751845099';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19147935397', 'U19147935397', '19147935397', '', '19147935397', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-11 15:13:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19147935397' LIMIT 1);
UPDATE users SET nick_name='19147935397', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19147935397';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322046156', 'U17322046156', '17322046156', '', '17322046156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-11 15:05:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322046156' LIMIT 1);
UPDATE users SET nick_name='17322046156', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322046156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760782186', 'U13760782186', 'sa', '', '13760782186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-11 15:01:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760782186' LIMIT 1);
UPDATE users SET nick_name='sa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760782186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022306461', 'U18022306461', '郭仔', '', '18022306461', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-11 12:02:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022306461' LIMIT 1);
UPDATE users SET nick_name='郭仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022306461';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127874387', 'U18127874387', '18127874387', '', '18127874387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-11 10:20:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127874387' LIMIT 1);
UPDATE users SET nick_name='18127874387', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127874387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999798190', 'U15999798190', 'a', '', '15999798190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-10 20:27:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999798190' LIMIT 1);
UPDATE users SET nick_name='a', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999798190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928766635', 'U18928766635', '18928766635', '', '18928766635', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-10 15:54:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928766635' LIMIT 1);
UPDATE users SET nick_name='18928766635', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928766635';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500013592', 'U13500013592', '13500013592', '', '13500013592', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-10 14:56:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500013592' LIMIT 1);
UPDATE users SET nick_name='13500013592', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500013592';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800022703', 'U15800022703', 'Cherrie Lam', '', '15800022703', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-10 13:27:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800022703' LIMIT 1);
UPDATE users SET nick_name='Cherrie Lam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800022703';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826222106', 'U18826222106', '小霍霍吖〰', '', '18826222106', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-09 22:36:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826222106' LIMIT 1);
UPDATE users SET nick_name='小霍霍吖〰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826222106';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18138748911', 'U18138748911', '好运连连', '', '18138748911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-09 20:35:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18138748911' LIMIT 1);
UPDATE users SET nick_name='好运连连', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18138748911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876534191', 'U15876534191', '小池', '', '15876534191', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-09 20:25:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876534191' LIMIT 1);
UPDATE users SET nick_name='小池', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876534191';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19524398883', 'U19524398883', 'Annalisa.', '', '19524398883', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-09 15:55:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19524398883' LIMIT 1);
UPDATE users SET nick_name='Annalisa.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19524398883';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688901522', 'U18688901522', '欢欢', '', '18688901522', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-08 20:08:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688901522' LIMIT 1);
UPDATE users SET nick_name='欢欢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688901522';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18487226525', 'U18487226525', '陆', '', '18487226525', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-08 18:55:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18487226525' LIMIT 1);
UPDATE users SET nick_name='陆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18487226525';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819251749', 'U18819251749', 'Abner', '', '18819251749', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-08 18:04:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819251749' LIMIT 1);
UPDATE users SET nick_name='Abner', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819251749';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18927683830', 'U18927683830', 'Léa', '', '18927683830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-08 17:32:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18927683830' LIMIT 1);
UPDATE users SET nick_name='Léa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18927683830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18701129662', 'U18701129662', '濯缨', '', '18701129662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-08 12:04:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18701129662' LIMIT 1);
UPDATE users SET nick_name='濯缨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18701129662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902203706', 'U13902203706', '13902203706', '', '13902203706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-07 17:40:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902203706' LIMIT 1);
UPDATE users SET nick_name='13902203706', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902203706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18719149806', 'U18719149806', '18719149806', '', '18719149806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-07 13:26:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18719149806' LIMIT 1);
UPDATE users SET nick_name='18719149806', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18719149806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19925752953', 'U19925752953', '滚烫星河', '', '19925752953', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-07 12:36:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19925752953' LIMIT 1);
UPDATE users SET nick_name='滚烫星河', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19925752953';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626236265', 'U15626236265', '15626236265', '', '15626236265', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-06 19:31:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626236265' LIMIT 1);
UPDATE users SET nick_name='15626236265', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626236265';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13827130001', 'U13827130001', 'JR', '', '13827130001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-06 15:51:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13827130001' LIMIT 1);
UPDATE users SET nick_name='JR', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13827130001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665077599', 'U18665077599', '18665077599', '', '18665077599', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-06 15:40:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665077599' LIMIT 1);
UPDATE users SET nick_name='18665077599', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665077599';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622753311', 'U13622753311', 'Edward', '', '13622753311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-06 15:19:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622753311' LIMIT 1);
UPDATE users SET nick_name='Edward', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622753311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13163123550', 'U13163123550', 'Hoxi', '', '13163123550', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-06 13:27:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13163123550' LIMIT 1);
UPDATE users SET nick_name='Hoxi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13163123550';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127814259', 'U18127814259', '18127814259', '', '18127814259', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-06 13:24:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127814259' LIMIT 1);
UPDATE users SET nick_name='18127814259', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127814259';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819464069', 'U18819464069', '18819464069', '', '18819464069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-06 13:00:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819464069' LIMIT 1);
UPDATE users SET nick_name='18819464069', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819464069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602303090', 'U15602303090', 'linnoc', '', '15602303090', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-06 12:46:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602303090' LIMIT 1);
UPDATE users SET nick_name='linnoc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602303090';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609000321', 'U13609000321', 'JUDY 朱迪', '', '13609000321', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 869, '2026-04-06 11:03:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609000321' LIMIT 1);
UPDATE users SET nick_name='JUDY 朱迪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 869) WHERE phone='13609000321';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15707974301', 'U15707974301', '饼干', '', '15707974301', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-06 10:04:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15707974301' LIMIT 1);
UPDATE users SET nick_name='饼干', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15707974301';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802529997', 'U13802529997', '12', '', '13802529997', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 21:09:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802529997' LIMIT 1);
UPDATE users SET nick_name='12', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802529997';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610186787', 'U13610186787', '13610186787', '', '13610186787', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 20:30:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610186787' LIMIT 1);
UPDATE users SET nick_name='13610186787', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610186787';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822232205', 'U13822232205', '13822232205', '', '13822232205', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 20:14:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822232205' LIMIT 1);
UPDATE users SET nick_name='13822232205', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822232205';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19925689528', 'U19925689528', '19925689528', '', '19925689528', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 18:18:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19925689528' LIMIT 1);
UPDATE users SET nick_name='19925689528', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19925689528';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726621500', 'U13726621500', 'D', '', '13726621500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 18:13:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726621500' LIMIT 1);
UPDATE users SET nick_name='D', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726621500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15816333981', 'U15816333981', '15816333981', '', '15816333981', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 17:30:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15816333981' LIMIT 1);
UPDATE users SET nick_name='15816333981', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15816333981';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15220501975', 'U15220501975', '123', '', '15220501975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-04-05 15:43:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15220501975' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15220501975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625134223', 'U15625134223', 'Didi', '', '15625134223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 13:34:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625134223' LIMIT 1);
UPDATE users SET nick_name='Didi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625134223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13144400551', 'U13144400551', '李雪锋', '', '13144400551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 12:58:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13144400551' LIMIT 1);
UPDATE users SET nick_name='李雪锋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13144400551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826278871', 'U18826278871', '18826278871', '', '18826278871', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 10:40:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826278871' LIMIT 1);
UPDATE users SET nick_name='18826278871', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826278871';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13950014819', 'U13950014819', 'Ceer', '', '13950014819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 10:32:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13950014819' LIMIT 1);
UPDATE users SET nick_name='Ceer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13950014819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620943434', 'U18620943434', '18620943434', '', '18620943434', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 10:09:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620943434' LIMIT 1);
UPDATE users SET nick_name='18620943434', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620943434';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113429756', 'U15113429756', '15113429756', '', '15113429756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-05 10:07:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113429756' LIMIT 1);
UPDATE users SET nick_name='15113429756', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113429756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521059834', 'U15521059834', '15521059834', '', '15521059834', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-04 21:35:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521059834' LIMIT 1);
UPDATE users SET nick_name='15521059834', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521059834';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802517595', 'U13802517595', 'BAISHENG', '', '13802517595', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-04 20:25:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802517595' LIMIT 1);
UPDATE users SET nick_name='BAISHENG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802517595';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17855787899', 'U17855787899', 'Sure', '', '17855787899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-04 19:02:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17855787899' LIMIT 1);
UPDATE users SET nick_name='Sure', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17855787899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430222249', 'U13430222249', '13430222249', '', '13430222249', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-04 16:34:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430222249' LIMIT 1);
UPDATE users SET nick_name='13430222249', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430222249';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322069001', 'U15322069001', '15322069001', '', '15322069001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-04 15:14:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322069001' LIMIT 1);
UPDATE users SET nick_name='15322069001', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15322069001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719237983', 'U13719237983', 'yyy', '', '13719237983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-04 14:59:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719237983' LIMIT 1);
UPDATE users SET nick_name='yyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719237983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13005134828', 'U13005134828', '13005134828', '', '13005134828', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-04 12:54:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13005134828' LIMIT 1);
UPDATE users SET nick_name='13005134828', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13005134828';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711146276', 'U13711146276', '芒果雪糕', '', '13711146276', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-04 10:02:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711146276' LIMIT 1);
UPDATE users SET nick_name='芒果雪糕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711146276';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920981124', 'U15920981124', 'Y', '', '15920981124', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-03 22:13:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920981124' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920981124';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17688688314', 'U17688688314', '白日梦想家', '', '17688688314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-03 17:20:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17688688314' LIMIT 1);
UPDATE users SET nick_name='白日梦想家', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17688688314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521065423', 'U15521065423', '😃Sunday😆', '', '15521065423', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-03 13:16:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521065423' LIMIT 1);
UPDATE users SET nick_name='😃Sunday😆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521065423';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925001665', 'U18925001665', '飞上云宵', '', '18925001665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-03 13:03:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925001665' LIMIT 1);
UPDATE users SET nick_name='飞上云宵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925001665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13022052635', 'U13022052635', 'Lin', '', '13022052635', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2026-04-03 00:18:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13022052635' LIMIT 1);
UPDATE users SET nick_name='Lin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13022052635';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650974050', 'U13650974050', '公瑾兴', '', '13650974050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-02 21:35:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650974050' LIMIT 1);
UPDATE users SET nick_name='公瑾兴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13650974050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19221693289', 'U19221693289', '小明同学', '', '19221693289', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-02 19:38:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19221693289' LIMIT 1);
UPDATE users SET nick_name='小明同学', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19221693289';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902043003', 'U15902043003', '15902043003', '', '15902043003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-02 16:02:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902043003' LIMIT 1);
UPDATE users SET nick_name='15902043003', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902043003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820229783', 'U15820229783', '陈清镇', '', '15820229783', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-02 15:47:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820229783' LIMIT 1);
UPDATE users SET nick_name='陈清镇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820229783';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217220547', 'U15217220547', '15217220547', '', '15217220547', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-02 13:02:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217220547' LIMIT 1);
UPDATE users SET nick_name='15217220547', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217220547';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825049802', 'U13825049802', '鸽子', '', '13825049802', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-01 21:54:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825049802' LIMIT 1);
UPDATE users SET nick_name='鸽子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825049802';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866269724', 'U19866269724', 'Cope', '', '19866269724', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-01 21:50:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866269724' LIMIT 1);
UPDATE users SET nick_name='Cope', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19866269724';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825049808', 'U13825049808', '13825049808', '', '13825049808', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-01 20:01:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825049808' LIMIT 1);
UPDATE users SET nick_name='13825049808', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825049808';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570094093', 'U13570094093', '阿木🍊', '', '13570094093', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2026-04-01 19:33:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570094093' LIMIT 1);
UPDATE users SET nick_name='阿木🍊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13570094093';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915740641', 'U15915740641', '15915740641', '', '15915740641', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-01 17:38:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915740641' LIMIT 1);
UPDATE users SET nick_name='15915740641', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915740641';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17818223603', 'U17818223603', 'Wendy', '', '17818223603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-01 16:40:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17818223603' LIMIT 1);
UPDATE users SET nick_name='Wendy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17818223603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13178825022', 'U13178825022', 'mkz东', '', '13178825022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-01 14:23:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13178825022' LIMIT 1);
UPDATE users SET nick_name='mkz东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13178825022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19879100070', 'U19879100070', '19879100070', '', '19879100070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-01 13:38:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19879100070' LIMIT 1);
UPDATE users SET nick_name='19879100070', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19879100070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988832123', 'U18988832123', 'O2.', '', '18988832123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-01 13:14:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988832123' LIMIT 1);
UPDATE users SET nick_name='O2.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988832123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798102843', 'U13798102843', '13798102843', '', '13798102843', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-01 13:06:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798102843' LIMIT 1);
UPDATE users SET nick_name='13798102843', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798102843';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580557993', 'U13580557993', '13580557993', '', '13580557993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-04-01 13:05:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580557993' LIMIT 1);
UPDATE users SET nick_name='13580557993', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580557993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922279462', 'U13922279462', '入门级书虫', '', '13922279462', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-31 17:23:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922279462' LIMIT 1);
UPDATE users SET nick_name='入门级书虫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922279462';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13360027131', 'U13360027131', '13360027131', '', '13360027131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-31 16:48:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13360027131' LIMIT 1);
UPDATE users SET nick_name='13360027131', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13360027131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815193340', 'U15815193340', '61', '', '15815193340', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-31 15:36:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815193340' LIMIT 1);
UPDATE users SET nick_name='61', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815193340';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17324927724', 'U17324927724', '17324927724', '', '17324927724', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-31 13:34:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17324927724' LIMIT 1);
UPDATE users SET nick_name='17324927724', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17324927724';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578759714', 'U18578759714', 'Saskiaaa', '', '18578759714', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-31 13:07:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578759714' LIMIT 1);
UPDATE users SET nick_name='Saskiaaa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578759714';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719278659', 'U13719278659', 'XU', '', '13719278659', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-31 10:52:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719278659' LIMIT 1);
UPDATE users SET nick_name='XU', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719278659';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719177354', 'U13719177354', '13719177354', '', '13719177354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-29 20:19:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719177354' LIMIT 1);
UPDATE users SET nick_name='13719177354', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719177354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692015476', 'U15692015476', '15692015476', '', '15692015476', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-29 17:47:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692015476' LIMIT 1);
UPDATE users SET nick_name='15692015476', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692015476';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18611015625', 'U18611015625', '18611015625', '', '18611015625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-29 17:38:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18611015625' LIMIT 1);
UPDATE users SET nick_name='18611015625', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18611015625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13611498388', 'U13611498388', 'john', '', '13611498388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-29 17:36:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13611498388' LIMIT 1);
UPDATE users SET nick_name='john', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13611498388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430386412', 'U13430386412', '容', '', '13430386412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-29 16:56:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430386412' LIMIT 1);
UPDATE users SET nick_name='容', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430386412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802937794', 'U13802937794', '13802937794', '', '13802937794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-29 11:52:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802937794' LIMIT 1);
UPDATE users SET nick_name='13802937794', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802937794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13501521233', 'U13501521233', 'grace', '', '13501521233', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-29 11:35:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13501521233' LIMIT 1);
UPDATE users SET nick_name='grace', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13501521233';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726894269', 'U13726894269', 'leo', '', '13726894269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-29 10:52:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726894269' LIMIT 1);
UPDATE users SET nick_name='leo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726894269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820408068', 'U18820408068', 'im_Rachel', '', '18820408068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-29 10:51:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820408068' LIMIT 1);
UPDATE users SET nick_name='im_Rachel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820408068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19878702189', 'U19878702189', '19878702189', '', '19878702189', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-29 10:27:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19878702189' LIMIT 1);
UPDATE users SET nick_name='19878702189', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19878702189';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18811596266', 'U18811596266', '甯', '', '18811596266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2026-03-29 08:26:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18811596266' LIMIT 1);
UPDATE users SET nick_name='甯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18811596266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18811091817', 'U18811091817', 'qwh', '', '18811091817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2026-03-29 08:08:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18811091817' LIMIT 1);
UPDATE users SET nick_name='qwh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18811091817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503022290', 'U13503022290', '13503022290', '', '13503022290', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 20:47:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503022290' LIMIT 1);
UPDATE users SET nick_name='13503022290', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503022290';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719188354', 'U13719188354', '蕾.', '', '13719188354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 20:42:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719188354' LIMIT 1);
UPDATE users SET nick_name='蕾.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719188354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168854727', 'U13168854727', '喷喷', '', '13168854727', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 20:17:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168854727' LIMIT 1);
UPDATE users SET nick_name='喷喷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13168854727';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15510262376', 'U15510262376', '15510262376', '', '15510262376', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 18:29:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15510262376' LIMIT 1);
UPDATE users SET nick_name='15510262376', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15510262376';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13699722223', 'U13699722223', '🐼熊猫宝🐱', '', '13699722223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 17:53:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13699722223' LIMIT 1);
UPDATE users SET nick_name='🐼熊猫宝🐱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13699722223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560013248', 'U13560013248', '🌱xxxMancy🐷', '', '13560013248', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 17:37:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560013248' LIMIT 1);
UPDATE users SET nick_name='🌱xxxMancy🐷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560013248';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13051853177', 'U13051853177', 'Bellis', '', '13051853177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 16:25:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13051853177' LIMIT 1);
UPDATE users SET nick_name='Bellis', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13051853177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15925315765', 'U15925315765', 'sandwich', '', '15925315765', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 13:04:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15925315765' LIMIT 1);
UPDATE users SET nick_name='sandwich', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15925315765';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521011058', 'U15521011058', '猪仔', '', '15521011058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 12:18:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521011058' LIMIT 1);
UPDATE users SET nick_name='猪仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521011058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925180903', 'U13925180903', '13925180903', '', '13925180903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 11:14:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925180903' LIMIT 1);
UPDATE users SET nick_name='13925180903', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925180903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13699748485', 'U13699748485', '鸽子精咕咕', '', '13699748485', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 10:47:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13699748485' LIMIT 1);
UPDATE users SET nick_name='鸽子精咕咕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13699748485';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915815570', 'U15915815570', 'Jan_L', '', '15915815570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-28 09:47:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915815570' LIMIT 1);
UPDATE users SET nick_name='Jan_L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915815570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128598751', 'U13128598751', '13128598751', '', '13128598751', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 22:12:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128598751' LIMIT 1);
UPDATE users SET nick_name='13128598751', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128598751';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826060909', 'U13826060909', 'firez', '', '13826060909', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 22:09:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826060909' LIMIT 1);
UPDATE users SET nick_name='firez', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826060909';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19700192632', 'U19700192632', '19700192632', '', '19700192632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 21:05:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19700192632' LIMIT 1);
UPDATE users SET nick_name='19700192632', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19700192632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17288618302', 'U17288618302', 'FANSILE', '', '17288618302', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 16:20:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17288618302' LIMIT 1);
UPDATE users SET nick_name='FANSILE', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17288618302';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13380080360', 'U13380080360', '皮克胖', '', '13380080360', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 16:15:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13380080360' LIMIT 1);
UPDATE users SET nick_name='皮克胖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13380080360';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13014047551', 'U13014047551', '13014047551', '', '13014047551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 15:22:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13014047551' LIMIT 1);
UPDATE users SET nick_name='13014047551', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13014047551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926271618', 'U18926271618', 'H-1T', '', '18926271618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 15:19:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926271618' LIMIT 1);
UPDATE users SET nick_name='H-1T', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926271618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500013329', 'U13500013329', '谢小云Cloudy', '', '13500013329', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 15:10:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500013329' LIMIT 1);
UPDATE users SET nick_name='谢小云Cloudy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500013329';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17724740905', 'U17724740905', '17724740905', '', '17724740905', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 14:49:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17724740905' LIMIT 1);
UPDATE users SET nick_name='17724740905', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17724740905';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18199891789', 'U18199891789', '18199891789', '', '18199891789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 14:21:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18199891789' LIMIT 1);
UPDATE users SET nick_name='18199891789', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18199891789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15614790567', 'U15614790567', 'CH2487', '', '15614790567', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 12:14:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15614790567' LIMIT 1);
UPDATE users SET nick_name='CH2487', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15614790567';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570219050', 'U13570219050', 'Irene', '', '13570219050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 08:16:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570219050' LIMIT 1);
UPDATE users SET nick_name='Irene', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570219050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660121621', 'U13660121621', '思聪王', '', '13660121621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-27 07:38:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660121621' LIMIT 1);
UPDATE users SET nick_name='思聪王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660121621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15680832696', 'U15680832696', 'Pikachu_Owner', '', '15680832696', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-26 20:31:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15680832696' LIMIT 1);
UPDATE users SET nick_name='Pikachu_Owner', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15680832696';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13516532597', 'U13516532597', '13516532597', '', '13516532597', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-26 15:03:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13516532597' LIMIT 1);
UPDATE users SET nick_name='13516532597', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13516532597';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18851028884', 'U18851028884', '18851028884', '', '18851028884', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-26 13:04:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18851028884' LIMIT 1);
UPDATE users SET nick_name='18851028884', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18851028884';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622396601', 'U15622396601', '15622396601', '', '15622396601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-25 20:10:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622396601' LIMIT 1);
UPDATE users SET nick_name='15622396601', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622396601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824601129', 'U13824601129', '13824601129', '', '13824601129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-25 17:56:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824601129' LIMIT 1);
UPDATE users SET nick_name='13824601129', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824601129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18898744586', 'U18898744586', '18898744586', '', '18898744586', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-25 13:16:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18898744586' LIMIT 1);
UPDATE users SET nick_name='18898744586', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18898744586';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15807224927', 'U15807224927', '15807224927', '', '15807224927', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-24 21:02:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15807224927' LIMIT 1);
UPDATE users SET nick_name='15807224927', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15807224927';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13286923121', 'U13286923121', '233', '', '13286923121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-24 20:13:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13286923121' LIMIT 1);
UPDATE users SET nick_name='233', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13286923121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620016857', 'U16620016857', '16620016857', '', '16620016857', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-24 15:57:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620016857' LIMIT 1);
UPDATE users SET nick_name='16620016857', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620016857';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814143511', 'U18814143511', '4191云庭4313', '', '18814143511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-24 15:15:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814143511' LIMIT 1);
UPDATE users SET nick_name='4191云庭4313', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814143511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18884802919', 'U18884802919', '18884802919', '', '18884802919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-24 14:55:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18884802919' LIMIT 1);
UPDATE users SET nick_name='18884802919', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18884802919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631463880', 'U13631463880', '13631463880', '', '13631463880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-24 13:59:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631463880' LIMIT 1);
UPDATE users SET nick_name='13631463880', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631463880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18601397401', 'U18601397401', '芮安', '', '18601397401', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-24 11:41:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18601397401' LIMIT 1);
UPDATE users SET nick_name='芮安', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18601397401';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13509290853', 'U13509290853', '王山而', '', '13509290853', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-24 00:41:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13509290853' LIMIT 1);
UPDATE users SET nick_name='王山而', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13509290853';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632439557', 'U13632439557', '13632439557', '', '13632439557', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-23 19:14:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632439557' LIMIT 1);
UPDATE users SET nick_name='13632439557', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632439557';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535370720', 'U13535370720', '小呆', '', '13535370720', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-23 13:27:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535370720' LIMIT 1);
UPDATE users SET nick_name='小呆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535370720';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15817075109', 'U15817075109', '自在人', '', '15817075109', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-23 13:07:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15817075109' LIMIT 1);
UPDATE users SET nick_name='自在人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15817075109';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18767627351', 'U18767627351', 'Mr_alZ', '', '18767627351', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-23 00:06:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18767627351' LIMIT 1);
UPDATE users SET nick_name='Mr_alZ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18767627351';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640811183', 'U13640811183', '强', '', '13640811183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-22 22:16:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640811183' LIMIT 1);
UPDATE users SET nick_name='强', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640811183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011828031', 'U18011828031', '2.5👾', '', '18011828031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-22 17:25:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011828031' LIMIT 1);
UPDATE users SET nick_name='2.5👾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011828031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620312168', 'U18620312168', '18620312168', '', '18620312168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-22 16:06:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620312168' LIMIT 1);
UPDATE users SET nick_name='18620312168', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620312168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18899739092', 'U18899739092', '18899739092', '', '18899739092', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-22 16:06:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18899739092' LIMIT 1);
UPDATE users SET nick_name='18899739092', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18899739092';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025218454', 'U13025218454', 'N', '', '13025218454', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-22 13:47:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025218454' LIMIT 1);
UPDATE users SET nick_name='N', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025218454';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19868578254', 'U19868578254', 'Jackson Li', '', '19868578254', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-22 13:14:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19868578254' LIMIT 1);
UPDATE users SET nick_name='Jackson Li', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19868578254';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802786076', 'U13802786076', '13802786076', '', '13802786076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-22 13:12:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802786076' LIMIT 1);
UPDATE users SET nick_name='13802786076', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802786076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600006285', 'U13600006285', '13600006285', '', '13600006285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-22 12:22:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600006285' LIMIT 1);
UPDATE users SET nick_name='13600006285', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600006285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989250024', 'U15989250024', '程程', '', '15989250024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 226, '2026-03-22 11:17:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989250024' LIMIT 1);
UPDATE users SET nick_name='程程', balance=GREATEST(balance, 0.00), points=GREATEST(points, 226) WHERE phone='15989250024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613091873', 'U18613091873', '18613091873', '', '18613091873', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-22 10:34:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613091873' LIMIT 1);
UPDATE users SET nick_name='18613091873', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613091873';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15760587859', 'U15760587859', 'Dizzy', '', '15760587859', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-22 10:10:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15760587859' LIMIT 1);
UPDATE users SET nick_name='Dizzy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15760587859';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913134483', 'U15913134483', '蟹子不懈', '', '15913134483', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2026-03-21 22:01:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913134483' LIMIT 1);
UPDATE users SET nick_name='蟹子不懈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15913134483';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19966266096', 'U19966266096', '嘟嘟', '', '19966266096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-21 21:56:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19966266096' LIMIT 1);
UPDATE users SET nick_name='嘟嘟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19966266096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610125823', 'U13610125823', '「Gypsophila paniculata」', '', '13610125823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-21 20:45:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610125823' LIMIT 1);
UPDATE users SET nick_name='「Gypsophila paniculata」', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610125823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16643510283', 'U16643510283', '16643510283', '', '16643510283', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-21 18:11:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16643510283' LIMIT 1);
UPDATE users SET nick_name='16643510283', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16643510283';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18023601850', 'U18023601850', '18023601850', '', '18023601850', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-21 17:32:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18023601850' LIMIT 1);
UPDATE users SET nick_name='18023601850', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18023601850';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15757175077', 'U15757175077', '小白', '', '15757175077', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-21 16:47:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15757175077' LIMIT 1);
UPDATE users SET nick_name='小白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15757175077';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660883798', 'U13660883798', '13660883798', '', '13660883798', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-21 16:34:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660883798' LIMIT 1);
UPDATE users SET nick_name='13660883798', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660883798';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662432473', 'U13662432473', '13662432473', '', '13662432473', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-21 16:01:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662432473' LIMIT 1);
UPDATE users SET nick_name='13662432473', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662432473';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19576755517', 'U19576755517', 'JayceeX', '', '19576755517', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-21 15:24:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19576755517' LIMIT 1);
UPDATE users SET nick_name='JayceeX', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19576755517';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202013481', 'U13202013481', 'colorful', '', '13202013481', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 255, '2026-03-21 15:02:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202013481' LIMIT 1);
UPDATE users SET nick_name='colorful', balance=GREATEST(balance, 0.00), points=GREATEST(points, 255) WHERE phone='13202013481';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19531271993', 'U19531271993', 'dzz', '', '19531271993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2026-03-21 14:21:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19531271993' LIMIT 1);
UPDATE users SET nick_name='dzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='19531271993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521329146', 'U15521329146', 'LL', '', '15521329146', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-21 13:55:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521329146' LIMIT 1);
UPDATE users SET nick_name='LL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521329146';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929506207', 'U13929506207', 'K', '', '13929506207', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-21 12:47:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929506207' LIMIT 1);
UPDATE users SET nick_name='K', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929506207';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18686099815', 'U18686099815', '杨', '', '18686099815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-21 10:38:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18686099815' LIMIT 1);
UPDATE users SET nick_name='杨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18686099815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813393032', 'U15813393032', '福了芒果_💮', '', '15813393032', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-20 22:15:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813393032' LIMIT 1);
UPDATE users SET nick_name='福了芒果_💮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813393032';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450607484', 'U13450607484', '13450607484', '', '13450607484', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-20 20:03:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450607484' LIMIT 1);
UPDATE users SET nick_name='13450607484', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450607484';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825019020', 'U13825019020', 'Isabel', '', '13825019020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-20 18:54:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825019020' LIMIT 1);
UPDATE users SET nick_name='Isabel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825019020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18300011768', 'U18300011768', '18300011768', '', '18300011768', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-20 16:19:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18300011768' LIMIT 1);
UPDATE users SET nick_name='18300011768', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18300011768';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15334178378', 'U15334178378', '15334178378', '', '15334178378', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-20 16:17:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15334178378' LIMIT 1);
UPDATE users SET nick_name='15334178378', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15334178378';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17880651335', 'U17880651335', '长街.', '', '17880651335', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-20 14:14:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17880651335' LIMIT 1);
UPDATE users SET nick_name='长街.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17880651335';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631208698', 'U13631208698', '13631208698', '', '13631208698', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-20 13:09:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631208698' LIMIT 1);
UPDATE users SET nick_name='13631208698', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631208698';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632348230', 'U13632348230', 'saya', '', '13632348230', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-20 10:03:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632348230' LIMIT 1);
UPDATE users SET nick_name='saya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632348230';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580489987', 'U13580489987', '13580489987', '', '13580489987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 22:04:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580489987' LIMIT 1);
UPDATE users SET nick_name='13580489987', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580489987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876768518', 'U17876768518', '#李伊玲律师17876768518', '', '17876768518', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 21:57:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876768518' LIMIT 1);
UPDATE users SET nick_name='#李伊玲律师17876768518', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876768518';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18715002884', 'U18715002884', 'N N', '', '18715002884', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 21:07:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18715002884' LIMIT 1);
UPDATE users SET nick_name='N N', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18715002884';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18024014606', 'U18024014606', '泽', '', '18024014606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 21:02:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18024014606' LIMIT 1);
UPDATE users SET nick_name='泽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18024014606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18805926606', 'U18805926606', '18805926606', '', '18805926606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 18:30:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18805926606' LIMIT 1);
UPDATE users SET nick_name='18805926606', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18805926606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15690997212', 'U15690997212', 'U', '', '15690997212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 18:20:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15690997212' LIMIT 1);
UPDATE users SET nick_name='U', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15690997212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631332606', 'U13631332606', '13631332606', '', '13631332606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 14:49:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631332606' LIMIT 1);
UPDATE users SET nick_name='13631332606', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631332606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826269186', 'U13826269186', '飞贼', '', '13826269186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 14:41:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826269186' LIMIT 1);
UPDATE users SET nick_name='飞贼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826269186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632271738', 'U13632271738', 'Mr.Van', '', '13632271738', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 14:38:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632271738' LIMIT 1);
UPDATE users SET nick_name='Mr.Van', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632271738';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13112268267', 'U13112268267', '13112268267', '', '13112268267', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 14:17:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13112268267' LIMIT 1);
UPDATE users SET nick_name='13112268267', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13112268267';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13415123608', 'U13415123608', '江欣桐', '', '13415123608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 08:23:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13415123608' LIMIT 1);
UPDATE users SET nick_name='江欣桐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13415123608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989192621', 'U15989192621', 'Arock', '', '15989192621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-19 01:09:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989192621' LIMIT 1);
UPDATE users SET nick_name='Arock', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989192621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247533919', 'U13247533919', '_LEE-_', '', '13247533919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-18 23:15:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247533919' LIMIT 1);
UPDATE users SET nick_name='_LEE-_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13247533919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535551103', 'U13535551103', 'K', '', '13535551103', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-18 17:33:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535551103' LIMIT 1);
UPDATE users SET nick_name='K', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535551103';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15766128909', 'U15766128909', '阿茶🌾', '', '15766128909', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-18 17:08:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15766128909' LIMIT 1);
UPDATE users SET nick_name='阿茶🌾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15766128909';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15019747958', 'U15019747958', '15019747958', '', '15019747958', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-18 16:02:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15019747958' LIMIT 1);
UPDATE users SET nick_name='15019747958', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15019747958';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622307734', 'U15622307734', 'Viola', '', '15622307734', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-18 15:29:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622307734' LIMIT 1);
UPDATE users SET nick_name='Viola', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622307734';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18601282030', 'U18601282030', '18601282030', '', '18601282030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-17 21:02:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18601282030' LIMIT 1);
UPDATE users SET nick_name='18601282030', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18601282030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250288663', 'U13250288663', 'Lily🍉™', '', '13250288663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-03-17 19:31:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250288663' LIMIT 1);
UPDATE users SET nick_name='Lily🍉™', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13250288663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711336815', 'U13711336815', 'Skye', '', '13711336815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-17 13:30:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711336815' LIMIT 1);
UPDATE users SET nick_name='Skye', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711336815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18055808576', 'U18055808576', 'Pogrirroal', '', '18055808576', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-17 11:09:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18055808576' LIMIT 1);
UPDATE users SET nick_name='Pogrirroal', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18055808576';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18345520773', 'U18345520773', '哆啦', '', '18345520773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-16 19:13:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18345520773' LIMIT 1);
UPDATE users SET nick_name='哆啦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18345520773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926828903', 'U13926828903', '9490.4', '', '13926828903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-16 15:46:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926828903' LIMIT 1);
UPDATE users SET nick_name='9490.4', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926828903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15973544125', 'U15973544125', '7宝粥', '', '15973544125', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-16 15:29:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15973544125' LIMIT 1);
UPDATE users SET nick_name='7宝粥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15973544125';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928825598', 'U18928825598', '王生', '', '18928825598', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-16 15:16:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928825598' LIMIT 1);
UPDATE users SET nick_name='王生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928825598';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808815021', 'U13808815021', 'KEN', '', '13808815021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-16 13:04:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808815021' LIMIT 1);
UPDATE users SET nick_name='KEN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808815021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18601339616', 'U18601339616', '夏夏', '', '18601339616', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-16 12:53:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18601339616' LIMIT 1);
UPDATE users SET nick_name='夏夏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18601339616';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18128412366', 'U18128412366', 'Elowen', '', '18128412366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-16 11:07:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18128412366' LIMIT 1);
UPDATE users SET nick_name='Elowen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18128412366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570323208', 'U13570323208', '🔆之蔓🌲🐥', '', '13570323208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-15 18:37:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570323208' LIMIT 1);
UPDATE users SET nick_name='🔆之蔓🌲🐥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570323208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570484892', 'U13570484892', 'lito.b🃏', '', '13570484892', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-15 15:48:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570484892' LIMIT 1);
UPDATE users SET nick_name='lito.b🃏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570484892';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18811325159', 'U18811325159', '18811325159', '', '18811325159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-15 13:46:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18811325159' LIMIT 1);
UPDATE users SET nick_name='18811325159', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18811325159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18162341036', 'U18162341036', '。', '', '18162341036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-15 13:39:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18162341036' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18162341036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989095175', 'U15989095175', '羅大聰喺Ryan~', '', '15989095175', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-15 13:02:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989095175' LIMIT 1);
UPDATE users SET nick_name='羅大聰喺Ryan~', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989095175';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18621577797', 'U18621577797', '18621577797', '', '18621577797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-14 20:56:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18621577797' LIMIT 1);
UPDATE users SET nick_name='18621577797', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18621577797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19304055032', 'U19304055032', 'En.²⁷', '', '19304055032', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-14 20:17:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19304055032' LIMIT 1);
UPDATE users SET nick_name='En.²⁷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19304055032';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13286083979', 'U13286083979', '13286083979', '', '13286083979', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-14 17:06:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13286083979' LIMIT 1);
UPDATE users SET nick_name='13286083979', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13286083979';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13424111714', 'U13424111714', '13424111714', '', '13424111714', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-14 15:32:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13424111714' LIMIT 1);
UPDATE users SET nick_name='13424111714', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13424111714';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19518989102', 'U19518989102', '19518989102', '', '19518989102', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-14 15:05:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19518989102' LIMIT 1);
UPDATE users SET nick_name='19518989102', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19518989102';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620700805', 'U17620700805', '17620700805', '', '17620700805', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-14 14:07:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620700805' LIMIT 1);
UPDATE users SET nick_name='17620700805', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620700805';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18319089138', 'U18319089138', 'Hannah', '', '18319089138', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-14 13:20:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18319089138' LIMIT 1);
UPDATE users SET nick_name='Hannah', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18319089138';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817149158', 'U17817149158', '17817149158', '', '17817149158', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-14 13:17:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817149158' LIMIT 1);
UPDATE users SET nick_name='17817149158', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817149158';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815855312', 'U15815855312', '15815855312', '', '15815855312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-14 10:53:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815855312' LIMIT 1);
UPDATE users SET nick_name='15815855312', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815855312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218002232', 'U15218002232', '无他', '', '15218002232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-14 10:41:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218002232' LIMIT 1);
UPDATE users SET nick_name='无他', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218002232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265323992', 'U13265323992', '13265323992', '', '13265323992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-13 18:38:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265323992' LIMIT 1);
UPDATE users SET nick_name='13265323992', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265323992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13755000489', 'U13755000489', '卢卡库', '', '13755000489', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-13 18:34:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13755000489' LIMIT 1);
UPDATE users SET nick_name='卢卡库', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13755000489';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312229401', 'U18312229401', '18312229401', '', '18312229401', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-13 17:12:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312229401' LIMIT 1);
UPDATE users SET nick_name='18312229401', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312229401';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15066102501', 'U15066102501', '15066102501', '', '15066102501', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-13 15:00:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15066102501' LIMIT 1);
UPDATE users SET nick_name='15066102501', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15066102501';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19063712790', 'U19063712790', 'lilllllLinus', '', '19063712790', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-13 14:47:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19063712790' LIMIT 1);
UPDATE users SET nick_name='lilllllLinus', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19063712790';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632396312', 'U13632396312', '元呆帝', '', '13632396312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-13 14:45:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632396312' LIMIT 1);
UPDATE users SET nick_name='元呆帝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632396312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538704392', 'U13538704392', 'ABBY_葉ZF', '', '13538704392', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-13 13:16:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538704392' LIMIT 1);
UPDATE users SET nick_name='ABBY_葉ZF', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538704392';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924331629', 'U19924331629', '韩正洋', '', '19924331629', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 255, '2026-03-13 09:52:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924331629' LIMIT 1);
UPDATE users SET nick_name='韩正洋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 255) WHERE phone='19924331629';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19871339031', 'U19871339031', '汪汪', '', '19871339031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-12 22:07:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19871339031' LIMIT 1);
UPDATE users SET nick_name='汪汪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19871339031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19502058089', 'U19502058089', 'drtvourts', '', '19502058089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-12 21:49:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19502058089' LIMIT 1);
UPDATE users SET nick_name='drtvourts', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19502058089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480260095', 'U13480260095', '吴嘉', '', '13480260095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-12 20:51:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480260095' LIMIT 1);
UPDATE users SET nick_name='吴嘉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480260095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480242503', 'U13480242503', '张小姐', '', '13480242503', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-12 20:42:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480242503' LIMIT 1);
UPDATE users SET nick_name='张小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480242503';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13266085817', 'U13266085817', '🍠', '', '13266085817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-12 12:45:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13266085817' LIMIT 1);
UPDATE users SET nick_name='🍠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13266085817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533449643', 'U13533449643', '13533449643', '', '13533449643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-11 19:30:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533449643' LIMIT 1);
UPDATE users SET nick_name='13533449643', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533449643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15199039817', 'U15199039817', 'annie', '', '15199039817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-11 17:53:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15199039817' LIMIT 1);
UPDATE users SET nick_name='annie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15199039817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819252131', 'U18819252131', '18819252131', '', '18819252131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-11 16:28:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819252131' LIMIT 1);
UPDATE users SET nick_name='18819252131', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819252131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533668831', 'U13533668831', '13533668831', '', '13533668831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-11 16:21:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533668831' LIMIT 1);
UPDATE users SET nick_name='13533668831', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533668831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660268964', 'U13660268964', 'suyi', '', '13660268964', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-11 10:04:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660268964' LIMIT 1);
UPDATE users SET nick_name='suyi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660268964';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565332076', 'U18565332076', 'MMuzidan', '', '18565332076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-10 18:17:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565332076' LIMIT 1);
UPDATE users SET nick_name='MMuzidan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565332076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660407666', 'U13660407666', '亚亚', '', '13660407666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-09 22:17:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660407666' LIMIT 1);
UPDATE users SET nick_name='亚亚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660407666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926139404', 'U18926139404', 'zxxxx', '', '18926139404', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-09 21:07:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926139404' LIMIT 1);
UPDATE users SET nick_name='zxxxx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926139404';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18576650204', 'U18576650204', 'ʚ景ɞ', '', '18576650204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-09 17:09:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18576650204' LIMIT 1);
UPDATE users SET nick_name='ʚ景ɞ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18576650204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826116563', 'U13826116563', '朱兆斌', '', '13826116563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-09 10:12:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826116563' LIMIT 1);
UPDATE users SET nick_name='朱兆斌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826116563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16676680115', 'U16676680115', '16676680115', '', '16676680115', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-08 11:31:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16676680115' LIMIT 1);
UPDATE users SET nick_name='16676680115', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16676680115';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902089954', 'U15902089954', '德州牛排', '', '15902089954', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-08 09:10:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902089954' LIMIT 1);
UPDATE users SET nick_name='德州牛排', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902089954';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822211024', 'U13822211024', 'Lixin', '', '13822211024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-07 20:57:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822211024' LIMIT 1);
UPDATE users SET nick_name='Lixin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822211024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819720462', 'U18819720462', 'Antik.', '', '18819720462', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-07 19:51:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819720462' LIMIT 1);
UPDATE users SET nick_name='Antik.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819720462';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826070853', 'U18826070853', '大安🐥', '', '18826070853', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-07 19:17:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826070853' LIMIT 1);
UPDATE users SET nick_name='大安🐥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826070853';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18675977824', 'U18675977824', 'Rachel Li·THE DOT', '', '18675977824', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-07 16:18:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18675977824' LIMIT 1);
UPDATE users SET nick_name='Rachel Li·THE DOT', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18675977824';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600092971', 'U13600092971', 'kk', '', '13600092971', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-07 14:47:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600092971' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600092971';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18301803897', 'U18301803897', '18301803897', '', '18301803897', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-07 13:36:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18301803897' LIMIT 1);
UPDATE users SET nick_name='18301803897', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18301803897';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19875148168', 'U19875148168', '19875148168', '', '19875148168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-06 20:36:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19875148168' LIMIT 1);
UPDATE users SET nick_name='19875148168', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19875148168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13005022949', 'U13005022949', '午申台', '', '13005022949', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-03-06 19:54:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13005022949' LIMIT 1);
UPDATE users SET nick_name='午申台', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13005022949';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18719244609', 'U18719244609', 'Freya', '', '18719244609', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-06 17:02:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18719244609' LIMIT 1);
UPDATE users SET nick_name='Freya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18719244609';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17328523569', 'U17328523569', 'mia', '', '17328523569', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-06 16:02:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17328523569' LIMIT 1);
UPDATE users SET nick_name='mia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17328523569';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632480323', 'U13632480323', '13632480323', '', '13632480323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-05 16:27:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632480323' LIMIT 1);
UPDATE users SET nick_name='13632480323', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632480323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202916831', 'U13202916831', '今日你训咗未', '', '13202916831', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-05 14:25:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202916831' LIMIT 1);
UPDATE users SET nick_name='今日你训咗未', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202916831';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565414115', 'U18565414115', 'Lu', '', '18565414115', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-05 14:08:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565414115' LIMIT 1);
UPDATE users SET nick_name='Lu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565414115';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113078869', 'U13113078869', '13113078869', '', '13113078869', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-03 19:42:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113078869' LIMIT 1);
UPDATE users SET nick_name='13113078869', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13113078869';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13857470551', 'U13857470551', 'Yrainy', '', '13857470551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-03 15:27:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13857470551' LIMIT 1);
UPDATE users SET nick_name='Yrainy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13857470551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588761584', 'U18588761584', 'Jodyʚ🧸', '', '18588761584', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-02 23:41:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588761584' LIMIT 1);
UPDATE users SET nick_name='Jodyʚ🧸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588761584';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15778029628', 'U15778029628', 'Skyler💹', '', '15778029628', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-02 22:36:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15778029628' LIMIT 1);
UPDATE users SET nick_name='Skyler💹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15778029628';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013255222', 'U15013255222', '咏仪 👑 Stitch', '', '15013255222', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-02 22:26:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013255222' LIMIT 1);
UPDATE users SET nick_name='咏仪 👑 Stitch', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013255222';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19855656085', 'U19855656085', 'Flashlight', '', '19855656085', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-02 17:21:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19855656085' LIMIT 1);
UPDATE users SET nick_name='Flashlight', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19855656085';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18919571578', 'U18919571578', 'Heidi', '', '18919571578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-02 11:20:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18919571578' LIMIT 1);
UPDATE users SET nick_name='Heidi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18919571578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631341160', 'U13631341160', '曹mm💙', '', '13631341160', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-01 19:23:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631341160' LIMIT 1);
UPDATE users SET nick_name='曹mm💙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631341160';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18084932252', 'U18084932252', '18084932252', '', '18084932252', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-01 16:45:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18084932252' LIMIT 1);
UPDATE users SET nick_name='18084932252', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18084932252';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15581654819', 'U15581654819', '15581654819', '', '15581654819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-01 16:39:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15581654819' LIMIT 1);
UPDATE users SET nick_name='15581654819', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15581654819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13132115862', 'U13132115862', '逸默', '', '13132115862', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-03-01 10:54:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13132115862' LIMIT 1);
UPDATE users SET nick_name='逸默', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13132115862';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664674409', 'U18664674409', '🐟', '', '18664674409', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-28 22:40:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664674409' LIMIT 1);
UPDATE users SET nick_name='🐟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664674409';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19872767250', 'U19872767250', '周流Dylan', '', '19872767250', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-28 22:34:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19872767250' LIMIT 1);
UPDATE users SET nick_name='周流Dylan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19872767250';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028630497', 'U18028630497', '陈', '', '18028630497', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-28 20:47:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028630497' LIMIT 1);
UPDATE users SET nick_name='陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028630497';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18600836980', 'U18600836980', '18600836980', '', '18600836980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-28 15:54:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18600836980' LIMIT 1);
UPDATE users SET nick_name='18600836980', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18600836980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450235470', 'U13450235470', '呱呱', '', '13450235470', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-28 15:47:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450235470' LIMIT 1);
UPDATE users SET nick_name='呱呱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450235470';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922470807', 'U13922470807', 'Hank ZOU', '', '13922470807', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-28 15:04:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922470807' LIMIT 1);
UPDATE users SET nick_name='Hank ZOU', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922470807';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660478474', 'U13660478474', 'zhh', '', '13660478474', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-28 14:37:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660478474' LIMIT 1);
UPDATE users SET nick_name='zhh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660478474';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725201543', 'U13725201543', 'Zhisong', '', '13725201543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-28 14:25:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725201543' LIMIT 1);
UPDATE users SET nick_name='Zhisong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725201543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710971387', 'U13710971387', '13710971387', '', '13710971387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-28 14:02:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710971387' LIMIT 1);
UPDATE users SET nick_name='13710971387', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710971387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798020500', 'U13798020500', '菜统领', '', '13798020500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-28 11:58:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798020500' LIMIT 1);
UPDATE users SET nick_name='菜统领', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798020500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902213736', 'U18902213736', '!!FY', '', '18902213736', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-28 08:52:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902213736' LIMIT 1);
UPDATE users SET nick_name='!!FY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18902213736';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529289173', 'U18529289173', 'W', '', '18529289173', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-27 15:27:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529289173' LIMIT 1);
UPDATE users SET nick_name='W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529289173';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620011173', 'U18620011173', '孔思敏', '', '18620011173', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2026-02-27 12:08:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620011173' LIMIT 1);
UPDATE users SET nick_name='孔思敏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18620011173';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828453962', 'U13828453962', '曾', '', '13828453962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-27 10:57:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828453962' LIMIT 1);
UPDATE users SET nick_name='曾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828453962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694252279', 'U13694252279', 'Ashley', '', '13694252279', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-26 21:42:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694252279' LIMIT 1);
UPDATE users SET nick_name='Ashley', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13694252279';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15157917257', 'U15157917257', '赖东东', '', '15157917257', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-26 18:22:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15157917257' LIMIT 1);
UPDATE users SET nick_name='赖东东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15157917257';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626090058', 'U15626090058', 'A君', '', '15626090058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-02-26 17:59:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626090058' LIMIT 1);
UPDATE users SET nick_name='A君', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626090058';
