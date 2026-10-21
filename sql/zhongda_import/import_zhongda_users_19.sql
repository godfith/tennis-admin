SET NAMES utf8mb4;
-- 中大店用户导入 part 19 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602231415', 'U13602231415', 'Linwenwen', '', '13602231415', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-31 16:24:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602231415' LIMIT 1);
UPDATE users SET nick_name='Linwenwen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602231415';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620413212', 'U18620413212', 'tc', '', '18620413212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-08-31 15:56:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620413212' LIMIT 1);
UPDATE users SET nick_name='tc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18620413212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18966926112', 'U18966926112', '李苏翔', '', '18966926112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-31 15:37:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18966926112' LIMIT 1);
UPDATE users SET nick_name='李苏翔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18966926112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600061789', 'U13600061789', 'NBZ', '', '13600061789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-31 13:37:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600061789' LIMIT 1);
UPDATE users SET nick_name='NBZ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600061789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533885458', 'U13533885458', 'xiang', '', '13533885458', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-31 13:05:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533885458' LIMIT 1);
UPDATE users SET nick_name='xiang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533885458';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18576401275', 'U18576401275', '猫猫要打球', '', '18576401275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-31 12:38:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18576401275' LIMIT 1);
UPDATE users SET nick_name='猫猫要打球', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18576401275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988861668', 'U18988861668', '韩越', '', '18988861668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-31 10:33:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988861668' LIMIT 1);
UPDATE users SET nick_name='韩越', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988861668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18382064460', 'U18382064460', '峰峰峰', '', '18382064460', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-31 09:23:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18382064460' LIMIT 1);
UPDATE users SET nick_name='峰峰峰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18382064460';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18603660057', 'U18603660057', '%%', '', '18603660057', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-31 01:23:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18603660057' LIMIT 1);
UPDATE users SET nick_name='%%', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18603660057';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218184637', 'U18218184637', '活在当下', '', '18218184637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-30 18:38:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218184637' LIMIT 1);
UPDATE users SET nick_name='活在当下', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218184637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13688894072', 'U13688894072', 'aa', '', '13688894072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-08-30 18:28:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13688894072' LIMIT 1);
UPDATE users SET nick_name='aa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='13688894072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13997718487', 'U13997718487', '雪绒花', '', '13997718487', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-08-30 15:37:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13997718487' LIMIT 1);
UPDATE users SET nick_name='雪绒花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13997718487';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588768784', 'U18588768784', 'Ailun chan', '', '18588768784', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-30 14:59:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588768784' LIMIT 1);
UPDATE users SET nick_name='Ailun chan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588768784';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19876380663', 'U19876380663', '张', '', '19876380663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-30 11:58:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19876380663' LIMIT 1);
UPDATE users SET nick_name='张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19876380663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18929571711', 'U18929571711', 'jjj', '', '18929571711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-29 21:06:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18929571711' LIMIT 1);
UPDATE users SET nick_name='jjj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18929571711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18718167388', 'U18718167388', 'dL.', '', '18718167388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-29 13:51:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18718167388' LIMIT 1);
UPDATE users SET nick_name='dL.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18718167388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025180371', 'U13025180371', 'ᝰꫛꫀꪝ黄鱼', '', '13025180371', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 186, '2024-08-29 09:55:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025180371' LIMIT 1);
UPDATE users SET nick_name='ᝰꫛꫀꪝ黄鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 186) WHERE phone='13025180371';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588768794', 'U18588768794', 'Ailun chan', '', '18588768794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-29 09:51:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588768794' LIMIT 1);
UPDATE users SET nick_name='Ailun chan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588768794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18219408174', 'U18219408174', '蘑菇', '', '18219408174', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-08-29 08:53:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18219408174' LIMIT 1);
UPDATE users SET nick_name='蘑菇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18219408174';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556030314', 'U13556030314', '林', '', '13556030314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 236, '2024-08-28 18:56:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556030314' LIMIT 1);
UPDATE users SET nick_name='林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 236) WHERE phone='13556030314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19128929535', 'U19128929535', '蝎子莱莱', '', '19128929535', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-28 16:50:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19128929535' LIMIT 1);
UPDATE users SET nick_name='蝎子莱莱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19128929535';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924265437', 'U19924265437', 'Samuel 他舅舅', '', '19924265437', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-28 16:26:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924265437' LIMIT 1);
UPDATE users SET nick_name='Samuel 他舅舅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924265437';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17398381650', 'U17398381650', '西西', '', '17398381650', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-28 16:23:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17398381650' LIMIT 1);
UPDATE users SET nick_name='西西', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17398381650';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13611433829', 'U13611433829', '李教授', '', '13611433829', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-08-28 16:12:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13611433829' LIMIT 1);
UPDATE users SET nick_name='李教授', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='13611433829';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620987067', 'U18620987067', '朱工', '', '18620987067', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-28 14:56:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620987067' LIMIT 1);
UPDATE users SET nick_name='朱工', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620987067';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609018921', 'U13609018921', '雪', '', '13609018921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-08-28 14:03:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609018921' LIMIT 1);
UPDATE users SET nick_name='雪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13609018921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560022234', 'U13560022234', '~源~', '', '13560022234', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-08-27 23:07:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560022234' LIMIT 1);
UPDATE users SET nick_name='~源~', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13560022234';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15791541169', 'U15791541169', 'howie', '', '15791541169', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-27 21:09:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15791541169' LIMIT 1);
UPDATE users SET nick_name='howie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15791541169';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18500040830', 'U18500040830', 'Qoo王小圈er', '', '18500040830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 147, '2024-08-27 18:25:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18500040830' LIMIT 1);
UPDATE users SET nick_name='Qoo王小圈er', balance=GREATEST(balance, 0.00), points=GREATEST(points, 147) WHERE phone='18500040830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13308063650', 'U13308063650', 'Ellen', '', '13308063650', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-27 17:32:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13308063650' LIMIT 1);
UPDATE users SET nick_name='Ellen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13308063650';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18200139557', 'U18200139557', 'SeanXL', '', '18200139557', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2024-08-27 14:52:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18200139557' LIMIT 1);
UPDATE users SET nick_name='SeanXL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='18200139557';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580491138', 'U13580491138', 'Yzz', '', '13580491138', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-27 12:38:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580491138' LIMIT 1);
UPDATE users SET nick_name='Yzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580491138';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529282621', 'U18529282621', 'IX', '', '18529282621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-08-26 20:14:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529282621' LIMIT 1);
UPDATE users SET nick_name='IX', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18529282621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15817010016', 'U15817010016', 'EASY', '', '15817010016', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-26 17:40:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15817010016' LIMIT 1);
UPDATE users SET nick_name='EASY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15817010016';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650714949', 'U13650714949', 'yowone', '', '13650714949', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-08-26 15:01:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650714949' LIMIT 1);
UPDATE users SET nick_name='yowone', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13650714949';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625033248', 'U15625033248', 'CC', '', '15625033248', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-26 14:57:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625033248' LIMIT 1);
UPDATE users SET nick_name='CC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625033248';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580493061', 'U13580493061', '欧-羊羊阳👀', '', '13580493061', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-26 09:21:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580493061' LIMIT 1);
UPDATE users SET nick_name='欧-羊羊阳👀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580493061';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602744918', 'U13602744918', '柒柒', '', '13602744918', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-25 16:34:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602744918' LIMIT 1);
UPDATE users SET nick_name='柒柒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602744918';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925142713', 'U13925142713', '透明信仰', '', '13925142713', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-08-25 16:02:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925142713' LIMIT 1);
UPDATE users SET nick_name='透明信仰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13925142713';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876531514', 'U15876531514', '羊羊子', '', '15876531514', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 177, '2024-08-25 14:37:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876531514' LIMIT 1);
UPDATE users SET nick_name='羊羊子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 177) WHERE phone='15876531514';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18221365927', 'U18221365927', 'Bekky', '', '18221365927', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2024-08-25 13:19:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18221365927' LIMIT 1);
UPDATE users SET nick_name='Bekky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='18221365927';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989132676', 'U15989132676', '鲨鱼辣椒', '', '15989132676', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-25 13:02:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989132676' LIMIT 1);
UPDATE users SET nick_name='鲨鱼辣椒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989132676';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15557895082', 'U15557895082', '王轶辰', '', '15557895082', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 95, '2024-08-25 13:01:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15557895082' LIMIT 1);
UPDATE users SET nick_name='王轶辰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 95) WHERE phone='15557895082';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14750032098', 'U14750032098', 'Rick', '', '14750032098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-25 09:02:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14750032098' LIMIT 1);
UPDATE users SET nick_name='Rick', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14750032098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588879891', 'U18588879891', '羊熊', '', '18588879891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-24 23:24:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588879891' LIMIT 1);
UPDATE users SET nick_name='羊熊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588879891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620067924', 'U18620067924', 'Min', '', '18620067924', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-24 20:48:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620067924' LIMIT 1);
UPDATE users SET nick_name='Min', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620067924';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922299970', 'U13922299970', 'adele ᥫᩣ²º²⁴', '', '13922299970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 126, '2024-08-24 17:39:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922299970' LIMIT 1);
UPDATE users SET nick_name='adele ᥫᩣ²º²⁴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 126) WHERE phone='13922299970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229950505', 'U13229950505', '石开', '', '13229950505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-24 17:31:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229950505' LIMIT 1);
UPDATE users SET nick_name='石开', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229950505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602057853', 'U18602057853', 'SundayN', '', '18602057853', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-24 14:03:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602057853' LIMIT 1);
UPDATE users SET nick_name='SundayN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602057853';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726378019', 'U13726378019', 'Eric', '', '13726378019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2024-08-24 13:09:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726378019' LIMIT 1);
UPDATE users SET nick_name='Eric', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13726378019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19042385356', 'U19042385356', 'JY', '', '19042385356', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-24 11:01:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19042385356' LIMIT 1);
UPDATE users SET nick_name='JY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19042385356';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15201632834', 'U15201632834', 'Gemma', '', '15201632834', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-23 21:11:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15201632834' LIMIT 1);
UPDATE users SET nick_name='Gemma', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15201632834';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13951871082', 'U13951871082', '芮', '', '13951871082', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-23 16:06:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13951871082' LIMIT 1);
UPDATE users SET nick_name='芮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13951871082';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692426562', 'U15692426562', 'a', '', '15692426562', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-23 14:57:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692426562' LIMIT 1);
UPDATE users SET nick_name='a', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692426562';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664743052', 'U18664743052', 'MS', '', '18664743052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-23 12:37:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664743052' LIMIT 1);
UPDATE users SET nick_name='MS', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664743052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819254008', 'U18819254008', 'O', '', '18819254008', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-08-23 11:45:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819254008' LIMIT 1);
UPDATE users SET nick_name='O', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18819254008';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19835871939', 'U19835871939', 'Julie', '', '19835871939', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-08-23 01:30:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19835871939' LIMIT 1);
UPDATE users SET nick_name='Julie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='19835871939';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922202093', 'U13922202093', '青', '', '13922202093', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-22 19:47:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922202093' LIMIT 1);
UPDATE users SET nick_name='青', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13922202093';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027279423', 'U18027279423', 'Annie 卉', '', '18027279423', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-08-22 15:34:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027279423' LIMIT 1);
UPDATE users SET nick_name='Annie 卉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18027279423';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18317013498', 'U18317013498', 'ivy', '', '18317013498', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-08-22 15:08:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18317013498' LIMIT 1);
UPDATE users SET nick_name='ivy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='18317013498';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18138798531', 'U18138798531', 'ZHIYING', '', '18138798531', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-22 14:41:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18138798531' LIMIT 1);
UPDATE users SET nick_name='ZHIYING', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18138798531';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15766088071', 'U15766088071', 'hhaksfklhf', '', '15766088071', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 59, '2024-08-21 14:06:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15766088071' LIMIT 1);
UPDATE users SET nick_name='hhaksfklhf', balance=GREATEST(balance, 0.00), points=GREATEST(points, 59) WHERE phone='15766088071';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989222997', 'U15989222997', '书琴', '', '15989222997', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-21 12:16:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989222997' LIMIT 1);
UPDATE users SET nick_name='书琴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989222997';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416372081', 'U13416372081', '猫莫傲', '', '13416372081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-08-21 11:37:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416372081' LIMIT 1);
UPDATE users SET nick_name='猫莫傲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13416372081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609783177', 'U13609783177', 'woody', '', '13609783177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-20 21:02:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609783177' LIMIT 1);
UPDATE users SET nick_name='woody', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609783177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18858911783', 'U18858911783', '炯坤', '', '18858911783', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-20 20:03:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18858911783' LIMIT 1);
UPDATE users SET nick_name='炯坤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18858911783';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602825921', 'U13602825921', '追影', '', '13602825921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2024-08-20 18:56:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602825921' LIMIT 1);
UPDATE users SET nick_name='追影', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='13602825921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999903145', 'U15999903145', '陈伟', '', '15999903145', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-20 18:52:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999903145' LIMIT 1);
UPDATE users SET nick_name='陈伟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999903145';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570208676', 'U13570208676', '小新', '', '13570208676', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-20 18:16:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570208676' LIMIT 1);
UPDATE users SET nick_name='小新', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570208676';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922488132', 'U13922488132', 'Jane', '', '13922488132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-20 15:36:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922488132' LIMIT 1);
UPDATE users SET nick_name='Jane', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922488132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929032384', 'U13929032384', 'Vincent', '', '13929032384', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-20 12:45:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929032384' LIMIT 1);
UPDATE users SET nick_name='Vincent', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929032384';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19128620226', 'U19128620226', '夏夏', '', '19128620226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-19 21:02:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19128620226' LIMIT 1);
UPDATE users SET nick_name='夏夏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='19128620226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13054472610', 'U13054472610', 'dd', '', '13054472610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-19 20:07:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13054472610' LIMIT 1);
UPDATE users SET nick_name='dd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13054472610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512775717', 'U13512775717', 'tazzz', '', '13512775717', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-19 17:54:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512775717' LIMIT 1);
UPDATE users SET nick_name='tazzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13512775717';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760681298', 'U13760681298', 'JunKi · 容', '', '13760681298', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-19 17:42:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760681298' LIMIT 1);
UPDATE users SET nick_name='JunKi · 容', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760681298';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556174338', 'U13556174338', '🐷ིྀAmy.', '', '13556174338', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-08-19 11:31:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556174338' LIMIT 1);
UPDATE users SET nick_name='🐷ིྀAmy.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13556174338';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626196706', 'U15626196706', 'Even.', '', '15626196706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-08-19 08:02:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626196706' LIMIT 1);
UPDATE users SET nick_name='Even.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15626196706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622883676', 'U13622883676', 'Eric', '', '13622883676', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-18 21:31:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622883676' LIMIT 1);
UPDATE users SET nick_name='Eric', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622883676';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632498525', 'U13632498525', 'L$Y', '', '13632498525', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-18 17:15:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632498525' LIMIT 1);
UPDATE users SET nick_name='L$Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632498525';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18679192180', 'U18679192180', '熊本熊', '', '18679192180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 127, '2024-08-18 09:15:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18679192180' LIMIT 1);
UPDATE users SET nick_name='熊本熊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 127) WHERE phone='18679192180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632309408', 'U13632309408', '苏生', '', '13632309408', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 136, '2024-08-17 22:21:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632309408' LIMIT 1);
UPDATE users SET nick_name='苏生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 136) WHERE phone='13632309408';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926433380', 'U13926433380', 'J', '', '13926433380', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-08-17 17:35:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926433380' LIMIT 1);
UPDATE users SET nick_name='J', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13926433380';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19928321490', 'U19928321490', '哇塞', '', '19928321490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-17 15:04:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19928321490' LIMIT 1);
UPDATE users SET nick_name='哇塞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='19928321490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560443355', 'U13560443355', '小肥', '', '13560443355', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-17 14:02:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560443355' LIMIT 1);
UPDATE users SET nick_name='小肥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560443355';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999955452', 'U15999955452', '张', '', '15999955452', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 164, '2024-08-17 12:12:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999955452' LIMIT 1);
UPDATE users SET nick_name='张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 164) WHERE phone='15999955452';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876512877', 'U15876512877', '梨女士', '', '15876512877', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-08-17 08:40:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876512877' LIMIT 1);
UPDATE users SET nick_name='梨女士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='15876512877';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15001241615', 'U15001241615', 'Howie', '', '15001241615', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-16 16:45:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15001241615' LIMIT 1);
UPDATE users SET nick_name='Howie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15001241615';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622676310', 'U15622676310', '陈', '', '15622676310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-16 16:42:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622676310' LIMIT 1);
UPDATE users SET nick_name='陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622676310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427591449', 'U13427591449', '钟钟', '', '13427591449', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-16 11:17:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427591449' LIMIT 1);
UPDATE users SET nick_name='钟钟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13427591449';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027047682', 'U18027047682', '他天天', '', '18027047682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-16 10:45:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027047682' LIMIT 1);
UPDATE users SET nick_name='他天天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027047682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711392570', 'U13711392570', 'Lucky刘', '', '13711392570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-15 22:38:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711392570' LIMIT 1);
UPDATE users SET nick_name='Lucky刘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711392570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13059570057', 'U13059570057', 'hh', '', '13059570057', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-15 18:39:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13059570057' LIMIT 1);
UPDATE users SET nick_name='hh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13059570057';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560060369', 'U13560060369', 'CC', '', '13560060369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2024-08-15 17:22:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560060369' LIMIT 1);
UPDATE users SET nick_name='CC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='13560060369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666510052', 'U17666510052', 'Jennie💗', '', '17666510052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-15 17:02:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666510052' LIMIT 1);
UPDATE users SET nick_name='Jennie💗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666510052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392604397', 'U13392604397', 'J', '', '13392604397', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-15 16:20:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392604397' LIMIT 1);
UPDATE users SET nick_name='J', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392604397';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13172033293', 'U13172033293', '吴', '', '13172033293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-08-15 15:25:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13172033293' LIMIT 1);
UPDATE users SET nick_name='吴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13172033293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13240008585', 'U13240008585', 'ZYY.', '', '13240008585', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-14 21:25:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13240008585' LIMIT 1);
UPDATE users SET nick_name='ZYY.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13240008585';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825096567', 'U18825096567', '^^Raymond', '', '18825096567', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-14 17:30:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825096567' LIMIT 1);
UPDATE users SET nick_name='^^Raymond', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825096567';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18876184070', 'U18876184070', '恐龙让梨', '', '18876184070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-08-14 15:16:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18876184070' LIMIT 1);
UPDATE users SET nick_name='恐龙让梨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18876184070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360478126', 'U15360478126', 'Q巴ꦿM 赫', '', '15360478126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-08-14 12:59:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360478126' LIMIT 1);
UPDATE users SET nick_name='Q巴ꦿM 赫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='15360478126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620868437', 'U18620868437', '张宇桐', '', '18620868437', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-13 22:45:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620868437' LIMIT 1);
UPDATE users SET nick_name='张宇桐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620868437';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622190933', 'U15622190933', 'rinky', '', '15622190933', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-13 17:26:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622190933' LIMIT 1);
UPDATE users SET nick_name='rinky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622190933';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13782953333', 'U13782953333', 'Amanda Su', '', '13782953333', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-08-13 13:35:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13782953333' LIMIT 1);
UPDATE users SET nick_name='Amanda Su', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13782953333';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719370012', 'U13719370012', 'LEECHING🧸', '', '13719370012', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-12 16:20:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719370012' LIMIT 1);
UPDATE users SET nick_name='LEECHING🧸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13719370012';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13809285140', 'U13809285140', 'ggg', '', '13809285140', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 638, '2024-08-12 14:05:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13809285140' LIMIT 1);
UPDATE users SET nick_name='ggg', balance=GREATEST(balance, 0.00), points=GREATEST(points, 638) WHERE phone='13809285140';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819405416', 'U18819405416', 'CJ', '', '18819405416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-12 13:35:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819405416' LIMIT 1);
UPDATE users SET nick_name='CJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18819405416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725470082', 'U13725470082', 'T', '', '13725470082', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-11 15:06:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725470082' LIMIT 1);
UPDATE users SET nick_name='T', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725470082';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15927177629', 'U15927177629', '贺欠输', '', '15927177629', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-09 22:22:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15927177629' LIMIT 1);
UPDATE users SET nick_name='贺欠输', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15927177629';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17722661185', 'U17722661185', '卡尼', '', '17722661185', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-09 20:36:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17722661185' LIMIT 1);
UPDATE users SET nick_name='卡尼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17722661185';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13630094006', 'U13630094006', 'Yq', '', '13630094006', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-09 15:59:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13630094006' LIMIT 1);
UPDATE users SET nick_name='Yq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13630094006';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13286215266', 'U13286215266', 'Khaleessi', '', '13286215266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-09 13:38:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13286215266' LIMIT 1);
UPDATE users SET nick_name='Khaleessi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13286215266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18610987064', 'U18610987064', '冰凌', '', '18610987064', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-09 12:40:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18610987064' LIMIT 1);
UPDATE users SET nick_name='冰凌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18610987064';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711446786', 'U13711446786', 'Bee', '', '13711446786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-08-09 11:54:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711446786' LIMIT 1);
UPDATE users SET nick_name='Bee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13711446786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433977258', 'U13433977258', '馨妍', '', '13433977258', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-09 11:48:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433977258' LIMIT 1);
UPDATE users SET nick_name='馨妍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433977258';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060588577', 'U13060588577', '陈', '', '13060588577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-09 11:25:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060588577' LIMIT 1);
UPDATE users SET nick_name='陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060588577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819250318', 'U18819250318', '张丹', '', '18819250318', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 107, '2024-08-09 09:14:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819250318' LIMIT 1);
UPDATE users SET nick_name='张丹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 107) WHERE phone='18819250318';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664636132', 'U18664636132', 'Joey Xie', '', '18664636132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-09 01:28:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664636132' LIMIT 1);
UPDATE users SET nick_name='Joey Xie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664636132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15727177240', 'U15727177240', '常常', '', '15727177240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-08-09 00:36:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15727177240' LIMIT 1);
UPDATE users SET nick_name='常常', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='15727177240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520537271', 'U18520537271', 'PlanB', '', '18520537271', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-08 23:00:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520537271' LIMIT 1);
UPDATE users SET nick_name='PlanB', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18520537271';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15812354309', 'U15812354309', '鱼', '', '15812354309', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-08 22:55:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15812354309' LIMIT 1);
UPDATE users SET nick_name='鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15812354309';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826185819', 'U13826185819', '橙小么', '', '13826185819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-08 09:51:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826185819' LIMIT 1);
UPDATE users SET nick_name='橙小么', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826185819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665028163', 'U18665028163', 'kevin', '', '18665028163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-08 09:26:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665028163' LIMIT 1);
UPDATE users SET nick_name='kevin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665028163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15015545733', 'U15015545733', '#ccff00㋛', '', '15015545733', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-07 21:58:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15015545733' LIMIT 1);
UPDATE users SET nick_name='#ccff00㋛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15015545733';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13004948798', 'U13004948798', '牛仔很忙', '', '13004948798', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-07 18:32:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13004948798' LIMIT 1);
UPDATE users SET nick_name='牛仔很忙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13004948798';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920576833', 'U15920576833', 'busychang', '', '15920576833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-07 18:32:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920576833' LIMIT 1);
UPDATE users SET nick_name='busychang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920576833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622249159', 'U13622249159', 'Ella', '', '13622249159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2024-08-07 12:50:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622249159' LIMIT 1);
UPDATE users SET nick_name='Ella', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='13622249159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665756234', 'U17665756234', 'zwy', '', '17665756234', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-07 09:30:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665756234' LIMIT 1);
UPDATE users SET nick_name='zwy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='17665756234';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626196859', 'U15626196859', 'Jeran', '', '15626196859', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-08-06 18:00:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626196859' LIMIT 1);
UPDATE users SET nick_name='Jeran', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15626196859';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680588062', 'U18680588062', '11', '', '18680588062', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-06 15:20:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680588062' LIMIT 1);
UPDATE users SET nick_name='11', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680588062';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588521021', 'U18588521021', 'JING', '', '18588521021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-06 14:16:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588521021' LIMIT 1);
UPDATE users SET nick_name='JING', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588521021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450475122', 'U13450475122', 'Hey_Frey', '', '13450475122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-06 09:34:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450475122' LIMIT 1);
UPDATE users SET nick_name='Hey_Frey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450475122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312064167', 'U18312064167', 'yuki', '', '18312064167', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-05 23:06:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312064167' LIMIT 1);
UPDATE users SET nick_name='yuki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18312064167';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027317897', 'U18027317897', 'Wzyyy', '', '18027317897', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 59, '2024-08-05 21:11:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027317897' LIMIT 1);
UPDATE users SET nick_name='Wzyyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 59) WHERE phone='18027317897';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570582648', 'U13570582648', 'TZ', '', '13570582648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-05 18:39:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570582648' LIMIT 1);
UPDATE users SET nick_name='TZ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13570582648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16626409307', 'U16626409307', '欧欧欧🐾', '', '16626409307', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-05 14:51:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16626409307' LIMIT 1);
UPDATE users SET nick_name='欧欧欧🐾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16626409307';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538549718', 'U13538549718', '鸿哲', '', '13538549718', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-04 16:32:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538549718' LIMIT 1);
UPDATE users SET nick_name='鸿哲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538549718';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632472715', 'U13632472715', '贾泓铭', '', '13632472715', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 147, '2024-08-04 16:15:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632472715' LIMIT 1);
UPDATE users SET nick_name='贾泓铭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 147) WHERE phone='13632472715';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102591980', 'U18102591980', 'SongYu', '', '18102591980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-08-04 14:42:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102591980' LIMIT 1);
UPDATE users SET nick_name='SongYu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18102591980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15827332567', 'U15827332567', 'vicky', '', '15827332567', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-04 11:06:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15827332567' LIMIT 1);
UPDATE users SET nick_name='vicky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15827332567';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13144174608', 'U13144174608', '정국小田好甜', '', '13144174608', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-04 09:23:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13144174608' LIMIT 1);
UPDATE users SET nick_name='정국小田好甜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13144174608';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820424017', 'U18820424017', 'VINCI', '', '18820424017', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2024-08-03 18:48:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820424017' LIMIT 1);
UPDATE users SET nick_name='VINCI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='18820424017';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018731021', 'U15018731021', 'vivi', '', '15018731021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-08-03 16:38:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018731021' LIMIT 1);
UPDATE users SET nick_name='vivi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='15018731021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642778929', 'U13642778929', 'llvman', '', '13642778929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-08-03 11:27:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642778929' LIMIT 1);
UPDATE users SET nick_name='llvman', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13642778929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820030416', 'U18820030416', '啊p', '', '18820030416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-08-03 11:05:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820030416' LIMIT 1);
UPDATE users SET nick_name='啊p', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18820030416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17820439643', 'U17820439643', '兔子', '', '17820439643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-02 16:48:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17820439643' LIMIT 1);
UPDATE users SET nick_name='兔子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17820439643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560172775', 'U13560172775', 'Candy刘嘉颖', '', '13560172775', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2024-08-02 11:00:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560172775' LIMIT 1);
UPDATE users SET nick_name='Candy刘嘉颖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='13560172775';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820777827', 'U18820777827', 'Chris', '', '18820777827', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-02 10:32:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820777827' LIMIT 1);
UPDATE users SET nick_name='Chris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820777827';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422538614', 'U13422538614', '瘦猫猫猫👑', '', '13422538614', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-08-01 21:15:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422538614' LIMIT 1);
UPDATE users SET nick_name='瘦猫猫猫👑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13422538614';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925071093', 'U13925071093', '🕓4 o\'clock-IV', '', '13925071093', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-01 20:58:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925071093' LIMIT 1);
UPDATE users SET nick_name='🕓4 o\'clock-IV', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925071093';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620775553', 'U18620775553', '凉快', '', '18620775553', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-31 20:30:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620775553' LIMIT 1);
UPDATE users SET nick_name='凉快', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620775553';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631472415', 'U13631472415', 'Lizzy_Lan', '', '13631472415', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-07-31 09:30:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631472415' LIMIT 1);
UPDATE users SET nick_name='Lizzy_Lan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13631472415';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320155713', 'U18320155713', '心兑矛木', '', '18320155713', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 500, '2024-07-30 19:52:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320155713' LIMIT 1);
UPDATE users SET nick_name='心兑矛木', balance=GREATEST(balance, 0.00), points=GREATEST(points, 500) WHERE phone='18320155713';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13722238683', 'U13722238683', 'wzy', '', '13722238683', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-30 18:33:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13722238683' LIMIT 1);
UPDATE users SET nick_name='wzy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13722238683';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918696534', 'U15918696534', 'huaw1122', '', '15918696534', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-07-29 11:01:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918696534' LIMIT 1);
UPDATE users SET nick_name='huaw1122', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='15918696534';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560468846', 'U13560468846', 'Kelsey 罗莉', '', '13560468846', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-29 08:30:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560468846' LIMIT 1);
UPDATE users SET nick_name='Kelsey 罗莉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560468846';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14739787709', 'U14739787709', '脆脆', '', '14739787709', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-29 01:03:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14739787709' LIMIT 1);
UPDATE users SET nick_name='脆脆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14739787709';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570556799', 'U13570556799', 'Michelle', '', '13570556799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 113, '2024-07-28 20:55:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570556799' LIMIT 1);
UPDATE users SET nick_name='Michelle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 113) WHERE phone='13570556799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15088098089', 'U15088098089', 'Serena', '', '15088098089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 127, '2024-07-28 13:18:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15088098089' LIMIT 1);
UPDATE users SET nick_name='Serena', balance=GREATEST(balance, 0.00), points=GREATEST(points, 127) WHERE phone='15088098089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435683143', 'U13435683143', 'Hemeiliii__i', '', '13435683143', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-27 13:22:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435683143' LIMIT 1);
UPDATE users SET nick_name='Hemeiliii__i', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13435683143';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127970465', 'U18127970465', '🥩', '', '18127970465', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-27 13:19:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127970465' LIMIT 1);
UPDATE users SET nick_name='🥩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127970465';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570354599', 'U13570354599', '野味', '', '13570354599', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-27 07:02:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570354599' LIMIT 1);
UPDATE users SET nick_name='野味', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570354599';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15078381371', 'U15078381371', '予亦', '', '15078381371', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-07-26 17:37:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15078381371' LIMIT 1);
UPDATE users SET nick_name='予亦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15078381371';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102232848', 'U18102232848', 'Elvin艾文·缪', '', '18102232848', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-26 15:41:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102232848' LIMIT 1);
UPDATE users SET nick_name='Elvin艾文·缪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102232848';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570426141', 'U13570426141', '背柴熊', '', '13570426141', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1115, '2024-07-26 14:46:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570426141' LIMIT 1);
UPDATE users SET nick_name='背柴熊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1115) WHERE phone='13570426141';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18200743650', 'U18200743650', 'shawn', '', '18200743650', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-25 21:18:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18200743650' LIMIT 1);
UPDATE users SET nick_name='shawn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18200743650';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242904195', 'U13242904195', '暴龙', '', '13242904195', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2024-07-25 16:04:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242904195' LIMIT 1);
UPDATE users SET nick_name='暴龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13242904195';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521310799', 'U15521310799', 'Stephy', '', '15521310799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 2995, '2024-07-23 20:26:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521310799' LIMIT 1);
UPDATE users SET nick_name='Stephy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 2995) WHERE phone='15521310799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928831314', 'U13928831314', 'Ycc', '', '13928831314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-07-23 00:10:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928831314' LIMIT 1);
UPDATE users SET nick_name='Ycc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13928831314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316088387', 'U13316088387', '东海', '', '13316088387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-22 22:34:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316088387' LIMIT 1);
UPDATE users SET nick_name='东海', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316088387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620187728', 'U18620187728', 'EC🔆Katy', '', '18620187728', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-07-22 16:44:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620187728' LIMIT 1);
UPDATE users SET nick_name='EC🔆Katy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18620187728';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18829489972', 'U18829489972', '追风→17', '', '18829489972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 147, '2024-07-22 15:16:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18829489972' LIMIT 1);
UPDATE users SET nick_name='追风→17', balance=GREATEST(balance, 0.00), points=GREATEST(points, 147) WHERE phone='18829489972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610235114', 'U13610235114', '🍇ᐝ', '', '13610235114', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1409, '2024-07-22 12:34:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610235114' LIMIT 1);
UPDATE users SET nick_name='🍇ᐝ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1409) WHERE phone='13610235114';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826118255', 'U13826118255', 'Alfee', '', '13826118255', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 178, '2024-07-21 19:49:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826118255' LIMIT 1);
UPDATE users SET nick_name='Alfee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 178) WHERE phone='13826118255';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826077694', 'U18826077694', 'cindy', '', '18826077694', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2024-07-21 16:45:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826077694' LIMIT 1);
UPDATE users SET nick_name='cindy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='18826077694';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920417895', 'U15920417895', '杨啸', '', '15920417895', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-07-20 10:58:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920417895' LIMIT 1);
UPDATE users SET nick_name='杨啸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15920417895';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626463358', 'U15626463358', '张学友', '', '15626463358', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 48, '2024-07-19 20:09:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626463358' LIMIT 1);
UPDATE users SET nick_name='张学友', balance=GREATEST(balance, 0.00), points=GREATEST(points, 48) WHERE phone='15626463358';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819224409', 'U18819224409', 'zsy', '', '18819224409', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-19 19:53:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819224409' LIMIT 1);
UPDATE users SET nick_name='zsy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819224409';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520042980', 'U18520042980', 'henry', '', '18520042980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-19 18:47:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520042980' LIMIT 1);
UPDATE users SET nick_name='henry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520042980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819253600', 'U18819253600', '白城虎', '', '18819253600', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 96, '2024-07-19 18:37:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819253600' LIMIT 1);
UPDATE users SET nick_name='白城虎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 96) WHERE phone='18819253600';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915872418', 'U15915872418', '盒', '', '15915872418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-19 13:00:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915872418' LIMIT 1);
UPDATE users SET nick_name='盒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915872418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113464036', 'U15113464036', '一', '', '15113464036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-19 12:26:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113464036' LIMIT 1);
UPDATE users SET nick_name='一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113464036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18025252939', 'U18025252939', 'Caroline', '', '18025252939', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-19 11:18:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18025252939' LIMIT 1);
UPDATE users SET nick_name='Caroline', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18025252939';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520322970', 'U18520322970', 'Flow', '', '18520322970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2024-07-18 16:19:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520322970' LIMIT 1);
UPDATE users SET nick_name='Flow', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='18520322970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126845287', 'U18126845287', '云织（家居｜工程地毯地面装饰）', '', '18126845287', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-18 14:39:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126845287' LIMIT 1);
UPDATE users SET nick_name='云织（家居｜工程地毯地面装饰）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18126845287';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13287723665', 'U13287723665', 'will', '', '13287723665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-18 10:43:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13287723665' LIMIT 1);
UPDATE users SET nick_name='will', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13287723665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19872900264', 'U19872900264', 'Anna', '', '19872900264', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-17 21:49:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19872900264' LIMIT 1);
UPDATE users SET nick_name='Anna', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19872900264';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622200127', 'U15622200127', '^幸^🌟', '', '15622200127', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-07-17 12:48:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622200127' LIMIT 1);
UPDATE users SET nick_name='^幸^🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15622200127';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620018198', 'U18620018198', '阿光', '', '18620018198', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-07-17 12:43:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620018198' LIMIT 1);
UPDATE users SET nick_name='阿光', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18620018198';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433838223', 'U13433838223', 'sun', '', '13433838223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-16 17:26:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433838223' LIMIT 1);
UPDATE users SET nick_name='sun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433838223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928729191', 'U13928729191', 'kc', '', '13928729191', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-16 17:03:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928729191' LIMIT 1);
UPDATE users SET nick_name='kc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928729191';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15314004991', 'U15314004991', '111', '', '15314004991', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-16 07:54:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15314004991' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15314004991';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600090848', 'U13600090848', '街头霸王', '', '13600090848', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 194, '2024-07-15 21:10:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600090848' LIMIT 1);
UPDATE users SET nick_name='街头霸王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 194) WHERE phone='13600090848';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18144849098', 'U18144849098', '芳菲', '', '18144849098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1488, '2024-07-15 16:38:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18144849098' LIMIT 1);
UPDATE users SET nick_name='芳菲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1488) WHERE phone='18144849098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926017175', 'U13926017175', 'hiding', '', '13926017175', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-15 13:51:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926017175' LIMIT 1);
UPDATE users SET nick_name='hiding', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926017175';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622200137', 'U15622200137', 'an', '', '15622200137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-07-14 20:55:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622200137' LIMIT 1);
UPDATE users SET nick_name='an', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15622200137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922731989', 'U13922731989', '万', '', '13922731989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-07-14 19:38:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922731989' LIMIT 1);
UPDATE users SET nick_name='万', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13922731989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588537835', 'U18588537835', '小白', '', '18588537835', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-07-13 20:46:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588537835' LIMIT 1);
UPDATE users SET nick_name='小白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='18588537835';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751789172', 'U13751789172', 'lico', '', '13751789172', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-07-13 19:46:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751789172' LIMIT 1);
UPDATE users SET nick_name='lico', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13751789172';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665073393', 'U18665073393', 'Bella', '', '18665073393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-07-13 17:23:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665073393' LIMIT 1);
UPDATE users SET nick_name='Bella', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18665073393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631221818', 'U13631221818', 'PARISXXX', '', '13631221818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-07-13 15:30:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631221818' LIMIT 1);
UPDATE users SET nick_name='PARISXXX', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13631221818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820650566', 'U18820650566', '金拱门的对手--开封菜', '', '18820650566', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-13 11:47:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820650566' LIMIT 1);
UPDATE users SET nick_name='金拱门的对手--开封菜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820650566';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250207302', 'U13250207302', '大铃', '', '13250207302', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-12 21:16:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250207302' LIMIT 1);
UPDATE users SET nick_name='大铃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250207302';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922293354', 'U13922293354', '郭生', '', '13922293354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-11 17:02:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922293354' LIMIT 1);
UPDATE users SET nick_name='郭生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922293354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360859421', 'U15360859421', 'bli', '', '15360859421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-11 12:23:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360859421' LIMIT 1);
UPDATE users SET nick_name='bli', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360859421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13501522802', 'U13501522802', '鹏展', '', '13501522802', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-07-10 18:26:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13501522802' LIMIT 1);
UPDATE users SET nick_name='鹏展', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13501522802';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920476904', 'U15920476904', 'Yannia', '', '15920476904', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-10 13:36:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920476904' LIMIT 1);
UPDATE users SET nick_name='Yannia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920476904';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022357081', 'U18022357081', 'gollo', '', '18022357081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-07-10 12:30:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022357081' LIMIT 1);
UPDATE users SET nick_name='gollo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18022357081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15827243635', 'U15827243635', '家飞', '', '15827243635', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 165, '2024-07-09 20:25:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15827243635' LIMIT 1);
UPDATE users SET nick_name='家飞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 165) WHERE phone='15827243635';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620818812', 'U18620818812', 'Mango🥭(老板工作号)', '', '18620818812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2024-07-08 15:31:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620818812' LIMIT 1);
UPDATE users SET nick_name='Mango🥭(老板工作号)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='18620818812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998475505', 'U18998475505', 'gg', '', '18998475505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 152, '2024-07-08 00:37:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998475505' LIMIT 1);
UPDATE users SET nick_name='gg', balance=GREATEST(balance, 0.00), points=GREATEST(points, 152) WHERE phone='18998475505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18950119907', 'U18950119907', '晨', '', '18950119907', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-07 16:46:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18950119907' LIMIT 1);
UPDATE users SET nick_name='晨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18950119907';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620458001', 'U18620458001', 'DJ', '', '18620458001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2024-07-07 10:49:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620458001' LIMIT 1);
UPDATE users SET nick_name='DJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='18620458001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688869550', 'U18688869550', 'Joleen', '', '18688869550', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1580, '2024-07-07 10:35:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688869550' LIMIT 1);
UPDATE users SET nick_name='Joleen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1580) WHERE phone='18688869550';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620004103', 'U16620004103', 'EricZ', '', '16620004103', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 387, '2024-07-06 12:49:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620004103' LIMIT 1);
UPDATE users SET nick_name='EricZ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 387) WHERE phone='16620004103';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18002902960', 'U18002902960', 'Carol', '', '18002902960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-06 12:42:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18002902960' LIMIT 1);
UPDATE users SET nick_name='Carol', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18002902960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229975642', 'U13229975642', '西瓜🍉', '', '13229975642', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1244, '2024-07-06 11:11:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229975642' LIMIT 1);
UPDATE users SET nick_name='西瓜🍉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1244) WHERE phone='13229975642';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760786884', 'U13760786884', 'lieh', '', '13760786884', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-07-05 16:22:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760786884' LIMIT 1);
UPDATE users SET nick_name='lieh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13760786884';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622205916', 'U13622205916', 'Sin', '', '13622205916', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-05 16:21:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622205916' LIMIT 1);
UPDATE users SET nick_name='Sin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622205916';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529466654', 'U18529466654', 'jy', '', '18529466654', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-07-04 22:24:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529466654' LIMIT 1);
UPDATE users SET nick_name='jy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='18529466654';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688860838', 'U18688860838', 'k', '', '18688860838', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2024-07-04 21:39:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688860838' LIMIT 1);
UPDATE users SET nick_name='k', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='18688860838';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666078304', 'U18666078304', '。』请叫我维娜斯女神', '', '18666078304', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-04 17:38:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666078304' LIMIT 1);
UPDATE users SET nick_name='。』请叫我维娜斯女神', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666078304';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322016683', 'U15322016683', '艮子', '', '15322016683', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-07-04 13:44:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322016683' LIMIT 1);
UPDATE users SET nick_name='艮子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15322016683';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14749339542', 'U14749339542', 'yang', '', '14749339542', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-04 13:31:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14749339542' LIMIT 1);
UPDATE users SET nick_name='yang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14749339542';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925015909', 'U13925015909', 'Nick', '', '13925015909', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-04 11:41:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925015909' LIMIT 1);
UPDATE users SET nick_name='Nick', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925015909';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631212220', 'U13631212220', '火花花', '', '13631212220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-07-02 22:15:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631212220' LIMIT 1);
UPDATE users SET nick_name='火花花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13631212220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242840694', 'U13242840694', '666', '', '13242840694', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-01 16:50:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242840694' LIMIT 1);
UPDATE users SET nick_name='666', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242840694';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902213229', 'U13902213229', 'Linda', '', '13902213229', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-01 16:32:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902213229' LIMIT 1);
UPDATE users SET nick_name='Linda', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902213229';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822156416', 'U13822156416', '孙奇睿', '', '13822156416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-07-01 15:09:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822156416' LIMIT 1);
UPDATE users SET nick_name='孙奇睿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822156416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925112048', 'U13925112048', '独角兽BULL', '', '13925112048', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-30 13:35:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925112048' LIMIT 1);
UPDATE users SET nick_name='独角兽BULL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925112048';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626162155', 'U15626162155', '后飞', '', '15626162155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-29 16:47:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626162155' LIMIT 1);
UPDATE users SET nick_name='后飞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626162155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17826063771', 'U17826063771', '不是费德勒', '', '17826063771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-06-29 12:31:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17826063771' LIMIT 1);
UPDATE users SET nick_name='不是费德勒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='17826063771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13158269696', 'U13158269696', '乔治', '', '13158269696', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-06-29 11:18:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13158269696' LIMIT 1);
UPDATE users SET nick_name='乔治', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13158269696';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902278148', 'U13902278148', 'Den', '', '13902278148', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-06-28 22:06:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902278148' LIMIT 1);
UPDATE users SET nick_name='Den', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13902278148';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521034728', 'U15521034728', '', '', '15521034728', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-28 17:07:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521034728' LIMIT 1);
UPDATE users SET nick_name='', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521034728';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902000436', 'U15902000436', '茶茶', '', '15902000436', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-06-27 22:07:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902000436' LIMIT 1);
UPDATE users SET nick_name='茶茶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15902000436';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18150088685', 'U18150088685', '温建华', '', '18150088685', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-27 15:34:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18150088685' LIMIT 1);
UPDATE users SET nick_name='温建华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18150088685';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500002889', 'U13500002889', 'petsy', '', '13500002889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-06-26 21:59:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500002889' LIMIT 1);
UPDATE users SET nick_name='petsy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13500002889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312668833', 'U18312668833', '木草间', '', '18312668833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 136, '2024-06-26 16:20:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312668833' LIMIT 1);
UPDATE users SET nick_name='木草间', balance=GREATEST(balance, 0.00), points=GREATEST(points, 136) WHERE phone='18312668833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802959179', 'U13802959179', '方生', '', '13802959179', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 148, '2024-06-25 16:52:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802959179' LIMIT 1);
UPDATE users SET nick_name='方生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 148) WHERE phone='13802959179';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688953668', 'U18688953668', '好运来', '', '18688953668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-25 16:33:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688953668' LIMIT 1);
UPDATE users SET nick_name='好运来', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688953668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688903179', 'U18688903179', 'Star', '', '18688903179', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-25 12:24:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688903179' LIMIT 1);
UPDATE users SET nick_name='Star', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688903179';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802887384', 'U13802887384', '🌸WTY', '', '13802887384', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-25 07:34:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802887384' LIMIT 1);
UPDATE users SET nick_name='🌸WTY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802887384';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822161663', 'U13822161663', '👄Amber', '', '13822161663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-24 13:31:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822161663' LIMIT 1);
UPDATE users SET nick_name='👄Amber', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822161663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202099990', 'U13202099990', 'ii', '', '13202099990', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-06-24 12:48:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202099990' LIMIT 1);
UPDATE users SET nick_name='ii', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13202099990';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18200671768', 'U18200671768', 'Esme🍓🍓', '', '18200671768', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1198, '2024-06-24 12:41:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18200671768' LIMIT 1);
UPDATE users SET nick_name='Esme🍓🍓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1198) WHERE phone='18200671768';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13222752685', 'U13222752685', 'Rosy_N', '', '13222752685', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-24 05:40:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13222752685' LIMIT 1);
UPDATE users SET nick_name='Rosy_N', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13222752685';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929585032', 'U13929585032', '辉', '', '13929585032', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-06-23 23:26:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929585032' LIMIT 1);
UPDATE users SET nick_name='辉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13929585032';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430281994', 'U13430281994', '周先生', '', '13430281994', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-06-23 19:23:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430281994' LIMIT 1);
UPDATE users SET nick_name='周先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13430281994';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535201109', 'U13535201109', '刘', '', '13535201109', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2024-06-23 15:34:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535201109' LIMIT 1);
UPDATE users SET nick_name='刘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='13535201109';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666096291', 'U18666096291', '张全贵', '', '18666096291', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-06-22 19:09:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666096291' LIMIT 1);
UPDATE users SET nick_name='张全贵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18666096291';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15659123971', 'U15659123971', 'syl', '', '15659123971', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-06-22 17:23:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15659123971' LIMIT 1);
UPDATE users SET nick_name='syl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15659123971';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922386539', 'U13922386539', 'yoyo', '', '13922386539', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-22 17:07:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922386539' LIMIT 1);
UPDATE users SET nick_name='yoyo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922386539';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631355153', 'U13631355153', '贝克街Dr·xia', '', '13631355153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-06-22 13:48:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631355153' LIMIT 1);
UPDATE users SET nick_name='贝克街Dr·xia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13631355153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565089865', 'U18565089865', '阿白', '', '18565089865', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-06-22 11:44:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565089865' LIMIT 1);
UPDATE users SET nick_name='阿白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18565089865';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13797045055', 'U13797045055', '李宏文', '', '13797045055', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-22 10:43:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13797045055' LIMIT 1);
UPDATE users SET nick_name='李宏文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13797045055';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15827115906', 'U15827115906', 'xixi', '', '15827115906', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-21 18:21:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15827115906' LIMIT 1);
UPDATE users SET nick_name='xixi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15827115906';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998839394', 'U18998839394', 'Reus', '', '18998839394', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-21 10:31:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998839394' LIMIT 1);
UPDATE users SET nick_name='Reus', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998839394';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925018288', 'U13925018288', '冷水瓶', '', '13925018288', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-06-20 10:57:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925018288' LIMIT 1);
UPDATE users SET nick_name='冷水瓶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13925018288';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680200152', 'U18680200152', 'Cy', '', '18680200152', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1998, '2024-06-20 00:06:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680200152' LIMIT 1);
UPDATE users SET nick_name='Cy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1998) WHERE phone='18680200152';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15104538505', 'U15104538505', '洪铭莉', '', '15104538505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1797, '2024-06-19 20:53:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15104538505' LIMIT 1);
UPDATE users SET nick_name='洪铭莉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1797) WHERE phone='15104538505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265363740', 'U13265363740', 'Eric', '', '13265363740', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-19 16:00:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265363740' LIMIT 1);
UPDATE users SET nick_name='Eric', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265363740';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160980186', 'U13160980186', 'td943', '', '13160980186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-06-19 12:24:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160980186' LIMIT 1);
UPDATE users SET nick_name='td943', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13160980186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15776977808', 'U15776977808', '毕金亮', '', '15776977808', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-18 13:34:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15776977808' LIMIT 1);
UPDATE users SET nick_name='毕金亮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15776977808';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826112207', 'U13826112207', 'Nesta', '', '13826112207', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-06-18 08:25:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826112207' LIMIT 1);
UPDATE users SET nick_name='Nesta', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13826112207';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802880716', 'U13802880716', 'E', '', '13802880716', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-17 14:05:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802880716' LIMIT 1);
UPDATE users SET nick_name='E', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802880716';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15089617390', 'U15089617390', 'Liya', '', '15089617390', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-06-17 12:15:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15089617390' LIMIT 1);
UPDATE users SET nick_name='Liya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15089617390';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625069797', 'U15625069797', '缪也', '', '15625069797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-16 10:08:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625069797' LIMIT 1);
UPDATE users SET nick_name='缪也', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625069797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18675876180', 'U18675876180', 'wxin.', '', '18675876180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-15 20:34:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18675876180' LIMIT 1);
UPDATE users SET nick_name='wxin.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18675876180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430287060', 'U13430287060', '八戒 ( 홍니 )', '', '13430287060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 176, '2024-06-15 15:22:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430287060' LIMIT 1);
UPDATE users SET nick_name='八戒 ( 홍니 )', balance=GREATEST(balance, 0.00), points=GREATEST(points, 176) WHERE phone='13430287060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13189180616', 'U13189180616', '🎟', '', '13189180616', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 116, '2024-06-15 12:53:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13189180616' LIMIT 1);
UPDATE users SET nick_name='🎟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 116) WHERE phone='13189180616';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925084923', 'U13925084923', 'vv', '', '13925084923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-06-15 12:38:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925084923' LIMIT 1);
UPDATE users SET nick_name='vv', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13925084923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866951318', 'U19866951318', '周夫人', '', '19866951318', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-15 11:57:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866951318' LIMIT 1);
UPDATE users SET nick_name='周夫人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19866951318';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680236600', 'U18680236600', '小翀', '', '18680236600', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-06-14 23:43:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680236600' LIMIT 1);
UPDATE users SET nick_name='小翀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18680236600';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986395956', 'U15986395956', 'JJ', '', '15986395956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-14 16:34:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986395956' LIMIT 1);
UPDATE users SET nick_name='JJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15986395956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613190800', 'U18613190800', '汗血宝马', '', '18613190800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-14 15:28:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613190800' LIMIT 1);
UPDATE users SET nick_name='汗血宝马', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613190800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802885499', 'U13802885499', '拍子', '', '13802885499', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-14 10:44:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802885499' LIMIT 1);
UPDATE users SET nick_name='拍子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802885499';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920169978', 'U15920169978', 'qq', '', '15920169978', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-13 21:23:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920169978' LIMIT 1);
UPDATE users SET nick_name='qq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920169978';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565348226', 'U18565348226', 'jeff', '', '18565348226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-13 12:51:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565348226' LIMIT 1);
UPDATE users SET nick_name='jeff', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565348226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16624686613', 'U16624686613', '五', '', '16624686613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-06-12 11:18:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16624686613' LIMIT 1);
UPDATE users SET nick_name='五', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='16624686613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620285502', 'U18620285502', '余浪', '', '18620285502', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-12 10:11:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620285502' LIMIT 1);
UPDATE users SET nick_name='余浪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620285502';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18725887112', 'U18725887112', 'Aaron', '', '18725887112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-06-10 15:15:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18725887112' LIMIT 1);
UPDATE users SET nick_name='Aaron', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18725887112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521399137', 'U15521399137', '乔', '', '15521399137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1067, '2024-06-10 13:07:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521399137' LIMIT 1);
UPDATE users SET nick_name='乔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1067) WHERE phone='15521399137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520653908', 'U18520653908', '波波', '', '18520653908', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 138, '2024-06-10 13:03:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520653908' LIMIT 1);
UPDATE users SET nick_name='波波', balance=GREATEST(balance, 0.00), points=GREATEST(points, 138) WHERE phone='18520653908';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19854472898', 'U19854472898', 'zhu', '', '19854472898', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-09 16:44:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19854472898' LIMIT 1);
UPDATE users SET nick_name='zhu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19854472898';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15811885656', 'U15811885656', '丹割', '', '15811885656', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-09 15:07:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15811885656' LIMIT 1);
UPDATE users SET nick_name='丹割', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15811885656';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15019814098', 'U15019814098', '林惠玲huhha', '', '15019814098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 138, '2024-06-09 14:28:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15019814098' LIMIT 1);
UPDATE users SET nick_name='林惠玲huhha', balance=GREATEST(balance, 0.00), points=GREATEST(points, 138) WHERE phone='15019814098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665795708', 'U18665795708', 'Gray', '', '18665795708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-09 11:09:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665795708' LIMIT 1);
UPDATE users SET nick_name='Gray', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665795708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422395668', 'U13422395668', 'victor0301', '', '13422395668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-09 10:13:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422395668' LIMIT 1);
UPDATE users SET nick_name='victor0301', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422395668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929510223', 'U13929510223', 'jessica', '', '13929510223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-06-09 10:07:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929510223' LIMIT 1);
UPDATE users SET nick_name='jessica', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13929510223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556785832', 'U13556785832', '夏天', '', '13556785832', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-06-09 01:08:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556785832' LIMIT 1);
UPDATE users SET nick_name='夏天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13556785832';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392472872', 'U13392472872', 'vee', '', '13392472872', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 638, '2024-06-08 22:35:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392472872' LIMIT 1);
UPDATE users SET nick_name='vee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 638) WHERE phone='13392472872';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694257534', 'U13694257534', 'Winnie', '', '13694257534', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-08 20:04:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694257534' LIMIT 1);
UPDATE users SET nick_name='Winnie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13694257534';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520419868', 'U18520419868', 'Cha Cha 张俊伟', '', '18520419868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 357, '2024-06-08 19:28:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520419868' LIMIT 1);
UPDATE users SET nick_name='Cha Cha 张俊伟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 357) WHERE phone='18520419868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989097096', 'U15989097096', '晨杨', '', '15989097096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-08 18:00:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989097096' LIMIT 1);
UPDATE users SET nick_name='晨杨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989097096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902220037', 'U13902220037', '已核销', '', '13902220037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 63, '2024-06-08 15:58:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902220037' LIMIT 1);
UPDATE users SET nick_name='已核销', balance=GREATEST(balance, 0.00), points=GREATEST(points, 63) WHERE phone='13902220037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620192025', 'U18620192025', 'Joan.张', '', '18620192025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2024-06-08 15:29:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620192025' LIMIT 1);
UPDATE users SET nick_name='Joan.张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='18620192025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18816898002', 'U18816898002', '华', '', '18816898002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-08 11:37:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18816898002' LIMIT 1);
UPDATE users SET nick_name='华', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18816898002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312985011', 'U13312985011', '山', '', '13312985011', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2024-06-08 10:58:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312985011' LIMIT 1);
UPDATE users SET nick_name='山', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='13312985011';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18020766202', 'U18020766202', 'SongN', '', '18020766202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 1542.00, 0, '2024-06-07 19:54:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18020766202' LIMIT 1);
UPDATE users SET nick_name='SongN', balance=GREATEST(balance, 1542.00), points=GREATEST(points, 0) WHERE phone='18020766202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15139191021', 'U15139191021', '暖梦.🦄', '', '15139191021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-07 13:10:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15139191021' LIMIT 1);
UPDATE users SET nick_name='暖梦.🦄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15139191021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434337010', 'U13434337010', '三横一竖', '', '13434337010', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-06-06 14:42:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434337010' LIMIT 1);
UPDATE users SET nick_name='三横一竖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13434337010';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19157423899', 'U19157423899', '周末', '', '19157423899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-06 11:47:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19157423899' LIMIT 1);
UPDATE users SET nick_name='周末', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19157423899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922722631', 'U13922722631', 'Gary', '', '13922722631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-06-05 18:15:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922722631' LIMIT 1);
UPDATE users SET nick_name='Gary', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13922722631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914152137', 'U15914152137', '陈妍希', '', '15914152137', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 72, '2024-06-05 14:48:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914152137' LIMIT 1);
UPDATE users SET nick_name='陈妍希', balance=GREATEST(balance, 0.00), points=GREATEST(points, 72) WHERE phone='15914152137';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666075714', 'U18666075714', 'Fighterfit Ivy', '', '18666075714', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1198, '2024-06-05 11:08:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666075714' LIMIT 1);
UPDATE users SET nick_name='Fighterfit Ivy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1198) WHERE phone='18666075714';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922290217', 'U13922290217', 'ae', '', '13922290217', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-04 14:14:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922290217' LIMIT 1);
UPDATE users SET nick_name='ae', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922290217';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580527223', 'U13580527223', 'zz', '', '13580527223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 177, '2024-06-03 14:29:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580527223' LIMIT 1);
UPDATE users SET nick_name='zz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 177) WHERE phone='13580527223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602477236', 'U13602477236', 'L-jm🌀', '', '13602477236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-03 09:44:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602477236' LIMIT 1);
UPDATE users SET nick_name='L-jm🌀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602477236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920421588', 'U15920421588', '「」', '', '15920421588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 76, '2024-06-02 22:05:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920421588' LIMIT 1);
UPDATE users SET nick_name='「」', balance=GREATEST(balance, 0.00), points=GREATEST(points, 76) WHERE phone='15920421588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13605923786', 'U13605923786', '12', '', '13605923786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-02 12:55:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13605923786' LIMIT 1);
UPDATE users SET nick_name='12', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13605923786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18612944723', 'U18612944723', '达昊然 Yoga达', '', '18612944723', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-02 09:11:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18612944723' LIMIT 1);
UPDATE users SET nick_name='达昊然 Yoga达', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18612944723';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556652587', 'U13556652587', '木子', '', '13556652587', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-01 22:54:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556652587' LIMIT 1);
UPDATE users SET nick_name='木子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556652587';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815861031', 'U15815861031', 'Vigo', '', '15815861031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-06-01 21:01:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815861031' LIMIT 1);
UPDATE users SET nick_name='Vigo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='15815861031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876543170', 'U15876543170', '世豪', '', '15876543170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-01 20:08:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876543170' LIMIT 1);
UPDATE users SET nick_name='世豪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876543170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915926849', 'U15915926849', 'Peter', '', '15915926849', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 114, '2024-06-01 16:33:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915926849' LIMIT 1);
UPDATE users SET nick_name='Peter', balance=GREATEST(balance, 0.00), points=GREATEST(points, 114) WHERE phone='15915926849';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570219445', 'U13570219445', 'Yulia', '', '13570219445', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 417, '2024-06-01 16:24:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570219445' LIMIT 1);
UPDATE users SET nick_name='Yulia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 417) WHERE phone='13570219445';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580548490', 'U13580548490', '林锋', '', '13580548490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-06-01 14:16:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580548490' LIMIT 1);
UPDATE users SET nick_name='林锋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13580548490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13151718625', 'U13151718625', '🥥', '', '13151718625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 186, '2024-06-01 12:11:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13151718625' LIMIT 1);
UPDATE users SET nick_name='🥥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 186) WHERE phone='13151718625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682247439', 'U13682247439', 'Lee', '', '13682247439', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-06-01 11:02:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682247439' LIMIT 1);
UPDATE users SET nick_name='Lee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13682247439';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18899732876', 'U18899732876', 'Maggie', '', '18899732876', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-06-01 09:47:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18899732876' LIMIT 1);
UPDATE users SET nick_name='Maggie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18899732876';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450666637', 'U13450666637', '汤锦豪', '', '13450666637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-06-01 09:46:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450666637' LIMIT 1);
UPDATE users SET nick_name='汤锦豪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='13450666637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925185985', 'U13925185985', '可乐茉莉', '', '13925185985', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 22:10:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925185985' LIMIT 1);
UPDATE users SET nick_name='可乐茉莉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925185985';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928863133', 'U18928863133', '健', '', '18928863133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-05-31 22:06:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928863133' LIMIT 1);
UPDATE users SET nick_name='健', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='18928863133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680276001', 'U18680276001', 'Michael Cheng', '', '18680276001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-05-31 21:57:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680276001' LIMIT 1);
UPDATE users SET nick_name='Michael Cheng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18680276001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926037216', 'U13926037216', '林先生', '', '13926037216', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 21:55:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926037216' LIMIT 1);
UPDATE users SET nick_name='林先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926037216';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925002264', 'U13925002264', 'jason', '', '13925002264', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 154, '2024-05-31 20:13:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925002264' LIMIT 1);
UPDATE users SET nick_name='jason', balance=GREATEST(balance, 0.00), points=GREATEST(points, 154) WHERE phone='13925002264';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915888650', 'U15915888650', 'Chris', '', '15915888650', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 48.00, 0, '2024-05-31 20:04:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915888650' LIMIT 1);
UPDATE users SET nick_name='Chris', balance=GREATEST(balance, 48.00), points=GREATEST(points, 0) WHERE phone='15915888650';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15201149155', 'U15201149155', '颖', '', '15201149155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 1192.00, 9, '2024-05-31 20:02:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15201149155' LIMIT 1);
UPDATE users SET nick_name='颖', balance=GREATEST(balance, 1192.00), points=GREATEST(points, 9) WHERE phone='15201149155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15002003291', 'U15002003291', '小黄', '', '15002003291', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 688.00, 0, '2024-05-31 19:59:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15002003291' LIMIT 1);
UPDATE users SET nick_name='小黄', balance=GREATEST(balance, 688.00), points=GREATEST(points, 0) WHERE phone='15002003291';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565436072', 'U18565436072', '马场大辉', '', '18565436072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 19:36:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565436072' LIMIT 1);
UPDATE users SET nick_name='马场大辉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565436072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15207311900', 'U15207311900', '🍉不甜不要钱', '', '15207311900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 714.39, 0, '2024-05-31 17:59:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15207311900' LIMIT 1);
UPDATE users SET nick_name='🍉不甜不要钱', balance=GREATEST(balance, 714.39), points=GREATEST(points, 0) WHERE phone='15207311900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246887222', 'U13246887222', '腿毛', '', '13246887222', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:59:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246887222' LIMIT 1);
UPDATE users SET nick_name='腿毛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246887222';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632399252', 'U13632399252', 'Mona.ᥫᩣ.🧸ྀི', '', '13632399252', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:59:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632399252' LIMIT 1);
UPDATE users SET nick_name='Mona.ᥫᩣ.🧸ྀི', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632399252';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15973497060', 'U15973497060', '喜宝', '', '15973497060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15973497060' LIMIT 1);
UPDATE users SET nick_name='喜宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15973497060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680217723', 'U18680217723', 'yw', '', '18680217723', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680217723' LIMIT 1);
UPDATE users SET nick_name='yw', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680217723';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688882183', 'U18688882183', '豆豆', '', '18688882183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688882183' LIMIT 1);
UPDATE users SET nick_name='豆豆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688882183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602827086', 'U13602827086', '周先生', '', '13602827086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602827086' LIMIT 1);
UPDATE users SET nick_name='周先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602827086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625212521', 'U15625212521', '初心', '', '15625212521', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625212521' LIMIT 1);
UPDATE users SET nick_name='初心', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625212521';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521326337', 'U15521326337', 'Nonono☝️', '', '15521326337', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 177, '2024-05-31 17:58:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521326337' LIMIT 1);
UPDATE users SET nick_name='Nonono☝️', balance=GREATEST(balance, 0.00), points=GREATEST(points, 177) WHERE phone='15521326337';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620815815', 'U17620815815', 'Marc', '', '17620815815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620815815' LIMIT 1);
UPDATE users SET nick_name='Marc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620815815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609019299', 'U13609019299', '红姐', '', '13609019299', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 1846.20, 0, '2024-05-31 17:58:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609019299' LIMIT 1);
UPDATE users SET nick_name='红姐', balance=GREATEST(balance, 1846.20), points=GREATEST(points, 0) WHERE phone='13609019299';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202067014', 'U15202067014', '彩凌🍬', '', '15202067014', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202067014' LIMIT 1);
UPDATE users SET nick_name='彩凌🍬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15202067014';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129310515', 'U13129310515', 'yikk', '', '13129310515', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129310515' LIMIT 1);
UPDATE users SET nick_name='yikk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13129310515';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609014583', 'U13609014583', '13609014583', '', '13609014583', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609014583' LIMIT 1);
UPDATE users SET nick_name='13609014583', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609014583';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826004868', 'U13826004868', '💪🏻Nelson🌊', '', '13826004868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2024-05-31 17:58:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826004868' LIMIT 1);
UPDATE users SET nick_name='💪🏻Nelson🌊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13826004868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316013949', 'U13316013949', 'KC', '', '13316013949', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316013949' LIMIT 1);
UPDATE users SET nick_name='KC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316013949';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122445797', 'U18122445797', 'blanka', '', '18122445797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-05-31 17:58:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122445797' LIMIT 1);
UPDATE users SET nick_name='blanka', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18122445797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418184024', 'U13418184024', 'Kwongtk', '', '13418184024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418184024' LIMIT 1);
UPDATE users SET nick_name='Kwongtk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13418184024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13178649368', 'U13178649368', '子涵', '', '13178649368', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2024-05-31 17:58:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13178649368' LIMIT 1);
UPDATE users SET nick_name='子涵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='13178649368';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822147886', 'U13822147886', '🦋💫🦋', '', '13822147886', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822147886' LIMIT 1);
UPDATE users SET nick_name='🦋💫🦋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822147886';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820012650', 'U18820012650', 'kk', '', '18820012650', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-05-31 17:58:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820012650' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18820012650';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580501537', 'U13580501537', 'Nora', '', '13580501537', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-05-31 17:58:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580501537' LIMIT 1);
UPDATE users SET nick_name='Nora', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13580501537';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710651001', 'U13710651001', '东哥', '', '13710651001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 253.00, 0, '2024-05-31 17:58:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710651001' LIMIT 1);
UPDATE users SET nick_name='东哥', balance=GREATEST(balance, 253.00), points=GREATEST(points, 0) WHERE phone='13710651001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822115155', 'U13822115155', '莹', '', '13822115155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-05-31 17:58:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822115155' LIMIT 1);
UPDATE users SET nick_name='莹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13822115155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13051301628', 'U13051301628', '茁子M', '', '13051301628', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13051301628' LIMIT 1);
UPDATE users SET nick_name='茁子M', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13051301628';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825146687', 'U18825146687', '瑶', '', '18825146687', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825146687' LIMIT 1);
UPDATE users SET nick_name='瑶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825146687';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18771051978', 'U18771051978', 'Atlx', '', '18771051978', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 107, '2024-05-31 17:58:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18771051978' LIMIT 1);
UPDATE users SET nick_name='Atlx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 107) WHERE phone='18771051978';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13138689666', 'U13138689666', 'yan', '', '13138689666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13138689666' LIMIT 1);
UPDATE users SET nick_name='yan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13138689666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013029393', 'U15013029393', '15013029393', '', '15013029393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013029393' LIMIT 1);
UPDATE users SET nick_name='15013029393', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013029393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17576023416', 'U17576023416', 'Frances', '', '17576023416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17576023416' LIMIT 1);
UPDATE users SET nick_name='Frances', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17576023416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660698418', 'U13660698418', '李洪振', '', '13660698418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660698418' LIMIT 1);
UPDATE users SET nick_name='李洪振', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660698418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570384650', 'U13570384650', '美艳', '', '13570384650', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570384650' LIMIT 1);
UPDATE users SET nick_name='美艳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570384650';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249158997', 'U13249158997', '手冢国光', '', '13249158997', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249158997' LIMIT 1);
UPDATE users SET nick_name='手冢国光', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249158997';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622221564', 'U13622221564', '卓', '', '13622221564', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622221564' LIMIT 1);
UPDATE users SET nick_name='卓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622221564';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18310936675', 'U18310936675', '🙏', '', '18310936675', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 999, '2024-05-31 17:58:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18310936675' LIMIT 1);
UPDATE users SET nick_name='🙏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 999) WHERE phone='18310936675';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533248818', 'U13533248818', '已核销', '', '13533248818', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:58:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533248818' LIMIT 1);
UPDATE users SET nick_name='已核销', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533248818';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560472712', 'U13560472712', '『Yu Yu.』', '', '13560472712', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 73, '2024-05-31 17:58:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560472712' LIMIT 1);
UPDATE users SET nick_name='『Yu Yu.』', balance=GREATEST(balance, 0.00), points=GREATEST(points, 73) WHERE phone='13560472712';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665612689', 'U18665612689', 'Eugene', '', '18665612689', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-05-31 17:35:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665612689' LIMIT 1);
UPDATE users SET nick_name='Eugene', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='18665612689';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18279007311', 'U18279007311', '惟', '', '18279007311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18279007311' LIMIT 1);
UPDATE users SET nick_name='惟', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='18279007311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565148822', 'U18565148822', '易橙子🍊', '', '18565148822', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565148822' LIMIT 1);
UPDATE users SET nick_name='易橙子🍊', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='18565148822';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560362302', 'U13560362302', '颖～', '', '13560362302', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 3422.00, 0, '2024-05-31 17:34:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560362302' LIMIT 1);
UPDATE users SET nick_name='颖～', balance=GREATEST(balance, 3422.00), points=GREATEST(points, 0) WHERE phone='13560362302';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928804221', 'U18928804221', 'Eavan', '', '18928804221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 626, '2024-05-31 17:34:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928804221' LIMIT 1);
UPDATE users SET nick_name='Eavan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 626) WHERE phone='18928804221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533456452', 'U13533456452', '骆乐乐', '', '13533456452', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 40.00, 9, '2024-05-31 17:34:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533456452' LIMIT 1);
UPDATE users SET nick_name='骆乐乐', balance=GREATEST(balance, 40.00), points=GREATEST(points, 9) WHERE phone='13533456452';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828408178', 'U13828408178', '三苏', '', '13828408178', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-05-31 17:34:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828408178' LIMIT 1);
UPDATE users SET nick_name='三苏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13828408178';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560496223', 'U13560496223', '简翼 Daniel Kan', '', '13560496223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-05-31 17:34:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560496223' LIMIT 1);
UPDATE users SET nick_name='简翼 Daniel Kan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13560496223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14754705070', 'U14754705070', 'C.H.e', '', '14754705070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14754705070' LIMIT 1);
UPDATE users SET nick_name='C.H.e', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='14754705070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18319443199', 'U18319443199', 'Eri_', '', '18319443199', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 60.00, 0, '2024-05-31 17:34:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18319443199' LIMIT 1);
UPDATE users SET nick_name='Eri_', balance=GREATEST(balance, 60.00), points=GREATEST(points, 0) WHERE phone='18319443199';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556054084', 'U13556054084', '大葶', '', '13556054084', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 29, '2024-05-31 17:34:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556054084' LIMIT 1);
UPDATE users SET nick_name='大葶', balance=GREATEST(balance, 20.00), points=GREATEST(points, 29) WHERE phone='13556054084';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826021102', 'U13826021102', '谜底', '', '13826021102', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 34.00, 0, '2024-05-31 17:34:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826021102' LIMIT 1);
UPDATE users SET nick_name='谜底', balance=GREATEST(balance, 34.00), points=GREATEST(points, 0) WHERE phone='13826021102';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915990558', 'U15915990558', 'Rikko.chan', '', '15915990558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 60.00, 0, '2024-05-31 17:34:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915990558' LIMIT 1);
UPDATE users SET nick_name='Rikko.chan', balance=GREATEST(balance, 60.00), points=GREATEST(points, 0) WHERE phone='15915990558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580405255', 'U13580405255', '黄先生', '', '13580405255', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 175, '2024-05-31 17:34:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580405255' LIMIT 1);
UPDATE users SET nick_name='黄先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 175) WHERE phone='13580405255';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688459582', 'U18688459582', 'Michelle MakMak', '', '18688459582', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688459582' LIMIT 1);
UPDATE users SET nick_name='Michelle MakMak', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='18688459582';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533361923', 'U13533361923', 'Leytong', '', '13533361923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 39, '2024-05-31 17:34:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533361923' LIMIT 1);
UPDATE users SET nick_name='Leytong', balance=GREATEST(balance, 20.00), points=GREATEST(points, 39) WHERE phone='13533361923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625051874', 'U15625051874', 'Win', '', '15625051874', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 3.09, 0, '2024-05-31 17:34:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625051874' LIMIT 1);
UPDATE users SET nick_name='Win', balance=GREATEST(balance, 3.09), points=GREATEST(points, 0) WHERE phone='15625051874';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632189186', 'U13632189186', '芫', '', '13632189186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632189186' LIMIT 1);
UPDATE users SET nick_name='芫', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='13632189186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202013352', 'U15202013352', 'Elaine', '', '15202013352', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202013352' LIMIT 1);
UPDATE users SET nick_name='Elaine', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='15202013352';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535187237', 'U13535187237', 'hinnis', '', '13535187237', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 39, '2024-05-31 17:34:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535187237' LIMIT 1);
UPDATE users SET nick_name='hinnis', balance=GREATEST(balance, 20.00), points=GREATEST(points, 39) WHERE phone='13535187237';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902248127', 'U13902248127', '708', '', '13902248127', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:34:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902248127' LIMIT 1);
UPDATE users SET nick_name='708', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902248127';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819310124', 'U18819310124', 'H', '', '18819310124', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 60.00, 0, '2024-05-31 17:34:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819310124' LIMIT 1);
UPDATE users SET nick_name='H', balance=GREATEST(balance, 60.00), points=GREATEST(points, 0) WHERE phone='18819310124';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527837972', 'U13527837972', '👑ELISEQUEEN🙈', '', '13527837972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527837972' LIMIT 1);
UPDATE users SET nick_name='👑ELISEQUEEN🙈', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='13527837972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520033033', 'U18520033033', '❄️IcY✨', '', '18520033033', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520033033' LIMIT 1);
UPDATE users SET nick_name='❄️IcY✨', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='18520033033';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819371746', 'U18819371746', '柠檬', '', '18819371746', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819371746' LIMIT 1);
UPDATE users SET nick_name='柠檬', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='18819371746';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533478860', 'U13533478860', 'YvonneLy 🍪', '', '13533478860', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533478860' LIMIT 1);
UPDATE users SET nick_name='YvonneLy 🍪', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='13533478860';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017564552', 'U15017564552', '利生', '', '15017564552', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017564552' LIMIT 1);
UPDATE users SET nick_name='利生', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='15017564552';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529477668', 'U18529477668', '娟子Joanna', '', '18529477668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529477668' LIMIT 1);
UPDATE users SET nick_name='娟子Joanna', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='18529477668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760691049', 'U13760691049', 'kid国进', '', '13760691049', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 50, '2024-05-31 17:34:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760691049' LIMIT 1);
UPDATE users SET nick_name='kid国进', balance=GREATEST(balance, 0.00), points=GREATEST(points, 50) WHERE phone='13760691049';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13976113322', 'U13976113322', '1', '', '13976113322', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13976113322' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='13976113322';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13326405621', 'U13326405621', '猫', '', '13326405621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13326405621' LIMIT 1);
UPDATE users SET nick_name='猫', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='13326405621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102739972', 'U18102739972', 'Linda', '', '18102739972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 18.29, 899, '2024-05-31 17:34:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102739972' LIMIT 1);
UPDATE users SET nick_name='Linda', balance=GREATEST(balance, 18.29), points=GREATEST(points, 899) WHERE phone='18102739972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520594744', 'U18520594744', '000', '', '18520594744', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520594744' LIMIT 1);
UPDATE users SET nick_name='000', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='18520594744';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632487030', 'U13632487030', '蓝', '', '13632487030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 242, '2024-05-31 17:34:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632487030' LIMIT 1);
UPDATE users SET nick_name='蓝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 242) WHERE phone='13632487030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520673039', 'U18520673039', '阿维！', '', '18520673039', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520673039' LIMIT 1);
UPDATE users SET nick_name='阿维！', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='18520673039';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989121834', 'U15989121834', '一', '', '15989121834', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 9, '2024-05-31 17:34:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989121834' LIMIT 1);
UPDATE users SET nick_name='一', balance=GREATEST(balance, 20.00), points=GREATEST(points, 9) WHERE phone='15989121834';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666744876', 'U18666744876', '陈光煜', '', '18666744876', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 40.00, 9, '2024-05-31 17:34:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666744876' LIMIT 1);
UPDATE users SET nick_name='陈光煜', balance=GREATEST(balance, 40.00), points=GREATEST(points, 9) WHERE phone='18666744876';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929531999', 'U13929531999', 'Tiger', '', '13929531999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:34:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929531999' LIMIT 1);
UPDATE users SET nick_name='Tiger', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929531999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666089516', 'U18666089516', '诸语', '', '18666089516', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 12.39, 29, '2024-05-31 17:34:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666089516' LIMIT 1);
UPDATE users SET nick_name='诸语', balance=GREATEST(balance, 12.39), points=GREATEST(points, 29) WHERE phone='18666089516';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763335615', 'U13763335615', '老王', '', '13763335615', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 39, '2024-05-31 17:34:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763335615' LIMIT 1);
UPDATE users SET nick_name='老王', balance=GREATEST(balance, 20.00), points=GREATEST(points, 39) WHERE phone='13763335615';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819462308', 'U18819462308', 'freeman', '', '18819462308', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 40.00, 0, '2024-05-31 17:34:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819462308' LIMIT 1);
UPDATE users SET nick_name='freeman', balance=GREATEST(balance, 40.00), points=GREATEST(points, 0) WHERE phone='18819462308';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422787963', 'U13422787963', '吴先生', '', '13422787963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 40.00, 0, '2024-05-31 17:34:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422787963' LIMIT 1);
UPDATE users SET nick_name='吴先生', balance=GREATEST(balance, 40.00), points=GREATEST(points, 0) WHERE phone='13422787963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660789299', 'U13660789299', '白纹伊蚊', '', '13660789299', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 40.00, 9, '2024-05-31 17:34:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660789299' LIMIT 1);
UPDATE users SET nick_name='白纹伊蚊', balance=GREATEST(balance, 40.00), points=GREATEST(points, 9) WHERE phone='13660789299';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435571202', 'U13435571202', '鸡腿堡不加包', '', '13435571202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435571202' LIMIT 1);
UPDATE users SET nick_name='鸡腿堡不加包', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='13435571202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826276864', 'U13826276864', 'Peter', '', '13826276864', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826276864' LIMIT 1);
UPDATE users SET nick_name='Peter', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='13826276864';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316492755', 'U18316492755', 'yellow', '', '18316492755', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 26, '2024-05-31 17:34:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316492755' LIMIT 1);
UPDATE users SET nick_name='yellow', balance=GREATEST(balance, 0.00), points=GREATEST(points, 26) WHERE phone='18316492755';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570253393', 'U13570253393', 'Yanna', '', '13570253393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 60.00, 0, '2024-05-31 17:34:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570253393' LIMIT 1);
UPDATE users SET nick_name='Yanna', balance=GREATEST(balance, 60.00), points=GREATEST(points, 0) WHERE phone='13570253393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15118865663', 'U15118865663', 'dwj', '', '15118865663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 48, '2024-05-31 17:34:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15118865663' LIMIT 1);
UPDATE users SET nick_name='dwj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 48) WHERE phone='15118865663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694258754', 'U13694258754', 'Amanda', '', '13694258754', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 40.00, 0, '2024-05-31 17:34:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694258754' LIMIT 1);
UPDATE users SET nick_name='Amanda', balance=GREATEST(balance, 40.00), points=GREATEST(points, 0) WHERE phone='13694258754';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927739880', 'U19927739880', '卓', '', '19927739880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:34:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927739880' LIMIT 1);
UPDATE users SET nick_name='卓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927739880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013240104', 'U15013240104', 'Lyra', '', '15013240104', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 2.39, 0, '2024-05-31 17:34:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013240104' LIMIT 1);
UPDATE users SET nick_name='Lyra', balance=GREATEST(balance, 2.39), points=GREATEST(points, 0) WHERE phone='15013240104';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520320955', 'U18520320955', '12345', '', '18520320955', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 35, '2024-05-31 17:34:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520320955' LIMIT 1);
UPDATE users SET nick_name='12345', balance=GREATEST(balance, 0.00), points=GREATEST(points, 35) WHERE phone='18520320955';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13670100766', 'U13670100766', '123', '', '13670100766', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 1020.00, 0, '2024-05-31 17:34:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13670100766' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 1020.00), points=GREATEST(points, 0) WHERE phone='13670100766';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631318782', 'U13631318782', 'Flora Hi', '', '13631318782', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631318782' LIMIT 1);
UPDATE users SET nick_name='Flora Hi', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='13631318782';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664718129', 'U18664718129', '闻帅', '', '18664718129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2024-05-31 17:34:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664718129' LIMIT 1);
UPDATE users SET nick_name='闻帅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='18664718129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17308688450', 'U17308688450', '17308688450', '', '17308688450', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 40.00, 0, '2024-05-31 17:34:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17308688450' LIMIT 1);
UPDATE users SET nick_name='17308688450', balance=GREATEST(balance, 40.00), points=GREATEST(points, 0) WHERE phone='17308688450';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815919979', 'U15815919979', 'Tina', '', '15815919979', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 106, '2024-05-31 17:34:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815919979' LIMIT 1);
UPDATE users SET nick_name='Tina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 106) WHERE phone='15815919979';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18757755282', 'U18757755282', '小莫', '', '18757755282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 120.00, 0, '2024-05-31 17:34:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18757755282' LIMIT 1);
UPDATE users SET nick_name='小莫', balance=GREATEST(balance, 120.00), points=GREATEST(points, 0) WHERE phone='18757755282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899968261', 'U15899968261', 'As', '', '15899968261', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2024-05-31 17:34:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899968261' LIMIT 1);
UPDATE users SET nick_name='As', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='15899968261';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560003103', 'U13560003103', '小书', '', '13560003103', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 40.00, 0, '2024-05-31 17:34:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560003103' LIMIT 1);
UPDATE users SET nick_name='小书', balance=GREATEST(balance, 40.00), points=GREATEST(points, 0) WHERE phone='13560003103';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15219816507', 'U15219816507', 'zimm', '', '15219816507', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 48, '2024-05-31 17:34:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15219816507' LIMIT 1);
UPDATE users SET nick_name='zimm', balance=GREATEST(balance, 20.00), points=GREATEST(points, 48) WHERE phone='15219816507';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665597588', 'U18665597588', '老徐', '', '18665597588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:34:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665597588' LIMIT 1);
UPDATE users SET nick_name='老徐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665597588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535038501', 'U13535038501', '西西', '', '13535038501', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 18, '2024-05-31 17:34:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535038501' LIMIT 1);
UPDATE users SET nick_name='西西', balance=GREATEST(balance, 0.00), points=GREATEST(points, 18) WHERE phone='13535038501';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826221826', 'U18826221826', '王祖贤', '', '18826221826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826221826' LIMIT 1);
UPDATE users SET nick_name='王祖贤', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='18826221826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650951983', 'U13650951983', '钟', '', '13650951983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 2.00, 0, '2024-05-31 17:34:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650951983' LIMIT 1);
UPDATE users SET nick_name='钟', balance=GREATEST(balance, 2.00), points=GREATEST(points, 0) WHERE phone='13650951983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018709145', 'U15018709145', '小同学', '', '15018709145', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018709145' LIMIT 1);
UPDATE users SET nick_name='小同学', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='15018709145';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520418923', 'U18520418923', 'Not Found', '', '18520418923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 12.00, 29, '2024-05-31 17:34:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520418923' LIMIT 1);
UPDATE users SET nick_name='Not Found', balance=GREATEST(balance, 12.00), points=GREATEST(points, 29) WHERE phone='18520418923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565438776', 'U18565438776', '往东', '', '18565438776', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2024-05-31 17:34:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565438776' LIMIT 1);
UPDATE users SET nick_name='往东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='18565438776';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751850132', 'U13751850132', '侯希希', '', '13751850132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 40.00, 0, '2024-05-31 17:34:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751850132' LIMIT 1);
UPDATE users SET nick_name='侯希希', balance=GREATEST(balance, 40.00), points=GREATEST(points, 0) WHERE phone='13751850132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922200558', 'U13922200558', '车行天下', '', '13922200558', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 85, '2024-05-31 17:34:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922200558' LIMIT 1);
UPDATE users SET nick_name='车行天下', balance=GREATEST(balance, 0.00), points=GREATEST(points, 85) WHERE phone='13922200558';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268054068', 'U13268054068', 'Devin', '', '13268054068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-05-31 17:34:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268054068' LIMIT 1);
UPDATE users SET nick_name='Devin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13268054068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18029650614', 'U18029650614', 'HuANG', '', '18029650614', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-31 17:34:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18029650614' LIMIT 1);
UPDATE users SET nick_name='HuANG', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='18029650614';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18070613063', 'U18070613063', '誮爺', '', '18070613063', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2024-05-31 17:34:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18070613063' LIMIT 1);
UPDATE users SET nick_name='誮爺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='18070613063';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18627836004', 'U18627836004', 'salo', '', '18627836004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-05-31 17:34:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18627836004' LIMIT 1);
UPDATE users SET nick_name='salo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18627836004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560014533', 'U13560014533', 'DeNniS', '', '13560014533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 43.39, 0, '2024-05-31 17:34:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560014533' LIMIT 1);
UPDATE users SET nick_name='DeNniS', balance=GREATEST(balance, 43.39), points=GREATEST(points, 0) WHERE phone='13560014533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18575533216', 'U18575533216', 'Sean林', '', '18575533216', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 266.00, 0, '2024-05-31 17:34:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18575533216' LIMIT 1);
UPDATE users SET nick_name='Sean林', balance=GREATEST(balance, 266.00), points=GREATEST(points, 0) WHERE phone='18575533216';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521331790', 'U15521331790', 'u', '', '15521331790', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 12.29, 0, '2024-05-31 17:34:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521331790' LIMIT 1);
UPDATE users SET nick_name='u', balance=GREATEST(balance, 12.29), points=GREATEST(points, 0) WHERE phone='15521331790';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802729978', 'U13802729978', 'Giselle🎋', '', '13802729978', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 1536.00, 0, '2024-05-31 17:34:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802729978' LIMIT 1);
UPDATE users SET nick_name='Giselle🎋', balance=GREATEST(balance, 1536.00), points=GREATEST(points, 0) WHERE phone='13802729978';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688202571', 'U18688202571', 'ty', '', '18688202571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 179, '2024-05-31 17:34:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688202571' LIMIT 1);
UPDATE users SET nick_name='ty', balance=GREATEST(balance, 0.00), points=GREATEST(points, 179) WHERE phone='18688202571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819390282', 'U18819390282', '清', '', '18819390282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 82, '2024-05-31 17:34:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819390282' LIMIT 1);
UPDATE users SET nick_name='清', balance=GREATEST(balance, 0.00), points=GREATEST(points, 82) WHERE phone='18819390282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13055786021', 'U13055786021', '松果', '', '13055786021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 19, '2024-05-31 17:34:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13055786021' LIMIT 1);
UPDATE users SET nick_name='松果', balance=GREATEST(balance, 0.00), points=GREATEST(points, 19) WHERE phone='13055786021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602766807', 'U13602766807', 'Sunflower', '', '13602766807', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:34:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602766807' LIMIT 1);
UPDATE users SET nick_name='Sunflower', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602766807';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288621302', 'U13288621302', 'chen', '', '13288621302', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 82.00, 0, '2024-05-31 17:34:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288621302' LIMIT 1);
UPDATE users SET nick_name='chen', balance=GREATEST(balance, 82.00), points=GREATEST(points, 0) WHERE phone='13288621302';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802832646', 'U13802832646', '飞鸟', '', '13802832646', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 660.00, 0, '2024-05-31 17:34:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802832646' LIMIT 1);
UPDATE users SET nick_name='飞鸟', balance=GREATEST(balance, 660.00), points=GREATEST(points, 0) WHERE phone='13802832646';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18676887901', 'U18676887901', 'aha', '', '18676887901', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.10, 0, '2024-05-31 17:34:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18676887901' LIMIT 1);
UPDATE users SET nick_name='aha', balance=GREATEST(balance, 20.10), points=GREATEST(points, 0) WHERE phone='18676887901';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580469072', 'U13580469072', 'Derek', '', '13580469072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 2860.00, 0, '2024-05-31 17:34:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580469072' LIMIT 1);
UPDATE users SET nick_name='Derek', balance=GREATEST(balance, 2860.00), points=GREATEST(points, 0) WHERE phone='13580469072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500222484', 'U13500222484', 'yeah', '', '13500222484', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-05-31 17:34:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500222484' LIMIT 1);
UPDATE users SET nick_name='yeah', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='13500222484';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688402086', 'U18688402086', 'RUI', '', '18688402086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2024-05-31 17:34:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688402086' LIMIT 1);
UPDATE users SET nick_name='RUI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='18688402086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13059181166', 'U13059181166', 'x', '', '13059181166', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13059181166' LIMIT 1);
UPDATE users SET nick_name='x', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13059181166';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520325387', 'U18520325387', '风起', '', '18520325387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 504.00, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520325387' LIMIT 1);
UPDATE users SET nick_name='风起', balance=GREATEST(balance, 504.00), points=GREATEST(points, 0) WHERE phone='18520325387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922111233', 'U13922111233', 'pan', '', '13922111233', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922111233' LIMIT 1);
UPDATE users SET nick_name='pan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922111233';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808860665', 'U13808860665', '联', '', '13808860665', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 808.00, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808860665' LIMIT 1);
UPDATE users SET nick_name='联', balance=GREATEST(balance, 808.00), points=GREATEST(points, 0) WHERE phone='13808860665';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813307421', 'U15813307421', 'Leo', '', '15813307421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 5, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813307421' LIMIT 1);
UPDATE users SET nick_name='Leo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 5) WHERE phone='15813307421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15817198987', 'U15817198987', '陈金超', '', '15817198987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 350.00, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15817198987' LIMIT 1);
UPDATE users SET nick_name='陈金超', balance=GREATEST(balance, 350.00), points=GREATEST(points, 0) WHERE phone='15817198987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18689431106', 'U18689431106', 'Tn💤', '', '18689431106', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 362.39, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18689431106' LIMIT 1);
UPDATE users SET nick_name='Tn💤', balance=GREATEST(balance, 362.39), points=GREATEST(points, 0) WHERE phone='18689431106';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18532619618', 'U18532619618', '白菜豆腐', '', '18532619618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 4.00, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18532619618' LIMIT 1);
UPDATE users SET nick_name='白菜豆腐', balance=GREATEST(balance, 4.00), points=GREATEST(points, 0) WHERE phone='18532619618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13677195238', 'U13677195238', '星耀会员', '', '13677195238', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1000, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13677195238' LIMIT 1);
UPDATE users SET nick_name='星耀会员', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1000) WHERE phone='13677195238';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521210754', 'U15521210754', 'Garrett', '', '15521210754', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 260.39, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521210754' LIMIT 1);
UPDATE users SET nick_name='Garrett', balance=GREATEST(balance, 260.39), points=GREATEST(points, 0) WHERE phone='15521210754';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826204132', 'U13826204132', '奶粉', '', '13826204132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 52.38, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826204132' LIMIT 1);
UPDATE users SET nick_name='奶粉', balance=GREATEST(balance, 52.38), points=GREATEST(points, 0) WHERE phone='13826204132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922210010', 'U13922210010', 'Snow', '', '13922210010', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 62.00, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922210010' LIMIT 1);
UPDATE users SET nick_name='Snow', balance=GREATEST(balance, 62.00), points=GREATEST(points, 0) WHERE phone='13922210010';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544567173', 'U13544567173', 'Amy', '', '13544567173', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 365.00, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544567173' LIMIT 1);
UPDATE users SET nick_name='Amy', balance=GREATEST(balance, 365.00), points=GREATEST(points, 0) WHERE phone='13544567173';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360698813', 'U15360698813', '庞小姐', '', '15360698813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 68.00, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360698813' LIMIT 1);
UPDATE users SET nick_name='庞小姐', balance=GREATEST(balance, 68.00), points=GREATEST(points, 0) WHERE phone='15360698813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600098606', 'U13600098606', '8606', '', '13600098606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 4.80, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600098606' LIMIT 1);
UPDATE users SET nick_name='8606', balance=GREATEST(balance, 4.80), points=GREATEST(points, 0) WHERE phone='13600098606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915787606', 'U15915787606', '王小姐', '', '15915787606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915787606' LIMIT 1);
UPDATE users SET nick_name='王小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15915787606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533162122', 'U13533162122', '菜菜子', '', '13533162122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533162122' LIMIT 1);
UPDATE users SET nick_name='菜菜子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533162122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18627217588', 'U18627217588', '法兰西西梅', '', '18627217588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 1142.00, 0, '2024-05-31 17:34:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18627217588' LIMIT 1);
UPDATE users SET nick_name='法兰西西梅', balance=GREATEST(balance, 1142.00), points=GREATEST(points, 0) WHERE phone='18627217588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18681185189', 'U18681185189', 'Brian.Lo..', '', '18681185189', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 14.39, 0, '2024-05-31 17:34:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18681185189' LIMIT 1);
UPDATE users SET nick_name='Brian.Lo..', balance=GREATEST(balance, 14.39), points=GREATEST(points, 0) WHERE phone='18681185189';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19065471900', 'U19065471900', '我Will', '', '19065471900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 1506.00, 0, '2024-05-31 17:34:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19065471900' LIMIT 1);
UPDATE users SET nick_name='我Will', balance=GREATEST(balance, 1506.00), points=GREATEST(points, 0) WHERE phone='19065471900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028022501', 'U18028022501', '田', '', '18028022501', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 1328.00, 0, '2024-05-31 17:34:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028022501' LIMIT 1);
UPDATE users SET nick_name='田', balance=GREATEST(balance, 1328.00), points=GREATEST(points, 0) WHERE phone='18028022501';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15802011082', 'U15802011082', '韦', '', '15802011082', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 358.00, 0, '2024-05-31 17:34:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15802011082' LIMIT 1);
UPDATE users SET nick_name='韦', balance=GREATEST(balance, 358.00), points=GREATEST(points, 0) WHERE phone='15802011082';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18202628886', 'U18202628886', 'Sue Shen', '', '18202628886', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-31 17:34:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18202628886' LIMIT 1);
UPDATE users SET nick_name='Sue Shen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18202628886';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19818499940', 'U19818499940', 'xcy', '', '19818499940', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 720.00, 0, '2024-05-31 17:34:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19818499940' LIMIT 1);
UPDATE users SET nick_name='xcy', balance=GREATEST(balance, 720.00), points=GREATEST(points, 0) WHERE phone='19818499940';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265369810', 'U13265369810', 'micky', '', '13265369810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 124.00, 0, '2024-05-31 17:34:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265369810' LIMIT 1);
UPDATE users SET nick_name='micky', balance=GREATEST(balance, 124.00), points=GREATEST(points, 0) WHERE phone='13265369810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902089064', 'U15902089064', 'UP', '', '15902089064', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 316.00, 0, '2024-05-31 17:34:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902089064' LIMIT 1);
UPDATE users SET nick_name='UP', balance=GREATEST(balance, 316.00), points=GREATEST(points, 0) WHERE phone='15902089064';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19065412234', 'U19065412234', 'GG', '', '19065412234', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-29 17:38:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19065412234' LIMIT 1);
UPDATE users SET nick_name='GG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19065412234';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760700887', 'U13760700887', 'CHEN', '', '13760700887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 156, '2024-05-26 12:58:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760700887' LIMIT 1);
UPDATE users SET nick_name='CHEN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 156) WHERE phone='13760700887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620208354', 'U18620208354', 'Garwig_陈家辉.', '', '18620208354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 20.00, 0, '2024-05-23 14:50:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620208354' LIMIT 1);
UPDATE users SET nick_name='Garwig_陈家辉.', balance=GREATEST(balance, 20.00), points=GREATEST(points, 0) WHERE phone='18620208354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17818933563', 'U17818933563', 'Kit', '', '17818933563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-17 19:29:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17818933563' LIMIT 1);
UPDATE users SET nick_name='Kit', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17818933563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620724744', 'U18620724744', '555', '', '18620724744', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-16 22:14:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620724744' LIMIT 1);
UPDATE users SET nick_name='555', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620724744';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18759867502', 'U18759867502', 'HO-', '', '18759867502', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-05-16 17:59:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18759867502' LIMIT 1);
UPDATE users SET nick_name='HO-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18759867502';
