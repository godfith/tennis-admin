SET NAMES utf8mb4;
-- 中大店用户导入 part 10 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642779725', 'U13642779725', '星星币', '', '13642779725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-06-30 14:43:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642779725' LIMIT 1);
UPDATE users SET nick_name='星星币', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13642779725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13076732182', 'U13076732182', '邦', '', '13076732182', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 14:06:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13076732182' LIMIT 1);
UPDATE users SET nick_name='邦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13076732182';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18310111700', 'U18310111700', 'anguz', '', '18310111700', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 14:04:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18310111700' LIMIT 1);
UPDATE users SET nick_name='anguz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18310111700';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15657731220', 'U15657731220', '何雪东🌚', '', '15657731220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 12:48:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15657731220' LIMIT 1);
UPDATE users SET nick_name='何雪东🌚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15657731220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15999989983', 'U15999989983', 'Yan.', '', '15999989983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 12:43:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15999989983' LIMIT 1);
UPDATE users SET nick_name='Yan.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15999989983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18002287378', 'U18002287378', '🍊橙色小花布🍊', '', '18002287378', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 11:20:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18002287378' LIMIT 1);
UPDATE users SET nick_name='🍊橙色小花布🍊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18002287378';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18871151637', 'U18871151637', '曙光', '', '18871151637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 11:13:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18871151637' LIMIT 1);
UPDATE users SET nick_name='曙光', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18871151637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988926698', 'U18988926698', '超级小小强', '', '18988926698', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1875, '2025-06-30 10:30:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988926698' LIMIT 1);
UPDATE users SET nick_name='超级小小强', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1875) WHERE phone='18988926698';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14749950936', 'U14749950936', '1', '', '14749950936', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 10:15:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14749950936' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14749950936';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660003604', 'U13660003604', 'Stranger', '', '13660003604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 10:09:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660003604' LIMIT 1);
UPDATE users SET nick_name='Stranger', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660003604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18938332316', 'U18938332316', '七', '', '18938332316', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 10:02:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18938332316' LIMIT 1);
UPDATE users SET nick_name='七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18938332316';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570450648', 'U13570450648', '@黄右右', '', '13570450648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 09:55:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570450648' LIMIT 1);
UPDATE users SET nick_name='@黄右右', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570450648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922763306', 'U13922763306', '叶子', '', '13922763306', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-30 01:19:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922763306' LIMIT 1);
UPDATE users SET nick_name='叶子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922763306';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122790958', 'U18122790958', 'Liz', '', '18122790958', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 20:03:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122790958' LIMIT 1);
UPDATE users SET nick_name='Liz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122790958';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18626044720', 'U18626044720', 'Drago', '', '18626044720', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 19:49:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18626044720' LIMIT 1);
UPDATE users SET nick_name='Drago', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18626044720';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533178395', 'U13533178395', '阿志', '', '13533178395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 19:09:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533178395' LIMIT 1);
UPDATE users SET nick_name='阿志', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533178395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17875517049', 'U17875517049', '咸鱼', '', '17875517049', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 18:38:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17875517049' LIMIT 1);
UPDATE users SET nick_name='咸鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17875517049';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13694239082', 'U13694239082', '渣女', '', '13694239082', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 18:30:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13694239082' LIMIT 1);
UPDATE users SET nick_name='渣女', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13694239082';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15151501637', 'U15151501637', 'GingerJoseph', '', '15151501637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 18:04:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15151501637' LIMIT 1);
UPDATE users SET nick_name='GingerJoseph', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15151501637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18971207438', 'U18971207438', '#iceman#', '', '18971207438', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 15:33:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18971207438' LIMIT 1);
UPDATE users SET nick_name='#iceman#', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18971207438';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13002005891', 'U13002005891', '讲大话噶🐶🐶', '', '13002005891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 15:32:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13002005891' LIMIT 1);
UPDATE users SET nick_name='讲大话噶🐶🐶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13002005891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17819843583', 'U17819843583', 'Jackie', '', '17819843583', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 14:58:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17819843583' LIMIT 1);
UPDATE users SET nick_name='Jackie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17819843583';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312887784', 'U13312887784', 'LTszyin', '', '13312887784', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 14:42:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312887784' LIMIT 1);
UPDATE users SET nick_name='LTszyin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13312887784';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13046257395', 'U13046257395', 'Zhang', '', '13046257395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 14:30:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13046257395' LIMIT 1);
UPDATE users SET nick_name='Zhang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13046257395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13428293572', 'U13428293572', '蓝', '', '13428293572', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 13:41:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13428293572' LIMIT 1);
UPDATE users SET nick_name='蓝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13428293572';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18303015525', 'U18303015525', 'f', '', '18303015525', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 13:20:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18303015525' LIMIT 1);
UPDATE users SET nick_name='f', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18303015525';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13672422729', 'U13672422729', '自然', '', '13672422729', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 13:09:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13672422729' LIMIT 1);
UPDATE users SET nick_name='自然', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13672422729';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422158072', 'U13422158072', 'Joan.', '', '13422158072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 13:05:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422158072' LIMIT 1);
UPDATE users SET nick_name='Joan.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422158072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632277226', 'U13632277226', 'JM敏', '', '13632277226', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 12:36:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632277226' LIMIT 1);
UPDATE users SET nick_name='JM敏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632277226';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622237189', 'U13622237189', '蜜蜂🐝', '', '13622237189', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 12:34:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622237189' LIMIT 1);
UPDATE users SET nick_name='蜜蜂🐝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622237189';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664520412', 'U18664520412', 'Anita', '', '18664520412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 12:13:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664520412' LIMIT 1);
UPDATE users SET nick_name='Anita', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664520412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265926225', 'U13265926225', 'charooo', '', '13265926225', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 11:49:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265926225' LIMIT 1);
UPDATE users SET nick_name='charooo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265926225';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926484991', 'U13926484991', '小婷🐘', '', '13926484991', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 11:25:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926484991' LIMIT 1);
UPDATE users SET nick_name='小婷🐘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926484991';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19258500915', 'U19258500915', 'cen', '', '19258500915', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 11:15:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19258500915' LIMIT 1);
UPDATE users SET nick_name='cen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19258500915';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813228190', 'U18813228190', 'kk', '', '18813228190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 10:55:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813228190' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18813228190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13630174686', 'U13630174686', '凯西', '', '13630174686', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 10:50:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13630174686' LIMIT 1);
UPDATE users SET nick_name='凯西', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13630174686';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18516227150', 'U18516227150', 'HH', '', '18516227150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 10:34:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18516227150' LIMIT 1);
UPDATE users SET nick_name='HH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18516227150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19802069885', 'U19802069885', '冯', '', '19802069885', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-06-29 08:56:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19802069885' LIMIT 1);
UPDATE users SET nick_name='冯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='19802069885';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763276770', 'U13763276770', '菠萝', '', '13763276770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-29 08:37:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763276770' LIMIT 1);
UPDATE users SET nick_name='菠萝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763276770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15089261993', 'U15089261993', 'Y.T.Lam', '', '15089261993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-06-29 00:10:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15089261993' LIMIT 1);
UPDATE users SET nick_name='Y.T.Lam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15089261993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975066605', 'U15975066605', '关你西红柿', '', '15975066605', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 20:56:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975066605' LIMIT 1);
UPDATE users SET nick_name='关你西红柿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975066605';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18097513616', 'U18097513616', 'www', '', '18097513616', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 20:55:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18097513616' LIMIT 1);
UPDATE users SET nick_name='www', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18097513616';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18003089564', 'U18003089564', 'わくわく', '', '18003089564', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 20:48:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18003089564' LIMIT 1);
UPDATE users SET nick_name='わくわく', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18003089564';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824402330', 'U13824402330', 'Winsan', '', '13824402330', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 20:29:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824402330' LIMIT 1);
UPDATE users SET nick_name='Winsan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824402330';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17806532738', 'U17806532738', '17806532738', '', '17806532738', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 20:08:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17806532738' LIMIT 1);
UPDATE users SET nick_name='17806532738', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17806532738';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19282053042', 'U19282053042', '山竹', '', '19282053042', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 19:58:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19282053042' LIMIT 1);
UPDATE users SET nick_name='山竹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19282053042';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229015992', 'U13229015992', 'Shea', '', '13229015992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 19:55:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229015992' LIMIT 1);
UPDATE users SET nick_name='Shea', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229015992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622309612', 'U15622309612', '15622309612', '', '15622309612', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 19:25:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622309612' LIMIT 1);
UPDATE users SET nick_name='15622309612', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622309612';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17576819058', 'U17576819058', 'L', '', '17576819058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 19:15:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17576819058' LIMIT 1);
UPDATE users SET nick_name='L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17576819058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18977222138', 'U18977222138', '陈嘻嘻', '', '18977222138', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 19:03:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18977222138' LIMIT 1);
UPDATE users SET nick_name='陈嘻嘻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18977222138';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18603070628', 'U18603070628', 'Daniel', '', '18603070628', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 18:01:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18603070628' LIMIT 1);
UPDATE users SET nick_name='Daniel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18603070628';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217601170', 'U15217601170', '范纵僧', '', '15217601170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 17:51:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217601170' LIMIT 1);
UPDATE users SET nick_name='范纵僧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217601170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13612265979', 'U13612265979', 'oo', '', '13612265979', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 17:22:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13612265979' LIMIT 1);
UPDATE users SET nick_name='oo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13612265979';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018421877', 'U15018421877', 'Cson', '', '15018421877', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 16:38:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018421877' LIMIT 1);
UPDATE users SET nick_name='Cson', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018421877';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710769200', 'U13710769200', 'slx_虾虾', '', '13710769200', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 16:25:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710769200' LIMIT 1);
UPDATE users SET nick_name='slx_虾虾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710769200';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15211133303', 'U15211133303', '3303', '', '15211133303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 16:10:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15211133303' LIMIT 1);
UPDATE users SET nick_name='3303', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15211133303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17306697625', 'U17306697625', 'Ashley雍', '', '17306697625', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 15:05:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17306697625' LIMIT 1);
UPDATE users SET nick_name='Ashley雍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17306697625';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815821865', 'U15815821865', '云游', '', '15815821865', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 15:05:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815821865' LIMIT 1);
UPDATE users SET nick_name='云游', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815821865';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14714913617', 'U14714913617', '风格和不同的', '', '14714913617', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 14:55:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14714913617' LIMIT 1);
UPDATE users SET nick_name='风格和不同的', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14714913617';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602860793', 'U13602860793', '7in', '', '13602860793', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 14:41:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602860793' LIMIT 1);
UPDATE users SET nick_name='7in', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602860793';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18927308878', 'U18927308878', 'jun', '', '18927308878', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 14:37:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18927308878' LIMIT 1);
UPDATE users SET nick_name='jun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18927308878';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588883605', 'U18588883605', 'Faye 王栩霈', '', '18588883605', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 13:57:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588883605' LIMIT 1);
UPDATE users SET nick_name='Faye 王栩霈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588883605';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815817285', 'U15815817285', '邹邹', '', '15815817285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 13:18:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815817285' LIMIT 1);
UPDATE users SET nick_name='邹邹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815817285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915814007', 'U15915814007', 'V', '', '15915814007', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 12:58:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915814007' LIMIT 1);
UPDATE users SET nick_name='V', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915814007';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660206835', 'U13660206835', '宋嘉良Kyle', '', '13660206835', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 12:57:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660206835' LIMIT 1);
UPDATE users SET nick_name='宋嘉良Kyle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660206835';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427743428', 'U13427743428', '一天', '', '13427743428', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 12:37:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427743428' LIMIT 1);
UPDATE users SET nick_name='一天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427743428';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250703281', 'U13250703281', '13250703281', '', '13250703281', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 12:31:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250703281' LIMIT 1);
UPDATE users SET nick_name='13250703281', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250703281';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17350757115', 'U17350757115', '17350757115', '', '17350757115', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 12:29:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17350757115' LIMIT 1);
UPDATE users SET nick_name='17350757115', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17350757115';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13991912079', 'U13991912079', '热心园长', '', '13991912079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 12:26:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13991912079' LIMIT 1);
UPDATE users SET nick_name='热心园长', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13991912079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15272304589', 'U15272304589', '爱👄tiramisù的少女👧🏻', '', '15272304589', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 12:10:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15272304589' LIMIT 1);
UPDATE users SET nick_name='爱👄tiramisù的少女👧🏻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15272304589';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430368097', 'U13430368097', '冼', '', '13430368097', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 11:37:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430368097' LIMIT 1);
UPDATE users SET nick_name='冼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430368097';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922252692', 'U13922252692', '🇨🇳💪EdwinL', '', '13922252692', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 11:24:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922252692' LIMIT 1);
UPDATE users SET nick_name='🇨🇳💪EdwinL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922252692';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15216181280', 'U15216181280', '峻介', '', '15216181280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-28 11:05:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15216181280' LIMIT 1);
UPDATE users SET nick_name='峻介', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15216181280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826431803', 'U18826431803', '彭多多', '', '18826431803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 23:53:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826431803' LIMIT 1);
UPDATE users SET nick_name='彭多多', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826431803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660066663', 'U13660066663', '13660066663', '', '13660066663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 20:49:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660066663' LIMIT 1);
UPDATE users SET nick_name='13660066663', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660066663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729991259', 'U13729991259', '13729991259', '', '13729991259', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 19:22:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729991259' LIMIT 1);
UPDATE users SET nick_name='13729991259', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13729991259';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13501534521', 'U13501534521', '刘基荣', '', '13501534521', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 17:58:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13501534521' LIMIT 1);
UPDATE users SET nick_name='刘基荣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13501534521';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18024598766', 'U18024598766', '小羊', '', '18024598766', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 17:37:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18024598766' LIMIT 1);
UPDATE users SET nick_name='小羊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18024598766';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246830897', 'U13246830897', '13246830897', '', '13246830897', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 17:35:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246830897' LIMIT 1);
UPDATE users SET nick_name='13246830897', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246830897';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102902393', 'U18102902393', '娄子超', '', '18102902393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 16:16:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102902393' LIMIT 1);
UPDATE users SET nick_name='娄子超', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102902393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710167009', 'U13710167009', '13710167009', '', '13710167009', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 16:12:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710167009' LIMIT 1);
UPDATE users SET nick_name='13710167009', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710167009';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928739380', 'U18928739380', 'kayee', '', '18928739380', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 14:58:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928739380' LIMIT 1);
UPDATE users SET nick_name='kayee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928739380';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15706618194', 'U15706618194', '钞票好多张小西', '', '15706618194', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 14:42:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15706618194' LIMIT 1);
UPDATE users SET nick_name='钞票好多张小西', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15706618194';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18058020275', 'U18058020275', '18058020275', '', '18058020275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 14:30:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18058020275' LIMIT 1);
UPDATE users SET nick_name='18058020275', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18058020275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13543408762', 'U13543408762', '红姐', '', '13543408762', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 14:25:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13543408762' LIMIT 1);
UPDATE users SET nick_name='红姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13543408762';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926188352', 'U18926188352', 'zhen', '', '18926188352', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 13:39:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926188352' LIMIT 1);
UPDATE users SET nick_name='zhen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926188352';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13042006329', 'U13042006329', '', '', '13042006329', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 12:37:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13042006329' LIMIT 1);
UPDATE users SET nick_name='', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13042006329';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13541931557', 'U13541931557', '央央', '', '13541931557', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 10:56:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13541931557' LIMIT 1);
UPDATE users SET nick_name='央央', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13541931557';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18062452909', 'U18062452909', '蓝蓝', '', '18062452909', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-27 10:14:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18062452909' LIMIT 1);
UPDATE users SET nick_name='蓝蓝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18062452909';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915870668', 'U15915870668', '15915870668', '', '15915870668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 21:13:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915870668' LIMIT 1);
UPDATE users SET nick_name='15915870668', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915870668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18745715389', 'U18745715389', 'dd', '', '18745715389', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 20:47:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18745715389' LIMIT 1);
UPDATE users SET nick_name='dd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18745715389';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664750630', 'U18664750630', '爽', '', '18664750630', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 20:40:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664750630' LIMIT 1);
UPDATE users SET nick_name='爽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664750630';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915885325', 'U15915885325', '🌰', '', '15915885325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 20:18:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915885325' LIMIT 1);
UPDATE users SET nick_name='🌰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915885325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027240261', 'U18027240261', '鹿仔', '', '18027240261', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 20:16:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027240261' LIMIT 1);
UPDATE users SET nick_name='鹿仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027240261';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760074744', 'U13760074744', 'GortonHsu-', '', '13760074744', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 19:54:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760074744' LIMIT 1);
UPDATE users SET nick_name='GortonHsu-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760074744';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17875214179', 'U17875214179', '暄婷', '', '17875214179', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 18:32:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17875214179' LIMIT 1);
UPDATE users SET nick_name='暄婷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17875214179';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13553489493', 'U13553489493', 'Yoanna', '', '13553489493', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 18:00:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13553489493' LIMIT 1);
UPDATE users SET nick_name='Yoanna', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13553489493';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120330862', 'U19120330862', '19120330862', '', '19120330862', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 16:16:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120330862' LIMIT 1);
UPDATE users SET nick_name='19120330862', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120330862';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18373162418', 'U18373162418', '18373162418', '', '18373162418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 15:32:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18373162418' LIMIT 1);
UPDATE users SET nick_name='18373162418', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18373162418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640656051', 'U13640656051', 'Fan', '', '13640656051', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 15:06:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640656051' LIMIT 1);
UPDATE users SET nick_name='Fan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640656051';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13424437854', 'U13424437854', '王女士', '', '13424437854', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 12:23:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13424437854' LIMIT 1);
UPDATE users SET nick_name='王女士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13424437854';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521506260', 'U15521506260', '豪', '', '15521506260', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 11:45:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521506260' LIMIT 1);
UPDATE users SET nick_name='豪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521506260';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450443776', 'U13450443776', 'Yepker', '', '13450443776', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-26 10:05:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450443776' LIMIT 1);
UPDATE users SET nick_name='Yepker', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450443776';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316105132', 'U13316105132', 'Sss', '', '13316105132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-25 23:29:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316105132' LIMIT 1);
UPDATE users SET nick_name='Sss', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316105132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660473640', 'U13660473640', '13660473640', '', '13660473640', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-25 16:40:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660473640' LIMIT 1);
UPDATE users SET nick_name='13660473640', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660473640';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18128107704', 'U18128107704', '小潴', '', '18128107704', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-25 16:17:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18128107704' LIMIT 1);
UPDATE users SET nick_name='小潴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18128107704';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13417090908', 'U13417090908', '小潴深铄玩具厂', '', '13417090908', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-25 16:01:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13417090908' LIMIT 1);
UPDATE users SET nick_name='小潴深铄玩具厂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13417090908';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13957877648', 'U13957877648', '753', '', '13957877648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-25 15:36:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13957877648' LIMIT 1);
UPDATE users SET nick_name='753', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13957877648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113958844', 'U13113958844', '1', '', '13113958844', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 8, '2025-06-25 15:26:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113958844' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 8) WHERE phone='13113958844';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17888839187', 'U17888839187', '橘世无双', '', '17888839187', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-25 14:54:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17888839187' LIMIT 1);
UPDATE users SET nick_name='橘世无双', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17888839187';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620801812', 'U18620801812', '刘婕', '', '18620801812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-06-25 14:44:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620801812' LIMIT 1);
UPDATE users SET nick_name='刘婕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='18620801812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760838186', 'U13760838186', '105', '', '13760838186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-25 14:09:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760838186' LIMIT 1);
UPDATE users SET nick_name='105', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760838186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18505312888', 'U18505312888', '太白金星', '', '18505312888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 95, '2025-06-25 14:02:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18505312888' LIMIT 1);
UPDATE users SET nick_name='太白金星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 95) WHERE phone='18505312888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13169586416', 'U13169586416', 'Estella', '', '13169586416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 111, '2025-06-25 13:30:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13169586416' LIMIT 1);
UPDATE users SET nick_name='Estella', balance=GREATEST(balance, 0.00), points=GREATEST(points, 111) WHERE phone='13169586416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924891723', 'U13924891723', '王八', '', '13924891723', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-25 12:54:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924891723' LIMIT 1);
UPDATE users SET nick_name='王八', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924891723';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250777996', 'U13250777996', '用背脊唱情歌', '', '13250777996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-25 10:52:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250777996' LIMIT 1);
UPDATE users SET nick_name='用背脊唱情歌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250777996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580351879', 'U13580351879', 'madam🐷', '', '13580351879', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-25 10:06:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580351879' LIMIT 1);
UPDATE users SET nick_name='madam🐷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580351879';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820352509', 'U15820352509', 'TiDn，Zheng in', '', '15820352509', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-06-25 10:01:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820352509' LIMIT 1);
UPDATE users SET nick_name='TiDn，Zheng in', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15820352509';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818848602', 'U18818848602', 'SUNRUI', '', '18818848602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 57, '2025-06-25 10:01:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818848602' LIMIT 1);
UPDATE users SET nick_name='SUNRUI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 57) WHERE phone='18818848602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18945237944', 'U18945237944', '驾驾驾到', '', '18945237944', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-25 09:56:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18945237944' LIMIT 1);
UPDATE users SET nick_name='驾驾驾到', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18945237944';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876348190', 'U17876348190', '鲸鱼', '', '17876348190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2025-06-25 09:23:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876348190' LIMIT 1);
UPDATE users SET nick_name='鲸鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='17876348190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128989961', 'U13128989961', '13128989961', '', '13128989961', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-24 17:11:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128989961' LIMIT 1);
UPDATE users SET nick_name='13128989961', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128989961';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18923653828', 'U18923653828', '西西', '', '18923653828', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-24 16:05:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18923653828' LIMIT 1);
UPDATE users SET nick_name='西西', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18923653828';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18178310367', 'U18178310367', '小七', '', '18178310367', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-24 15:54:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18178310367' LIMIT 1);
UPDATE users SET nick_name='小七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18178310367';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13048031308', 'U13048031308', '13048031308', '', '13048031308', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-24 15:54:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13048031308' LIMIT 1);
UPDATE users SET nick_name='13048031308', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13048031308';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19526289491', 'U19526289491', '张可瑶', '', '19526289491', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-24 15:23:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19526289491' LIMIT 1);
UPDATE users SET nick_name='张可瑶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19526289491';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13920397888', 'U13920397888', '13920397888', '', '13920397888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-24 14:42:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13920397888' LIMIT 1);
UPDATE users SET nick_name='13920397888', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13920397888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760880857', 'U13760880857', '阿木（．．．．．）', '', '13760880857', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-24 13:42:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760880857' LIMIT 1);
UPDATE users SET nick_name='阿木（．．．．．）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760880857';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662365079', 'U13662365079', '雲庐人文艺术空间', '', '13662365079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-24 13:30:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662365079' LIMIT 1);
UPDATE users SET nick_name='雲庐人文艺术空间', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662365079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819268659', 'U18819268659', '骨哥', '', '18819268659', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 388, '2025-06-24 13:11:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819268659' LIMIT 1);
UPDATE users SET nick_name='骨哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 388) WHERE phone='18819268659';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19128680720', 'U19128680720', '阳光灿烂', '', '19128680720', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-24 12:50:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19128680720' LIMIT 1);
UPDATE users SET nick_name='阳光灿烂', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19128680720';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570387237', 'U13570387237', '多多', '', '13570387237', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-06-24 12:36:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570387237' LIMIT 1);
UPDATE users SET nick_name='多多', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13570387237';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500029467', 'U13500029467', 'EC🦥', '', '13500029467', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-06-24 10:58:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500029467' LIMIT 1);
UPDATE users SET nick_name='EC🦥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13500029467';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102729840', 'U18102729840', 'STELLA', '', '18102729840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 177, '2025-06-24 09:03:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102729840' LIMIT 1);
UPDATE users SET nick_name='STELLA', balance=GREATEST(balance, 0.00), points=GREATEST(points, 177) WHERE phone='18102729840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13424599171', 'U13424599171', 'Sylvia', '', '13424599171', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 21:47:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13424599171' LIMIT 1);
UPDATE users SET nick_name='Sylvia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13424599171';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815867681', 'U15815867681', '林小魚', '', '15815867681', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 21:34:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815867681' LIMIT 1);
UPDATE users SET nick_name='林小魚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815867681';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588536852', 'U18588536852', 'Q', '', '18588536852', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-06-23 21:34:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588536852' LIMIT 1);
UPDATE users SET nick_name='Q', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='18588536852';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925128752', 'U18925128752', '1234', '', '18925128752', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 18:34:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925128752' LIMIT 1);
UPDATE users SET nick_name='1234', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925128752';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632278341', 'U13632278341', 'Mathilda', '', '13632278341', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 18:01:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632278341' LIMIT 1);
UPDATE users SET nick_name='Mathilda', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632278341';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620921542', 'U17620921542', 'A XL SW 🎃', '', '17620921542', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 16:38:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620921542' LIMIT 1);
UPDATE users SET nick_name='A XL SW 🎃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17620921542';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533194673', 'U13533194673', '泥泥_li🦊', '', '13533194673', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 16:12:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533194673' LIMIT 1);
UPDATE users SET nick_name='泥泥_li🦊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533194673';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820374161', 'U15820374161', '严你🍊肥', '', '15820374161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 15:39:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820374161' LIMIT 1);
UPDATE users SET nick_name='严你🍊肥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820374161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15172404584', 'U15172404584', '15172404584', '', '15172404584', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 15:29:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15172404584' LIMIT 1);
UPDATE users SET nick_name='15172404584', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15172404584';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352821386', 'U13352821386', 'DWLP', '', '13352821386', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 13:12:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352821386' LIMIT 1);
UPDATE users SET nick_name='DWLP', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352821386';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662476275', 'U13662476275', '咩', '', '13662476275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 12:33:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662476275' LIMIT 1);
UPDATE users SET nick_name='咩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662476275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18054223963', 'U18054223963', 'mako', '', '18054223963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 12:00:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18054223963' LIMIT 1);
UPDATE users SET nick_name='mako', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18054223963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719131847', 'U13719131847', 'A HA～', '', '13719131847', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 11:58:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719131847' LIMIT 1);
UPDATE users SET nick_name='A HA～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719131847';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450258567', 'U13450258567', 'kit', '', '13450258567', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 11:56:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450258567' LIMIT 1);
UPDATE users SET nick_name='kit', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450258567';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15015975236', 'U15015975236', '既白', '', '15015975236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 11:09:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15015975236' LIMIT 1);
UPDATE users SET nick_name='既白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15015975236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626196806', 'U15626196806', 'jane', '', '15626196806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-23 10:03:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626196806' LIMIT 1);
UPDATE users SET nick_name='jane', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626196806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692008087', 'U15692008087', 'cc', '', '15692008087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 21:46:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692008087' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692008087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18023645569', 'U18023645569', '18023645569', '', '18023645569', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 21:04:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18023645569' LIMIT 1);
UPDATE users SET nick_name='18023645569', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18023645569';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13160838230', 'U13160838230', '✨ Korsem', '', '13160838230', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 18:13:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13160838230' LIMIT 1);
UPDATE users SET nick_name='✨ Korsem', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13160838230';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15606243352', 'U15606243352', '早七的7', '', '15606243352', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 16:55:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15606243352' LIMIT 1);
UPDATE users SET nick_name='早七的7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15606243352';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15618166993', 'U15618166993', 'Jolie', '', '15618166993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-06-22 16:26:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15618166993' LIMIT 1);
UPDATE users SET nick_name='Jolie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15618166993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143790893', 'U13143790893', 'Royfeng', '', '13143790893', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 16:11:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143790893' LIMIT 1);
UPDATE users SET nick_name='Royfeng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143790893';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113813662', 'U15113813662', 'Gaga', '', '15113813662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 15:33:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113813662' LIMIT 1);
UPDATE users SET nick_name='Gaga', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113813662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13267851258', 'U13267851258', '13267851258', '', '13267851258', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 15:24:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13267851258' LIMIT 1);
UPDATE users SET nick_name='13267851258', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13267851258';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18078802633', 'U18078802633', '杜维', '', '18078802633', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 15:13:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18078802633' LIMIT 1);
UPDATE users SET nick_name='杜维', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18078802633';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13412605153', 'U13412605153', 'Sasuke', '', '13412605153', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 14:40:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13412605153' LIMIT 1);
UPDATE users SET nick_name='Sasuke', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13412605153';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13853265087', 'U13853265087', 'BAISHUI', '', '13853265087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 175, '2025-06-22 13:58:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13853265087' LIMIT 1);
UPDATE users SET nick_name='BAISHUI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 175) WHERE phone='13853265087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15010729906', 'U15010729906', '15010729906', '', '15010729906', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 13:40:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15010729906' LIMIT 1);
UPDATE users SET nick_name='15010729906', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15010729906';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725248212', 'U13725248212', '郭钧诚', '', '13725248212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 13:36:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725248212' LIMIT 1);
UPDATE users SET nick_name='郭钧诚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725248212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927590151', 'U19927590151', '🎺', '', '19927590151', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 13:36:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927590151' LIMIT 1);
UPDATE users SET nick_name='🎺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927590151';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13138777718', 'U13138777718', '白', '', '13138777718', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 13:14:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13138777718' LIMIT 1);
UPDATE users SET nick_name='白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13138777718';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15528409220', 'U15528409220', '把那朵小花揣进兜儿里', '', '15528409220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 12:53:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15528409220' LIMIT 1);
UPDATE users SET nick_name='把那朵小花揣进兜儿里', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15528409220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889963550', 'U15889963550', 'twelve', '', '15889963550', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 12:39:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889963550' LIMIT 1);
UPDATE users SET nick_name='twelve', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889963550';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580506980', 'U13580506980', '晴空薄云', '', '13580506980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 11:58:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580506980' LIMIT 1);
UPDATE users SET nick_name='晴空薄云', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580506980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15198873242', 'U15198873242', '五行外', '', '15198873242', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 11:43:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15198873242' LIMIT 1);
UPDATE users SET nick_name='五行外', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15198873242';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427518761', 'U13427518761', '周大人', '', '13427518761', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 11:37:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427518761' LIMIT 1);
UPDATE users SET nick_name='周大人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427518761';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18169934912', 'U18169934912', 'Yoyo', '', '18169934912', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 11:01:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18169934912' LIMIT 1);
UPDATE users SET nick_name='Yoyo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18169934912';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17319186670', 'U17319186670', 'wai', '', '17319186670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 48, '2025-06-22 10:37:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17319186670' LIMIT 1);
UPDATE users SET nick_name='wai', balance=GREATEST(balance, 0.00), points=GREATEST(points, 48) WHERE phone='17319186670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17724204967', 'U17724204967', 'Jenny Zhao', '', '17724204967', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-22 10:16:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17724204967' LIMIT 1);
UPDATE users SET nick_name='Jenny Zhao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17724204967';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631465927', 'U13631465927', '卡罗', '', '13631465927', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-06-22 09:34:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631465927' LIMIT 1);
UPDATE users SET nick_name='卡罗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13631465927';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19802024071', 'U19802024071', '19802024071', '', '19802024071', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 21:45:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19802024071' LIMIT 1);
UPDATE users SET nick_name='19802024071', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19802024071';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521036500', 'U15521036500', '仲尼🇨🇳', '', '15521036500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 20:44:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521036500' LIMIT 1);
UPDATE users SET nick_name='仲尼🇨🇳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521036500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660828021', 'U13660828021', '13660828021', '', '13660828021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 20:24:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660828021' LIMIT 1);
UPDATE users SET nick_name='13660828021', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660828021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915801529', 'U15915801529', '素馨', '', '15915801529', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 180, '2025-06-21 19:03:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915801529' LIMIT 1);
UPDATE users SET nick_name='素馨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 180) WHERE phone='15915801529';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626493387', 'U15626493387', 'pp', '', '15626493387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 18:11:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626493387' LIMIT 1);
UPDATE users SET nick_name='pp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626493387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18594239615', 'U18594239615', 'Vicky', '', '18594239615', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 17:50:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18594239615' LIMIT 1);
UPDATE users SET nick_name='Vicky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18594239615';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826029740', 'U13826029740', 'William', '', '13826029740', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 17:00:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826029740' LIMIT 1);
UPDATE users SET nick_name='William', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826029740';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902259767', 'U13902259767', '橙c', '', '13902259767', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 16:23:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902259767' LIMIT 1);
UPDATE users SET nick_name='橙c', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902259767';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320028197', 'U18320028197', '网球33', '', '18320028197', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 16:17:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320028197' LIMIT 1);
UPDATE users SET nick_name='网球33', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320028197';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802789730', 'U13802789730', 'Lester', '', '13802789730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-06-21 16:12:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802789730' LIMIT 1);
UPDATE users SET nick_name='Lester', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='13802789730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750396779', 'U13750396779', 'Gary 李根裕', '', '13750396779', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-06-21 16:02:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750396779' LIMIT 1);
UPDATE users SET nick_name='Gary 李根裕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13750396779';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14726996180', 'U14726996180', 'coco', '', '14726996180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 15:07:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14726996180' LIMIT 1);
UPDATE users SET nick_name='coco', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14726996180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602820987', 'U18602820987', '松枝', '', '18602820987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 14:58:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602820987' LIMIT 1);
UPDATE users SET nick_name='松枝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602820987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15377048962', 'U15377048962', '我的网球呢', '', '15377048962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 14:08:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15377048962' LIMIT 1);
UPDATE users SET nick_name='我的网球呢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15377048962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876079605', 'U17876079605', '哈哈', '', '17876079605', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 14:04:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876079605' LIMIT 1);
UPDATE users SET nick_name='哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876079605';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602046668', 'U18602046668', 'alexa👑凡', '', '18602046668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 13:59:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602046668' LIMIT 1);
UPDATE users SET nick_name='alexa👑凡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602046668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520180440', 'U18520180440', '莎拉啦啦啦', '', '18520180440', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 13:36:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520180440' LIMIT 1);
UPDATE users SET nick_name='莎拉啦啦啦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520180440';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19520927985', 'U19520927985', '丁ay chou', '', '19520927985', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 13:27:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19520927985' LIMIT 1);
UPDATE users SET nick_name='丁ay chou', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19520927985';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19355158367', 'U19355158367', '顿顿', '', '19355158367', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 13:24:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19355158367' LIMIT 1);
UPDATE users SET nick_name='顿顿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19355158367';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15528119287', 'U15528119287', '1', '', '15528119287', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 13:05:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15528119287' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15528119287';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013081774', 'U15013081774', '梁先生', '', '15013081774', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 12:01:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013081774' LIMIT 1);
UPDATE users SET nick_name='梁先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013081774';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802882433', 'U13802882433', '曦', '', '13802882433', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 11:45:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802882433' LIMIT 1);
UPDATE users SET nick_name='曦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802882433';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15682036261', 'U15682036261', 'anora', '', '15682036261', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 11:36:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15682036261' LIMIT 1);
UPDATE users SET nick_name='anora', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15682036261';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218499190', 'U18218499190', 'x', '', '18218499190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 11:29:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218499190' LIMIT 1);
UPDATE users SET nick_name='x', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218499190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626417956', 'U15626417956', '鼠猫', '', '15626417956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 11:08:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626417956' LIMIT 1);
UPDATE users SET nick_name='鼠猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626417956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128628265', 'U13128628265', '钟yuling', '', '13128628265', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 10:44:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128628265' LIMIT 1);
UPDATE users SET nick_name='钟yuling', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128628265';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19389867357', 'U19389867357', 'GRAY🍪', '', '19389867357', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 10:00:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19389867357' LIMIT 1);
UPDATE users SET nick_name='GRAY🍪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19389867357';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710502347', 'U13710502347', '🐴MCBen🐴', '', '13710502347', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 09:59:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710502347' LIMIT 1);
UPDATE users SET nick_name='🐴MCBen🐴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710502347';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902021294', 'U15902021294', '15902021294', '', '15902021294', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-21 09:56:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902021294' LIMIT 1);
UPDATE users SET nick_name='15902021294', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902021294';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217638400', 'U15217638400', 'A Zoe', '', '15217638400', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 23:44:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217638400' LIMIT 1);
UPDATE users SET nick_name='A Zoe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217638400';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17276497537', 'U17276497537', '爸爸', '', '17276497537', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 22:55:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17276497537' LIMIT 1);
UPDATE users SET nick_name='爸爸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17276497537';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18207648863', 'U18207648863', '🦔🔥', '', '18207648863', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 22:50:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18207648863' LIMIT 1);
UPDATE users SET nick_name='🦔🔥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18207648863';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726757867', 'U13726757867', 'Gigi', '', '13726757867', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-06-20 22:42:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726757867' LIMIT 1);
UPDATE users SET nick_name='Gigi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13726757867';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920166727', 'U15920166727', '15920166727', '', '15920166727', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 21:15:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920166727' LIMIT 1);
UPDATE users SET nick_name='15920166727', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920166727';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15307275212', 'U15307275212', '且听欢歌', '', '15307275212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 20:50:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15307275212' LIMIT 1);
UPDATE users SET nick_name='且听欢歌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15307275212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19925870474', 'U19925870474', '19925870474', '', '19925870474', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 20:14:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19925870474' LIMIT 1);
UPDATE users SET nick_name='19925870474', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19925870474';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727040410', 'U13727040410', 'faye', '', '13727040410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 19:46:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727040410' LIMIT 1);
UPDATE users SET nick_name='faye', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13727040410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922337038', 'U13922337038', 'Biu', '', '13922337038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 19:14:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922337038' LIMIT 1);
UPDATE users SET nick_name='Biu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922337038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560361306', 'U13560361306', '13560361306', '', '13560361306', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 19:09:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560361306' LIMIT 1);
UPDATE users SET nick_name='13560361306', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560361306';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13823450093', 'U13823450093', '诺', '', '13823450093', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 19:04:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13823450093' LIMIT 1);
UPDATE users SET nick_name='诺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13823450093';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535907556', 'U13535907556', '篠朢杍', '', '13535907556', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 18:26:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535907556' LIMIT 1);
UPDATE users SET nick_name='篠朢杍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535907556';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922412602', 'U13922412602', '其实没什么', '', '13922412602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 16:44:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922412602' LIMIT 1);
UPDATE users SET nick_name='其实没什么', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922412602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620829016', 'U18620829016', 'f', '', '18620829016', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 14:20:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620829016' LIMIT 1);
UPDATE users SET nick_name='f', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620829016';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928817080', 'U18928817080', '18928817080', '', '18928817080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 13:04:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928817080' LIMIT 1);
UPDATE users SET nick_name='18928817080', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928817080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025198601', 'U13025198601', '13025198601', '', '13025198601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 12:49:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025198601' LIMIT 1);
UPDATE users SET nick_name='13025198601', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025198601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512741122', 'U13512741122', '荧盈', '', '13512741122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 12:46:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512741122' LIMIT 1);
UPDATE users SET nick_name='荧盈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512741122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13637881136', 'U13637881136', 'jojo Summer*🎾🤟🏻🎱', '', '13637881136', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 699, '2025-06-20 11:27:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13637881136' LIMIT 1);
UPDATE users SET nick_name='jojo Summer*🎾🤟🏻🎱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 699) WHERE phone='13637881136';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719320121', 'U13719320121', '小雄', '', '13719320121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 10:15:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719320121' LIMIT 1);
UPDATE users SET nick_name='小雄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719320121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15099989440', 'U15099989440', '🙈JOJO🍀', '', '15099989440', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 08:57:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15099989440' LIMIT 1);
UPDATE users SET nick_name='🙈JOJO🍀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15099989440';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798153691', 'U13798153691', 'devin', '', '13798153691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-20 00:49:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798153691' LIMIT 1);
UPDATE users SET nick_name='devin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798153691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15102031803', 'U15102031803', '03', '', '15102031803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 22:51:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15102031803' LIMIT 1);
UPDATE users SET nick_name='03', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15102031803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17674126787', 'U17674126787', '橘子', '', '17674126787', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 22:43:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17674126787' LIMIT 1);
UPDATE users SET nick_name='橘子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17674126787';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826053781', 'U18826053781', 'cc', '', '18826053781', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 20:29:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826053781' LIMIT 1);
UPDATE users SET nick_name='cc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826053781';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15816720434', 'U15816720434', '余', '', '15816720434', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 20:28:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15816720434' LIMIT 1);
UPDATE users SET nick_name='余', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15816720434';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631148933', 'U13631148933', '小杜', '', '13631148933', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 20:17:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631148933' LIMIT 1);
UPDATE users SET nick_name='小杜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631148933';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521154244', 'U15521154244', '🐔张♛全蛋🌸', '', '15521154244', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 19:21:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521154244' LIMIT 1);
UPDATE users SET nick_name='🐔张♛全蛋🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521154244';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312846481', 'U13312846481', '春天', '', '13312846481', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 19:19:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312846481' LIMIT 1);
UPDATE users SET nick_name='春天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13312846481';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15811887441', 'U15811887441', '林林', '', '15811887441', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 17:55:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15811887441' LIMIT 1);
UPDATE users SET nick_name='林林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15811887441';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017518757', 'U15017518757', 'kingsir', '', '15017518757', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 17:06:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017518757' LIMIT 1);
UPDATE users SET nick_name='kingsir', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017518757';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249186299', 'U13249186299', '13249186299', '', '13249186299', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 16:13:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249186299' LIMIT 1);
UPDATE users SET nick_name='13249186299', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13249186299';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602437705', 'U13602437705', '13602437705', '', '13602437705', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 15:31:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602437705' LIMIT 1);
UPDATE users SET nick_name='13602437705', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602437705';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13811119770', 'U13811119770', 'Ma', '', '13811119770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-06-19 14:55:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13811119770' LIMIT 1);
UPDATE users SET nick_name='Ma', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13811119770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660630467', 'U13660630467', '贝贝', '', '13660630467', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 14:30:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660630467' LIMIT 1);
UPDATE users SET nick_name='贝贝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660630467';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18583622333', 'U18583622333', '18583622333', '', '18583622333', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 13:04:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18583622333' LIMIT 1);
UPDATE users SET nick_name='18583622333', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18583622333';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229494717', 'U13229494717', '岑九', '', '13229494717', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 12:58:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229494717' LIMIT 1);
UPDATE users SET nick_name='岑九', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229494717';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922339680', 'U13922339680', 'jason', '', '13922339680', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-06-19 12:05:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922339680' LIMIT 1);
UPDATE users SET nick_name='jason', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13922339680';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665587900', 'U18665587900', '张译陶', '', '18665587900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2025-06-19 11:38:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665587900' LIMIT 1);
UPDATE users SET nick_name='张译陶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='18665587900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17673128857', 'U17673128857', '周文杰', '', '17673128857', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 11:31:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17673128857' LIMIT 1);
UPDATE users SET nick_name='周文杰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17673128857';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620884738', 'U18620884738', '💯朱朱君', '', '18620884738', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 11:04:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620884738' LIMIT 1);
UPDATE users SET nick_name='💯朱朱君', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620884738';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422288334', 'U13422288334', '叔叔大晒', '', '13422288334', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 11:02:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422288334' LIMIT 1);
UPDATE users SET nick_name='叔叔大晒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422288334';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632393963', 'U13632393963', 'Alen Fung', '', '13632393963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 10:56:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632393963' LIMIT 1);
UPDATE users SET nick_name='Alen Fung', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632393963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416120844', 'U13416120844', 'Yu', '', '13416120844', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-19 09:06:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416120844' LIMIT 1);
UPDATE users SET nick_name='Yu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416120844';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13630449250', 'U13630449250', 'Saving', '', '13630449250', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 23:50:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13630449250' LIMIT 1);
UPDATE users SET nick_name='Saving', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13630449250';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18689253152', 'U18689253152', '七夕', '', '18689253152', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 23:45:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18689253152' LIMIT 1);
UPDATE users SET nick_name='七夕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18689253152';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989262063', 'U15989262063', '@高手', '', '15989262063', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 23:36:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989262063' LIMIT 1);
UPDATE users SET nick_name='@高手', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989262063';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998312888', 'U18998312888', '小白', '', '18998312888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-06-18 22:41:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998312888' LIMIT 1);
UPDATE users SET nick_name='小白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='18998312888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18675896629', 'U18675896629', 'yamma', '', '18675896629', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 21:10:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18675896629' LIMIT 1);
UPDATE users SET nick_name='yamma', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18675896629';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13425922725', 'U13425922725', 'Iris', '', '13425922725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 21:05:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13425922725' LIMIT 1);
UPDATE users SET nick_name='Iris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13425922725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928329950', 'U13928329950', '小小刘', '', '13928329950', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 20:57:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928329950' LIMIT 1);
UPDATE users SET nick_name='小小刘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928329950';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813353098', 'U15813353098', 'Chloe 11  🐻🐰🍓🍔🎄', '', '15813353098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 19:08:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813353098' LIMIT 1);
UPDATE users SET nick_name='Chloe 11  🐻🐰🍓🍔🎄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813353098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560008775', 'U13560008775', 'Hayden', '', '13560008775', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 18:28:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560008775' LIMIT 1);
UPDATE users SET nick_name='Hayden', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560008775';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18816781398', 'U18816781398', '18816781398', '', '18816781398', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 18:01:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18816781398' LIMIT 1);
UPDATE users SET nick_name='18816781398', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18816781398';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13621452110', 'U13621452110', 'Huisinyiu', '', '13621452110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 17:38:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13621452110' LIMIT 1);
UPDATE users SET nick_name='Huisinyiu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13621452110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19195542999', 'U19195542999', '我', '', '19195542999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 16:23:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19195542999' LIMIT 1);
UPDATE users SET nick_name='我', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19195542999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825118002', 'U18825118002', 'richard GRC', '', '18825118002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 16:01:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825118002' LIMIT 1);
UPDATE users SET nick_name='richard GRC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825118002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822292111', 'U13822292111', '黄成立', '', '13822292111', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 70, '2025-06-18 15:42:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822292111' LIMIT 1);
UPDATE users SET nick_name='黄成立', balance=GREATEST(balance, 0.00), points=GREATEST(points, 70) WHERE phone='13822292111';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820105132', 'U18820105132', 'jeremy', '', '18820105132', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 14:58:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820105132' LIMIT 1);
UPDATE users SET nick_name='jeremy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820105132';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920124428', 'U15920124428', '伍', '', '15920124428', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 14:20:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920124428' LIMIT 1);
UPDATE users SET nick_name='伍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920124428';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818152925', 'U15818152925', '五', '', '15818152925', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 14:17:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818152925' LIMIT 1);
UPDATE users SET nick_name='五', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818152925';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929522938', 'U13929522938', 'Murkome', '', '13929522938', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 13:43:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929522938' LIMIT 1);
UPDATE users SET nick_name='Murkome', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929522938';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580351704', 'U13580351704', '豆苗', '', '13580351704', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 13:12:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580351704' LIMIT 1);
UPDATE users SET nick_name='豆苗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580351704';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18934805228', 'U18934805228', '陶璇', '', '18934805228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 11:52:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18934805228' LIMIT 1);
UPDATE users SET nick_name='陶璇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18934805228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13138516657', 'U13138516657', '莲子', '', '13138516657', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 11:35:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13138516657' LIMIT 1);
UPDATE users SET nick_name='莲子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13138516657';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265097158', 'U13265097158', 'ᝰꫛꫀꪝ¹³¹⁴.🌈', '', '13265097158', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 11:22:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265097158' LIMIT 1);
UPDATE users SET nick_name='ᝰꫛꫀꪝ¹³¹⁴.🌈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265097158';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148903164', 'U13148903164', 'www', '', '13148903164', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-18 10:15:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148903164' LIMIT 1);
UPDATE users SET nick_name='www', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13148903164';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265326727', 'U13265326727', 'Sherry杨娴丽^', '', '13265326727', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 23:11:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265326727' LIMIT 1);
UPDATE users SET nick_name='Sherry杨娴丽^', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265326727';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726935622', 'U13726935622', '田某人', '', '13726935622', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 21:09:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726935622' LIMIT 1);
UPDATE users SET nick_name='田某人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726935622';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922146454', 'U13922146454', 'hhh', '', '13922146454', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 20:52:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922146454' LIMIT 1);
UPDATE users SET nick_name='hhh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922146454';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680208868', 'U18680208868', 'qisy', '', '18680208868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-06-17 20:42:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680208868' LIMIT 1);
UPDATE users SET nick_name='qisy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18680208868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609728962', 'U13609728962', '剑', '', '13609728962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 388, '2025-06-17 18:15:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609728962' LIMIT 1);
UPDATE users SET nick_name='剑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 388) WHERE phone='13609728962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13536145351', 'U13536145351', 'ʚ66ɞ', '', '13536145351', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 18:10:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13536145351' LIMIT 1);
UPDATE users SET nick_name='ʚ66ɞ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13536145351';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15026940926', 'U15026940926', 'ZoeP', '', '15026940926', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 17:55:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15026940926' LIMIT 1);
UPDATE users SET nick_name='ZoeP', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15026940926';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13421701354', 'U13421701354', '星星', '', '13421701354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 17:54:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13421701354' LIMIT 1);
UPDATE users SET nick_name='星星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13421701354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565077885', 'U18565077885', 'Hahaaa', '', '18565077885', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 17:11:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565077885' LIMIT 1);
UPDATE users SET nick_name='Hahaaa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565077885';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665786778', 'U17665786778', '万人迷', '', '17665786778', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 16:45:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665786778' LIMIT 1);
UPDATE users SET nick_name='万人迷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665786778';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913112618', 'U15913112618', '猫', '', '15913112618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 16:41:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913112618' LIMIT 1);
UPDATE users SET nick_name='猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913112618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15107596291', 'U15107596291', '77', '', '15107596291', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 16:32:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15107596291' LIMIT 1);
UPDATE users SET nick_name='77', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15107596291';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802403006', 'U13802403006', '安', '', '13802403006', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 14:36:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802403006' LIMIT 1);
UPDATE users SET nick_name='安', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802403006';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17340672246', 'U17340672246', 'Pearl0306', '', '17340672246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 14:17:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17340672246' LIMIT 1);
UPDATE users SET nick_name='Pearl0306', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17340672246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925092232', 'U13925092232', 'Bonnie', '', '13925092232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 13:41:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925092232' LIMIT 1);
UPDATE users SET nick_name='Bonnie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925092232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929567461', 'U13929567461', '0.000049', '', '13929567461', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 13:01:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929567461' LIMIT 1);
UPDATE users SET nick_name='0.000049', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929567461';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15594768752', 'U15594768752', '宋梓瑜', '', '15594768752', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-06-17 12:07:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15594768752' LIMIT 1);
UPDATE users SET nick_name='宋梓瑜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15594768752';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17306676271', 'U17306676271', 'AZeng', '', '17306676271', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 08:39:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17306676271' LIMIT 1);
UPDATE users SET nick_name='AZeng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17306676271';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560033541', 'U13560033541', 'Monica细蚊蚊', '', '13560033541', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 01:15:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560033541' LIMIT 1);
UPDATE users SET nick_name='Monica细蚊蚊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560033541';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929541205', 'U13929541205', 'Grace', '', '13929541205', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-17 00:42:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929541205' LIMIT 1);
UPDATE users SET nick_name='Grace', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929541205';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922220201', 'U18922220201', '陈阿鑫®', '', '18922220201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 23:32:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922220201' LIMIT 1);
UPDATE users SET nick_name='陈阿鑫®', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922220201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889973072', 'U15889973072', 'angie（回复信息不定时）', '', '15889973072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 23:25:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889973072' LIMIT 1);
UPDATE users SET nick_name='angie（回复信息不定时）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889973072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102282894', 'U18102282894', '晓妮', '', '18102282894', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 20:38:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102282894' LIMIT 1);
UPDATE users SET nick_name='晓妮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102282894';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027283072', 'U18027283072', 'kaki', '', '18027283072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-06-16 20:25:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027283072' LIMIT 1);
UPDATE users SET nick_name='kaki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='18027283072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818438144', 'U18818438144', '。', '', '18818438144', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 18:51:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818438144' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818438144';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15079544309', 'U15079544309', '卡夫卡的熊', '', '15079544309', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-06-16 18:38:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15079544309' LIMIT 1);
UPDATE users SET nick_name='卡夫卡的熊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='15079544309';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13089658218', 'U13089658218', 'Cassie👣', '', '13089658218', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 18:35:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13089658218' LIMIT 1);
UPDATE users SET nick_name='Cassie👣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13089658218';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15718221664', 'U15718221664', 'Malow', '', '15718221664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 18:21:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15718221664' LIMIT 1);
UPDATE users SET nick_name='Malow', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15718221664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825044485', 'U18825044485', '媚秀paris', '', '18825044485', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 17:49:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825044485' LIMIT 1);
UPDATE users SET nick_name='媚秀paris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825044485';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620439961', 'U18620439961', 'Jason', '', '18620439961', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 17:23:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620439961' LIMIT 1);
UPDATE users SET nick_name='Jason', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620439961';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620749297', 'U16620749297', 'zdt', '', '16620749297', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 15:59:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620749297' LIMIT 1);
UPDATE users SET nick_name='zdt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620749297';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242708371', 'U13242708371', '醒下啦', '', '13242708371', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 15:13:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242708371' LIMIT 1);
UPDATE users SET nick_name='醒下啦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242708371';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15710887782', 'U15710887782', '上杉绘梨衣', '', '15710887782', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 15:12:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15710887782' LIMIT 1);
UPDATE users SET nick_name='上杉绘梨衣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15710887782';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876521744', 'U15876521744', '15876521744', '', '15876521744', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 14:59:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876521744' LIMIT 1);
UPDATE users SET nick_name='15876521744', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876521744';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914516882', 'U15914516882', '15914516882', '', '15914516882', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 12:56:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914516882' LIMIT 1);
UPDATE users SET nick_name='15914516882', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914516882';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19951589628', 'U19951589628', 'ANJUE', '', '19951589628', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 11:46:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19951589628' LIMIT 1);
UPDATE users SET nick_name='ANJUE', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19951589628';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503003838', 'U13503003838', 'Lily', '', '13503003838', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 10:29:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503003838' LIMIT 1);
UPDATE users SET nick_name='Lily', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503003838';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588569561', 'U18588569561', '卡卡', '', '18588569561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-16 10:24:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588569561' LIMIT 1);
UPDATE users SET nick_name='卡卡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588569561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18628077613', 'U18628077613', '石山白木', '', '18628077613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-06-16 01:57:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18628077613' LIMIT 1);
UPDATE users SET nick_name='石山白木', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='18628077613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725435970', 'U13725435970', '霖', '', '13725435970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2025-06-15 23:42:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725435970' LIMIT 1);
UPDATE users SET nick_name='霖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='13725435970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15201812174', 'U15201812174', '丹阿罗张', '', '15201812174', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 23:35:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15201812174' LIMIT 1);
UPDATE users SET nick_name='丹阿罗张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15201812174';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18953836042', 'U18953836042', '王', '', '18953836042', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 20:34:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18953836042' LIMIT 1);
UPDATE users SET nick_name='王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18953836042';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17819577528', 'U17819577528', 'Daniel', '', '17819577528', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 20:09:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17819577528' LIMIT 1);
UPDATE users SET nick_name='Daniel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17819577528';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710960534', 'U13710960534', 'CheungHo KUNG', '', '13710960534', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-06-15 19:59:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710960534' LIMIT 1);
UPDATE users SET nick_name='CheungHo KUNG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13710960534';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680207917', 'U18680207917', 'J.Kevin', '', '18680207917', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 18:57:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680207917' LIMIT 1);
UPDATE users SET nick_name='J.Kevin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680207917';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19227582850', 'U19227582850', 'risen 1', '', '19227582850', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 17:47:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19227582850' LIMIT 1);
UPDATE users SET nick_name='risen 1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19227582850';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15992263894', 'U15992263894', '土司m', '', '15992263894', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 17:13:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15992263894' LIMIT 1);
UPDATE users SET nick_name='土司m', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15992263894';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18800151772', 'U18800151772', '西元元~', '', '18800151772', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 17:11:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18800151772' LIMIT 1);
UPDATE users SET nick_name='西元元~', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18800151772';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18810078473', 'U18810078473', 'Jmy', '', '18810078473', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-06-15 15:38:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18810078473' LIMIT 1);
UPDATE users SET nick_name='Jmy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18810078473';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13291412087', 'U13291412087', 'Tina', '', '13291412087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 15:03:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13291412087' LIMIT 1);
UPDATE users SET nick_name='Tina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13291412087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13927485081', 'U13927485081', 'kk', '', '13927485081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 14:57:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13927485081' LIMIT 1);
UPDATE users SET nick_name='kk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13927485081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826487778', 'U18826487778', 'paul（王鹏）', '', '18826487778', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-06-15 14:49:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826487778' LIMIT 1);
UPDATE users SET nick_name='paul（王鹏）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18826487778';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17746091991', 'U17746091991', '大吉', '', '17746091991', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 14:29:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17746091991' LIMIT 1);
UPDATE users SET nick_name='大吉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17746091991';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725100916', 'U13725100916', 'Naoko杏🦄💗', '', '13725100916', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 25, '2025-06-15 14:28:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725100916' LIMIT 1);
UPDATE users SET nick_name='Naoko杏🦄💗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 25) WHERE phone='13725100916';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13371027447', 'U13371027447', 'dong', '', '13371027447', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 14:11:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13371027447' LIMIT 1);
UPDATE users SET nick_name='dong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13371027447';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15800047962', 'U15800047962', 'Mr.潘', '', '15800047962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 13:54:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15800047962' LIMIT 1);
UPDATE users SET nick_name='Mr.潘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15800047962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620816632', 'U18620816632', '斌仔', '', '18620816632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 13:41:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620816632' LIMIT 1);
UPDATE users SET nick_name='斌仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620816632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352825554', 'U13352825554', 'yuan', '', '13352825554', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 13:35:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352825554' LIMIT 1);
UPDATE users SET nick_name='yuan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352825554';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760759429', 'U13760759429', '13760759429', '', '13760759429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 13:29:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760759429' LIMIT 1);
UPDATE users SET nick_name='13760759429', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760759429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15088063119', 'U15088063119', '15088063119', '', '15088063119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 13:29:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15088063119' LIMIT 1);
UPDATE users SET nick_name='15088063119', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15088063119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798684097', 'U13798684097', 'Yan', '', '13798684097', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 12:38:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798684097' LIMIT 1);
UPDATE users SET nick_name='Yan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798684097';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613158598', 'U18613158598', '发', '', '18613158598', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 12:25:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613158598' LIMIT 1);
UPDATE users SET nick_name='发', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613158598';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19731505102', 'U19731505102', '凯', '', '19731505102', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 11:52:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19731505102' LIMIT 1);
UPDATE users SET nick_name='凯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19731505102';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521448419', 'U15521448419', '李李', '', '15521448419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 11:52:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521448419' LIMIT 1);
UPDATE users SET nick_name='李李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521448419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986243570', 'U15986243570', '梅子', '', '15986243570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 11:51:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986243570' LIMIT 1);
UPDATE users SET nick_name='梅子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15986243570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975519638', 'U15975519638', '饺子啊饺子', '', '15975519638', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 11:50:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975519638' LIMIT 1);
UPDATE users SET nick_name='饺子啊饺子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975519638';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322200913', 'U15322200913', '玉云', '', '15322200913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 150, '2025-06-15 11:32:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322200913' LIMIT 1);
UPDATE users SET nick_name='玉云', balance=GREATEST(balance, 0.00), points=GREATEST(points, 150) WHERE phone='15322200913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998469946', 'U18998469946', 'jessica', '', '18998469946', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2025-06-15 11:29:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998469946' LIMIT 1);
UPDATE users SET nick_name='jessica', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='18998469946';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620971110', 'U18620971110', 'Mark', '', '18620971110', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-06-15 11:20:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620971110' LIMIT 1);
UPDATE users SET nick_name='Mark', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18620971110';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631488091', 'U13631488091', '13631488091', '', '13631488091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 10:48:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631488091' LIMIT 1);
UPDATE users SET nick_name='13631488091', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631488091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924152778', 'U13924152778', '左手抱拳', '', '13924152778', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-15 10:45:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924152778' LIMIT 1);
UPDATE users SET nick_name='左手抱拳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924152778';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18312523136', 'U18312523136', '顿顿🧐', '', '18312523136', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 111, '2025-06-14 22:29:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18312523136' LIMIT 1);
UPDATE users SET nick_name='顿顿🧐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 111) WHERE phone='18312523136';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19984849075', 'U19984849075', '让', '', '19984849075', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 22:27:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19984849075' LIMIT 1);
UPDATE users SET nick_name='让', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19984849075';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229955243', 'U13229955243', 'Metawe', '', '13229955243', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 22:16:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229955243' LIMIT 1);
UPDATE users SET nick_name='Metawe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229955243';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520124471', 'U18520124471', '成', '', '18520124471', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 22:03:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520124471' LIMIT 1);
UPDATE users SET nick_name='成', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520124471';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13411962448', 'U13411962448', '13411962448', '', '13411962448', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 20:56:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13411962448' LIMIT 1);
UPDATE users SET nick_name='13411962448', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13411962448';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18199861577', 'U18199861577', 'Ivy🌿', '', '18199861577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 20:26:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18199861577' LIMIT 1);
UPDATE users SET nick_name='Ivy🌿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18199861577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18702636201', 'U18702636201', '1', '', '18702636201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 20:18:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18702636201' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18702636201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15016629705', 'U15016629705', 'zyx', '', '15016629705', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 20:09:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15016629705' LIMIT 1);
UPDATE users SET nick_name='zyx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15016629705';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13767959334', 'U13767959334', 'C', '', '13767959334', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 20:09:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13767959334' LIMIT 1);
UPDATE users SET nick_name='C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13767959334';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15361762394', 'U15361762394', 'Tina', '', '15361762394', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 20:08:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15361762394' LIMIT 1);
UPDATE users SET nick_name='Tina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15361762394';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18734578420', 'U18734578420', '诶娃_', '', '18734578420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 19:24:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18734578420' LIMIT 1);
UPDATE users SET nick_name='诶娃_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18734578420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13249724006', 'U13249724006', 'Kingho', '', '13249724006', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-06-14 19:12:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13249724006' LIMIT 1);
UPDATE users SET nick_name='Kingho', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13249724006';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128256949', 'U13128256949', 'Enzo', '', '13128256949', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 18:10:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128256949' LIMIT 1);
UPDATE users SET nick_name='Enzo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128256949';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19151442477', 'U19151442477', '5200', '', '19151442477', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 16:15:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19151442477' LIMIT 1);
UPDATE users SET nick_name='5200', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19151442477';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18721002075', 'U18721002075', '婷婷', '', '18721002075', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 16:00:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18721002075' LIMIT 1);
UPDATE users SET nick_name='婷婷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18721002075';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610137921', 'U13610137921', 'wyh', '', '13610137921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 15:37:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610137921' LIMIT 1);
UPDATE users SET nick_name='wyh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610137921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828438900', 'U13828438900', '小王', '', '13828438900', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 177, '2025-06-14 15:31:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828438900' LIMIT 1);
UPDATE users SET nick_name='小王', balance=GREATEST(balance, 0.00), points=GREATEST(points, 177) WHERE phone='13828438900';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975512047', 'U15975512047', '小鱼LRL', '', '15975512047', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 14:27:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975512047' LIMIT 1);
UPDATE users SET nick_name='小鱼LRL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975512047';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450496105', 'U13450496105', 'Khurana_', '', '13450496105', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 13:05:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450496105' LIMIT 1);
UPDATE users SET nick_name='Khurana_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450496105';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817961866', 'U17817961866', 'Sian', '', '17817961866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 12:31:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817961866' LIMIT 1);
UPDATE users SET nick_name='Sian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817961866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17628693634', 'U17628693634', '橘子', '', '17628693634', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 12:09:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17628693634' LIMIT 1);
UPDATE users SET nick_name='橘子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17628693634';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924129268', 'U18924129268', 'JoanneG洁', '', '18924129268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 11:55:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924129268' LIMIT 1);
UPDATE users SET nick_name='JoanneG洁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924129268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620802682', 'U18620802682', 'Aria', '', '18620802682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-06-14 11:40:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620802682' LIMIT 1);
UPDATE users SET nick_name='Aria', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18620802682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011879944', 'U15011879944', '李金霞', '', '15011879944', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 11:40:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011879944' LIMIT 1);
UPDATE users SET nick_name='李金霞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15011879944';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570969224', 'U13570969224', 'song', '', '13570969224', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-06-14 11:09:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570969224' LIMIT 1);
UPDATE users SET nick_name='song', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13570969224';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760846244', 'U13760846244', '日日', '', '13760846244', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 10:19:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760846244' LIMIT 1);
UPDATE users SET nick_name='日日', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760846244';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588773028', 'U18588773028', '林小美', '', '18588773028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 09:59:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588773028' LIMIT 1);
UPDATE users SET nick_name='林小美', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588773028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751841753', 'U13751841753', '小芳', '', '13751841753', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 09:50:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751841753' LIMIT 1);
UPDATE users SET nick_name='小芳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751841753';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416100088', 'U13416100088', '阿乐', '', '13416100088', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-14 03:35:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416100088' LIMIT 1);
UPDATE users SET nick_name='阿乐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416100088';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19323031504', 'U19323031504', '朱音', '', '19323031504', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 23:42:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19323031504' LIMIT 1);
UPDATE users SET nick_name='朱音', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19323031504';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18318338004', 'U18318338004', 'A', '', '18318338004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 23:42:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18318338004' LIMIT 1);
UPDATE users SET nick_name='A', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18318338004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538888023', 'U13538888023', 'Qiiiiii', '', '13538888023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 22:31:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538888023' LIMIT 1);
UPDATE users SET nick_name='Qiiiiii', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538888023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813010497', 'U15813010497', '_予😋', '', '15813010497', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 20:42:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813010497' LIMIT 1);
UPDATE users SET nick_name='_予😋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813010497';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302099717', 'U18302099717', 'kloud', '', '18302099717', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 60, '2025-06-13 20:29:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302099717' LIMIT 1);
UPDATE users SET nick_name='kloud', balance=GREATEST(balance, 0.00), points=GREATEST(points, 60) WHERE phone='18302099717';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876274655', 'U15876274655', '菜🥕～', '', '15876274655', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 20:06:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876274655' LIMIT 1);
UPDATE users SET nick_name='菜🥕～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876274655';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18621997399', 'U18621997399', 'tony', '', '18621997399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 17:50:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18621997399' LIMIT 1);
UPDATE users SET nick_name='tony', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18621997399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565645637', 'U18565645637', '幸', '', '18565645637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 17:35:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565645637' LIMIT 1);
UPDATE users SET nick_name='幸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565645637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13411030262', 'U13411030262', '村上', '', '13411030262', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 17:29:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13411030262' LIMIT 1);
UPDATE users SET nick_name='村上', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13411030262';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14736563036', 'U14736563036', 'Kankan Xie', '', '14736563036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 17:23:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14736563036' LIMIT 1);
UPDATE users SET nick_name='Kankan Xie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14736563036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15926469575', 'U15926469575', '艾艾', '', '15926469575', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-06-13 16:45:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15926469575' LIMIT 1);
UPDATE users SET nick_name='艾艾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15926469575';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570400154', 'U13570400154', 'EvaQian', '', '13570400154', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 16:30:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570400154' LIMIT 1);
UPDATE users SET nick_name='EvaQian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570400154';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15927340878', 'U15927340878', 'tt', '', '15927340878', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 16:30:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15927340878' LIMIT 1);
UPDATE users SET nick_name='tt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15927340878';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18899732819', 'U18899732819', 'nice', '', '18899732819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 16:10:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18899732819' LIMIT 1);
UPDATE users SET nick_name='nice', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18899732819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620913885', 'U18620913885', '锦鲤', '', '18620913885', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 16:01:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620913885' LIMIT 1);
UPDATE users SET nick_name='锦鲤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620913885';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13421733011', 'U13421733011', '往者不可谏', '', '13421733011', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 15:08:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13421733011' LIMIT 1);
UPDATE users SET nick_name='往者不可谏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13421733011';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13412882151', 'U13412882151', '1', '', '13412882151', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 15:03:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13412882151' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13412882151';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15976715935', 'U15976715935', '7', '', '15976715935', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 14:40:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15976715935' LIMIT 1);
UPDATE users SET nick_name='7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15976715935';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18933183475', 'U18933183475', 'Ryoma', '', '18933183475', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 14:25:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18933183475' LIMIT 1);
UPDATE users SET nick_name='Ryoma', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18933183475';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680220202', 'U18680220202', 'mama', '', '18680220202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 14:21:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680220202' LIMIT 1);
UPDATE users SET nick_name='mama', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680220202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13266017881', 'U13266017881', 'pdd', '', '13266017881', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 14:18:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13266017881' LIMIT 1);
UPDATE users SET nick_name='pdd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13266017881';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826133598', 'U18826133598', '宝', '', '18826133598', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 13:39:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826133598' LIMIT 1);
UPDATE users SET nick_name='宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826133598';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416179745', 'U13416179745', '13416179745', '', '13416179745', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 13:23:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416179745' LIMIT 1);
UPDATE users SET nick_name='13416179745', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416179745';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18811827601', 'U18811827601', '叶秋', '', '18811827601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 13:15:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18811827601' LIMIT 1);
UPDATE users SET nick_name='叶秋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18811827601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18066376683', 'U18066376683', '在逃艺术家', '', '18066376683', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 12:09:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18066376683' LIMIT 1);
UPDATE users SET nick_name='在逃艺术家', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18066376683';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17384656724', 'U17384656724', '123', '', '17384656724', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 12:00:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17384656724' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17384656724';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18182073395', 'U18182073395', 'F0', '', '18182073395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-13 11:14:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18182073395' LIMIT 1);
UPDATE users SET nick_name='F0', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18182073395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18234090912', 'U18234090912', '大胖', '', '18234090912', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-06-13 10:42:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18234090912' LIMIT 1);
UPDATE users SET nick_name='大胖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18234090912';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560095972', 'U13560095972', '楠', '', '13560095972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 588, '2025-06-12 20:43:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560095972' LIMIT 1);
UPDATE users SET nick_name='楠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 588) WHERE phone='13560095972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13612322722', 'U13612322722', '13612322722', '', '13612322722', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-12 20:40:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13612322722' LIMIT 1);
UPDATE users SET nick_name='13612322722', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13612322722';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13066317002', 'U13066317002', '一鸣金属辅料工作号', '', '13066317002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 199, '2025-06-12 20:38:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13066317002' LIMIT 1);
UPDATE users SET nick_name='一鸣金属辅料工作号', balance=GREATEST(balance, 0.00), points=GREATEST(points, 199) WHERE phone='13066317002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18823112439', 'U18823112439', 'uillll', '', '18823112439', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-12 19:36:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18823112439' LIMIT 1);
UPDATE users SET nick_name='uillll', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18823112439';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13679899534', 'U13679899534', '黑黑', '', '13679899534', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-12 19:34:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13679899534' LIMIT 1);
UPDATE users SET nick_name='黑黑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13679899534';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15904089136', 'U15904089136', '锦辉', '', '15904089136', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-12 18:38:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15904089136' LIMIT 1);
UPDATE users SET nick_name='锦辉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15904089136';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826938178', 'U13826938178', '^ω^蝎Å子￡座', '', '13826938178', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-12 17:45:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826938178' LIMIT 1);
UPDATE users SET nick_name='^ω^蝎Å子￡座', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826938178';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527605010', 'U13527605010', '安迪', '', '13527605010', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-06-12 17:21:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527605010' LIMIT 1);
UPDATE users SET nick_name='安迪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13527605010';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15220528079', 'U15220528079', '又想吃芦笋', '', '15220528079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-12 17:04:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15220528079' LIMIT 1);
UPDATE users SET nick_name='又想吃芦笋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15220528079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15570147083', 'U15570147083', 'LX', '', '15570147083', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 28, '2025-06-12 16:13:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15570147083' LIMIT 1);
UPDATE users SET nick_name='LX', balance=GREATEST(balance, 0.00), points=GREATEST(points, 28) WHERE phone='15570147083';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666099426', 'U18666099426', 'WJ', '', '18666099426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-12 14:05:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666099426' LIMIT 1);
UPDATE users SET nick_name='WJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666099426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18948233693', 'U18948233693', '321', '', '18948233693', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 21:08:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18948233693' LIMIT 1);
UPDATE users SET nick_name='321', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18948233693';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570919717', 'U13570919717', '缪คิดถึง', '', '13570919717', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 20:57:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570919717' LIMIT 1);
UPDATE users SET nick_name='缪คิดถึง', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570919717';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218633683', 'U18218633683', '姜汁', '', '18218633683', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 325, '2025-06-11 20:54:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218633683' LIMIT 1);
UPDATE users SET nick_name='姜汁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 325) WHERE phone='18218633683';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902496617', 'U13902496617', '13902496617', '', '13902496617', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 19:36:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902496617' LIMIT 1);
UPDATE users SET nick_name='13902496617', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902496617';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533854823', 'U13533854823', '好好努力', '', '13533854823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 18:39:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533854823' LIMIT 1);
UPDATE users SET nick_name='好好努力', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533854823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650882360', 'U13650882360', 'ykkkk', '', '13650882360', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 57, '2025-06-11 18:35:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650882360' LIMIT 1);
UPDATE users SET nick_name='ykkkk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 57) WHERE phone='13650882360';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711143311', 'U13711143311', '13711143311', '', '13711143311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 18:26:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711143311' LIMIT 1);
UPDATE users SET nick_name='13711143311', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711143311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122403405', 'U18122403405', '18122403405', '', '18122403405', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 18:04:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122403405' LIMIT 1);
UPDATE users SET nick_name='18122403405', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122403405';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18722609286', 'U18722609286', '牛奕', '', '18722609286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 175, '2025-06-11 17:02:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18722609286' LIMIT 1);
UPDATE users SET nick_name='牛奕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 175) WHERE phone='18722609286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13281081610', 'U13281081610', 'Darren Han', '', '13281081610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 15:12:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13281081610' LIMIT 1);
UPDATE users SET nick_name='Darren Han', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13281081610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622740004', 'U13622740004', 'Magmag', '', '13622740004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 14:58:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622740004' LIMIT 1);
UPDATE users SET nick_name='Magmag', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622740004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18319938937', 'U18319938937', 'Sinc', '', '18319938937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 14:40:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18319938937' LIMIT 1);
UPDATE users SET nick_name='Sinc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18319938937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17671775563', 'U17671775563', 'Ricky', '', '17671775563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 14:13:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17671775563' LIMIT 1);
UPDATE users SET nick_name='Ricky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17671775563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18473483380', 'U18473483380', '洋芋', '', '18473483380', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 14:06:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18473483380' LIMIT 1);
UPDATE users SET nick_name='洋芋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18473483380';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19350634162', 'U19350634162', '七里云', '', '19350634162', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 13:27:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19350634162' LIMIT 1);
UPDATE users SET nick_name='七里云', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19350634162';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902870867', 'U18902870867', '溯世书', '', '18902870867', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 12:53:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902870867' LIMIT 1);
UPDATE users SET nick_name='溯世书', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18902870867';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928638713', 'U13928638713', 'Undefeated 🌙', '', '13928638713', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 12:31:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928638713' LIMIT 1);
UPDATE users SET nick_name='Undefeated 🌙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928638713';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692027048', 'U15692027048', 'kittyccc', '', '15692027048', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 12:18:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692027048' LIMIT 1);
UPDATE users SET nick_name='kittyccc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692027048';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18321275387', 'U18321275387', 'Lili周-周莉', '', '18321275387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 12:15:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18321275387' LIMIT 1);
UPDATE users SET nick_name='Lili周-周莉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18321275387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560012984', 'U13560012984', '仲有最靚嘅豬腩肉', '', '13560012984', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 11:37:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560012984' LIMIT 1);
UPDATE users SET nick_name='仲有最靚嘅豬腩肉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560012984';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247771353', 'U13247771353', '聪聪', '', '13247771353', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 11:34:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247771353' LIMIT 1);
UPDATE users SET nick_name='聪聪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13247771353';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13058414787', 'U13058414787', '哈哈', '', '13058414787', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-11 09:46:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13058414787' LIMIT 1);
UPDATE users SET nick_name='哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13058414787';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13112257277', 'U13112257277', '这一秒遇见你', '', '13112257277', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-10 22:44:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13112257277' LIMIT 1);
UPDATE users SET nick_name='这一秒遇见你', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13112257277';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602216250', 'U13602216250', '会飞的鱼', '', '13602216250', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-10 20:04:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602216250' LIMIT 1);
UPDATE users SET nick_name='会飞的鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602216250';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666062974', 'U17666062974', '#DDD', '', '17666062974', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-10 20:00:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666062974' LIMIT 1);
UPDATE users SET nick_name='#DDD', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666062974';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265953432', 'U13265953432', 'woz', '', '13265953432', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-10 19:07:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265953432' LIMIT 1);
UPDATE users SET nick_name='woz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265953432';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529315914', 'U18529315914', 'zo', '', '18529315914', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-10 17:25:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529315914' LIMIT 1);
UPDATE users SET nick_name='zo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529315914';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15363569036', 'U15363569036', 'Justina', '', '15363569036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-10 17:10:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15363569036' LIMIT 1);
UPDATE users SET nick_name='Justina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15363569036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620979746', 'U18620979746', '🎈JYWONG🐷', '', '18620979746', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1, '2025-06-10 15:15:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620979746' LIMIT 1);
UPDATE users SET nick_name='🎈JYWONG🐷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1) WHERE phone='18620979746';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17818550068', 'U17818550068', 'Ö椰', '', '17818550068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-10 14:46:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17818550068' LIMIT 1);
UPDATE users SET nick_name='Ö椰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17818550068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631533661', 'U13631533661', '莹', '', '13631533661', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-10 14:32:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631533661' LIMIT 1);
UPDATE users SET nick_name='莹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631533661';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15042360999', 'U15042360999', '15042360999', '', '15042360999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-10 14:28:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15042360999' LIMIT 1);
UPDATE users SET nick_name='15042360999', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15042360999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609766181', 'U13609766181', 'Miller ₂₀₂₅ᴶᵒʸ ᴾᵉᵃᶜᵉ', '', '13609766181', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-06-10 14:11:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609766181' LIMIT 1);
UPDATE users SET nick_name='Miller ₂₀₂₅ᴶᵒʸ ᴾᵉᵃᶜᵉ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13609766181';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925005027', 'U13925005027', '小可', '', '13925005027', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-10 14:09:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925005027' LIMIT 1);
UPDATE users SET nick_name='小可', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925005027';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710596186', 'U13710596186', '13710596186', '', '13710596186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-10 13:37:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710596186' LIMIT 1);
UPDATE users SET nick_name='13710596186', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710596186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316690432', 'U18316690432', 'H', '', '18316690432', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 23:18:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316690432' LIMIT 1);
UPDATE users SET nick_name='H', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316690432';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570319240', 'U13570319240', 'Jia🌱', '', '13570319240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 23:05:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570319240' LIMIT 1);
UPDATE users SET nick_name='Jia🌱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570319240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724173470', 'U13724173470', '.', '', '13724173470', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 22:53:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724173470' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724173470';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13100525293', 'U13100525293', '饭桶', '', '13100525293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-06-09 21:47:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13100525293' LIMIT 1);
UPDATE users SET nick_name='饭桶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='13100525293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13506775567', 'U13506775567', '13506775567', '', '13506775567', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 19:14:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13506775567' LIMIT 1);
UPDATE users SET nick_name='13506775567', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13506775567';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18789123417', 'U18789123417', 'O Dia', '', '18789123417', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 19:13:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18789123417' LIMIT 1);
UPDATE users SET nick_name='O Dia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18789123417';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922040155', 'U18922040155', '18922040155', '', '18922040155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 18:34:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922040155' LIMIT 1);
UPDATE users SET nick_name='18922040155', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922040155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818845769', 'U18818845769', '张小弘', '', '18818845769', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 86, '2025-06-09 16:54:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818845769' LIMIT 1);
UPDATE users SET nick_name='张小弘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 86) WHERE phone='18818845769';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13207196941', 'U13207196941', '🌞', '', '13207196941', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 16:12:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13207196941' LIMIT 1);
UPDATE users SET nick_name='🌞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13207196941';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15802022266', 'U15802022266', 'Lily', '', '15802022266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 16:03:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15802022266' LIMIT 1);
UPDATE users SET nick_name='Lily', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15802022266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924108963', 'U18924108963', 'wing', '', '18924108963', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-06-09 15:44:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924108963' LIMIT 1);
UPDATE users SET nick_name='wing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18924108963';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13376618313', 'U13376618313', '13376618313', '', '13376618313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 15:40:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13376618313' LIMIT 1);
UPDATE users SET nick_name='13376618313', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13376618313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011948894', 'U18011948894', '18011948894', '', '18011948894', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 14:53:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011948894' LIMIT 1);
UPDATE users SET nick_name='18011948894', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011948894';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802042273', 'U18802042273', '小郭', '', '18802042273', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 13:50:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802042273' LIMIT 1);
UPDATE users SET nick_name='小郭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802042273';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15814527052', 'U15814527052', 'Zzz', '', '15814527052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-06-09 12:42:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15814527052' LIMIT 1);
UPDATE users SET nick_name='Zzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15814527052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18144881925', 'U18144881925', 'Delia🐰', '', '18144881925', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 12:36:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18144881925' LIMIT 1);
UPDATE users SET nick_name='Delia🐰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18144881925';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18883249369', 'U18883249369', 'Bene🦫', '', '18883249369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 109, '2025-06-09 12:05:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18883249369' LIMIT 1);
UPDATE users SET nick_name='Bene🦫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 109) WHERE phone='18883249369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719675709', 'U13719675709', '🍔麥噹噹', '', '13719675709', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 11:57:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719675709' LIMIT 1);
UPDATE users SET nick_name='🍔麥噹噹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719675709';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620187331', 'U18620187331', 'lake', '', '18620187331', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 61, '2025-06-09 11:34:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620187331' LIMIT 1);
UPDATE users SET nick_name='lake', balance=GREATEST(balance, 0.00), points=GREATEST(points, 61) WHERE phone='18620187331';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13210024657', 'U13210024657', 'tt', '', '13210024657', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 11:20:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13210024657' LIMIT 1);
UPDATE users SET nick_name='tt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13210024657';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13113363328', 'U13113363328', '开心研究所', '', '13113363328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-06-09 10:35:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13113363328' LIMIT 1);
UPDATE users SET nick_name='开心研究所', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13113363328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148843648', 'U13148843648', 'Sienna', '', '13148843648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 09:50:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148843648' LIMIT 1);
UPDATE users SET nick_name='Sienna', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13148843648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588845910', 'U18588845910', 'lam🐭', '', '18588845910', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-09 09:37:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588845910' LIMIT 1);
UPDATE users SET nick_name='lam🐭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588845910';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565149052', 'U18565149052', '如如', '', '18565149052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 22:47:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565149052' LIMIT 1);
UPDATE users SET nick_name='如如', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565149052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15381942462', 'U15381942462', 'ZJM', '', '15381942462', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 22:11:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15381942462' LIMIT 1);
UPDATE users SET nick_name='ZJM', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15381942462';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13794329817', 'U13794329817', '丁仃叮', '', '13794329817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 22:08:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13794329817' LIMIT 1);
UPDATE users SET nick_name='丁仃叮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13794329817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202002201', 'U15202002201', '大花', '', '15202002201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 19:30:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202002201' LIMIT 1);
UPDATE users SET nick_name='大花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15202002201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18203470087', 'U18203470087', '惊鸿照影', '', '18203470087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 19:18:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18203470087' LIMIT 1);
UPDATE users SET nick_name='惊鸿照影', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18203470087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18374060561', 'U18374060561', '18374060561', '', '18374060561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 17:16:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18374060561' LIMIT 1);
UPDATE users SET nick_name='18374060561', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18374060561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620233107', 'U18620233107', 'tony', '', '18620233107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 17:14:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620233107' LIMIT 1);
UPDATE users SET nick_name='tony', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620233107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520748024', 'U18520748024', 'Wade', '', '18520748024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 15:54:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520748024' LIMIT 1);
UPDATE users SET nick_name='Wade', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520748024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18030184283', 'U18030184283', '勇敢做祎', '', '18030184283', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 14:28:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18030184283' LIMIT 1);
UPDATE users SET nick_name='勇敢做祎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18030184283';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15259502731', 'U15259502731', '叉叉', '', '15259502731', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 14:24:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15259502731' LIMIT 1);
UPDATE users SET nick_name='叉叉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15259502731';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17602035987', 'U17602035987', 'YLFS-小曾（知了）', '', '17602035987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 14:06:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17602035987' LIMIT 1);
UPDATE users SET nick_name='YLFS-小曾（知了）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17602035987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218842262', 'U15218842262', '汤汤', '', '15218842262', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 13:18:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218842262' LIMIT 1);
UPDATE users SET nick_name='汤汤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218842262';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922295568', 'U18922295568', '18922295568', '', '18922295568', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 13:01:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922295568' LIMIT 1);
UPDATE users SET nick_name='18922295568', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922295568';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560011354', 'U13560011354', '：', '', '13560011354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 12:48:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560011354' LIMIT 1);
UPDATE users SET nick_name='：', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560011354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826080528', 'U13826080528', 'Julia', '', '13826080528', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 12:33:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826080528' LIMIT 1);
UPDATE users SET nick_name='Julia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826080528';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028808097', 'U18028808097', 'heee💫 ᐝ', '', '18028808097', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 11:39:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028808097' LIMIT 1);
UPDATE users SET nick_name='heee💫 ᐝ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028808097';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820290026', 'U15820290026', 'Raymond', '', '15820290026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 10:11:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820290026' LIMIT 1);
UPDATE users SET nick_name='Raymond', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820290026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13411093135', 'U13411093135', '柿子大作战', '', '13411093135', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 03:13:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13411093135' LIMIT 1);
UPDATE users SET nick_name='柿子大作战', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13411093135';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250208886', 'U13250208886', '喜洋洋', '', '13250208886', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 01:08:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250208886' LIMIT 1);
UPDATE users SET nick_name='喜洋洋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250208886';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13420642185', 'U13420642185', 'PP219🍟', '', '13420642185', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-08 00:03:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13420642185' LIMIT 1);
UPDATE users SET nick_name='PP219🍟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13420642185';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18938621690', 'U18938621690', 'lili', '', '18938621690', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 23:29:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18938621690' LIMIT 1);
UPDATE users SET nick_name='lili', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18938621690';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565256152', 'U18565256152', 'ZHEPI', '', '18565256152', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 22:26:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565256152' LIMIT 1);
UPDATE users SET nick_name='ZHEPI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565256152';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580577996', 'U13580577996', 'WHILE&', '', '13580577996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-06-07 22:17:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580577996' LIMIT 1);
UPDATE users SET nick_name='WHILE&', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13580577996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13907726456', 'U13907726456', '臻可爱呀🍀', '', '13907726456', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 21:12:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13907726456' LIMIT 1);
UPDATE users SET nick_name='臻可爱呀🍀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13907726456';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13129329868', 'U13129329868', 'Yt.', '', '13129329868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 21:12:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13129329868' LIMIT 1);
UPDATE users SET nick_name='Yt.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13129329868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925108530', 'U13925108530', '小叶', '', '13925108530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 21:12:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925108530' LIMIT 1);
UPDATE users SET nick_name='小叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925108530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13380034438', 'U13380034438', 'Kenn', '', '13380034438', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-06-07 19:45:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13380034438' LIMIT 1);
UPDATE users SET nick_name='Kenn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13380034438';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570322350', 'U13570322350', '🍦🍑', '', '13570322350', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 19:09:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570322350' LIMIT 1);
UPDATE users SET nick_name='🍦🍑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570322350';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19250451732', 'U19250451732', '波波', '', '19250451732', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 18:38:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19250451732' LIMIT 1);
UPDATE users SET nick_name='波波', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19250451732';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120667370', 'U19120667370', '鼠猫', '', '19120667370', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 17:40:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120667370' LIMIT 1);
UPDATE users SET nick_name='鼠猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120667370';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18038584886', 'U18038584886', 'Ni ao~', '', '18038584886', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 16:40:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18038584886' LIMIT 1);
UPDATE users SET nick_name='Ni ao~', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18038584886';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527760206', 'U13527760206', 'DGTY', '', '13527760206', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 16:38:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527760206' LIMIT 1);
UPDATE users SET nick_name='DGTY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527760206';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988961992', 'U18988961992', 'Jane', '', '18988961992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 16:35:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988961992' LIMIT 1);
UPDATE users SET nick_name='Jane', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988961992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13042063391', 'U13042063391', '去去吴', '', '13042063391', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-06-07 16:33:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13042063391' LIMIT 1);
UPDATE users SET nick_name='去去吴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13042063391';
