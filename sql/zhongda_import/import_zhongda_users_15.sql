SET NAMES utf8mb4;
-- 中大店用户导入 part 15 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989279081', 'U15989279081', '伍桌儿', '', '15989279081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-10 19:34:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989279081' LIMIT 1);
UPDATE users SET nick_name='伍桌儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989279081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102823360', 'U18102823360', '鱼鱼', '', '18102823360', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-10 12:46:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102823360' LIMIT 1);
UPDATE users SET nick_name='鱼鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102823360';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218809910', 'U15218809910', '蓝蓝', '', '15218809910', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-10 12:08:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218809910' LIMIT 1);
UPDATE users SET nick_name='蓝蓝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218809910';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989078221', 'U15989078221', 'Song', '', '15989078221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-02-09 21:00:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989078221' LIMIT 1);
UPDATE users SET nick_name='Song', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='15989078221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570992211', 'U13570992211', 'u', '', '13570992211', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-02-09 16:58:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570992211' LIMIT 1);
UPDATE users SET nick_name='u', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13570992211';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19925840580', 'U19925840580', 'Lynn Wu', '', '19925840580', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-02-09 16:16:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19925840580' LIMIT 1);
UPDATE users SET nick_name='Lynn Wu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='19925840580';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989166815', 'U15989166815', 'SC', '', '15989166815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-02-09 14:33:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989166815' LIMIT 1);
UPDATE users SET nick_name='SC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15989166815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113216184', 'U15113216184', '晴晴～', '', '15113216184', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-09 14:20:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113216184' LIMIT 1);
UPDATE users SET nick_name='晴晴～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113216184';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17819117392', 'U17819117392', '蒋阳', '', '17819117392', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-09 13:45:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17819117392' LIMIT 1);
UPDATE users SET nick_name='蒋阳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17819117392';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578760607', 'U18578760607', 'Audrey', '', '18578760607', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-09 11:40:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578760607' LIMIT 1);
UPDATE users SET nick_name='Audrey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578760607';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808828861', 'U13808828861', '周牟牟', '', '13808828861', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 417, '2025-02-09 11:05:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808828861' LIMIT 1);
UPDATE users SET nick_name='周牟牟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 417) WHERE phone='13808828861';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13588552019', 'U13588552019', '13588552019', '', '13588552019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-08 18:43:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13588552019' LIMIT 1);
UPDATE users SET nick_name='13588552019', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13588552019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825007091', 'U13825007091', '13825007091', '', '13825007091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-08 17:08:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825007091' LIMIT 1);
UPDATE users SET nick_name='13825007091', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825007091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15616175429', 'U15616175429', 'Cedric', '', '15616175429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 10, '2025-02-08 16:58:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15616175429' LIMIT 1);
UPDATE users SET nick_name='Cedric', balance=GREATEST(balance, 0.00), points=GREATEST(points, 10) WHERE phone='15616175429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802769049', 'U13802769049', 'Ou礼麟', '', '13802769049', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-02-08 15:47:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802769049' LIMIT 1);
UPDATE users SET nick_name='Ou礼麟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13802769049';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902292993', 'U13902292993', '13902292993', '', '13902292993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-08 15:45:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902292993' LIMIT 1);
UPDATE users SET nick_name='13902292993', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902292993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13326403237', 'U13326403237', '海风', '', '13326403237', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-08 15:42:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13326403237' LIMIT 1);
UPDATE users SET nick_name='海风', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13326403237';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533055652', 'U13533055652', '周', '', '13533055652', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-08 15:05:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533055652' LIMIT 1);
UPDATE users SET nick_name='周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533055652';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620332171', 'U16620332171', '🍈晚梨不吃梨', '', '16620332171', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-08 14:43:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620332171' LIMIT 1);
UPDATE users SET nick_name='🍈晚梨不吃梨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620332171';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750527395', 'U13750527395', 'Lazy ML', '', '13750527395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 388, '2025-02-08 14:42:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750527395' LIMIT 1);
UPDATE users SET nick_name='Lazy ML', balance=GREATEST(balance, 0.00), points=GREATEST(points, 388) WHERE phone='13750527395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18927527560', 'U18927527560', 'Amelia', '', '18927527560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-08 14:23:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18927527560' LIMIT 1);
UPDATE users SET nick_name='Amelia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18927527560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18702098970', 'U18702098970', '18702098970', '', '18702098970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-08 14:17:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18702098970' LIMIT 1);
UPDATE users SET nick_name='18702098970', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18702098970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17160822835', 'U17160822835', '17160822835', '', '17160822835', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-08 12:19:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17160822835' LIMIT 1);
UPDATE users SET nick_name='17160822835', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17160822835';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18159289435', 'U18159289435', 'running', '', '18159289435', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-08 11:21:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18159289435' LIMIT 1);
UPDATE users SET nick_name='running', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18159289435';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902054238', 'U15902054238', '〰', '', '15902054238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-07 16:04:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902054238' LIMIT 1);
UPDATE users SET nick_name='〰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902054238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18318535796', 'U18318535796', '嘻嘻不嘻嘻', '', '18318535796', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-07 12:59:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18318535796' LIMIT 1);
UPDATE users SET nick_name='嘻嘻不嘻嘻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18318535796';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913149043', 'U15913149043', 'Lee', '', '15913149043', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-07 12:27:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913149043' LIMIT 1);
UPDATE users SET nick_name='Lee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913149043';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800261695', 'U15800261695', 'Jason杰👑', '', '15800261695', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-07 08:43:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800261695' LIMIT 1);
UPDATE users SET nick_name='Jason杰👑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800261695';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13163706376', 'U13163706376', 'hill', '', '13163706376', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-07 06:41:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13163706376' LIMIT 1);
UPDATE users SET nick_name='hill', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13163706376';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620009730', 'U18620009730', '灰二', '', '18620009730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-06 20:42:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620009730' LIMIT 1);
UPDATE users SET nick_name='灰二', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620009730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13149394292', 'U13149394292', '13149394292', '', '13149394292', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-06 20:37:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13149394292' LIMIT 1);
UPDATE users SET nick_name='13149394292', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13149394292';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15801553523', 'U15801553523', '15801553523', '', '15801553523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-06 19:38:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15801553523' LIMIT 1);
UPDATE users SET nick_name='15801553523', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15801553523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15014292829', 'U15014292829', 'Sthevent Yen', '', '15014292829', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-06 16:59:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15014292829' LIMIT 1);
UPDATE users SET nick_name='Sthevent Yen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15014292829';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332888706', 'U13332888706', '晨晨', '', '13332888706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-06 16:14:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332888706' LIMIT 1);
UPDATE users SET nick_name='晨晨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13332888706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726885014', 'U13726885014', '13726885014', '', '13726885014', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-06 14:22:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726885014' LIMIT 1);
UPDATE users SET nick_name='13726885014', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726885014';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13801957179', 'U13801957179', '13801957179', '', '13801957179', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-06 12:46:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13801957179' LIMIT 1);
UPDATE users SET nick_name='13801957179', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13801957179';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926143748', 'U13926143748', 'Paraskevidekatriaphobia', '', '13926143748', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-05 19:41:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926143748' LIMIT 1);
UPDATE users SET nick_name='Paraskevidekatriaphobia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926143748';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17278797798', 'U17278797798', 'yuuu', '', '17278797798', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-05 16:51:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17278797798' LIMIT 1);
UPDATE users SET nick_name='yuuu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17278797798';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802787044', 'U13802787044', '秋屏', '', '13802787044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-05 16:42:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802787044' LIMIT 1);
UPDATE users SET nick_name='秋屏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802787044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013137417', 'U15013137417', '15013137417', '', '15013137417', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-05 15:36:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013137417' LIMIT 1);
UPDATE users SET nick_name='15013137417', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013137417';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060822517', 'U13060822517', '鱼卡爸爸', '', '13060822517', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-05 14:39:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060822517' LIMIT 1);
UPDATE users SET nick_name='鱼卡爸爸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060822517';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17361592878', 'U17361592878', '藤井树', '', '17361592878', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-05 14:28:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17361592878' LIMIT 1);
UPDATE users SET nick_name='藤井树', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17361592878';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926080100', 'U18926080100', '18926080100', '', '18926080100', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-05 10:49:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926080100' LIMIT 1);
UPDATE users SET nick_name='18926080100', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926080100';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928831304', 'U13928831304', '海阔天空', '', '13928831304', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2025-02-04 15:38:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928831304' LIMIT 1);
UPDATE users SET nick_name='海阔天空', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='13928831304';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876660708', 'U17876660708', 'Raymen |温志雄', '', '17876660708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-04 15:11:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876660708' LIMIT 1);
UPDATE users SET nick_name='Raymen |温志雄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876660708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570098606', 'U13570098606', '13570098606', '', '13570098606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-04 15:03:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570098606' LIMIT 1);
UPDATE users SET nick_name='13570098606', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570098606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435134846', 'U13435134846', 'Laughing sir', '', '13435134846', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-04 14:19:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435134846' LIMIT 1);
UPDATE users SET nick_name='Laughing sir', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13435134846';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17887854601', 'U17887854601', '内特', '', '17887854601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-04 14:13:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17887854601' LIMIT 1);
UPDATE users SET nick_name='内特', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17887854601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533652793', 'U13533652793', '13533652793', '', '13533652793', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-04 13:34:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533652793' LIMIT 1);
UPDATE users SET nick_name='13533652793', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533652793';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13611488426', 'U13611488426', 'T', '', '13611488426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-04 12:08:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13611488426' LIMIT 1);
UPDATE users SET nick_name='T', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13611488426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13738170750', 'U13738170750', '姚望', '', '13738170750', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 148, '2025-02-04 10:49:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13738170750' LIMIT 1);
UPDATE users SET nick_name='姚望', balance=GREATEST(balance, 0.00), points=GREATEST(points, 148) WHERE phone='13738170750';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512797655', 'U13512797655', 'Rachel L', '', '13512797655', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-04 10:23:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512797655' LIMIT 1);
UPDATE users SET nick_name='Rachel L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512797655';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013140504', 'U15013140504', '光', '', '15013140504', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-04 09:23:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013140504' LIMIT 1);
UPDATE users SET nick_name='光', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013140504';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570498736', 'U13570498736', 'Fion🌸', '', '13570498736', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-03 21:25:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570498736' LIMIT 1);
UPDATE users SET nick_name='Fion🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570498736';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925155992', 'U13925155992', '小飞虎', '', '13925155992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 149, '2025-02-03 18:09:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925155992' LIMIT 1);
UPDATE users SET nick_name='小飞虎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 149) WHERE phone='13925155992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570468008', 'U13570468008', '学', '', '13570468008', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-03 14:43:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570468008' LIMIT 1);
UPDATE users SET nick_name='学', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570468008';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660585740', 'U13660585740', '乔治', '', '13660585740', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-03 11:43:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660585740' LIMIT 1);
UPDATE users SET nick_name='乔治', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660585740';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17602062571', 'U17602062571', '🎀Liana', '', '17602062571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 106, '2025-02-03 11:34:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17602062571' LIMIT 1);
UPDATE users SET nick_name='🎀Liana', balance=GREATEST(balance, 0.00), points=GREATEST(points, 106) WHERE phone='17602062571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535250913', 'U13535250913', 'Febe杨', '', '13535250913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-02-03 11:11:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535250913' LIMIT 1);
UPDATE users SET nick_name='Febe杨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13535250913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18898411893', 'U18898411893', 'XT', '', '18898411893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-02-03 10:31:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18898411893' LIMIT 1);
UPDATE users SET nick_name='XT', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18898411893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826259320', 'U13826259320', '晓彤 zhao', '', '13826259320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-03 10:14:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826259320' LIMIT 1);
UPDATE users SET nick_name='晓彤 zhao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826259320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920364830', 'U15920364830', 'Luis', '', '15920364830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-02 22:27:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920364830' LIMIT 1);
UPDATE users SET nick_name='Luis', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920364830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802529474', 'U13802529474', '1', '', '13802529474', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-02 20:30:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802529474' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802529474';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416321777', 'U13416321777', '我觉得我可以买个榴莲', '', '13416321777', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-02 17:46:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416321777' LIMIT 1);
UPDATE users SET nick_name='我觉得我可以买个榴莲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416321777';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822117921', 'U13822117921', '13822117921', '', '13822117921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-02 16:07:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822117921' LIMIT 1);
UPDATE users SET nick_name='13822117921', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822117921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818657346', 'U18818657346', '珞瑜', '', '18818657346', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-02 15:19:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818657346' LIMIT 1);
UPDATE users SET nick_name='珞瑜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818657346';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999945855', 'U15999945855', '15999945855', '', '15999945855', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-02 15:19:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999945855' LIMIT 1);
UPDATE users SET nick_name='15999945855', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999945855';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613113665', 'U18613113665', '18613113665', '', '18613113665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-02 15:18:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613113665' LIMIT 1);
UPDATE users SET nick_name='18613113665', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613113665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822233908', 'U13822233908', '伍', '', '13822233908', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-02 14:00:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822233908' LIMIT 1);
UPDATE users SET nick_name='伍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822233908';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802945241', 'U13802945241', 'zdyl', '', '13802945241', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-02-02 10:39:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802945241' LIMIT 1);
UPDATE users SET nick_name='zdyl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13802945241';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13322805128', 'U13322805128', 'H3', '', '13322805128', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-02 10:11:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13322805128' LIMIT 1);
UPDATE users SET nick_name='H3', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13322805128';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800975268', 'U15800975268', 'tt', '', '15800975268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 177, '2025-02-02 09:49:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800975268' LIMIT 1);
UPDATE users SET nick_name='tt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 177) WHERE phone='15800975268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902268041', 'U13902268041', '曾新宇', '', '13902268041', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-02-02 09:29:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902268041' LIMIT 1);
UPDATE users SET nick_name='曾新宇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13902268041';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028699941', 'U18028699941', 'Gary_', '', '18028699941', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-01 18:17:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028699941' LIMIT 1);
UPDATE users SET nick_name='Gary_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028699941';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570241712', 'U13570241712', 'Erick', '', '13570241712', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-02-01 17:12:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570241712' LIMIT 1);
UPDATE users SET nick_name='Erick', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13570241712';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129326773', 'U13129326773', '🪵', '', '13129326773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-02-01 17:00:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129326773' LIMIT 1);
UPDATE users SET nick_name='🪵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13129326773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828499887', 'U13828499887', '13828499887', '', '13828499887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-01 15:58:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828499887' LIMIT 1);
UPDATE users SET nick_name='13828499887', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828499887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011786959', 'U18011786959', '18011786959', '', '18011786959', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-02-01 11:16:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011786959' LIMIT 1);
UPDATE users SET nick_name='18011786959', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011786959';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13076928664', 'U13076928664', '宁', '', '13076928664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-31 13:25:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13076928664' LIMIT 1);
UPDATE users SET nick_name='宁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13076928664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503033989', 'U13503033989', 'ttt', '', '13503033989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-31 09:06:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503033989' LIMIT 1);
UPDATE users SET nick_name='ttt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503033989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922719833', 'U13922719833', '小铭', '', '13922719833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 107, '2025-01-30 21:03:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922719833' LIMIT 1);
UPDATE users SET nick_name='小铭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 107) WHERE phone='13922719833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529279793', 'U18529279793', '嘻嘻哈哈', '', '18529279793', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-30 10:30:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529279793' LIMIT 1);
UPDATE users SET nick_name='嘻嘻哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18529279793';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570986156', 'U13570986156', 'Rex', '', '13570986156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-01-27 16:47:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570986156' LIMIT 1);
UPDATE users SET nick_name='Rex', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13570986156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802446001', 'U13802446001', 'doremi', '', '13802446001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-01-27 14:59:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802446001' LIMIT 1);
UPDATE users SET nick_name='doremi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13802446001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17806708698', 'U17806708698', '。', '', '17806708698', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-27 14:44:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17806708698' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17806708698';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15002028681', 'U15002028681', '正在成长的羊肉串同学', '', '15002028681', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-27 13:30:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15002028681' LIMIT 1);
UPDATE users SET nick_name='正在成长的羊肉串同学', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15002028681';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570964057', 'U13570964057', '姚先生', '', '13570964057', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 154, '2025-01-27 12:59:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570964057' LIMIT 1);
UPDATE users SET nick_name='姚先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 154) WHERE phone='13570964057';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560122012', 'U13560122012', '琵琶', '', '13560122012', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-27 11:58:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560122012' LIMIT 1);
UPDATE users SET nick_name='琵琶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560122012';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565059066', 'U18565059066', 'Passion陈忱', '', '18565059066', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-27 11:04:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565059066' LIMIT 1);
UPDATE users SET nick_name='Passion陈忱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565059066';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800048960', 'U15800048960', 'Young_涌仔', '', '15800048960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-27 09:25:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800048960' LIMIT 1);
UPDATE users SET nick_name='Young_涌仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800048960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430336343', 'U13430336343', '13430336343', '', '13430336343', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-26 14:34:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430336343' LIMIT 1);
UPDATE users SET nick_name='13430336343', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430336343';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18518638163', 'U18518638163', 'Jade', '', '18518638163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 179, '2025-01-26 11:08:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18518638163' LIMIT 1);
UPDATE users SET nick_name='Jade', balance=GREATEST(balance, 0.00), points=GREATEST(points, 179) WHERE phone='18518638163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924030604', 'U13924030604', '13924030604', '', '13924030604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-26 11:05:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924030604' LIMIT 1);
UPDATE users SET nick_name='13924030604', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924030604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600081434', 'U13600081434', '13600081434', '', '13600081434', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-25 20:11:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600081434' LIMIT 1);
UPDATE users SET nick_name='13600081434', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600081434';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925091721', 'U13925091721', '13925091721', '', '13925091721', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-25 16:39:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925091721' LIMIT 1);
UPDATE users SET nick_name='13925091721', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925091721';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19157408492', 'U19157408492', 'Kimmy', '', '19157408492', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-25 15:30:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19157408492' LIMIT 1);
UPDATE users SET nick_name='Kimmy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='19157408492';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580955456', 'U13580955456', '13580955456', '', '13580955456', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-25 11:48:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580955456' LIMIT 1);
UPDATE users SET nick_name='13580955456', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580955456';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826051050', 'U13826051050', 'A', '', '13826051050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-25 11:10:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826051050' LIMIT 1);
UPDATE users SET nick_name='A', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826051050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018756785', 'U15018756785', '豪情酸菜鱼', '', '15018756785', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-01-25 09:39:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018756785' LIMIT 1);
UPDATE users SET nick_name='豪情酸菜鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15018756785';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570354730', 'U13570354730', 'bp', '', '13570354730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1068, '2025-01-24 23:33:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570354730' LIMIT 1);
UPDATE users SET nick_name='bp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1068) WHERE phone='13570354730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924117339', 'U13924117339', '云', '', '13924117339', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-24 20:10:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924117339' LIMIT 1);
UPDATE users SET nick_name='云', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924117339';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710960463', 'U13710960463', '13710960463', '', '13710960463', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-24 19:10:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710960463' LIMIT 1);
UPDATE users SET nick_name='13710960463', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710960463';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316166226', 'U13316166226', '蓝兰', '', '13316166226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-24 16:01:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316166226' LIMIT 1);
UPDATE users SET nick_name='蓝兰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316166226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600000610', 'U13600000610', 'TL-Fan', '', '13600000610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-01-24 13:49:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600000610' LIMIT 1);
UPDATE users SET nick_name='TL-Fan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13600000610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18024584252', 'U18024584252', 'Mi', '', '18024584252', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-24 12:22:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18024584252' LIMIT 1);
UPDATE users SET nick_name='Mi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18024584252';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19230185027', 'U19230185027', '关关', '', '19230185027', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-23 22:26:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19230185027' LIMIT 1);
UPDATE users SET nick_name='关关', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19230185027';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600000399', 'U13600000399', '周泽铭', '', '13600000399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-23 20:52:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600000399' LIMIT 1);
UPDATE users SET nick_name='周泽铭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600000399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14758712818', 'U14758712818', '方', '', '14758712818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-23 17:23:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14758712818' LIMIT 1);
UPDATE users SET nick_name='方', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='14758712818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13203132891', 'U13203132891', '梧桐', '', '13203132891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-23 15:27:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13203132891' LIMIT 1);
UPDATE users SET nick_name='梧桐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13203132891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19102080020', 'U19102080020', '帅哥', '', '19102080020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-23 14:39:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19102080020' LIMIT 1);
UPDATE users SET nick_name='帅哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='19102080020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924246113', 'U18924246113', 'HAILEY森', '', '18924246113', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-22 18:58:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924246113' LIMIT 1);
UPDATE users SET nick_name='HAILEY森', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924246113';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18696617136', 'U18696617136', '18696617136', '', '18696617136', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-22 18:05:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18696617136' LIMIT 1);
UPDATE users SET nick_name='18696617136', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18696617136';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826071537', 'U13826071537', 'vin', '', '13826071537', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-01-22 12:21:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826071537' LIMIT 1);
UPDATE users SET nick_name='vin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13826071537';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902378866', 'U18902378866', 'Bryce', '', '18902378866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-22 11:22:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902378866' LIMIT 1);
UPDATE users SET nick_name='Bryce', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18902378866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808882431', 'U13808882431', '13808882431', '', '13808882431', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-22 11:11:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808882431' LIMIT 1);
UPDATE users SET nick_name='13808882431', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808882431';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631398651', 'U13631398651', 'Ki', '', '13631398651', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-01-22 10:43:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631398651' LIMIT 1);
UPDATE users SET nick_name='Ki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13631398651';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610181410', 'U13610181410', 'Eric💭', '', '13610181410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-22 10:28:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610181410' LIMIT 1);
UPDATE users SET nick_name='Eric💭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13610181410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18903006543', 'U18903006543', '18903006543', '', '18903006543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-21 12:07:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18903006543' LIMIT 1);
UPDATE users SET nick_name='18903006543', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18903006543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18576810100', 'U18576810100', 'ZY', '', '18576810100', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 946, '2025-01-21 11:44:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18576810100' LIMIT 1);
UPDATE users SET nick_name='ZY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 946) WHERE phone='18576810100';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17820517726', 'U17820517726', '17820517726', '', '17820517726', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-20 17:21:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17820517726' LIMIT 1);
UPDATE users SET nick_name='17820517726', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17820517726';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13772519071', 'U13772519071', '13772519071', '', '13772519071', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-20 16:11:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13772519071' LIMIT 1);
UPDATE users SET nick_name='13772519071', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13772519071';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620975596', 'U17620975596', 'xuan', '', '17620975596', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-20 15:44:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620975596' LIMIT 1);
UPDATE users SET nick_name='xuan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620975596';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902297851', 'U13902297851', '13902297851', '', '13902297851', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-20 15:16:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902297851' LIMIT 1);
UPDATE users SET nick_name='13902297851', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902297851';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815889695', 'U15815889695', 'Leo', '', '15815889695', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-01-19 18:21:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815889695' LIMIT 1);
UPDATE users SET nick_name='Leo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15815889695';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392136296', 'U13392136296', '小何', '', '13392136296', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-19 17:38:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392136296' LIMIT 1);
UPDATE users SET nick_name='小何', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392136296';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18617362712', 'U18617362712', '18617362712', '', '18617362712', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-19 15:54:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18617362712' LIMIT 1);
UPDATE users SET nick_name='18617362712', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18617362712';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538950853', 'U13538950853', '幕玲珑', '', '13538950853', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-19 14:55:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538950853' LIMIT 1);
UPDATE users SET nick_name='幕玲珑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538950853';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928008816', 'U18928008816', '罗紫嘉', '', '18928008816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-19 13:39:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928008816' LIMIT 1);
UPDATE users SET nick_name='罗紫嘉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928008816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18977488203', 'U18977488203', '张余歌', '', '18977488203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-19 11:54:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18977488203' LIMIT 1);
UPDATE users SET nick_name='张余歌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18977488203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632437922', 'U13632437922', '银鱼', '', '13632437922', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-19 09:57:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632437922' LIMIT 1);
UPDATE users SET nick_name='银鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632437922';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802088503', 'U18802088503', '18802088503', '', '18802088503', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-18 21:12:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802088503' LIMIT 1);
UPDATE users SET nick_name='18802088503', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802088503';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814136721', 'U18814136721', '看看蟹黄堡秘方^', '', '18814136721', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-18 20:22:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814136721' LIMIT 1);
UPDATE users SET nick_name='看看蟹黄堡秘方^', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814136721';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19731160732', 'U19731160732', '19731160732', '', '19731160732', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-18 20:20:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19731160732' LIMIT 1);
UPDATE users SET nick_name='19731160732', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19731160732';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18927607129', 'U18927607129', '该账号已被注消。', '', '18927607129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-18 19:43:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18927607129' LIMIT 1);
UPDATE users SET nick_name='该账号已被注消。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18927607129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18088877076', 'U18088877076', '18088877076', '', '18088877076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-18 17:46:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18088877076' LIMIT 1);
UPDATE users SET nick_name='18088877076', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18088877076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450716970', 'U13450716970', '哈的第十七次方', '', '13450716970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-18 15:49:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450716970' LIMIT 1);
UPDATE users SET nick_name='哈的第十七次方', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450716970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529464449', 'U18529464449', 'f', '', '18529464449', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-18 13:04:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529464449' LIMIT 1);
UPDATE users SET nick_name='f', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529464449';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13423610361', 'U13423610361', '13423610361', '', '13423610361', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-18 11:31:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13423610361' LIMIT 1);
UPDATE users SET nick_name='13423610361', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13423610361';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535324080', 'U13535324080', '小九九', '', '13535324080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 136, '2025-01-18 10:27:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535324080' LIMIT 1);
UPDATE users SET nick_name='小九九', balance=GREATEST(balance, 0.00), points=GREATEST(points, 136) WHERE phone='13535324080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926427978', 'U13926427978', 'ss', '', '13926427978', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-18 09:59:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926427978' LIMIT 1);
UPDATE users SET nick_name='ss', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13926427978';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17611055810', 'U17611055810', 'Vicky', '', '17611055810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-01-17 22:11:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17611055810' LIMIT 1);
UPDATE users SET nick_name='Vicky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='17611055810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902496614', 'U13902496614', 'AK', '', '13902496614', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-01-17 22:07:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902496614' LIMIT 1);
UPDATE users SET nick_name='AK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13902496614';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022277076', 'U18022277076', 'Accident🦊', '', '18022277076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-17 20:33:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022277076' LIMIT 1);
UPDATE users SET nick_name='Accident🦊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022277076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19520964089', 'U19520964089', '1139', '', '19520964089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-17 18:43:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19520964089' LIMIT 1);
UPDATE users SET nick_name='1139', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19520964089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16676753541', 'U16676753541', '16676753541', '', '16676753541', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-17 17:55:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16676753541' LIMIT 1);
UPDATE users SET nick_name='16676753541', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16676753541';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922306421', 'U13922306421', 'charming', '', '13922306421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-17 15:20:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922306421' LIMIT 1);
UPDATE users SET nick_name='charming', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922306421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18128425974', 'U18128425974', '18128425974', '', '18128425974', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-17 12:54:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18128425974' LIMIT 1);
UPDATE users SET nick_name='18128425974', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18128425974';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724116413', 'U13724116413', '13724116413', '', '13724116413', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-17 12:53:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724116413' LIMIT 1);
UPDATE users SET nick_name='13724116413', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724116413';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018474732', 'U15018474732', 'Seven', '', '15018474732', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-17 12:15:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018474732' LIMIT 1);
UPDATE users SET nick_name='Seven', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018474732';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560358495', 'U13560358495', '13560358495', '', '13560358495', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-17 11:13:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560358495' LIMIT 1);
UPDATE users SET nick_name='13560358495', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560358495';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710678329', 'U13710678329', 'Lian', '', '13710678329', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-01-17 10:10:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710678329' LIMIT 1);
UPDATE users SET nick_name='Lian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13710678329';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13199703806', 'U13199703806', 'Craven', '', '13199703806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-16 20:23:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13199703806' LIMIT 1);
UPDATE users SET nick_name='Craven', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13199703806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13779939035', 'U13779939035', 'Xiaoyu Huang', '', '13779939035', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-16 19:58:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13779939035' LIMIT 1);
UPDATE users SET nick_name='Xiaoyu Huang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13779939035';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15992200445', 'U15992200445', 'Angel.Ho', '', '15992200445', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-16 15:14:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15992200445' LIMIT 1);
UPDATE users SET nick_name='Angel.Ho', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15992200445';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17610070962', 'U17610070962', 'mrvn', '', '17610070962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-01-16 15:14:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17610070962' LIMIT 1);
UPDATE users SET nick_name='mrvn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='17610070962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18420277645', 'U18420277645', '18420277645', '', '18420277645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-16 14:35:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18420277645' LIMIT 1);
UPDATE users SET nick_name='18420277645', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18420277645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876197961', 'U15876197961', 'lk.', '', '15876197961', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-01-16 12:17:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876197961' LIMIT 1);
UPDATE users SET nick_name='lk.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15876197961';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15005085277', 'U15005085277', 'Joelliane', '', '15005085277', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-01-16 02:03:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15005085277' LIMIT 1);
UPDATE users SET nick_name='Joelliane', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15005085277';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19200418693', 'U19200418693', 'Manbo', '', '19200418693', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-15 18:35:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19200418693' LIMIT 1);
UPDATE users SET nick_name='Manbo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19200418693';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13630130603', 'U13630130603', '13630130603', '', '13630130603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-15 15:21:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13630130603' LIMIT 1);
UPDATE users SET nick_name='13630130603', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13630130603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416143553', 'U13416143553', '罗xx🌟', '', '13416143553', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-15 14:03:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416143553' LIMIT 1);
UPDATE users SET nick_name='罗xx🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416143553';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13523046052', 'U13523046052', '13523046052', '', '13523046052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-15 13:51:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13523046052' LIMIT 1);
UPDATE users SET nick_name='13523046052', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13523046052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450281117', 'U13450281117', '李别管🧸', '', '13450281117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-15 12:19:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450281117' LIMIT 1);
UPDATE users SET nick_name='李别管🧸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450281117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710899175', 'U13710899175', 'Mikakaka💫', '', '13710899175', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-15 12:09:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710899175' LIMIT 1);
UPDATE users SET nick_name='Mikakaka💫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710899175';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680226003', 'U18680226003', '夫Jeff', '', '18680226003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-14 18:10:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680226003' LIMIT 1);
UPDATE users SET nick_name='夫Jeff', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680226003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322051879', 'U17322051879', '努力稳定的小树', '', '17322051879', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-14 17:45:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322051879' LIMIT 1);
UPDATE users SET nick_name='努力稳定的小树', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322051879';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889926269', 'U15889926269', 'xuaner', '', '15889926269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-14 11:48:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889926269' LIMIT 1);
UPDATE users SET nick_name='xuaner', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889926269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312222950', 'U18312222950', '18312222950', '', '18312222950', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-13 21:06:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312222950' LIMIT 1);
UPDATE users SET nick_name='18312222950', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312222950';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724040160', 'U13724040160', '呆呆', '', '13724040160', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-13 20:48:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724040160' LIMIT 1);
UPDATE users SET nick_name='呆呆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724040160';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15797862569', 'U15797862569', '春', '', '15797862569', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-13 18:50:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15797862569' LIMIT 1);
UPDATE users SET nick_name='春', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15797862569';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876538159', 'U15876538159', '娟', '', '15876538159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 289, '2025-01-13 17:29:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876538159' LIMIT 1);
UPDATE users SET nick_name='娟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 289) WHERE phone='15876538159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19102039127', 'U19102039127', '19102039127', '', '19102039127', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-13 17:25:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19102039127' LIMIT 1);
UPDATE users SET nick_name='19102039127', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19102039127';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813327475', 'U15813327475', '瑜b', '', '15813327475', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2025-01-13 15:39:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813327475' LIMIT 1);
UPDATE users SET nick_name='瑜b', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='15813327475';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580479138', 'U13580479138', 'qq', '', '13580479138', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-13 12:52:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580479138' LIMIT 1);
UPDATE users SET nick_name='qq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13580479138';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18200897240', 'U18200897240', 'q', '', '18200897240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-13 12:50:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18200897240' LIMIT 1);
UPDATE users SET nick_name='q', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18200897240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18681539127', 'U18681539127', '小蓝', '', '18681539127', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-13 12:44:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18681539127' LIMIT 1);
UPDATE users SET nick_name='小蓝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18681539127';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760784157', 'U13760784157', '13760784157', '', '13760784157', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-13 12:04:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760784157' LIMIT 1);
UPDATE users SET nick_name='13760784157', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760784157';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13326462207', 'U13326462207', '13326462207', '', '13326462207', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-13 11:06:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13326462207' LIMIT 1);
UPDATE users SET nick_name='13326462207', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13326462207';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998401668', 'U18998401668', 'tank', '', '18998401668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 175, '2025-01-12 19:08:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998401668' LIMIT 1);
UPDATE users SET nick_name='tank', balance=GREATEST(balance, 0.00), points=GREATEST(points, 175) WHERE phone='18998401668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14743664324', 'U14743664324', '14743664324', '', '14743664324', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-12 18:16:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14743664324' LIMIT 1);
UPDATE users SET nick_name='14743664324', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14743664324';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18206600688', 'U18206600688', 'chow', '', '18206600688', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-12 16:41:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18206600688' LIMIT 1);
UPDATE users SET nick_name='chow', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18206600688';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688498384', 'U18688498384', '18688498384', '', '18688498384', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-12 16:36:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688498384' LIMIT 1);
UPDATE users SET nick_name='18688498384', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688498384';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13597230119', 'U13597230119', '13597230119', '', '13597230119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-12 14:59:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13597230119' LIMIT 1);
UPDATE users SET nick_name='13597230119', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13597230119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18868682699', 'U18868682699', '壳壳湫', '', '18868682699', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-12 14:37:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18868682699' LIMIT 1);
UPDATE users SET nick_name='壳壳湫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18868682699';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14743608580', 'U14743608580', '14743608580', '', '14743608580', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-12 14:06:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14743608580' LIMIT 1);
UPDATE users SET nick_name='14743608580', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14743608580';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435822967', 'U13435822967', 'Pro', '', '13435822967', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-12 13:39:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435822967' LIMIT 1);
UPDATE users SET nick_name='Pro', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13435822967';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122796625', 'U18122796625', 'Jin', '', '18122796625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 147, '2025-01-12 13:36:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122796625' LIMIT 1);
UPDATE users SET nick_name='Jin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 147) WHERE phone='18122796625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15618656959', 'U15618656959', 'Judy', '', '15618656959', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-12 13:34:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15618656959' LIMIT 1);
UPDATE users SET nick_name='Judy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15618656959';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18305158950', 'U18305158950', '曹先森', '', '18305158950', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-12 13:16:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18305158950' LIMIT 1);
UPDATE users SET nick_name='曹先森', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18305158950';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15711722558', 'U15711722558', '钟先生', '', '15711722558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-01-12 12:43:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15711722558' LIMIT 1);
UPDATE users SET nick_name='钟先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='15711722558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15970115521', 'U15970115521', '15970115521', '', '15970115521', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-12 11:36:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15970115521' LIMIT 1);
UPDATE users SET nick_name='15970115521', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15970115521';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14749648175', 'U14749648175', '14749648175', '', '14749648175', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-12 10:54:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14749648175' LIMIT 1);
UPDATE users SET nick_name='14749648175', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14749648175';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665708282', 'U17665708282', '顺琦自然', '', '17665708282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-11 18:31:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665708282' LIMIT 1);
UPDATE users SET nick_name='顺琦自然', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665708282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13703062521', 'U13703062521', '派对网球🎾嘉仪', '', '13703062521', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-11 18:21:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13703062521' LIMIT 1);
UPDATE users SET nick_name='派对网球🎾嘉仪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13703062521';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13104982168', 'U13104982168', '麻辣兔头', '', '13104982168', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-11 18:19:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13104982168' LIMIT 1);
UPDATE users SET nick_name='麻辣兔头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13104982168';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512714027', 'U13512714027', '龙', '', '13512714027', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-11 17:03:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512714027' LIMIT 1);
UPDATE users SET nick_name='龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512714027';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622291605', 'U15622291605', '猛龙', '', '15622291605', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 136, '2025-01-11 16:54:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622291605' LIMIT 1);
UPDATE users SET nick_name='猛龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 136) WHERE phone='15622291605';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819130301', 'U18819130301', 'Aki', '', '18819130301', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-11 16:33:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819130301' LIMIT 1);
UPDATE users SET nick_name='Aki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819130301';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312878842', 'U18312878842', '好吧宝宝', '', '18312878842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-11 16:24:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312878842' LIMIT 1);
UPDATE users SET nick_name='好吧宝宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312878842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928862236', 'U18928862236', '海阔天空', '', '18928862236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-01-11 15:33:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928862236' LIMIT 1);
UPDATE users SET nick_name='海阔天空', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='18928862236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565299592', 'U18565299592', 'Nocturne', '', '18565299592', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-11 15:23:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565299592' LIMIT 1);
UPDATE users SET nick_name='Nocturne', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565299592';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631457689', 'U13631457689', '13631457689', '', '13631457689', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-11 15:16:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631457689' LIMIT 1);
UPDATE users SET nick_name='13631457689', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631457689';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986348120', 'U15986348120', '罗', '', '15986348120', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-01-11 15:12:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986348120' LIMIT 1);
UPDATE users SET nick_name='罗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='15986348120';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18219124810', 'U18219124810', '铁花', '', '18219124810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-11 15:07:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18219124810' LIMIT 1);
UPDATE users SET nick_name='铁花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18219124810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922418968', 'U13922418968', '周元松', '', '13922418968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-11 14:34:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922418968' LIMIT 1);
UPDATE users SET nick_name='周元松', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922418968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19124216793', 'U19124216793', '一米', '', '19124216793', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 94, '2025-01-11 14:01:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19124216793' LIMIT 1);
UPDATE users SET nick_name='一米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 94) WHERE phone='19124216793';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15959282650', 'U15959282650', 'Hhha爲', '', '15959282650', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-11 13:30:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15959282650' LIMIT 1);
UPDATE users SET nick_name='Hhha爲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15959282650';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760898890', 'U13760898890', '13760898890', '', '13760898890', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-01-11 10:00:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760898890' LIMIT 1);
UPDATE users SET nick_name='13760898890', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13760898890';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620285891', 'U18620285891', 'kk', '', '18620285891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-01-10 19:46:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620285891' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18620285891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622172721', 'U15622172721', 'N君', '', '15622172721', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-10 18:24:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622172721' LIMIT 1);
UPDATE users SET nick_name='N君', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622172721';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250316490', 'U13250316490', '小小七', '', '13250316490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-10 18:16:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250316490' LIMIT 1);
UPDATE users SET nick_name='小小七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250316490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631224204', 'U13631224204', '越前龙马', '', '13631224204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-10 18:09:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631224204' LIMIT 1);
UPDATE users SET nick_name='越前龙马', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631224204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13944337728', 'U13944337728', '陈💦🍀', '', '13944337728', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-10 17:51:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13944337728' LIMIT 1);
UPDATE users SET nick_name='陈💦🍀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13944337728';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18929598815', 'U18929598815', 'Jess', '', '18929598815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-10 16:45:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18929598815' LIMIT 1);
UPDATE users SET nick_name='Jess', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18929598815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913179509', 'U15913179509', '一颗苹果🍎', '', '15913179509', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-10 16:25:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913179509' LIMIT 1);
UPDATE users SET nick_name='一颗苹果🍎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913179509';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18239346938', 'U18239346938', '溯洄星河', '', '18239346938', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-10 15:56:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18239346938' LIMIT 1);
UPDATE users SET nick_name='溯洄星河', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18239346938';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826273204', 'U18826273204', 'Lok', '', '18826273204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-10 14:21:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826273204' LIMIT 1);
UPDATE users SET nick_name='Lok', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826273204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312572469', 'U13312572469', '潇宝', '', '13312572469', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-10 13:59:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312572469' LIMIT 1);
UPDATE users SET nick_name='潇宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13312572469';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17724264395', 'U17724264395', '菠萝', '', '17724264395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-10 11:51:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17724264395' LIMIT 1);
UPDATE users SET nick_name='菠萝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17724264395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13424944410', 'U13424944410', '三米', '', '13424944410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-10 11:45:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13424944410' LIMIT 1);
UPDATE users SET nick_name='三米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13424944410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18627754965', 'U18627754965', 'Echo💋😶', '', '18627754965', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-10 11:26:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18627754965' LIMIT 1);
UPDATE users SET nick_name='Echo💋😶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18627754965';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520416403', 'U18520416403', '徐', '', '18520416403', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-10 11:19:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520416403' LIMIT 1);
UPDATE users SET nick_name='徐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18520416403';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13005959210', 'U13005959210', '27', '', '13005959210', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-10 10:57:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13005959210' LIMIT 1);
UPDATE users SET nick_name='27', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13005959210';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18161063511', 'U18161063511', '小鹿', '', '18161063511', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-10 09:12:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18161063511' LIMIT 1);
UPDATE users SET nick_name='小鹿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18161063511';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825185637', 'U13825185637', '胡椒小姐', '', '13825185637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-10 03:07:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825185637' LIMIT 1);
UPDATE users SET nick_name='胡椒小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825185637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876177050', 'U15876177050', '咩咩小羊', '', '15876177050', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-09 22:11:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876177050' LIMIT 1);
UPDATE users SET nick_name='咩咩小羊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876177050';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560388883', 'U13560388883', 'lc', '', '13560388883', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-09 20:49:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560388883' LIMIT 1);
UPDATE users SET nick_name='lc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13560388883';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610124833', 'U13610124833', 'Herbert', '', '13610124833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-01-09 20:19:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610124833' LIMIT 1);
UPDATE users SET nick_name='Herbert', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13610124833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19124351537', 'U19124351537', '小可爱', '', '19124351537', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-09 18:59:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19124351537' LIMIT 1);
UPDATE users SET nick_name='小可爱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19124351537';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822280314', 'U13822280314', '超超', '', '13822280314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-09 17:17:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822280314' LIMIT 1);
UPDATE users SET nick_name='超超', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822280314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113319445', 'U13113319445', '13113319445', '', '13113319445', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-09 17:13:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113319445' LIMIT 1);
UPDATE users SET nick_name='13113319445', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13113319445';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989175037', 'U15989175037', '15989175037', '', '15989175037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-09 15:59:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989175037' LIMIT 1);
UPDATE users SET nick_name='15989175037', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989175037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632460038', 'U13632460038', '13632460038', '', '13632460038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-09 15:19:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632460038' LIMIT 1);
UPDATE users SET nick_name='13632460038', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632460038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919427979', 'U15919427979', '乔三斤', '', '15919427979', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-09 12:05:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919427979' LIMIT 1);
UPDATE users SET nick_name='乔三斤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919427979';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828206388', 'U13828206388', '🍳🍳🍳', '', '13828206388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-09 11:48:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828206388' LIMIT 1);
UPDATE users SET nick_name='🍳🍳🍳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828206388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18601777976', 'U18601777976', '18601777976', '', '18601777976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-09 11:05:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18601777976' LIMIT 1);
UPDATE users SET nick_name='18601777976', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18601777976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512759087', 'U13512759087', 'A.Suki', '', '13512759087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 17, '2025-01-09 09:58:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512759087' LIMIT 1);
UPDATE users SET nick_name='A.Suki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 17) WHERE phone='13512759087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502050340', 'U18502050340', '18502050340', '', '18502050340', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-08 20:15:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502050340' LIMIT 1);
UPDATE users SET nick_name='18502050340', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18502050340';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229366960', 'U13229366960', '。zz', '', '13229366960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-08 19:10:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229366960' LIMIT 1);
UPDATE users SET nick_name='。zz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229366960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18611111111', 'U18611111111', '18611111111', '', '18611111111', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-08 17:50:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18611111111' LIMIT 1);
UPDATE users SET nick_name='18611111111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18611111111';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926202935', 'U13926202935', '13926202935', '', '13926202935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-08 14:35:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926202935' LIMIT 1);
UPDATE users SET nick_name='13926202935', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926202935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660895404', 'U13660895404', 'BabeWinnie', '', '13660895404', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-08 12:42:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660895404' LIMIT 1);
UPDATE users SET nick_name='BabeWinnie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660895404';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18859550203', 'U18859550203', 'momo', '', '18859550203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-08 11:53:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18859550203' LIMIT 1);
UPDATE users SET nick_name='momo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18859550203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13310892192', 'U13310892192', '山野村人', '', '13310892192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-08 10:21:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13310892192' LIMIT 1);
UPDATE users SET nick_name='山野村人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13310892192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600009833', 'U13600009833', '星空', '', '13600009833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-01-07 22:29:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600009833' LIMIT 1);
UPDATE users SET nick_name='星空', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13600009833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392111911', 'U13392111911', '13392111911', '', '13392111911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-07 20:41:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392111911' LIMIT 1);
UPDATE users SET nick_name='13392111911', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392111911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533755346', 'U13533755346', 'K', '', '13533755346', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-07 17:49:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533755346' LIMIT 1);
UPDATE users SET nick_name='K', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533755346';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665418893', 'U17665418893', '17665418893', '', '17665418893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-07 16:02:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665418893' LIMIT 1);
UPDATE users SET nick_name='17665418893', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665418893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925161164', 'U13925161164', '元晋', '', '13925161164', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-07 15:39:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925161164' LIMIT 1);
UPDATE users SET nick_name='元晋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925161164';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19867659146', 'U19867659146', '19867659146', '', '19867659146', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-07 15:09:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19867659146' LIMIT 1);
UPDATE users SET nick_name='19867659146', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19867659146';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763339808', 'U13763339808', '刘', '', '13763339808', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-07 13:35:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763339808' LIMIT 1);
UPDATE users SET nick_name='刘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763339808';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13187168558', 'U13187168558', 'Rollote', '', '13187168558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-01-07 12:41:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13187168558' LIMIT 1);
UPDATE users SET nick_name='Rollote', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13187168558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13678917215', 'U13678917215', '13678917215', '', '13678917215', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-06 21:08:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13678917215' LIMIT 1);
UPDATE users SET nick_name='13678917215', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13678917215';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975634459', 'U15975634459', '15975634459', '', '15975634459', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-06 20:49:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975634459' LIMIT 1);
UPDATE users SET nick_name='15975634459', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975634459';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521606432', 'U15521606432', 'annaccone', '', '15521606432', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-06 16:56:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521606432' LIMIT 1);
UPDATE users SET nick_name='annaccone', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15521606432';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899979468', 'U15899979468', '花lulu  ོ', '', '15899979468', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-06 16:10:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899979468' LIMIT 1);
UPDATE users SET nick_name='花lulu  ོ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15899979468';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820029610', 'U18820029610', '雪梨', '', '18820029610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-06 15:46:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820029610' LIMIT 1);
UPDATE users SET nick_name='雪梨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820029610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926464959', 'U13926464959', '信', '', '13926464959', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-01-06 14:58:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926464959' LIMIT 1);
UPDATE users SET nick_name='信', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13926464959';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15682030979', 'U15682030979', '米大鑫儿', '', '15682030979', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-06 14:49:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15682030979' LIMIT 1);
UPDATE users SET nick_name='米大鑫儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15682030979';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826497858', 'U18826497858', '1', '', '18826497858', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-06 14:24:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826497858' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826497858';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819492079', 'U18819492079', 'Echew', '', '18819492079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-06 14:22:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819492079' LIMIT 1);
UPDATE users SET nick_name='Echew', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819492079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322056574', 'U15322056574', '花地湾', '', '15322056574', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-06 12:53:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322056574' LIMIT 1);
UPDATE users SET nick_name='花地湾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15322056574';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920436432', 'U15920436432', '🐴', '', '15920436432', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-06 11:33:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920436432' LIMIT 1);
UPDATE users SET nick_name='🐴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920436432';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18319540315', 'U18319540315', 'Miuko', '', '18319540315', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-01-05 22:27:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18319540315' LIMIT 1);
UPDATE users SET nick_name='Miuko', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18319540315';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626418403', 'U15626418403', 'Yun', '', '15626418403', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 21:20:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626418403' LIMIT 1);
UPDATE users SET nick_name='Yun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626418403';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824421462', 'U13824421462', '13824421462', '', '13824421462', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 21:06:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824421462' LIMIT 1);
UPDATE users SET nick_name='13824421462', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824421462';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13737488822', 'U13737488822', '22', '', '13737488822', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-05 19:55:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13737488822' LIMIT 1);
UPDATE users SET nick_name='22', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13737488822';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19536786875', 'U19536786875', '郁闷小土豆ଲ', '', '19536786875', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 19:39:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19536786875' LIMIT 1);
UPDATE users SET nick_name='郁闷小土豆ଲ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19536786875';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570270044', 'U13570270044', '陈情男♂', '', '13570270044', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 998, '2025-01-05 17:08:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570270044' LIMIT 1);
UPDATE users SET nick_name='陈情男♂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 998) WHERE phone='13570270044';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620161496', 'U18620161496', 'JR', '', '18620161496', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 15:45:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620161496' LIMIT 1);
UPDATE users SET nick_name='JR', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620161496';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986879356', 'U15986879356', '15986879356', '', '15986879356', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 15:20:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986879356' LIMIT 1);
UPDATE users SET nick_name='15986879356', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15986879356';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13367352066', 'U13367352066', '张倍铭', '', '13367352066', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 14:41:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13367352066' LIMIT 1);
UPDATE users SET nick_name='张倍铭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13367352066';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18821706923', 'U18821706923', '半川斜阳半山雨', '', '18821706923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-05 14:33:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18821706923' LIMIT 1);
UPDATE users SET nick_name='半川斜阳半山雨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18821706923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640240964', 'U13640240964', '13640240964', '', '13640240964', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 14:10:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640240964' LIMIT 1);
UPDATE users SET nick_name='13640240964', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640240964';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18188941403', 'U18188941403', '18188941403', '', '18188941403', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 13:54:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18188941403' LIMIT 1);
UPDATE users SET nick_name='18188941403', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18188941403';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521167976', 'U15521167976', '15521167976', '', '15521167976', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 13:52:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521167976' LIMIT 1);
UPDATE users SET nick_name='15521167976', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521167976';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802513246', 'U13802513246', '皮哥', '', '13802513246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 13:35:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802513246' LIMIT 1);
UPDATE users SET nick_name='皮哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802513246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17700616786', 'U17700616786', 'Teresa', '', '17700616786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 13:16:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17700616786' LIMIT 1);
UPDATE users SET nick_name='Teresa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17700616786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588619148', 'U18588619148', '18588619148', '', '18588619148', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 10:26:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588619148' LIMIT 1);
UPDATE users SET nick_name='18588619148', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588619148';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14778154488', 'U14778154488', '14778154488', '', '14778154488', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 10:25:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14778154488' LIMIT 1);
UPDATE users SET nick_name='14778154488', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14778154488';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902265153', 'U13902265153', 'Kevin珑', '', '13902265153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-05 09:46:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902265153' LIMIT 1);
UPDATE users SET nick_name='Kevin珑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902265153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102002966', 'U15102002966', '拉拉裤', '', '15102002966', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-04 19:46:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102002966' LIMIT 1);
UPDATE users SET nick_name='拉拉裤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15102002966';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578788284', 'U18578788284', 'sunny游', '', '18578788284', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-04 18:54:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578788284' LIMIT 1);
UPDATE users SET nick_name='sunny游', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578788284';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15600086119', 'U15600086119', '你好', '', '15600086119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-04 14:54:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15600086119' LIMIT 1);
UPDATE users SET nick_name='你好', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15600086119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17506063541', 'U17506063541', 'Arya', '', '17506063541', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-04 14:34:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17506063541' LIMIT 1);
UPDATE users SET nick_name='Arya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17506063541';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18506617172', 'U18506617172', 'Fhgdnjg', '', '18506617172', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-04 14:26:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18506617172' LIMIT 1);
UPDATE users SET nick_name='Fhgdnjg', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18506617172';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826461032', 'U13826461032', 'eivlys', '', '13826461032', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2025-01-04 11:02:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826461032' LIMIT 1);
UPDATE users SET nick_name='eivlys', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13826461032';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826273193', 'U18826273193', '默', '', '18826273193', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-04 10:22:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826273193' LIMIT 1);
UPDATE users SET nick_name='默', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826273193';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922399570', 'U13922399570', '孟鲁司特', '', '13922399570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-03 23:26:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922399570' LIMIT 1);
UPDATE users SET nick_name='孟鲁司特', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922399570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433960930', 'U13433960930', '13433960930', '', '13433960930', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-03 21:59:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433960930' LIMIT 1);
UPDATE users SET nick_name='13433960930', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433960930';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922141027', 'U18922141027', '嘻嘻', '', '18922141027', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-03 14:49:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922141027' LIMIT 1);
UPDATE users SET nick_name='嘻嘻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922141027';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13086642965', 'U13086642965', '13086642965', '', '13086642965', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-03 14:22:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13086642965' LIMIT 1);
UPDATE users SET nick_name='13086642965', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13086642965';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625075156', 'U15625075156', '15625075156', '', '15625075156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-03 14:05:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625075156' LIMIT 1);
UPDATE users SET nick_name='15625075156', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625075156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15963109951', 'U15963109951', '15963109951', '', '15963109951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-02 20:54:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15963109951' LIMIT 1);
UPDATE users SET nick_name='15963109951', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15963109951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13428872824', 'U13428872824', '13428872824', '', '13428872824', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-02 20:11:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13428872824' LIMIT 1);
UPDATE users SET nick_name='13428872824', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13428872824';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533114005', 'U13533114005', '😘coco😘', '', '13533114005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 417, '2025-01-02 19:38:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533114005' LIMIT 1);
UPDATE users SET nick_name='😘coco😘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 417) WHERE phone='13533114005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15119791312', 'U15119791312', '布蕾脆脆', '', '15119791312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2025-01-02 18:13:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15119791312' LIMIT 1);
UPDATE users SET nick_name='布蕾脆脆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='15119791312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919332382', 'U15919332382', '--', '', '15919332382', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-02 17:41:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919332382' LIMIT 1);
UPDATE users SET nick_name='--', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919332382';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18222702007', 'U18222702007', '一一', '', '18222702007', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-02 17:23:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18222702007' LIMIT 1);
UPDATE users SET nick_name='一一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18222702007';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814093995', 'U18814093995', 'bC', '', '18814093995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-02 17:14:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814093995' LIMIT 1);
UPDATE users SET nick_name='bC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814093995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15323379959', 'U15323379959', '👽', '', '15323379959', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-02 16:20:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15323379959' LIMIT 1);
UPDATE users SET nick_name='👽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15323379959';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302301644', 'U13302301644', 'tea👀', '', '13302301644', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-02 16:06:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302301644' LIMIT 1);
UPDATE users SET nick_name='tea👀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302301644';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802736664', 'U13802736664', '13802736664', '', '13802736664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-02 11:06:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802736664' LIMIT 1);
UPDATE users SET nick_name='13802736664', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802736664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18801031389', 'U18801031389', '-Liiiii-', '', '18801031389', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-01 16:48:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18801031389' LIMIT 1);
UPDATE users SET nick_name='-Liiiii-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18801031389';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13055292513', 'U13055292513', '13055292513', '', '13055292513', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-01 15:31:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13055292513' LIMIT 1);
UPDATE users SET nick_name='13055292513', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13055292513';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819477507', 'U18819477507', '18819477507', '', '18819477507', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-01 15:10:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819477507' LIMIT 1);
UPDATE users SET nick_name='18819477507', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819477507';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924068966', 'U13924068966', 'Jessica.W', '', '13924068966', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 174, '2025-01-01 13:06:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924068966' LIMIT 1);
UPDATE users SET nick_name='Jessica.W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 174) WHERE phone='13924068966';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15009902170', 'U15009902170', 'nabi', '', '15009902170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-01-01 12:36:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15009902170' LIMIT 1);
UPDATE users SET nick_name='nabi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15009902170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918778252', 'U15918778252', 'kim', '', '15918778252', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-31 17:54:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918778252' LIMIT 1);
UPDATE users SET nick_name='kim', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918778252';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920117899', 'U15920117899', 'thebigblue', '', '15920117899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-31 13:29:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920117899' LIMIT 1);
UPDATE users SET nick_name='thebigblue', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15920117899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027302780', 'U18027302780', 'Young', '', '18027302780', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-31 11:30:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027302780' LIMIT 1);
UPDATE users SET nick_name='Young', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027302780';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999508490', 'U15999508490', '1', '', '15999508490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-30 23:09:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999508490' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999508490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17324238081', 'U17324238081', 'Lydia', '', '17324238081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-30 22:02:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17324238081' LIMIT 1);
UPDATE users SET nick_name='Lydia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17324238081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18977778039', 'U18977778039', '18977778039', '', '18977778039', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-30 20:43:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18977778039' LIMIT 1);
UPDATE users SET nick_name='18977778039', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18977778039';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826621663', 'U18826621663', '18826621663', '', '18826621663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-30 17:44:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826621663' LIMIT 1);
UPDATE users SET nick_name='18826621663', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826621663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18676514402', 'U18676514402', '12', '', '18676514402', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-30 17:12:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18676514402' LIMIT 1);
UPDATE users SET nick_name='12', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18676514402';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622261725', 'U13622261725', '彬仔', '', '13622261725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-12-30 15:17:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622261725' LIMIT 1);
UPDATE users SET nick_name='彬仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13622261725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588769285', 'U18588769285', 'Hors', '', '18588769285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-30 11:51:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588769285' LIMIT 1);
UPDATE users SET nick_name='Hors', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18588769285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500223825', 'U13500223825', 'ShawnLi', '', '13500223825', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-30 11:40:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500223825' LIMIT 1);
UPDATE users SET nick_name='ShawnLi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500223825';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17752660576', 'U17752660576', '17752660576', '', '17752660576', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-29 18:59:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17752660576' LIMIT 1);
UPDATE users SET nick_name='17752660576', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17752660576';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15773914442', 'U15773914442', '15773914442', '', '15773914442', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-29 18:59:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15773914442' LIMIT 1);
UPDATE users SET nick_name='15773914442', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15773914442';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15688227073', 'U15688227073', '15688227073', '', '15688227073', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-29 18:58:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15688227073' LIMIT 1);
UPDATE users SET nick_name='15688227073', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15688227073';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13680591232', 'U13680591232', 'ww', '', '13680591232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-29 18:01:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13680591232' LIMIT 1);
UPDATE users SET nick_name='ww', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13680591232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18597739993', 'U18597739993', 'oïo', '', '18597739993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-29 17:11:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18597739993' LIMIT 1);
UPDATE users SET nick_name='oïo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18597739993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13543456968', 'U13543456968', 'Ta౨ ৎn_ᥫᩣ妍澄', '', '13543456968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-29 13:37:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13543456968' LIMIT 1);
UPDATE users SET nick_name='Ta౨ ৎn_ᥫᩣ妍澄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13543456968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928858253', 'U18928858253', '18928858253', '', '18928858253', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-29 11:18:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928858253' LIMIT 1);
UPDATE users SET nick_name='18928858253', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928858253';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922323220', 'U18922323220', '18922323220', '', '18922323220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-29 10:05:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922323220' LIMIT 1);
UPDATE users SET nick_name='18922323220', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922323220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265126063', 'U13265126063', 'Y', '', '13265126063', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-29 08:55:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265126063' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265126063';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265353192', 'U13265353192', '🌔', '', '13265353192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 22:38:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265353192' LIMIT 1);
UPDATE users SET nick_name='🌔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265353192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665072771', 'U18665072771', '大力', '', '18665072771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 22:35:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665072771' LIMIT 1);
UPDATE users SET nick_name='大力', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665072771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570558077', 'U13570558077', 'Abigail.L', '', '13570558077', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 195, '2024-12-28 18:38:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570558077' LIMIT 1);
UPDATE users SET nick_name='Abigail.L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 195) WHERE phone='13570558077';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13781737121', 'U13781737121', '2531', '', '13781737121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 18:28:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13781737121' LIMIT 1);
UPDATE users SET nick_name='2531', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13781737121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521334003', 'U15521334003', '四月', '', '15521334003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 42, '2024-12-28 17:19:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521334003' LIMIT 1);
UPDATE users SET nick_name='四月', balance=GREATEST(balance, 0.00), points=GREATEST(points, 42) WHERE phone='15521334003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923788822', 'U13923788822', 'MICHAEL', '', '13923788822', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 16:54:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923788822' LIMIT 1);
UPDATE users SET nick_name='MICHAEL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13923788822';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620019059', 'U18620019059', '18620019059', '', '18620019059', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 16:41:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620019059' LIMIT 1);
UPDATE users SET nick_name='18620019059', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620019059';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18938366231', 'U18938366231', '18938366231', '', '18938366231', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 15:53:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18938366231' LIMIT 1);
UPDATE users SET nick_name='18938366231', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18938366231';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889400473', 'U15889400473', '15889400473', '', '15889400473', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 14:48:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889400473' LIMIT 1);
UPDATE users SET nick_name='15889400473', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889400473';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822169760', 'U13822169760', '玖只小脑斧', '', '13822169760', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 13:26:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822169760' LIMIT 1);
UPDATE users SET nick_name='玖只小脑斧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822169760';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662454116', 'U13662454116', 'Dennis-D', '', '13662454116', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 13:19:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662454116' LIMIT 1);
UPDATE users SET nick_name='Dennis-D', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662454116';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148336400', 'U13148336400', 'ccc', '', '13148336400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-12-28 13:03:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148336400' LIMIT 1);
UPDATE users SET nick_name='ccc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13148336400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18816895102', 'U18816895102', 'Kakkakak', '', '18816895102', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 12:52:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18816895102' LIMIT 1);
UPDATE users SET nick_name='Kakkakak', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18816895102';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760873063', 'U13760873063', '嘉_Lam', '', '13760873063', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 12:34:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760873063' LIMIT 1);
UPDATE users SET nick_name='嘉_Lam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760873063';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822120396', 'U13822120396', '咖', '', '13822120396', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 12:16:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822120396' LIMIT 1);
UPDATE users SET nick_name='咖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822120396';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588861659', 'U18588861659', '墩墩爸', '', '18588861659', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 11:26:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588861659' LIMIT 1);
UPDATE users SET nick_name='墩墩爸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588861659';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13477092461', 'U13477092461', '13477092461', '', '13477092461', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-28 11:18:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13477092461' LIMIT 1);
UPDATE users SET nick_name='13477092461', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13477092461';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660247543', 'U13660247543', 'fox', '', '13660247543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-27 20:01:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660247543' LIMIT 1);
UPDATE users SET nick_name='fox', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660247543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19872728018', 'U19872728018', '610', '', '19872728018', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-27 19:04:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19872728018' LIMIT 1);
UPDATE users SET nick_name='610', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19872728018';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15099963385', 'U15099963385', '苏', '', '15099963385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-12-27 17:15:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15099963385' LIMIT 1);
UPDATE users SET nick_name='苏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='15099963385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578789670', 'U18578789670', '舒舒', '', '18578789670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-27 16:49:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578789670' LIMIT 1);
UPDATE users SET nick_name='舒舒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578789670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18278070703', 'U18278070703', '18278070703', '', '18278070703', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-27 14:53:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18278070703' LIMIT 1);
UPDATE users SET nick_name='18278070703', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18278070703';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422209521', 'U13422209521', '13422209521', '', '13422209521', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-27 14:47:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422209521' LIMIT 1);
UPDATE users SET nick_name='13422209521', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422209521';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450243454', 'U13450243454', '13450243454', '', '13450243454', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-26 20:58:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450243454' LIMIT 1);
UPDATE users SET nick_name='13450243454', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450243454';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570518080', 'U13570518080', 'Emma', '', '13570518080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-26 19:55:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570518080' LIMIT 1);
UPDATE users SET nick_name='Emma', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570518080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719218144', 'U13719218144', '13719218144', '', '13719218144', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-26 18:46:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719218144' LIMIT 1);
UPDATE users SET nick_name='13719218144', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719218144';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565839741', 'U18565839741', 'Sherry', '', '18565839741', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-26 16:37:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565839741' LIMIT 1);
UPDATE users SET nick_name='Sherry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565839741';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250561650', 'U13250561650', '13250561650', '', '13250561650', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-26 16:32:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250561650' LIMIT 1);
UPDATE users SET nick_name='13250561650', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250561650';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027188999', 'U18027188999', '山楂片', '', '18027188999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2024-12-26 14:54:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027188999' LIMIT 1);
UPDATE users SET nick_name='山楂片', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='18027188999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15088063388', 'U15088063388', 'Tanice', '', '15088063388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-26 14:36:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15088063388' LIMIT 1);
UPDATE users SET nick_name='Tanice', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15088063388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520694662', 'U18520694662', 'TSOHIUTUNG💵', '', '18520694662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-12-26 11:27:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520694662' LIMIT 1);
UPDATE users SET nick_name='TSOHIUTUNG💵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18520694662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560382287', 'U13560382287', 'YEP', '', '13560382287', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-26 11:06:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560382287' LIMIT 1);
UPDATE users SET nick_name='YEP', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560382287';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533021570', 'U13533021570', '喜气洋洋', '', '13533021570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-26 10:33:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533021570' LIMIT 1);
UPDATE users SET nick_name='喜气洋洋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533021570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560466126', 'U13560466126', 'Sue', '', '13560466126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-26 10:21:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560466126' LIMIT 1);
UPDATE users SET nick_name='Sue', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560466126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13431053995', 'U13431053995', 'Pretend ^^', '', '13431053995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-25 18:30:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13431053995' LIMIT 1);
UPDATE users SET nick_name='Pretend ^^', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13431053995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13178670092', 'U13178670092', 'Jack', '', '13178670092', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-25 15:33:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13178670092' LIMIT 1);
UPDATE users SET nick_name='Jack', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13178670092';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13891974999', 'U13891974999', 'C', '', '13891974999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 599, '2024-12-24 23:07:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13891974999' LIMIT 1);
UPDATE users SET nick_name='C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 599) WHERE phone='13891974999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725219613', 'U13725219613', '小兔子爱抹茶', '', '13725219613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-24 15:51:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725219613' LIMIT 1);
UPDATE users SET nick_name='小兔子爱抹茶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725219613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18500548746', 'U18500548746', '江大猫', '', '18500548746', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-24 15:35:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18500548746' LIMIT 1);
UPDATE users SET nick_name='江大猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18500548746';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925947377', 'U18925947377', 'Pacino', '', '18925947377', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-24 15:21:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925947377' LIMIT 1);
UPDATE users SET nick_name='Pacino', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925947377';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18511525675', 'U18511525675', '嘟嘟', '', '18511525675', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-24 13:25:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18511525675' LIMIT 1);
UPDATE users SET nick_name='嘟嘟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18511525675';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18879118013', 'U18879118013', 'αβγ', '', '18879118013', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-24 12:12:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18879118013' LIMIT 1);
UPDATE users SET nick_name='αβγ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18879118013';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922750057', 'U13922750057', 'Chen', '', '13922750057', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-24 12:11:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922750057' LIMIT 1);
UPDATE users SET nick_name='Chen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13922750057';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751635352', 'U13751635352', '伊伊', '', '13751635352', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-12-24 11:45:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751635352' LIMIT 1);
UPDATE users SET nick_name='伊伊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13751635352';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15235106135', 'U15235106135', '15235106135', '', '15235106135', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-23 20:46:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15235106135' LIMIT 1);
UPDATE users SET nick_name='15235106135', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15235106135';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620072595', 'U17620072595', '君君吖🍊🍊', '', '17620072595', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-23 18:44:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620072595' LIMIT 1);
UPDATE users SET nick_name='君君吖🍊🍊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620072595';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815588733', 'U15815588733', '陈小庚', '', '15815588733', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-23 18:12:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815588733' LIMIT 1);
UPDATE users SET nick_name='陈小庚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815588733';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819158610', 'U18819158610', '杜', '', '18819158610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-23 16:18:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819158610' LIMIT 1);
UPDATE users SET nick_name='杜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819158610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19270272250', 'U19270272250', '19270272250', '', '19270272250', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-23 12:46:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19270272250' LIMIT 1);
UPDATE users SET nick_name='19270272250', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19270272250';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570579950', 'U13570579950', '盐蚁', '', '13570579950', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-23 11:19:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570579950' LIMIT 1);
UPDATE users SET nick_name='盐蚁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570579950';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620157962', 'U16620157962', '小葉同学', '', '16620157962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-23 10:49:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620157962' LIMIT 1);
UPDATE users SET nick_name='小葉同学', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620157962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265388669', 'U13265388669', 'k', '', '13265388669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-22 18:50:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265388669' LIMIT 1);
UPDATE users SET nick_name='k', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265388669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725177717', 'U13725177717', '明', '', '13725177717', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-22 15:51:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725177717' LIMIT 1);
UPDATE users SET nick_name='明', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725177717';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808864126', 'U13808864126', 'just', '', '13808864126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-22 13:34:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808864126' LIMIT 1);
UPDATE users SET nick_name='just', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808864126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18899732901', 'U18899732901', 'Yyy', '', '18899732901', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-22 13:15:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18899732901' LIMIT 1);
UPDATE users SET nick_name='Yyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18899732901';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13226628628', 'U13226628628', '小丽姐', '', '13226628628', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-22 13:01:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13226628628' LIMIT 1);
UPDATE users SET nick_name='小丽姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13226628628';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925121210', 'U13925121210', 'PINK', '', '13925121210', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-22 12:44:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925121210' LIMIT 1);
UPDATE users SET nick_name='PINK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925121210';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13378471711', 'U13378471711', 'Lychee.', '', '13378471711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-22 12:19:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13378471711' LIMIT 1);
UPDATE users SET nick_name='Lychee.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13378471711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814091327', 'U18814091327', '盛晴', '', '18814091327', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-22 11:30:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814091327' LIMIT 1);
UPDATE users SET nick_name='盛晴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814091327';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13501510366', 'U13501510366', '吱吱吱', '', '13501510366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-22 10:15:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13501510366' LIMIT 1);
UPDATE users SET nick_name='吱吱吱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13501510366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18589203961', 'U18589203961', '多啦A孟（高质量发展版）', '', '18589203961', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-22 10:06:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18589203961' LIMIT 1);
UPDATE users SET nick_name='多啦A孟（高质量发展版）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18589203961';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600009180', 'U13600009180', '洵洵', '', '13600009180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-21 12:50:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600009180' LIMIT 1);
UPDATE users SET nick_name='洵洵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600009180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988965154', 'U18988965154', '影丶', '', '18988965154', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-12-21 12:14:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988965154' LIMIT 1);
UPDATE users SET nick_name='影丶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18988965154';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570977767', 'U13570977767', '叶', '', '13570977767', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-20 22:59:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570977767' LIMIT 1);
UPDATE users SET nick_name='叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570977767';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602009741', 'U18602009741', '沙力力', '', '18602009741', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2024-12-20 15:45:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602009741' LIMIT 1);
UPDATE users SET nick_name='沙力力', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18602009741';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13572914509', 'U13572914509', 'Hang', '', '13572914509', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-20 15:34:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13572914509' LIMIT 1);
UPDATE users SET nick_name='Hang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13572914509';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828432046', 'U13828432046', '子曰', '', '13828432046', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2024-12-20 15:25:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828432046' LIMIT 1);
UPDATE users SET nick_name='子曰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='13828432046';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632292344', 'U13632292344', '健', '', '13632292344', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-20 15:07:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632292344' LIMIT 1);
UPDATE users SET nick_name='健', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632292344';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697348951', 'U13697348951', '迷人大反派', '', '13697348951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-20 11:51:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697348951' LIMIT 1);
UPDATE users SET nick_name='迷人大反派', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697348951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826409008', 'U13826409008', '韵筠😊', '', '13826409008', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-19 21:23:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826409008' LIMIT 1);
UPDATE users SET nick_name='韵筠😊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826409008';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664885777', 'U18664885777', '18664885777', '', '18664885777', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-19 21:14:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664885777' LIMIT 1);
UPDATE users SET nick_name='18664885777', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664885777';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15666057879', 'U15666057879', '🦊', '', '15666057879', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-19 18:10:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15666057879' LIMIT 1);
UPDATE users SET nick_name='🦊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15666057879';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15197125268', 'U15197125268', 'z', '', '15197125268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-19 18:07:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15197125268' LIMIT 1);
UPDATE users SET nick_name='z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15197125268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17674605535', 'U17674605535', '李', '', '17674605535', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-19 18:07:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17674605535' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17674605535';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18673132516', 'U18673132516', '18673132516', '', '18673132516', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-19 16:59:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18673132516' LIMIT 1);
UPDATE users SET nick_name='18673132516', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18673132516';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13827252024', 'U13827252024', 'Daniel.', '', '13827252024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-19 14:56:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13827252024' LIMIT 1);
UPDATE users SET nick_name='Daniel.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13827252024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18621829136', 'U18621829136', '18621829136', '', '18621829136', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-19 13:15:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18621829136' LIMIT 1);
UPDATE users SET nick_name='18621829136', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18621829136';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15046694669', 'U15046694669', '15046694669', '', '15046694669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-19 13:03:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15046694669' LIMIT 1);
UPDATE users SET nick_name='15046694669', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15046694669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122387404', 'U18122387404', 'Y', '', '18122387404', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-19 10:38:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122387404' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122387404';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822209123', 'U13822209123', '為.', '', '13822209123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-18 18:36:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822209123' LIMIT 1);
UPDATE users SET nick_name='為.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822209123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933797782', 'U18933797782', 'Juicy', '', '18933797782', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-18 17:33:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933797782' LIMIT 1);
UPDATE users SET nick_name='Juicy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933797782';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13910026872', 'U13910026872', 'zxxh', '', '13910026872', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-18 13:29:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13910026872' LIMIT 1);
UPDATE users SET nick_name='zxxh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13910026872';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763050960', 'U13763050960', '尘光', '', '13763050960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-18 12:11:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763050960' LIMIT 1);
UPDATE users SET nick_name='尘光', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763050960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13413151215', 'U13413151215', '黄文斌👏', '', '13413151215', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-17 20:21:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13413151215' LIMIT 1);
UPDATE users SET nick_name='黄文斌👏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13413151215';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15829292887', 'U15829292887', 'C', '', '15829292887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-17 20:12:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15829292887' LIMIT 1);
UPDATE users SET nick_name='C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15829292887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480405747', 'U13480405747', '^O^', '', '13480405747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-17 20:03:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480405747' LIMIT 1);
UPDATE users SET nick_name='^O^', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13480405747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928771295', 'U13928771295', 'Abby.', '', '13928771295', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-17 19:54:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928771295' LIMIT 1);
UPDATE users SET nick_name='Abby.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13928771295';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18973550035', 'U18973550035', '路人甲', '', '18973550035', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-17 18:30:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18973550035' LIMIT 1);
UPDATE users SET nick_name='路人甲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18973550035';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610338030', 'U13610338030', '反調', '', '13610338030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-17 16:35:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610338030' LIMIT 1);
UPDATE users SET nick_name='反調', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610338030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826273031', 'U13826273031', 'Harry', '', '13826273031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-17 16:05:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826273031' LIMIT 1);
UPDATE users SET nick_name='Harry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826273031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13078828097', 'U13078828097', '🌑🌑', '', '13078828097', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-17 15:59:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13078828097' LIMIT 1);
UPDATE users SET nick_name='🌑🌑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13078828097';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13833467312', 'U13833467312', '13833467312', '', '13833467312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-17 13:25:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13833467312' LIMIT 1);
UPDATE users SET nick_name='13833467312', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13833467312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15773656450', 'U15773656450', '左右', '', '15773656450', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-17 13:22:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15773656450' LIMIT 1);
UPDATE users SET nick_name='左右', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15773656450';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13326452578', 'U13326452578', '粥粥', '', '13326452578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-17 08:48:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13326452578' LIMIT 1);
UPDATE users SET nick_name='粥粥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13326452578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18048923167', 'U18048923167', '流光如注', '', '18048923167', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-16 16:14:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18048923167' LIMIT 1);
UPDATE users SET nick_name='流光如注', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18048923167';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13502415165', 'U13502415165', 'susan', '', '13502415165', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-16 16:10:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13502415165' LIMIT 1);
UPDATE users SET nick_name='susan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13502415165';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19856650815', 'U19856650815', '111', '', '19856650815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-16 15:40:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19856650815' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19856650815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688820117', 'U18688820117', '小腾🍇', '', '18688820117', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-16 10:42:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688820117' LIMIT 1);
UPDATE users SET nick_name='小腾🍇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688820117';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520731103', 'U18520731103', 'Bella', '', '18520731103', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-15 19:29:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520731103' LIMIT 1);
UPDATE users SET nick_name='Bella', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520731103';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928361303', 'U13928361303', 'hhhhh', '', '13928361303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-15 18:31:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928361303' LIMIT 1);
UPDATE users SET nick_name='hhhhh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928361303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986683140', 'U15986683140', '15986683140', '', '15986683140', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-15 15:39:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986683140' LIMIT 1);
UPDATE users SET nick_name='15986683140', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15986683140';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15927310611', 'U15927310611', 'lematin', '', '15927310611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-15 13:51:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15927310611' LIMIT 1);
UPDATE users SET nick_name='lematin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15927310611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026286034', 'U18026286034', 'kaka', '', '18026286034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-15 13:25:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026286034' LIMIT 1);
UPDATE users SET nick_name='kaka', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026286034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18117300819', 'U18117300819', 'Zhen', '', '18117300819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-15 12:29:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18117300819' LIMIT 1);
UPDATE users SET nick_name='Zhen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18117300819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15302487008', 'U15302487008', 'Yao', '', '15302487008', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-12-15 12:12:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15302487008' LIMIT 1);
UPDATE users SET nick_name='Yao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15302487008';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632438145', 'U13632438145', '艾比鸥', '', '13632438145', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2024-12-15 11:47:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632438145' LIMIT 1);
UPDATE users SET nick_name='艾比鸥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='13632438145';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560358435', 'U13560358435', '13560358435', '', '13560358435', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-15 11:27:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560358435' LIMIT 1);
UPDATE users SET nick_name='13560358435', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560358435';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913106832', 'U15913106832', '🎀bi🎶', '', '15913106832', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-15 10:50:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913106832' LIMIT 1);
UPDATE users SET nick_name='🎀bi🎶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913106832';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022430560', 'U18022430560', 'Pandaaaa906', '', '18022430560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 180, '2024-12-15 09:31:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022430560' LIMIT 1);
UPDATE users SET nick_name='Pandaaaa906', balance=GREATEST(balance, 0.00), points=GREATEST(points, 180) WHERE phone='18022430560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13543241294', 'U13543241294', '7', '', '13543241294', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-15 07:51:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13543241294' LIMIT 1);
UPDATE users SET nick_name='7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13543241294';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19872705071', 'U19872705071', 'lele', '', '19872705071', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 23:08:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19872705071' LIMIT 1);
UPDATE users SET nick_name='lele', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19872705071';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751774076', 'U13751774076', 'wing', '', '13751774076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-14 21:31:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751774076' LIMIT 1);
UPDATE users SET nick_name='wing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13751774076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18508417376', 'U18508417376', 'caitaotao👧🏻', '', '18508417376', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 20:40:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18508417376' LIMIT 1);
UPDATE users SET nick_name='caitaotao👧🏻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18508417376';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13145711174', 'U13145711174', 'Vanjo_', '', '13145711174', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 20:29:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13145711174' LIMIT 1);
UPDATE users SET nick_name='Vanjo_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13145711174';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913177285', 'U15913177285', '7', '', '15913177285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 20:25:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913177285' LIMIT 1);
UPDATE users SET nick_name='7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913177285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570069331', 'U13570069331', '13570069331', '', '13570069331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 20:19:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570069331' LIMIT 1);
UPDATE users SET nick_name='13570069331', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570069331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692015343', 'U15692015343', '建越HJX3929元', '', '15692015343', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 19:51:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692015343' LIMIT 1);
UPDATE users SET nick_name='建越HJX3929元', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692015343';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813317829', 'U18813317829', 'A', '', '18813317829', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 19:40:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813317829' LIMIT 1);
UPDATE users SET nick_name='A', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18813317829';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13509994523', 'U13509994523', '13509994523', '', '13509994523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 18:47:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13509994523' LIMIT 1);
UPDATE users SET nick_name='13509994523', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13509994523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18630927688', 'U18630927688', '雍大成', '', '18630927688', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 18:22:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18630927688' LIMIT 1);
UPDATE users SET nick_name='雍大成', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18630927688';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986375193', 'U15986375193', '我是祖儿', '', '15986375193', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 16:10:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986375193' LIMIT 1);
UPDATE users SET nick_name='我是祖儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15986375193';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570088606', 'U13570088606', '晴晴~', '', '13570088606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 136, '2024-12-14 15:09:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570088606' LIMIT 1);
UPDATE users SET nick_name='晴晴~', balance=GREATEST(balance, 0.00), points=GREATEST(points, 136) WHERE phone='13570088606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660272467', 'U13660272467', '13660272467', '', '13660272467', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 14:44:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660272467' LIMIT 1);
UPDATE users SET nick_name='13660272467', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660272467';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763328632', 'U13763328632', '萬金游_', '', '13763328632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-14 14:12:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763328632' LIMIT 1);
UPDATE users SET nick_name='萬金游_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13763328632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828492349', 'U13828492349', '13828492349', '', '13828492349', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 14:06:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828492349' LIMIT 1);
UPDATE users SET nick_name='13828492349', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828492349';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600460571', 'U13600460571', 'GWQ', '', '13600460571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 13:52:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600460571' LIMIT 1);
UPDATE users SET nick_name='GWQ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600460571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13714668304', 'U13714668304', '曾子', '', '13714668304', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 13:24:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13714668304' LIMIT 1);
UPDATE users SET nick_name='曾子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13714668304';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15002152492', 'U15002152492', '小黄瓜🥒', '', '15002152492', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 13:00:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15002152492' LIMIT 1);
UPDATE users SET nick_name='小黄瓜🥒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15002152492';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760540808', 'U13760540808', 'Cocami', '', '13760540808', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 12:45:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760540808' LIMIT 1);
UPDATE users SET nick_name='Cocami', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760540808';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17346105841', 'U17346105841', 'YM', '', '17346105841', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-14 12:21:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17346105841' LIMIT 1);
UPDATE users SET nick_name='YM', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17346105841';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15367492603', 'U15367492603', '15367492603', '', '15367492603', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-14 10:04:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15367492603' LIMIT 1);
UPDATE users SET nick_name='15367492603', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15367492603';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13823851559', 'U13823851559', 'X', '', '13823851559', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-13 23:36:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13823851559' LIMIT 1);
UPDATE users SET nick_name='X', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13823851559';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726932579', 'U13726932579', '眼角的温柔', '', '13726932579', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-13 21:20:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726932579' LIMIT 1);
UPDATE users SET nick_name='眼角的温柔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726932579';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18473486470', 'U18473486470', 'zhengjin1', '', '18473486470', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-13 20:32:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18473486470' LIMIT 1);
UPDATE users SET nick_name='zhengjin1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18473486470';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710137344', 'U13710137344', '花花', '', '13710137344', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-13 20:17:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710137344' LIMIT 1);
UPDATE users SET nick_name='花花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710137344';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320109600', 'U18320109600', '弓文长', '', '18320109600', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2024-12-13 20:00:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320109600' LIMIT 1);
UPDATE users SET nick_name='弓文长', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='18320109600';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975627664', 'U15975627664', 'matt', '', '15975627664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-12-13 19:46:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975627664' LIMIT 1);
UPDATE users SET nick_name='matt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15975627664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160828476', 'U13160828476', 'KipKingChan', '', '13160828476', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-13 17:44:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160828476' LIMIT 1);
UPDATE users SET nick_name='KipKingChan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13160828476';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915795133', 'U15915795133', '耽', '', '15915795133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-13 16:58:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915795133' LIMIT 1);
UPDATE users SET nick_name='耽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915795133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521150083', 'U15521150083', '15521150083', '', '15521150083', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-13 16:35:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521150083' LIMIT 1);
UPDATE users SET nick_name='15521150083', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521150083';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999906692', 'U15999906692', 'CC', '', '15999906692', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-13 14:50:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999906692' LIMIT 1);
UPDATE users SET nick_name='CC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999906692';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15302451684', 'U15302451684', 'Mr.Fish', '', '15302451684', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-13 12:48:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15302451684' LIMIT 1);
UPDATE users SET nick_name='Mr.Fish', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15302451684';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416281077', 'U13416281077', '龙', '', '13416281077', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-12-13 12:29:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416281077' LIMIT 1);
UPDATE users SET nick_name='龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13416281077';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19282080455', 'U19282080455', '19282080455', '', '19282080455', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-13 10:45:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19282080455' LIMIT 1);
UPDATE users SET nick_name='19282080455', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19282080455';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570573755', 'U13570573755', 'M1nnn9no$', '', '13570573755', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-12-13 10:24:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570573755' LIMIT 1);
UPDATE users SET nick_name='M1nnn9no$', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13570573755';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13713297656', 'U13713297656', '🐶', '', '13713297656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-13 01:20:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13713297656' LIMIT 1);
UPDATE users SET nick_name='🐶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13713297656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17707696301', 'U17707696301', '🦕', '', '17707696301', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-12 23:15:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17707696301' LIMIT 1);
UPDATE users SET nick_name='🦕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17707696301';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15897657400', 'U15897657400', 'guo', '', '15897657400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-12 20:48:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15897657400' LIMIT 1);
UPDATE users SET nick_name='guo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15897657400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556178919', 'U13556178919', '13556178919', '', '13556178919', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-12 18:32:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556178919' LIMIT 1);
UPDATE users SET nick_name='13556178919', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556178919';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18026422530', 'U18026422530', '黎明', '', '18026422530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-12 17:36:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18026422530' LIMIT 1);
UPDATE users SET nick_name='黎明', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18026422530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13985592808', 'U13985592808', '13985592808', '', '13985592808', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-12 17:17:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13985592808' LIMIT 1);
UPDATE users SET nick_name='13985592808', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13985592808';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632497300', 'U13632497300', 'ChanWaiYee🥗', '', '13632497300', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-12 14:59:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632497300' LIMIT 1);
UPDATE users SET nick_name='ChanWaiYee🥗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632497300';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011924669', 'U15011924669', '15011924669', '', '15011924669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-12 12:41:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011924669' LIMIT 1);
UPDATE users SET nick_name='15011924669', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15011924669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028056960', 'U18028056960', '岳俊雅', '', '18028056960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-12 11:55:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028056960' LIMIT 1);
UPDATE users SET nick_name='岳俊雅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028056960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650863112', 'U13650863112', '梁', '', '13650863112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-11 22:45:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650863112' LIMIT 1);
UPDATE users SET nick_name='梁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13650863112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15992146009', 'U15992146009', '陳潛', '', '15992146009', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-11 20:11:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15992146009' LIMIT 1);
UPDATE users SET nick_name='陳潛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15992146009';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127857036', 'U18127857036', '云冲浪', '', '18127857036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-11 19:42:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127857036' LIMIT 1);
UPDATE users SET nick_name='云冲浪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127857036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18318299752', 'U18318299752', 'J.', '', '18318299752', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-11 19:13:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18318299752' LIMIT 1);
UPDATE users SET nick_name='J.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18318299752';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027190255', 'U18027190255', 'Matt', '', '18027190255', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-11 17:36:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027190255' LIMIT 1);
UPDATE users SET nick_name='Matt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027190255';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556155587', 'U13556155587', '🌸Joanna 🌸', '', '13556155587', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-11 17:30:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556155587' LIMIT 1);
UPDATE users SET nick_name='🌸Joanna 🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556155587';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666550551', 'U17666550551', 'Stella_suu', '', '17666550551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-11 16:55:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666550551' LIMIT 1);
UPDATE users SET nick_name='Stella_suu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666550551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726297341', 'U13726297341', '曾小懂', '', '13726297341', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-11 12:29:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726297341' LIMIT 1);
UPDATE users SET nick_name='曾小懂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726297341';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664768449', 'U18664768449', 'Ray', '', '18664768449', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-12-11 10:47:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664768449' LIMIT 1);
UPDATE users SET nick_name='Ray', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18664768449';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922280303', 'U13922280303', '李cr', '', '13922280303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-11 10:38:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922280303' LIMIT 1);
UPDATE users SET nick_name='李cr', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922280303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922200880', 'U13922200880', 's.h', '', '13922200880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-11 10:07:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922200880' LIMIT 1);
UPDATE users SET nick_name='s.h', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922200880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750285277', 'U13750285277', 'ʚ🧸ྀིɞ', '', '13750285277', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-10 18:00:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750285277' LIMIT 1);
UPDATE users SET nick_name='ʚ🧸ྀིɞ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13750285277';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602221530', 'U13602221530', '幻影', '', '13602221530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-10 16:34:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602221530' LIMIT 1);
UPDATE users SET nick_name='幻影', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602221530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729633751', 'U13729633751', 'XIAObai', '', '13729633751', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-10 15:36:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729633751' LIMIT 1);
UPDATE users SET nick_name='XIAObai', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729633751';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18934111722', 'U18934111722', '大白', '', '18934111722', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-10 15:06:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18934111722' LIMIT 1);
UPDATE users SET nick_name='大白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18934111722';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18042842845', 'U18042842845', '小七', '', '18042842845', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-10 14:41:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18042842845' LIMIT 1);
UPDATE users SET nick_name='小七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18042842845';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521280608', 'U15521280608', '15521280608', '', '15521280608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-10 13:55:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521280608' LIMIT 1);
UPDATE users SET nick_name='15521280608', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521280608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113885402', 'U15113885402', '权峰', '', '15113885402', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-10 12:58:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113885402' LIMIT 1);
UPDATE users SET nick_name='权峰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113885402';
