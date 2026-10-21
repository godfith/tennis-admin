SET NAMES utf8mb4;
-- 中大店用户导入 part 7 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19820532826', 'U19820532826', 'o captain', '', '19820532826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 20:23:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19820532826' LIMIT 1);
UPDATE users SET nick_name='o captain', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19820532826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13809205496', 'U13809205496', '赫莲娜Helena', '', '13809205496', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 20:06:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13809205496' LIMIT 1);
UPDATE users SET nick_name='赫莲娜Helena', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13809205496';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13290982484', 'U13290982484', '刘大米', '', '13290982484', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 19:21:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13290982484' LIMIT 1);
UPDATE users SET nick_name='刘大米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13290982484';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17819404860', 'U17819404860', 'ben chen', '', '17819404860', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 19:12:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17819404860' LIMIT 1);
UPDATE users SET nick_name='ben chen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17819404860';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17324092870', 'U17324092870', 'Freelance PT张', '', '17324092870', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 18:37:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17324092870' LIMIT 1);
UPDATE users SET nick_name='Freelance PT张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17324092870';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17681609060', 'U17681609060', '俊俊呀', '', '17681609060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 18:19:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17681609060' LIMIT 1);
UPDATE users SET nick_name='俊俊呀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17681609060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18344595285', 'U18344595285', '黎欣🎀', '', '18344595285', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 17:28:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18344595285' LIMIT 1);
UPDATE users SET nick_name='黎欣🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18344595285';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18675656435', 'U18675656435', 'SchelmElf', '', '18675656435', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 16:12:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18675656435' LIMIT 1);
UPDATE users SET nick_name='SchelmElf', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18675656435';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570899354', 'U13570899354', '网球ACE', '', '13570899354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 15:58:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570899354' LIMIT 1);
UPDATE users SET nick_name='网球ACE', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570899354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829577907', 'U13829577907', '波', '', '13829577907', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 15:56:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829577907' LIMIT 1);
UPDATE users SET nick_name='波', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829577907';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813966669', 'U18813966669', 'Valentine', '', '18813966669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 15:52:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813966669' LIMIT 1);
UPDATE users SET nick_name='Valentine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18813966669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711490857', 'U13711490857', '✨creacy✨', '', '13711490857', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 13:48:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711490857' LIMIT 1);
UPDATE users SET nick_name='✨creacy✨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711490857';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13530793702', 'U13530793702', 't', '', '13530793702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 13:20:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13530793702' LIMIT 1);
UPDATE users SET nick_name='t', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13530793702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128200141', 'U13128200141', 'kiki', '', '13128200141', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-09-13 13:05:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128200141' LIMIT 1);
UPDATE users SET nick_name='kiki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13128200141';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19311636374', 'U19311636374', '19311636374', '', '19311636374', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 12:29:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19311636374' LIMIT 1);
UPDATE users SET nick_name='19311636374', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19311636374';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826122508', 'U18826122508', '俊俊', '', '18826122508', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 12:08:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826122508' LIMIT 1);
UPDATE users SET nick_name='俊俊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826122508';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202000280', 'U13202000280', 'david', '', '13202000280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-13 11:50:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202000280' LIMIT 1);
UPDATE users SET nick_name='david', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202000280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15029241691', 'U15029241691', '野原广志', '', '15029241691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 23:36:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15029241691' LIMIT 1);
UPDATE users SET nick_name='野原广志', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15029241691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826082359', 'U13826082359', '川', '', '13826082359', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 21:58:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826082359' LIMIT 1);
UPDATE users SET nick_name='川', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826082359';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19502090583', 'U19502090583', 'Linda', '', '19502090583', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 21:23:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19502090583' LIMIT 1);
UPDATE users SET nick_name='Linda', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19502090583';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926211962', 'U18926211962', '湖丝嫩赏Rain', '', '18926211962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 19:52:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926211962' LIMIT 1);
UPDATE users SET nick_name='湖丝嫩赏Rain', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926211962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520156675', 'U18520156675', 'c..c', '', '18520156675', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 19:49:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520156675' LIMIT 1);
UPDATE users SET nick_name='c..c', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520156675';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15778021670', 'U15778021670', 'Siyu～🌻', '', '15778021670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 19:38:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15778021670' LIMIT 1);
UPDATE users SET nick_name='Siyu～🌻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15778021670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813348535', 'U15813348535', '代数数论砖家', '', '15813348535', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 17:39:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813348535' LIMIT 1);
UPDATE users SET nick_name='代数数论砖家', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813348535';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915819410', 'U15915819410', 'Vincent', '', '15915819410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 16:38:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915819410' LIMIT 1);
UPDATE users SET nick_name='Vincent', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915819410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13267687580', 'U13267687580', 'BCHL3114', '', '13267687580', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 15:06:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13267687580' LIMIT 1);
UPDATE users SET nick_name='BCHL3114', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13267687580';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662305092', 'U13662305092', '迷糊喵儿', '', '13662305092', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 15:05:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662305092' LIMIT 1);
UPDATE users SET nick_name='迷糊喵儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662305092';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15889967678', 'U15889967678', '咬咬', '', '15889967678', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 14:41:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15889967678' LIMIT 1);
UPDATE users SET nick_name='咬咬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15889967678';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924311796', 'U19924311796', '啊哈', '', '19924311796', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 13:10:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924311796' LIMIT 1);
UPDATE users SET nick_name='啊哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924311796';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925038711', 'U13925038711', '罗韵瑜®Iris', '', '13925038711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 12:11:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925038711' LIMIT 1);
UPDATE users SET nick_name='罗韵瑜®Iris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925038711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15838289475', 'U15838289475', 'yy', '', '15838289475', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 11:00:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15838289475' LIMIT 1);
UPDATE users SET nick_name='yy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15838289475';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820000621', 'U18820000621', 'tasha', '', '18820000621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-12 10:07:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820000621' LIMIT 1);
UPDATE users SET nick_name='tasha', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820000621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826090430', 'U13826090430', 'miki', '', '13826090430', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-11 18:55:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826090430' LIMIT 1);
UPDATE users SET nick_name='miki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826090430';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602473184', 'U13602473184', '胡俊彦', '', '13602473184', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-11 18:30:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602473184' LIMIT 1);
UPDATE users SET nick_name='胡俊彦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602473184';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18321902863', 'U18321902863', '梁', '', '18321902863', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-11 16:32:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18321902863' LIMIT 1);
UPDATE users SET nick_name='梁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18321902863';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127963122', 'U18127963122', '18127963122', '', '18127963122', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-11 15:17:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127963122' LIMIT 1);
UPDATE users SET nick_name='18127963122', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127963122';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917917134', 'U15917917134', 'Nemor。', '', '15917917134', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 199, '2025-09-11 12:29:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917917134' LIMIT 1);
UPDATE users SET nick_name='Nemor。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 199) WHERE phone='15917917134';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17380931667', 'U17380931667', 'emanon', '', '17380931667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-11 12:24:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17380931667' LIMIT 1);
UPDATE users SET nick_name='emanon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17380931667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929770816', 'U13929770816', '¶¶', '', '13929770816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-11 00:06:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929770816' LIMIT 1);
UPDATE users SET nick_name='¶¶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929770816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18279887762', 'U18279887762', 'ian', '', '18279887762', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-11 00:03:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18279887762' LIMIT 1);
UPDATE users SET nick_name='ian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18279887762';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434358798', 'U13434358798', '13434358798', '', '13434358798', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 21:41:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434358798' LIMIT 1);
UPDATE users SET nick_name='13434358798', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13434358798';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520654045', 'U18520654045', 'En', '', '18520654045', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 21:02:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520654045' LIMIT 1);
UPDATE users SET nick_name='En', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520654045';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924314360', 'U19924314360', 'Ashley', '', '19924314360', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 20:37:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924314360' LIMIT 1);
UPDATE users SET nick_name='Ashley', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924314360';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18624153631', 'U18624153631', 'Waxii', '', '18624153631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2025-09-10 20:36:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18624153631' LIMIT 1);
UPDATE users SET nick_name='Waxii', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='18624153631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126730314', 'U18126730314', '林一', '', '18126730314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 15:12:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126730314' LIMIT 1);
UPDATE users SET nick_name='林一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18126730314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17728560193', 'U17728560193', '早点睡觉', '', '17728560193', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 13:20:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17728560193' LIMIT 1);
UPDATE users SET nick_name='早点睡觉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17728560193';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711210952', 'U13711210952', 'OOO', '', '13711210952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 13:11:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711210952' LIMIT 1);
UPDATE users SET nick_name='OOO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711210952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622346121', 'U15622346121', '暖宝宝', '', '15622346121', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 13:00:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622346121' LIMIT 1);
UPDATE users SET nick_name='暖宝宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622346121';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989087572', 'U15989087572', '阿喵', '', '15989087572', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 10:14:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989087572' LIMIT 1);
UPDATE users SET nick_name='阿喵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989087572';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866693585', 'U19866693585', 'candy', '', '19866693585', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 10:13:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866693585' LIMIT 1);
UPDATE users SET nick_name='candy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19866693585';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060761195', 'U13060761195', 'iii', '', '13060761195', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 10:11:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060761195' LIMIT 1);
UPDATE users SET nick_name='iii', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060761195';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802805060', 'U18802805060', '荆棘鸟', '', '18802805060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 08:15:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802805060' LIMIT 1);
UPDATE users SET nick_name='荆棘鸟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802805060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13908007072', 'U13908007072', '老贺', '', '13908007072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-10 07:13:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13908007072' LIMIT 1);
UPDATE users SET nick_name='老贺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13908007072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915844858', 'U15915844858', 'argu ʚ😍ɞ', '', '15915844858', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 20:39:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915844858' LIMIT 1);
UPDATE users SET nick_name='argu ʚ😍ɞ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915844858';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17677307429', 'U17677307429', '朝夕', '', '17677307429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 19:43:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17677307429' LIMIT 1);
UPDATE users SET nick_name='朝夕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17677307429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726772083', 'U13726772083', 'lessismore', '', '13726772083', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 18:57:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726772083' LIMIT 1);
UPDATE users SET nick_name='lessismore', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726772083';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022839815', 'U18022839815', 'PEIYU', '', '18022839815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 18:22:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022839815' LIMIT 1);
UPDATE users SET nick_name='PEIYU', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022839815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680513131', 'U18680513131', '.. 🤩yyyyyyyy', '', '18680513131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-09-09 17:49:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680513131' LIMIT 1);
UPDATE users SET nick_name='.. 🤩yyyyyyyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18680513131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802055252', 'U18802055252', '芋圆', '', '18802055252', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 16:55:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802055252' LIMIT 1);
UPDATE users SET nick_name='芋圆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18802055252';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926176999', 'U18926176999', '18926176999', '', '18926176999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 16:12:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926176999' LIMIT 1);
UPDATE users SET nick_name='18926176999', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18926176999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18816781368', 'U18816781368', 'Circle_Wong', '', '18816781368', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 15:26:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18816781368' LIMIT 1);
UPDATE users SET nick_name='Circle_Wong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18816781368';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565474627', 'U18565474627', '甜栗', '', '18565474627', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 15:24:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565474627' LIMIT 1);
UPDATE users SET nick_name='甜栗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565474627';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17340540163', 'U17340540163', '风', '', '17340540163', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 15:13:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17340540163' LIMIT 1);
UPDATE users SET nick_name='风', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17340540163';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989060672', 'U15989060672', '雯', '', '15989060672', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 14:21:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989060672' LIMIT 1);
UPDATE users SET nick_name='雯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989060672';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15151830992', 'U15151830992', 'Ziyi', '', '15151830992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 13:23:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15151830992' LIMIT 1);
UPDATE users SET nick_name='Ziyi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15151830992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102601833', 'U18102601833', '18102601833', '', '18102601833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 13:08:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102601833' LIMIT 1);
UPDATE users SET nick_name='18102601833', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102601833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998811968', 'U18998811968', '小明', '', '18998811968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 11:22:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998811968' LIMIT 1);
UPDATE users SET nick_name='小明', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18998811968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920550708', 'U15920550708', '青岚', '', '15920550708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 11:12:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920550708' LIMIT 1);
UPDATE users SET nick_name='青岚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920550708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18575841141', 'U18575841141', 'lliilllillli', '', '18575841141', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-09 10:07:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18575841141' LIMIT 1);
UPDATE users SET nick_name='lliilllillli', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18575841141';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168713931', 'U13168713931', '郭祈志', '', '13168713931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-08 23:10:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168713931' LIMIT 1);
UPDATE users SET nick_name='郭祈志', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13168713931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18229908642', 'U18229908642', 'Mitsu', '', '18229908642', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-08 22:51:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18229908642' LIMIT 1);
UPDATE users SET nick_name='Mitsu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18229908642';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15757407802', 'U15757407802', 'Mitsu', '', '15757407802', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-08 22:37:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15757407802' LIMIT 1);
UPDATE users SET nick_name='Mitsu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15757407802';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13355271370', 'U13355271370', 'Tofosi', '', '13355271370', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-08 22:21:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13355271370' LIMIT 1);
UPDATE users SET nick_name='Tofosi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13355271370';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13723475017', 'U13723475017', 'Lok〰kei', '', '13723475017', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-08 20:28:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13723475017' LIMIT 1);
UPDATE users SET nick_name='Lok〰kei', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13723475017';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15541541921', 'U15541541921', 'Valerie', '', '15541541921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-08 16:53:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15541541921' LIMIT 1);
UPDATE users SET nick_name='Valerie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15541541921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825142574', 'U18825142574', '刘伟川', '', '18825142574', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-08 16:47:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825142574' LIMIT 1);
UPDATE users SET nick_name='刘伟川', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825142574';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19179297518', 'U19179297518', '程大器', '', '19179297518', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-08 16:24:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19179297518' LIMIT 1);
UPDATE users SET nick_name='程大器', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19179297518';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18948394101', 'U18948394101', 'lokk.', '', '18948394101', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-08 16:00:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18948394101' LIMIT 1);
UPDATE users SET nick_name='lokk.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18948394101';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918866789', 'U15918866789', 'zm', '', '15918866789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 589, '2025-09-08 11:30:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918866789' LIMIT 1);
UPDATE users SET nick_name='zm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 589) WHERE phone='15918866789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570244329', 'U13570244329', 'Comi🎊', '', '13570244329', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-08 11:16:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570244329' LIMIT 1);
UPDATE users SET nick_name='Comi🎊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570244329';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923227760', 'U13923227760', '。。。', '', '13923227760', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-08 00:11:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923227760' LIMIT 1);
UPDATE users SET nick_name='。。。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13923227760';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828493523', 'U13828493523', '薏米', '', '13828493523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 20:17:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828493523' LIMIT 1);
UPDATE users SET nick_name='薏米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828493523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19112045317', 'U19112045317', '月亮可更换', '', '19112045317', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 20:07:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19112045317' LIMIT 1);
UPDATE users SET nick_name='月亮可更换', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19112045317';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920095789', 'U15920095789', 'J', '', '15920095789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 19:06:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920095789' LIMIT 1);
UPDATE users SET nick_name='J', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920095789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18858271972', 'U18858271972', 'Kaixiu', '', '18858271972', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 18:56:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18858271972' LIMIT 1);
UPDATE users SET nick_name='Kaixiu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18858271972';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13569644105', 'U13569644105', '尼古拉斯·赵四儿', '', '13569644105', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 16:14:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13569644105' LIMIT 1);
UPDATE users SET nick_name='尼古拉斯·赵四儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13569644105';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17820566650', 'U17820566650', 'Z', '', '17820566650', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 16:10:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17820566650' LIMIT 1);
UPDATE users SET nick_name='Z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17820566650';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430215219', 'U13430215219', '123', '', '13430215219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 15:53:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430215219' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430215219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18142826571', 'U18142826571', 'May', '', '18142826571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 15:32:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18142826571' LIMIT 1);
UPDATE users SET nick_name='May', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18142826571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920388687', 'U15920388687', '15920388687', '', '15920388687', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 14:43:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920388687' LIMIT 1);
UPDATE users SET nick_name='15920388687', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920388687';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18733451160', 'U18733451160', 'ㅤ', '', '18733451160', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 13:49:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18733451160' LIMIT 1);
UPDATE users SET nick_name='ㅤ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18733451160';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202050708', 'U13202050708', 'Tang', '', '13202050708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 13:15:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202050708' LIMIT 1);
UPDATE users SET nick_name='Tang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202050708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13048084755', 'U13048084755', 'K', '', '13048084755', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 12:21:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13048084755' LIMIT 1);
UPDATE users SET nick_name='K', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13048084755';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613049613', 'U18613049613', '🐰蓝大娟', '', '18613049613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-07 08:46:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613049613' LIMIT 1);
UPDATE users SET nick_name='🐰蓝大娟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613049613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520108037', 'U18520108037', 'HO CHIYEUNG😮', '', '18520108037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 18:00:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520108037' LIMIT 1);
UPDATE users SET nick_name='HO CHIYEUNG😮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520108037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924240095', 'U18924240095', '零零柒', '', '18924240095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 17:32:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924240095' LIMIT 1);
UPDATE users SET nick_name='零零柒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924240095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660020107', 'U13660020107', '小平', '', '13660020107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 16:59:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660020107' LIMIT 1);
UPDATE users SET nick_name='小平', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660020107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14749371119', 'U14749371119', 'yuyu', '', '14749371119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 16:48:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14749371119' LIMIT 1);
UPDATE users SET nick_name='yuyu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14749371119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560357887', 'U13560357887', 'DD', '', '13560357887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 15:32:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560357887' LIMIT 1);
UPDATE users SET nick_name='DD', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560357887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18002284905', 'U18002284905', '18002284905', '', '18002284905', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 15:10:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18002284905' LIMIT 1);
UPDATE users SET nick_name='18002284905', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18002284905';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920844776', 'U15920844776', 'IAMVIKI🧸', '', '15920844776', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 14:35:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920844776' LIMIT 1);
UPDATE users SET nick_name='IAMVIKI🧸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920844776';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15848149229', 'U15848149229', '啊粥🥣', '', '15848149229', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 13:55:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15848149229' LIMIT 1);
UPDATE users SET nick_name='啊粥🥣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15848149229';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763380462', 'U13763380462', '李小熊', '', '13763380462', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 12:52:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763380462' LIMIT 1);
UPDATE users SET nick_name='李小熊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763380462';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13695156340', 'U13695156340', 'Novacane', '', '13695156340', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 10:47:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13695156340' LIMIT 1);
UPDATE users SET nick_name='Novacane', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13695156340';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556016081', 'U13556016081', 'Zee', '', '13556016081', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 09:15:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556016081' LIMIT 1);
UPDATE users SET nick_name='Zee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556016081';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588680225', 'U18588680225', '青椒📲', '', '18588680225', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-06 00:00:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588680225' LIMIT 1);
UPDATE users SET nick_name='青椒📲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588680225';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19588877019', 'U19588877019', 'Jacqui', '', '19588877019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 23:09:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19588877019' LIMIT 1);
UPDATE users SET nick_name='Jacqui', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19588877019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250207478', 'U13250207478', '粒粒', '', '13250207478', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 22:42:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250207478' LIMIT 1);
UPDATE users SET nick_name='粒粒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250207478';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13266877883', 'U13266877883', 'la-LINHQ', '', '13266877883', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 20:21:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13266877883' LIMIT 1);
UPDATE users SET nick_name='la-LINHQ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13266877883';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126200435', 'U18126200435', '哆来咪花梭', '', '18126200435', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 20:21:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126200435' LIMIT 1);
UPDATE users SET nick_name='哆来咪花梭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18126200435';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802988995', 'U13802988995', 'Gene. 峰', '', '13802988995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 20:20:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802988995' LIMIT 1);
UPDATE users SET nick_name='Gene. 峰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802988995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632277413', 'U13632277413', '13632277413', '', '13632277413', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 18:39:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632277413' LIMIT 1);
UPDATE users SET nick_name='13632277413', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632277413';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15802030139', 'U15802030139', 'yolanda', '', '15802030139', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 18:38:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15802030139' LIMIT 1);
UPDATE users SET nick_name='yolanda', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15802030139';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920100302', 'U15920100302', '李', '', '15920100302', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 17:26:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920100302' LIMIT 1);
UPDATE users SET nick_name='李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920100302';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719176985', 'U13719176985', '小K今天写bug了么（没写版）', '', '13719176985', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 16:46:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719176985' LIMIT 1);
UPDATE users SET nick_name='小K今天写bug了么（没写版）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719176985';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826062013', 'U13826062013', 'hugo hu', '', '13826062013', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 16:25:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826062013' LIMIT 1);
UPDATE users SET nick_name='hugo hu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826062013';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928957111', 'U18928957111', 'Tracy Lee', '', '18928957111', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 15:32:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928957111' LIMIT 1);
UPDATE users SET nick_name='Tracy Lee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928957111';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565252807', 'U18565252807', 'Edita林', '', '18565252807', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 14:51:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565252807' LIMIT 1);
UPDATE users SET nick_name='Edita林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565252807';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876550180', 'U15876550180', 'Germany', '', '15876550180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 14:32:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876550180' LIMIT 1);
UPDATE users SET nick_name='Germany', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876550180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688485780', 'U18688485780', 'pattytian', '', '18688485780', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 14:16:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688485780' LIMIT 1);
UPDATE users SET nick_name='pattytian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688485780';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928861680', 'U18928861680', 'Leslie', '', '18928861680', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 13:53:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928861680' LIMIT 1);
UPDATE users SET nick_name='Leslie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928861680';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825144210', 'U13825144210', 'momo', '', '13825144210', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 12:58:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825144210' LIMIT 1);
UPDATE users SET nick_name='momo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825144210';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13244823468', 'U13244823468', 'Joy', '', '13244823468', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 40, '2025-09-05 11:07:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13244823468' LIMIT 1);
UPDATE users SET nick_name='Joy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 40) WHERE phone='13244823468';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760723086', 'U13760723086', 'Breeze', '', '13760723086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 10:01:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760723086' LIMIT 1);
UPDATE users SET nick_name='Breeze', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760723086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19865866464', 'U19865866464', 'ଉ', '', '19865866464', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 09:16:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19865866464' LIMIT 1);
UPDATE users SET nick_name='ଉ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19865866464';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688446469', 'U18688446469', 'Susan', '', '18688446469', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-05 08:12:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688446469' LIMIT 1);
UPDATE users SET nick_name='Susan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688446469';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15201653868', 'U15201653868', '于芮苏', '', '15201653868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-09-04 22:01:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15201653868' LIMIT 1);
UPDATE users SET nick_name='于芮苏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15201653868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915947929', 'U15915947929', '彬', '', '15915947929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 20:36:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915947929' LIMIT 1);
UPDATE users SET nick_name='彬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915947929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688483510', 'U18688483510', '18688483510', '', '18688483510', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 19:07:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688483510' LIMIT 1);
UPDATE users SET nick_name='18688483510', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688483510';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502038908', 'U18502038908', '潇郡主', '', '18502038908', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 18:28:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502038908' LIMIT 1);
UPDATE users SET nick_name='潇郡主', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18502038908';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632392183', 'U13632392183', '13632392183', '', '13632392183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 17:36:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632392183' LIMIT 1);
UPDATE users SET nick_name='13632392183', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632392183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148904994', 'U13148904994', '🐟直接点', '', '13148904994', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 14:36:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148904994' LIMIT 1);
UPDATE users SET nick_name='🐟直接点', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13148904994';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18526871009', 'U18526871009', '永不言败🇨🇳', '', '18526871009', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 14:30:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18526871009' LIMIT 1);
UPDATE users SET nick_name='永不言败🇨🇳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18526871009';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922743015', 'U18922743015', 'Angel', '', '18922743015', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 14:28:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922743015' LIMIT 1);
UPDATE users SET nick_name='Angel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922743015';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688281200', 'U18688281200', '轻而易举的杨杨', '', '18688281200', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2025-09-04 14:22:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688281200' LIMIT 1);
UPDATE users SET nick_name='轻而易举的杨杨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='18688281200';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570551416', 'U13570551416', '💋 Kerry', '', '13570551416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 14:18:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570551416' LIMIT 1);
UPDATE users SET nick_name='💋 Kerry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570551416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15929800931', 'U15929800931', 'ʚɞ', '', '15929800931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 14:11:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15929800931' LIMIT 1);
UPDATE users SET nick_name='ʚɞ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15929800931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626452212', 'U15626452212', '薯条🍟', '', '15626452212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 12:53:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626452212' LIMIT 1);
UPDATE users SET nick_name='薯条🍟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626452212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924778806', 'U19924778806', 'Sheenagh', '', '19924778806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 12:48:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924778806' LIMIT 1);
UPDATE users SET nick_name='Sheenagh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924778806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680511131', 'U18680511131', '千喜🎀', '', '18680511131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 11:06:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680511131' LIMIT 1);
UPDATE users SET nick_name='千喜🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680511131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726854427', 'U13726854427', 'ww', '', '13726854427', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-04 08:48:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726854427' LIMIT 1);
UPDATE users SET nick_name='ww', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726854427';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620924429', 'U18620924429', '胜', '', '18620924429', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 23:31:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620924429' LIMIT 1);
UPDATE users SET nick_name='胜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620924429';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588735887', 'U18588735887', '静欣🐰Adriana', '', '18588735887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 48, '2025-09-03 22:57:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588735887' LIMIT 1);
UPDATE users SET nick_name='静欣🐰Adriana', balance=GREATEST(balance, 0.00), points=GREATEST(points, 48) WHERE phone='18588735887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825205563', 'U13825205563', '梁', '', '13825205563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 19:51:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825205563' LIMIT 1);
UPDATE users SET nick_name='梁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825205563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18171982022', 'U18171982022', 'yuchen🍊', '', '18171982022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 19:32:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18171982022' LIMIT 1);
UPDATE users SET nick_name='yuchen🍊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18171982022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533284816', 'U13533284816', '～', '', '13533284816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 19:30:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533284816' LIMIT 1);
UPDATE users SET nick_name='～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533284816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726774426', 'U13726774426', '睇住时间返之九点妹仔', '', '13726774426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 16:40:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726774426' LIMIT 1);
UPDATE users SET nick_name='睇住时间返之九点妹仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726774426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989963644', 'U15989963644', 'Y', '', '15989963644', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 16:13:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989963644' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989963644';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13538944467', 'U13538944467', '小意', '', '13538944467', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 16:04:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13538944467' LIMIT 1);
UPDATE users SET nick_name='小意', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13538944467';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640335788', 'U13640335788', '申', '', '13640335788', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2025-09-03 15:35:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640335788' LIMIT 1);
UPDATE users SET nick_name='申', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13640335788';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725167268', 'U13725167268', 'june', '', '13725167268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 13:16:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725167268' LIMIT 1);
UPDATE users SET nick_name='june', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725167268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19874006401', 'U19874006401', '19874006401', '', '19874006401', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 13:09:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19874006401' LIMIT 1);
UPDATE users SET nick_name='19874006401', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19874006401';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027617203', 'U18027617203', '🐑', '', '18027617203', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 12:46:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027617203' LIMIT 1);
UPDATE users SET nick_name='🐑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027617203';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560131622', 'U13560131622', 'BanBan', '', '13560131622', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 11:53:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560131622' LIMIT 1);
UPDATE users SET nick_name='BanBan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560131622';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15624965399', 'U15624965399', 'Zoe', '', '15624965399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 11:06:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15624965399' LIMIT 1);
UPDATE users SET nick_name='Zoe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15624965399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18003721701', 'U18003721701', '何梧葫', '', '18003721701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 10:53:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18003721701' LIMIT 1);
UPDATE users SET nick_name='何梧葫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18003721701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17875304895', 'U17875304895', '小美', '', '17875304895', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 10:51:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17875304895' LIMIT 1);
UPDATE users SET nick_name='小美', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17875304895';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626101859', 'U15626101859', '小原冬子', '', '15626101859', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 09:24:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626101859' LIMIT 1);
UPDATE users SET nick_name='小原冬子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626101859';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13823194584', 'U13823194584', '锦鲤', '', '13823194584', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-03 09:09:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13823194584' LIMIT 1);
UPDATE users SET nick_name='锦鲤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13823194584';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650094488', 'U13650094488', 'pp', '', '13650094488', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 20:40:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650094488' LIMIT 1);
UPDATE users SET nick_name='pp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13650094488';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202085449', 'U15202085449', 'siko', '', '15202085449', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 17:58:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202085449' LIMIT 1);
UPDATE users SET nick_name='siko', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15202085449';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19282039173', 'U19282039173', 'yan', '', '19282039173', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 17:55:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19282039173' LIMIT 1);
UPDATE users SET nick_name='yan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19282039173';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642776300', 'U13642776300', 'LORRAINE-🥑', '', '13642776300', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 17:27:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642776300' LIMIT 1);
UPDATE users SET nick_name='LORRAINE-🥑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642776300';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022880338', 'U18022880338', '18022880338', '', '18022880338', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 17:25:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022880338' LIMIT 1);
UPDATE users SET nick_name='18022880338', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022880338';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13112008564', 'U13112008564', 'fff', '', '13112008564', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 16:44:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13112008564' LIMIT 1);
UPDATE users SET nick_name='fff', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13112008564';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17688497273', 'U17688497273', '吳紀德', '', '17688497273', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 16:17:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17688497273' LIMIT 1);
UPDATE users SET nick_name='吳紀德', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17688497273';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450450498', 'U13450450498', 'Shadow', '', '13450450498', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 15:13:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450450498' LIMIT 1);
UPDATE users SET nick_name='Shadow', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450450498';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17375688224', 'U17375688224', '嘉平拾柒', '', '17375688224', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 14:55:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17375688224' LIMIT 1);
UPDATE users SET nick_name='嘉平拾柒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17375688224';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15817090155', 'U15817090155', '苏白', '', '15817090155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 14:50:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15817090155' LIMIT 1);
UPDATE users SET nick_name='苏白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15817090155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725985575', 'U13725985575', '阿虫', '', '13725985575', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 13:01:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725985575' LIMIT 1);
UPDATE users SET nick_name='阿虫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725985575';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613120524', 'U18613120524', 'Ccᶜ', '', '18613120524', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 12:52:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613120524' LIMIT 1);
UPDATE users SET nick_name='Ccᶜ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613120524';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322284707', 'U15322284707', '吉吉', '', '15322284707', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2025-09-02 12:33:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322284707' LIMIT 1);
UPDATE users SET nick_name='吉吉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='15322284707';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102726434', 'U18102726434', '路人甲', '', '18102726434', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 12:20:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102726434' LIMIT 1);
UPDATE users SET nick_name='路人甲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102726434';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13752657971', 'U13752657971', '铎', '', '13752657971', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 11:30:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13752657971' LIMIT 1);
UPDATE users SET nick_name='铎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13752657971';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17097574444', 'U17097574444', '又菜又爱玩', '', '17097574444', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 11:16:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17097574444' LIMIT 1);
UPDATE users SET nick_name='又菜又爱玩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17097574444';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602018952', 'U18602018952', 'Eee蚊', '', '18602018952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-02 10:50:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602018952' LIMIT 1);
UPDATE users SET nick_name='Eee蚊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602018952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13421747112', 'U13421747112', '', '', '13421747112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 600, '2025-09-02 10:31:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13421747112' LIMIT 1);
UPDATE users SET nick_name='', balance=GREATEST(balance, 0.00), points=GREATEST(points, 600) WHERE phone='13421747112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18810599315', 'U18810599315', 'karl', '', '18810599315', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 22:35:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18810599315' LIMIT 1);
UPDATE users SET nick_name='karl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18810599315';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502241437', 'U18502241437', '喔唷', '', '18502241437', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 22:28:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502241437' LIMIT 1);
UPDATE users SET nick_name='喔唷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18502241437';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622774099', 'U15622774099', 'GG棒', '', '15622774099', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 20:40:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622774099' LIMIT 1);
UPDATE users SET nick_name='GG棒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622774099';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925026287', 'U13925026287', '🐬乌嘴豆豆', '', '13925026287', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 20:38:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925026287' LIMIT 1);
UPDATE users SET nick_name='🐬乌嘴豆豆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925026287';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15089655170', 'U15089655170', '15089655170', '', '15089655170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 19:08:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15089655170' LIMIT 1);
UPDATE users SET nick_name='15089655170', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15089655170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19731197164', 'U19731197164', 'Rollo Tomasi', '', '19731197164', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 18:38:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19731197164' LIMIT 1);
UPDATE users SET nick_name='Rollo Tomasi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19731197164';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688898783', 'U18688898783', '慧琳', '', '18688898783', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 15:01:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688898783' LIMIT 1);
UPDATE users SET nick_name='慧琳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688898783';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560231564', 'U13560231564', 'Inga', '', '13560231564', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 14:35:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560231564' LIMIT 1);
UPDATE users SET nick_name='Inga', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560231564';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13281077173', 'U13281077173', '13281077173', '', '13281077173', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 14:31:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13281077173' LIMIT 1);
UPDATE users SET nick_name='13281077173', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13281077173';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578743307', 'U18578743307', '-Karina 嘉怡', '', '18578743307', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 14:19:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578743307' LIMIT 1);
UPDATE users SET nick_name='-Karina 嘉怡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578743307';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122398666', 'U18122398666', 'Maggie', '', '18122398666', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 13:05:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122398666' LIMIT 1);
UPDATE users SET nick_name='Maggie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122398666';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13110055863', 'U13110055863', '天津企业服务集成商王宗欢', '', '13110055863', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 09:29:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13110055863' LIMIT 1);
UPDATE users SET nick_name='天津企业服务集成商王宗欢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13110055863';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924857328', 'U13924857328', '一行', '', '13924857328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-09-01 09:06:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924857328' LIMIT 1);
UPDATE users SET nick_name='一行', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924857328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19511430436', 'U19511430436', '人类瑰宝小李🥳', '', '19511430436', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 23:05:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19511430436' LIMIT 1);
UPDATE users SET nick_name='人类瑰宝小李🥳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19511430436';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503019311', 'U13503019311', 'lj', '', '13503019311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 23:03:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503019311' LIMIT 1);
UPDATE users SET nick_name='lj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503019311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697410563', 'U13697410563', 'sunnielam', '', '13697410563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 22:58:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697410563' LIMIT 1);
UPDATE users SET nick_name='sunnielam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697410563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622205387', 'U15622205387', 'HOSIQI', '', '15622205387', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 22:28:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622205387' LIMIT 1);
UPDATE users SET nick_name='HOSIQI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622205387';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422132286', 'U13422132286', 'Joan👑', '', '13422132286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 21:49:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422132286' LIMIT 1);
UPDATE users SET nick_name='Joan👑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422132286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19987707891', 'U19987707891', '19987707891', '', '19987707891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 20:29:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19987707891' LIMIT 1);
UPDATE users SET nick_name='19987707891', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19987707891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13192958005', 'U13192958005', '要去看节气', '', '13192958005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 20:00:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13192958005' LIMIT 1);
UPDATE users SET nick_name='要去看节气', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13192958005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602827505', 'U13602827505', 'winnie', '', '13602827505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 17:44:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602827505' LIMIT 1);
UPDATE users SET nick_name='winnie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602827505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17612001286', 'U17612001286', '毛海鹏', '', '17612001286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 17:36:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17612001286' LIMIT 1);
UPDATE users SET nick_name='毛海鹏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17612001286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825077352', 'U18825077352', '黄开心🌸', '', '18825077352', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 17:22:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825077352' LIMIT 1);
UPDATE users SET nick_name='黄开心🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825077352';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829730517', 'U13829730517', '格瓦拉', '', '13829730517', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 17:19:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829730517' LIMIT 1);
UPDATE users SET nick_name='格瓦拉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829730517';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533360179', 'U13533360179', '淡菊', '', '13533360179', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 16:49:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533360179' LIMIT 1);
UPDATE users SET nick_name='淡菊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533360179';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18475741701', 'U18475741701', '🌙', '', '18475741701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 16:40:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18475741701' LIMIT 1);
UPDATE users SET nick_name='🌙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18475741701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580558503', 'U13580558503', 'Vincent', '', '13580558503', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 149, '2025-08-31 16:12:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580558503' LIMIT 1);
UPDATE users SET nick_name='Vincent', balance=GREATEST(balance, 0.00), points=GREATEST(points, 149) WHERE phone='13580558503';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13016038525', 'U13016038525', '聪', '', '13016038525', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 16:12:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13016038525' LIMIT 1);
UPDATE users SET nick_name='聪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13016038525';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13690028257', 'U13690028257', '七欧西红柿', '', '13690028257', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 15:56:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13690028257' LIMIT 1);
UPDATE users SET nick_name='七欧西红柿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13690028257';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13067765547', 'U13067765547', '北北啊', '', '13067765547', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 15:51:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13067765547' LIMIT 1);
UPDATE users SET nick_name='北北啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13067765547';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15674386099', 'U15674386099', '再见  你好', '', '15674386099', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 15:31:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15674386099' LIMIT 1);
UPDATE users SET nick_name='再见  你好', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15674386099';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535061622', 'U13535061622', 'Aqqr+y', '', '13535061622', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 15:06:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535061622' LIMIT 1);
UPDATE users SET nick_name='Aqqr+y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535061622';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820001660', 'U18820001660', 'Leo', '', '18820001660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 14:36:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820001660' LIMIT 1);
UPDATE users SET nick_name='Leo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820001660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682245826', 'U13682245826', 'A.yoyooochan👶', '', '13682245826', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 14:27:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682245826' LIMIT 1);
UPDATE users SET nick_name='A.yoyooochan👶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13682245826';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13906506172', 'U13906506172', '韦恩', '', '13906506172', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 13:48:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13906506172' LIMIT 1);
UPDATE users SET nick_name='韦恩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13906506172';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113373212', 'U15113373212', 'Leonard', '', '15113373212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 13:25:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113373212' LIMIT 1);
UPDATE users SET nick_name='Leonard', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113373212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600059119', 'U13600059119', '冯小莹', '', '13600059119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-08-31 13:06:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600059119' LIMIT 1);
UPDATE users SET nick_name='冯小莹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13600059119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17722138896', 'U17722138896', 'Ann', '', '17722138896', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 13:02:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17722138896' LIMIT 1);
UPDATE users SET nick_name='Ann', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17722138896';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322549858', 'U17322549858', '张', '', '17322549858', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 13:00:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322549858' LIMIT 1);
UPDATE users SET nick_name='张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322549858';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15600465723', 'U15600465723', '不爱不打网球', '', '15600465723', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 12:38:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15600465723' LIMIT 1);
UPDATE users SET nick_name='不爱不打网球', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15600465723';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719488351', 'U13719488351', 'Ernest🦭', '', '13719488351', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 12:19:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719488351' LIMIT 1);
UPDATE users SET nick_name='Ernest🦭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719488351';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13016001141', 'U13016001141', '天气晴', '', '13016001141', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 69, '2025-08-31 11:49:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13016001141' LIMIT 1);
UPDATE users SET nick_name='天气晴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 69) WHERE phone='13016001141';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626111510', 'U15626111510', 'Kit', '', '15626111510', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 11:15:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626111510' LIMIT 1);
UPDATE users SET nick_name='Kit', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626111510';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18938409201', 'U18938409201', 'Vivi K.', '', '18938409201', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 10:38:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18938409201' LIMIT 1);
UPDATE users SET nick_name='Vivi K.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18938409201';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15007621111', 'U15007621111', '徐然', '', '15007621111', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 10:35:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15007621111' LIMIT 1);
UPDATE users SET nick_name='徐然', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15007621111';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15565511167', 'U15565511167', '如是我闻', '', '15565511167', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-31 10:30:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15565511167' LIMIT 1);
UPDATE users SET nick_name='如是我闻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15565511167';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15704694098', 'U15704694098', '红果果', '', '15704694098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 23:58:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15704694098' LIMIT 1);
UPDATE users SET nick_name='红果果', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15704694098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570351927', 'U13570351927', '111', '', '13570351927', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 20:10:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570351927' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570351927';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16626400451', 'U16626400451', '后青春', '', '16626400451', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 19:37:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16626400451' LIMIT 1);
UPDATE users SET nick_name='后青春', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16626400451';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813790490', 'U15813790490', 'Jessie Ning', '', '15813790490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 19:24:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813790490' LIMIT 1);
UPDATE users SET nick_name='Jessie Ning', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813790490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902084240', 'U15902084240', 'Alex Wang', '', '15902084240', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 19:23:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902084240' LIMIT 1);
UPDATE users SET nick_name='Alex Wang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902084240';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565256601', 'U18565256601', '潜伏', '', '18565256601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 19:09:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565256601' LIMIT 1);
UPDATE users SET nick_name='潜伏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565256601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433583097', 'U13433583097', 'Bonny', '', '13433583097', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 19:08:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433583097' LIMIT 1);
UPDATE users SET nick_name='Bonny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433583097';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265355604', 'U13265355604', '13265355604', '', '13265355604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 17:54:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265355604' LIMIT 1);
UPDATE users SET nick_name='13265355604', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265355604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922249416', 'U13922249416', '汤小圆', '', '13922249416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 48, '2025-08-30 17:47:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922249416' LIMIT 1);
UPDATE users SET nick_name='汤小圆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 48) WHERE phone='13922249416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13809204078', 'U13809204078', '凯', '', '13809204078', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 16:51:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13809204078' LIMIT 1);
UPDATE users SET nick_name='凯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13809204078';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17324326690', 'U17324326690', '1', '', '17324326690', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 16:34:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17324326690' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17324326690';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627283269', 'U15627283269', 'Mr.璋', '', '15627283269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 16:24:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627283269' LIMIT 1);
UPDATE users SET nick_name='Mr.璋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627283269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13379827171', 'U13379827171', '徐嘉敏', '', '13379827171', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 16:13:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13379827171' LIMIT 1);
UPDATE users SET nick_name='徐嘉敏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13379827171';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13312801533', 'U13312801533', '泰然', '', '13312801533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 16:03:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13312801533' LIMIT 1);
UPDATE users SET nick_name='泰然', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13312801533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15019713251', 'U15019713251', '乄', '', '15019713251', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 16:03:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15019713251' LIMIT 1);
UPDATE users SET nick_name='乄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15019713251';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15766793433', 'U15766793433', '小肉球🧸', '', '15766793433', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 16:00:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15766793433' LIMIT 1);
UPDATE users SET nick_name='小肉球🧸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15766793433';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928286089', 'U13928286089', 'Adrian', '', '13928286089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-08-30 15:04:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928286089' LIMIT 1);
UPDATE users SET nick_name='Adrian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13928286089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580407070', 'U13580407070', '范范yen', '', '13580407070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 14:55:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580407070' LIMIT 1);
UPDATE users SET nick_name='范范yen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580407070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602324273', 'U15602324273', '罗小小草', '', '15602324273', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 14:55:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602324273' LIMIT 1);
UPDATE users SET nick_name='罗小小草', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602324273';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620678347', 'U18620678347', 'Liiiii', '', '18620678347', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 657, '2025-08-30 14:50:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620678347' LIMIT 1);
UPDATE users SET nick_name='Liiiii', balance=GREATEST(balance, 0.00), points=GREATEST(points, 657) WHERE phone='18620678347';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924095986', 'U18924095986', '杨森', '', '18924095986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 14:35:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924095986' LIMIT 1);
UPDATE users SET nick_name='杨森', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924095986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15210012679', 'U15210012679', 'Zoe', '', '15210012679', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2025-08-30 13:43:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15210012679' LIMIT 1);
UPDATE users SET nick_name='Zoe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='15210012679';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15298388220', 'U15298388220', 'Chuck', '', '15298388220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 12:21:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15298388220' LIMIT 1);
UPDATE users SET nick_name='Chuck', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15298388220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17764089803', 'U17764089803', '多读书多看报多吃青菜多睡觉', '', '17764089803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 12:21:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17764089803' LIMIT 1);
UPDATE users SET nick_name='多读书多看报多吃青菜多睡觉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17764089803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17645627681', 'U17645627681', '樱木', '', '17645627681', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 12:19:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17645627681' LIMIT 1);
UPDATE users SET nick_name='樱木', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17645627681';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15219164422', 'U15219164422', 'Claire Z🐽', '', '15219164422', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 12:15:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15219164422' LIMIT 1);
UPDATE users SET nick_name='Claire Z🐽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15219164422';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18029948317', 'U18029948317', 'Noodless.', '', '18029948317', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 11:55:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18029948317' LIMIT 1);
UPDATE users SET nick_name='Noodless.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18029948317';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627187515', 'U15627187515', '15627187515', '', '15627187515', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 11:52:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627187515' LIMIT 1);
UPDATE users SET nick_name='15627187515', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627187515';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802941090', 'U13802941090', '渊崽', '', '13802941090', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-08-30 11:17:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802941090' LIMIT 1);
UPDATE users SET nick_name='渊崽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13802941090';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665169112', 'U17665169112', 'Jeff', '', '17665169112', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 10:59:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665169112' LIMIT 1);
UPDATE users SET nick_name='Jeff', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665169112';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13471040917', 'U13471040917', '6._111111', '', '13471040917', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 10:54:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13471040917' LIMIT 1);
UPDATE users SET nick_name='6._111111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13471040917';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917277833', 'U15917277833', 'C', '', '15917277833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 10:11:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917277833' LIMIT 1);
UPDATE users SET nick_name='C', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917277833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322005912', 'U15322005912', '罗密欧', '', '15322005912', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 10:05:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322005912' LIMIT 1);
UPDATE users SET nick_name='罗密欧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15322005912';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640281032', 'U13640281032', '13640281032', '', '13640281032', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 10:04:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640281032' LIMIT 1);
UPDATE users SET nick_name='13640281032', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640281032';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17740963513', 'U17740963513', '萌子', '', '17740963513', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 09:29:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17740963513' LIMIT 1);
UPDATE users SET nick_name='萌子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17740963513';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626001992', 'U15626001992', '李海豚🐬', '', '15626001992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 09:05:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626001992' LIMIT 1);
UPDATE users SET nick_name='李海豚🐬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626001992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826175785', 'U13826175785', '王生', '', '13826175785', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-08-30 08:39:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826175785' LIMIT 1);
UPDATE users SET nick_name='王生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13826175785';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19978068042', 'U19978068042', '鹿のH', '', '19978068042', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-30 04:46:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19978068042' LIMIT 1);
UPDATE users SET nick_name='鹿のH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19978068042';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320775613', 'U18320775613', '林静雅', '', '18320775613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-08-29 22:30:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320775613' LIMIT 1);
UPDATE users SET nick_name='林静雅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='18320775613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503003578', 'U13503003578', 'Bally', '', '13503003578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-29 21:30:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503003578' LIMIT 1);
UPDATE users SET nick_name='Bally', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503003578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924008877', 'U13924008877', '龟龟👻', '', '13924008877', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-29 21:18:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924008877' LIMIT 1);
UPDATE users SET nick_name='龟龟👻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924008877';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919333038', 'U15919333038', 'ice💦', '', '15919333038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-29 20:59:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919333038' LIMIT 1);
UPDATE users SET nick_name='ice💦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919333038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250740320', 'U13250740320', 'uu', '', '13250740320', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-29 20:11:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250740320' LIMIT 1);
UPDATE users SET nick_name='uu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250740320';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719553382', 'U13719553382', 'Sonia', '', '13719553382', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-29 18:43:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719553382' LIMIT 1);
UPDATE users SET nick_name='Sonia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719553382';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818169150', 'U15818169150', '漫鱼', '', '15818169150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-29 16:05:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818169150' LIMIT 1);
UPDATE users SET nick_name='漫鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15818169150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915401560', 'U15915401560', 'Jelly Bean', '', '15915401560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-29 15:29:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915401560' LIMIT 1);
UPDATE users SET nick_name='Jelly Bean', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915401560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760264766', 'U13760264766', 'ꪶꪗᥴ .🌿', '', '13760264766', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-29 14:01:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760264766' LIMIT 1);
UPDATE users SET nick_name='ꪶꪗᥴ .🌿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760264766';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19925471298', 'U19925471298', '19925471298', '', '19925471298', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-29 13:40:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19925471298' LIMIT 1);
UPDATE users SET nick_name='19925471298', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19925471298';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660445612', 'U13660445612', '13660445612', '', '13660445612', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-29 13:15:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660445612' LIMIT 1);
UPDATE users SET nick_name='13660445612', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660445612';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917409557', 'U15917409557', 'Nana.,🌻', '', '15917409557', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-29 00:20:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917409557' LIMIT 1);
UPDATE users SET nick_name='Nana.,🌻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917409557';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924127836', 'U18924127836', '静_KONG🦄', '', '18924127836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-28 22:07:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924127836' LIMIT 1);
UPDATE users SET nick_name='静_KONG🦄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924127836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760784349', 'U13760784349', '13760784349', '', '13760784349', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-28 19:35:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760784349' LIMIT 1);
UPDATE users SET nick_name='13760784349', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760784349';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320182847', 'U18320182847', '小猪豆包', '', '18320182847', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-28 17:12:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320182847' LIMIT 1);
UPDATE users SET nick_name='小猪豆包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320182847';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18164450731', 'U18164450731', '李林峰', '', '18164450731', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-28 16:07:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18164450731' LIMIT 1);
UPDATE users SET nick_name='李林峰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18164450731';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202192199', 'U13202192199', '野原新之助', '', '13202192199', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-28 15:41:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202192199' LIMIT 1);
UPDATE users SET nick_name='野原新之助', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202192199';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15360599689', 'U15360599689', '。', '', '15360599689', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-28 15:37:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15360599689' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15360599689';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15016456783', 'U15016456783', '格仔.', '', '15016456783', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-28 15:37:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15016456783' LIMIT 1);
UPDATE users SET nick_name='格仔.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15016456783';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13670279908', 'U13670279908', '13670279908', '', '13670279908', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-28 14:52:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13670279908' LIMIT 1);
UPDATE users SET nick_name='13670279908', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13670279908';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13032300334', 'U13032300334', 'Elio', '', '13032300334', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-28 14:33:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13032300334' LIMIT 1);
UPDATE users SET nick_name='Elio', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13032300334';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798046021', 'U13798046021', '猫头樱', '', '13798046021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-28 11:56:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798046021' LIMIT 1);
UPDATE users SET nick_name='猫头樱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798046021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825081930', 'U13825081930', 'ruoyu', '', '13825081930', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-08-28 11:12:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825081930' LIMIT 1);
UPDATE users SET nick_name='ruoyu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13825081930';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902020250', 'U15902020250', '梁颖欣', '', '15902020250', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-27 20:40:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902020250' LIMIT 1);
UPDATE users SET nick_name='梁颖欣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902020250';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17724519664', 'U17724519664', 'luke', '', '17724519664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-27 18:38:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17724519664' LIMIT 1);
UPDATE users SET nick_name='luke', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17724519664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15940104373', 'U15940104373', '舟舟', '', '15940104373', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-27 18:18:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15940104373' LIMIT 1);
UPDATE users SET nick_name='舟舟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15940104373';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13244826208', 'U13244826208', '.', '', '13244826208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-27 17:34:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13244826208' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13244826208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989165879', 'U15989165879', 'ZLY', '', '15989165879', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-27 17:00:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989165879' LIMIT 1);
UPDATE users SET nick_name='ZLY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989165879';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15689467231', 'U15689467231', 'Leyden Jar', '', '15689467231', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-27 16:14:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15689467231' LIMIT 1);
UPDATE users SET nick_name='Leyden Jar', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15689467231';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13534069915', 'U13534069915', 'k', '', '13534069915', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-27 16:01:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13534069915' LIMIT 1);
UPDATE users SET nick_name='k', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13534069915';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011740350', 'U18011740350', 'Dream Catcher', '', '18011740350', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-27 13:25:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011740350' LIMIT 1);
UPDATE users SET nick_name='Dream Catcher', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011740350';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288821764', 'U13288821764', '清', '', '13288821764', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-27 12:23:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288821764' LIMIT 1);
UPDATE users SET nick_name='清', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288821764';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18054971208', 'U18054971208', '鲨鱼🦈', '', '18054971208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-27 12:12:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18054971208' LIMIT 1);
UPDATE users SET nick_name='鲨鱼🦈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18054971208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15570793087', 'U15570793087', '15570793087', '', '15570793087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-26 20:07:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15570793087' LIMIT 1);
UPDATE users SET nick_name='15570793087', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15570793087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829751930', 'U13829751930', '悦', '', '13829751930', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-26 20:01:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829751930' LIMIT 1);
UPDATE users SET nick_name='悦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829751930';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613012828', 'U18613012828', 'KNCLAM💎', '', '18613012828', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-26 18:23:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613012828' LIMIT 1);
UPDATE users SET nick_name='KNCLAM💎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613012828';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422378734', 'U13422378734', 'icyiuu^', '', '13422378734', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-26 16:47:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422378734' LIMIT 1);
UPDATE users SET nick_name='icyiuu^', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422378734';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925114098', 'U18925114098', '煜溯', '', '18925114098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-26 15:16:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925114098' LIMIT 1);
UPDATE users SET nick_name='煜溯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925114098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625069802', 'U15625069802', '曾头', '', '15625069802', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-26 15:12:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625069802' LIMIT 1);
UPDATE users SET nick_name='曾头', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625069802';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18611349988', 'U18611349988', '瀚威Hanson', '', '18611349988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-26 15:09:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18611349988' LIMIT 1);
UPDATE users SET nick_name='瀚威Hanson', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18611349988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808814660', 'U13808814660', 'A阿里巴巴张伟强13808814660', '', '13808814660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-26 11:05:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808814660' LIMIT 1);
UPDATE users SET nick_name='A阿里巴巴张伟强13808814660', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808814660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609789410', 'U13609789410', '蜡笔小欣', '', '13609789410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-26 10:29:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609789410' LIMIT 1);
UPDATE users SET nick_name='蜡笔小欣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609789410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19878899817', 'U19878899817', 'Lingo郑', '', '19878899817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-26 09:09:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19878899817' LIMIT 1);
UPDATE users SET nick_name='Lingo郑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19878899817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711520053', 'U13711520053', 'Siuchingtam', '', '13711520053', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-08-25 20:28:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711520053' LIMIT 1);
UPDATE users SET nick_name='Siuchingtam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13711520053';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126786225', 'U18126786225', 'JYK', '', '18126786225', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-25 20:19:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126786225' LIMIT 1);
UPDATE users SET nick_name='JYK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18126786225';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19200244771', 'U19200244771', 'jo', '', '19200244771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-25 19:50:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19200244771' LIMIT 1);
UPDATE users SET nick_name='jo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19200244771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13906506643', 'U13906506643', '13906506643', '', '13906506643', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-25 17:35:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13906506643' LIMIT 1);
UPDATE users SET nick_name='13906506643', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13906506643';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15603013332', 'U15603013332', 'BanBan', '', '15603013332', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-25 17:09:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15603013332' LIMIT 1);
UPDATE users SET nick_name='BanBan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15603013332';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302046418', 'U18302046418', 'Joséphine', '', '18302046418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-25 16:54:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302046418' LIMIT 1);
UPDATE users SET nick_name='Joséphine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18302046418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19875480708', 'U19875480708', '头像是范范', '', '19875480708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-25 13:59:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19875480708' LIMIT 1);
UPDATE users SET nick_name='头像是范范', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19875480708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560255228', 'U13560255228', '山羊', '', '13560255228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-25 13:21:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560255228' LIMIT 1);
UPDATE users SET nick_name='山羊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560255228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814143129', 'U18814143129', 'Jessie', '', '18814143129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-25 12:38:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814143129' LIMIT 1);
UPDATE users SET nick_name='Jessie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814143129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925761113', 'U13925761113', '唐生', '', '13925761113', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 21:25:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925761113' LIMIT 1);
UPDATE users SET nick_name='唐生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925761113';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19918756997', 'U19918756997', 'Big Li', '', '19918756997', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 20:55:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19918756997' LIMIT 1);
UPDATE users SET nick_name='Big Li', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19918756997';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18646535583', 'U18646535583', '18646535583', '', '18646535583', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 18:05:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18646535583' LIMIT 1);
UPDATE users SET nick_name='18646535583', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18646535583';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18098199623', 'U18098199623', '18098199623', '', '18098199623', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 17:57:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18098199623' LIMIT 1);
UPDATE users SET nick_name='18098199623', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18098199623';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202106075', 'U13202106075', 'FF', '', '13202106075', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 16:37:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202106075' LIMIT 1);
UPDATE users SET nick_name='FF', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202106075';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876347348', 'U17876347348', 'LL', '', '17876347348', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 16:35:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876347348' LIMIT 1);
UPDATE users SET nick_name='LL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876347348';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19868571175', 'U19868571175', '。', '', '19868571175', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 16:30:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19868571175' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19868571175';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18179975005', 'U18179975005', 'sphynxz', '', '18179975005', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 15:35:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18179975005' LIMIT 1);
UPDATE users SET nick_name='sphynxz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18179975005';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15285169039', 'U15285169039', 'Zeoleen Lee💫', '', '15285169039', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 13:47:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15285169039' LIMIT 1);
UPDATE users SET nick_name='Zeoleen Lee💫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15285169039';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620028064', 'U18620028064', '每天都在掉头发', '', '18620028064', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 13:45:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620028064' LIMIT 1);
UPDATE users SET nick_name='每天都在掉头发', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620028064';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763324375', 'U13763324375', 'chloe', '', '13763324375', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 13:18:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763324375' LIMIT 1);
UPDATE users SET nick_name='chloe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763324375';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15089930738', 'U15089930738', '酸火箭', '', '15089930738', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-24 12:50:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15089930738' LIMIT 1);
UPDATE users SET nick_name='酸火箭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15089930738';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988837219', 'U18988837219', 'AL', '', '18988837219', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2025-08-24 11:36:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988837219' LIMIT 1);
UPDATE users SET nick_name='AL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='18988837219';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17872171231', 'U17872171231', 'Scarlett', '', '17872171231', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 22:44:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17872171231' LIMIT 1);
UPDATE users SET nick_name='Scarlett', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17872171231';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520344777', 'U18520344777', '潘', '', '18520344777', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 21:42:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520344777' LIMIT 1);
UPDATE users SET nick_name='潘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520344777';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763377421', 'U13763377421', '，', '', '13763377421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 20:50:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763377421' LIMIT 1);
UPDATE users SET nick_name='，', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13763377421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13553376676', 'U13553376676', 'zong', '', '13553376676', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 176, '2025-08-23 18:29:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13553376676' LIMIT 1);
UPDATE users SET nick_name='zong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 176) WHERE phone='13553376676';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914345516', 'U15914345516', 'bobo', '', '15914345516', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 16:59:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914345516' LIMIT 1);
UPDATE users SET nick_name='bobo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914345516';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521032803', 'U15521032803', 'Yuki', '', '15521032803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 16:24:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521032803' LIMIT 1);
UPDATE users SET nick_name='Yuki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521032803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218045987', 'U15218045987', 'Z.', '', '15218045987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 16:24:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218045987' LIMIT 1);
UPDATE users SET nick_name='Z.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218045987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13428483612', 'U13428483612', 'ʏᴜᴍɪᴋᴏ', '', '13428483612', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 15:36:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13428483612' LIMIT 1);
UPDATE users SET nick_name='ʏᴜᴍɪᴋᴏ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13428483612';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521167290', 'U15521167290', '远野', '', '15521167290', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 14:09:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521167290' LIMIT 1);
UPDATE users SET nick_name='远野', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521167290';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826202003', 'U13826202003', '沃', '', '13826202003', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 32, '2025-08-23 13:33:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826202003' LIMIT 1);
UPDATE users SET nick_name='沃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 32) WHERE phone='13826202003';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922771177', 'U13922771177', '13922771177', '', '13922771177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 13:31:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922771177' LIMIT 1);
UPDATE users SET nick_name='13922771177', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922771177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15027010107', 'U15027010107', '阳', '', '15027010107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 13:27:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15027010107' LIMIT 1);
UPDATE users SET nick_name='阳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15027010107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620254566', 'U18620254566', '林林', '', '18620254566', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-08-23 12:34:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620254566' LIMIT 1);
UPDATE users SET nick_name='林林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18620254566';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533946876', 'U13533946876', 'June', '', '13533946876', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 11:57:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533946876' LIMIT 1);
UPDATE users SET nick_name='June', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533946876';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13650935167', 'U13650935167', '土豆歪', '', '13650935167', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 11:56:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13650935167' LIMIT 1);
UPDATE users SET nick_name='土豆歪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13650935167';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15620561159', 'U15620561159', '阿乐', '', '15620561159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 11:55:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15620561159' LIMIT 1);
UPDATE users SET nick_name='阿乐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15620561159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13372500355', 'U13372500355', 'zzzzfreya', '', '13372500355', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 11:52:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13372500355' LIMIT 1);
UPDATE users SET nick_name='zzzzfreya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13372500355';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113951911', 'U15113951911', '大昭', '', '15113951911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 11:12:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113951911' LIMIT 1);
UPDATE users SET nick_name='大昭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15113951911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265005749', 'U13265005749', '小K', '', '13265005749', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-23 09:53:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265005749' LIMIT 1);
UPDATE users SET nick_name='小K', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13265005749';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13021320516', 'U13021320516', 'Asteroid', '', '13021320516', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 23:19:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13021320516' LIMIT 1);
UPDATE users SET nick_name='Asteroid', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13021320516';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826450223', 'U18826450223', 'RunningMichael', '', '18826450223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 22:18:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826450223' LIMIT 1);
UPDATE users SET nick_name='RunningMichael', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826450223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18797385493', 'U18797385493', '杏仁仔', '', '18797385493', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 21:47:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18797385493' LIMIT 1);
UPDATE users SET nick_name='杏仁仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18797385493';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13274950001', 'U13274950001', 'fx', '', '13274950001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 21:29:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13274950001' LIMIT 1);
UPDATE users SET nick_name='fx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13274950001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15123439410', 'U15123439410', '15123439410', '', '15123439410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 18:52:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15123439410' LIMIT 1);
UPDATE users SET nick_name='15123439410', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15123439410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17876753388', 'U17876753388', '17876753388', '', '17876753388', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 16:23:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17876753388' LIMIT 1);
UPDATE users SET nick_name='17876753388', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17876753388';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011875138', 'U18011875138', '那', '', '18011875138', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 16:06:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011875138' LIMIT 1);
UPDATE users SET nick_name='那', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011875138';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13330769837', 'U13330769837', '13330769837', '', '13330769837', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 16:01:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13330769837' LIMIT 1);
UPDATE users SET nick_name='13330769837', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13330769837';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665581810', 'U18665581810', '时光', '', '18665581810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 15:47:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665581810' LIMIT 1);
UPDATE users SET nick_name='时光', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665581810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750150624', 'U13750150624', 'Y', '', '13750150624', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 15:40:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750150624' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13750150624';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632375125', 'U13632375125', '莹莹', '', '13632375125', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 14:46:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632375125' LIMIT 1);
UPDATE users SET nick_name='莹莹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632375125';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620192031', 'U16620192031', 'healer', '', '16620192031', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 13:55:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620192031' LIMIT 1);
UPDATE users SET nick_name='healer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620192031';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924191542', 'U13924191542', 'Sunny', '', '13924191542', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 12:11:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924191542' LIMIT 1);
UPDATE users SET nick_name='Sunny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924191542';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15307095871', 'U15307095871', '昊', '', '15307095871', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 11:18:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15307095871' LIMIT 1);
UPDATE users SET nick_name='昊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15307095871';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17328311906', 'U17328311906', '红糖凉虾', '', '17328311906', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-22 11:03:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17328311906' LIMIT 1);
UPDATE users SET nick_name='红糖凉虾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17328311906';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17376759262', 'U17376759262', '辉瞳', '', '17376759262', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-08-21 19:11:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17376759262' LIMIT 1);
UPDATE users SET nick_name='辉瞳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='17376759262';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926385588', 'U13926385588', '兰花', '', '13926385588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-21 16:12:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926385588' LIMIT 1);
UPDATE users SET nick_name='兰花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926385588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819243767', 'U18819243767', '许可', '', '18819243767', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-21 16:07:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819243767' LIMIT 1);
UPDATE users SET nick_name='许可', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819243767';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017593820', 'U15017593820', 'Ashley', '', '15017593820', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-21 15:21:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017593820' LIMIT 1);
UPDATE users SET nick_name='Ashley', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017593820';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570473131', 'U13570473131', '小红帽', '', '13570473131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-21 14:29:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570473131' LIMIT 1);
UPDATE users SET nick_name='小红帽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570473131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18811017078', 'U18811017078', '咖喱', '', '18811017078', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-21 13:50:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18811017078' LIMIT 1);
UPDATE users SET nick_name='咖喱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18811017078';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18466362035', 'U18466362035', '甜心炸弹', '', '18466362035', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-21 13:22:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18466362035' LIMIT 1);
UPDATE users SET nick_name='甜心炸弹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18466362035';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322264810', 'U17322264810', 'NO SERVICE=Need1', '', '17322264810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-21 12:33:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322264810' LIMIT 1);
UPDATE users SET nick_name='NO SERVICE=Need1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322264810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989296011', 'U15989296011', '苗苗', '', '15989296011', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-21 11:56:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989296011' LIMIT 1);
UPDATE users SET nick_name='苗苗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989296011';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18851757571', 'U18851757571', 'Nagi', '', '18851757571', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-20 22:27:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18851757571' LIMIT 1);
UPDATE users SET nick_name='Nagi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18851757571';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320682513', 'U18320682513', '大大', '', '18320682513', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-20 22:08:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320682513' LIMIT 1);
UPDATE users SET nick_name='大大', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320682513';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15545547980', 'U15545547980', '锅包有肉的', '', '15545547980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 167, '2025-08-20 20:13:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15545547980' LIMIT 1);
UPDATE users SET nick_name='锅包有肉的', balance=GREATEST(balance, 0.00), points=GREATEST(points, 167) WHERE phone='15545547980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560026379', 'U13560026379', '肥妹', '', '13560026379', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-20 19:48:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560026379' LIMIT 1);
UPDATE users SET nick_name='肥妹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560026379';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986759606', 'U15986759606', '甘宇飞', '', '15986759606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2025-08-20 19:10:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986759606' LIMIT 1);
UPDATE users SET nick_name='甘宇飞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='15986759606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502077233', 'U18502077233', 'jacky', '', '18502077233', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-20 17:20:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502077233' LIMIT 1);
UPDATE users SET nick_name='jacky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18502077233';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602905696', 'U13602905696', '月关', '', '13602905696', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-20 17:10:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602905696' LIMIT 1);
UPDATE users SET nick_name='月关', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602905696';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520200477', 'U18520200477', 'Longhui.NG', '', '18520200477', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-20 16:10:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520200477' LIMIT 1);
UPDATE users SET nick_name='Longhui.NG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520200477';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022870286', 'U18022870286', '狗酱', '', '18022870286', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-20 14:08:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022870286' LIMIT 1);
UPDATE users SET nick_name='狗酱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022870286';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533007799', 'U13533007799', '13533007799', '', '13533007799', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-20 13:06:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533007799' LIMIT 1);
UPDATE users SET nick_name='13533007799', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533007799';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15280179888', 'U15280179888', 'l先生', '', '15280179888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 58, '2025-08-20 10:58:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15280179888' LIMIT 1);
UPDATE users SET nick_name='l先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 58) WHERE phone='15280179888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15338052957', 'U15338052957', 'Edward', '', '15338052957', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-20 10:05:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15338052957' LIMIT 1);
UPDATE users SET nick_name='Edward', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15338052957';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18574931027', 'U18574931027', 'ppppp', '', '18574931027', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-20 09:36:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18574931027' LIMIT 1);
UPDATE users SET nick_name='ppppp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18574931027';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565506805', 'U18565506805', 'Lyon', '', '18565506805', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-19 19:45:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565506805' LIMIT 1);
UPDATE users SET nick_name='Lyon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565506805';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682246446', 'U13682246446', 'ppp', '', '13682246446', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-19 18:53:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682246446' LIMIT 1);
UPDATE users SET nick_name='ppp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13682246446';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539722885', 'U13539722885', 'cange', '', '13539722885', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-19 16:52:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539722885' LIMIT 1);
UPDATE users SET nick_name='cange', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539722885';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13229983017', 'U13229983017', 'lily66', '', '13229983017', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-19 16:01:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13229983017' LIMIT 1);
UPDATE users SET nick_name='lily66', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13229983017';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535539889', 'U13535539889', '李阳', '', '13535539889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-19 15:55:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535539889' LIMIT 1);
UPDATE users SET nick_name='李阳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535539889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13427682560', 'U13427682560', 'luckystar', '', '13427682560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-19 15:08:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13427682560' LIMIT 1);
UPDATE users SET nick_name='luckystar', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13427682560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15868108198', 'U15868108198', '🌜Nancy✨Jiang🌙', '', '15868108198', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-19 13:32:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15868108198' LIMIT 1);
UPDATE users SET nick_name='🌜Nancy✨Jiang🌙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15868108198';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15558096645', 'U15558096645', '圆圆', '', '15558096645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-19 12:14:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15558096645' LIMIT 1);
UPDATE users SET nick_name='圆圆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15558096645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17288475986', 'U17288475986', '千樯', '', '17288475986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-19 11:40:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17288475986' LIMIT 1);
UPDATE users SET nick_name='千樯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17288475986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127971086', 'U18127971086', '🌈佩佩mm', '', '18127971086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-18 22:39:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127971086' LIMIT 1);
UPDATE users SET nick_name='🌈佩佩mm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127971086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18902275960', 'U18902275960', 'Cesc', '', '18902275960', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-08-18 21:38:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18902275960' LIMIT 1);
UPDATE users SET nick_name='Cesc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18902275960';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19874226491', 'U19874226491', '河山', '', '19874226491', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-18 20:29:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19874226491' LIMIT 1);
UPDATE users SET nick_name='河山', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19874226491';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13611403362', 'U13611403362', '李李🍒', '', '13611403362', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-18 14:45:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13611403362' LIMIT 1);
UPDATE users SET nick_name='李李🍒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13611403362';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322215671', 'U17322215671', 'c', '', '17322215671', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 37, '2025-08-18 12:34:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322215671' LIMIT 1);
UPDATE users SET nick_name='c', balance=GREATEST(balance, 0.00), points=GREATEST(points, 37) WHERE phone='17322215671';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535571621', 'U13535571621', '🥚', '', '13535571621', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-18 11:03:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535571621' LIMIT 1);
UPDATE users SET nick_name='🥚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535571621';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13411086880', 'U13411086880', 'Im_mime', '', '13411086880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 21:18:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13411086880' LIMIT 1);
UPDATE users SET nick_name='Im_mime', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13411086880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512784739', 'U13512784739', 'Lori', '', '13512784739', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2025-08-17 19:17:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512784739' LIMIT 1);
UPDATE users SET nick_name='Lori', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='13512784739';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218609384', 'U18218609384', '18218609384', '', '18218609384', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 18:30:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218609384' LIMIT 1);
UPDATE users SET nick_name='18218609384', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218609384';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631349047', 'U13631349047', '小7', '', '13631349047', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 18:24:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631349047' LIMIT 1);
UPDATE users SET nick_name='小7', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631349047';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922295308', 'U13922295308', '阿君', '', '13922295308', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 18:21:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922295308' LIMIT 1);
UPDATE users SET nick_name='阿君', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922295308';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520208844', 'U18520208844', '18520208844', '', '18520208844', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 17:39:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520208844' LIMIT 1);
UPDATE users SET nick_name='18520208844', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520208844';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610136352', 'U13610136352', '13610136352', '', '13610136352', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 17:39:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610136352' LIMIT 1);
UPDATE users SET nick_name='13610136352', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610136352';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322205977', 'U17322205977', 'Derrick', '', '17322205977', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 17:36:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322205977' LIMIT 1);
UPDATE users SET nick_name='Derrick', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322205977';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15346207920', 'U15346207920', '15346207920', '', '15346207920', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 17:36:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15346207920' LIMIT 1);
UPDATE users SET nick_name='15346207920', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15346207920';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17759712191', 'U17759712191', 'Nic', '', '17759712191', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 16:38:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17759712191' LIMIT 1);
UPDATE users SET nick_name='Nic', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17759712191';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924281968', 'U13924281968', 'Wendi', '', '13924281968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 15:02:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924281968' LIMIT 1);
UPDATE users SET nick_name='Wendi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924281968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13268525493', 'U13268525493', 'Alison.Liu', '', '13268525493', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 15:02:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13268525493' LIMIT 1);
UPDATE users SET nick_name='Alison.Liu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13268525493';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480296546', 'U13480296546', '王卓', '', '13480296546', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2025-08-17 14:55:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480296546' LIMIT 1);
UPDATE users SET nick_name='王卓', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13480296546';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632265629', 'U13632265629', '斯坦', '', '13632265629', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 14:50:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632265629' LIMIT 1);
UPDATE users SET nick_name='斯坦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632265629';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18898811470', 'U18898811470', 'j', '', '18898811470', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 14:47:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18898811470' LIMIT 1);
UPDATE users SET nick_name='j', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18898811470';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520132513', 'U18520132513', 'Charlotte💫', '', '18520132513', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 13:50:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520132513' LIMIT 1);
UPDATE users SET nick_name='Charlotte💫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520132513';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422189606', 'U13422189606', '🌻', '', '13422189606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 13:39:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422189606' LIMIT 1);
UPDATE users SET nick_name='🌻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422189606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17261598018', 'U17261598018', 'MASON', '', '17261598018', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 987, '2025-08-17 13:23:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17261598018' LIMIT 1);
UPDATE users SET nick_name='MASON', balance=GREATEST(balance, 0.00), points=GREATEST(points, 987) WHERE phone='17261598018';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918752136', 'U15918752136', 'Mspenguin〰', '', '15918752136', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 12:35:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918752136' LIMIT 1);
UPDATE users SET nick_name='Mspenguin〰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918752136';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15673162138', 'U15673162138', '_', '', '15673162138', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 12:32:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15673162138' LIMIT 1);
UPDATE users SET nick_name='_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15673162138';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602328000', 'U15602328000', 'Ray', '', '15602328000', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-08-17 11:38:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602328000' LIMIT 1);
UPDATE users SET nick_name='Ray', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='15602328000';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521281466', 'U15521281466', '唐外姣', '', '15521281466', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-08-17 11:11:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521281466' LIMIT 1);
UPDATE users SET nick_name='唐外姣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15521281466';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665032785', 'U18665032785', '18665032785', '', '18665032785', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 11:11:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665032785' LIMIT 1);
UPDATE users SET nick_name='18665032785', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665032785';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18217036197', 'U18217036197', '图图', '', '18217036197', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 01:38:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18217036197' LIMIT 1);
UPDATE users SET nick_name='图图', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18217036197';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19973491997', 'U19973491997', '象', '', '19973491997', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 00:31:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19973491997' LIMIT 1);
UPDATE users SET nick_name='象', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19973491997';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422321169', 'U13422321169', 'zzz', '', '13422321169', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-17 00:15:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422321169' LIMIT 1);
UPDATE users SET nick_name='zzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422321169';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710907197', 'U13710907197', 'Vincenza', '', '13710907197', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 22:34:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710907197' LIMIT 1);
UPDATE users SET nick_name='Vincenza', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710907197';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15280625660', 'U15280625660', '15280625660', '', '15280625660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 22:02:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15280625660' LIMIT 1);
UPDATE users SET nick_name='15280625660', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15280625660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626216748', 'U15626216748', '肥千离', '', '15626216748', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 21:49:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626216748' LIMIT 1);
UPDATE users SET nick_name='肥千离', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626216748';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544306079', 'U13544306079', 'L.', '', '13544306079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 20:37:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544306079' LIMIT 1);
UPDATE users SET nick_name='L.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544306079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19864642416', 'U19864642416', '遥望', '', '19864642416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 20:30:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19864642416' LIMIT 1);
UPDATE users SET nick_name='遥望', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19864642416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302699410', 'U18302699410', '岐岐杨羊', '', '18302699410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 17:30:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302699410' LIMIT 1);
UPDATE users SET nick_name='岐岐杨羊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18302699410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500000293', 'U13500000293', '卉', '', '13500000293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 17:20:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500000293' LIMIT 1);
UPDATE users SET nick_name='卉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500000293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13705046587', 'U13705046587', 'Vince', '', '13705046587', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 16:57:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13705046587' LIMIT 1);
UPDATE users SET nick_name='Vince', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13705046587';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13559737565', 'U13559737565', 'FFFF1sh', '', '13559737565', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 16:25:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13559737565' LIMIT 1);
UPDATE users SET nick_name='FFFF1sh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13559737565';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13076813513', 'U13076813513', '快乐星球班长', '', '13076813513', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 15:37:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13076813513' LIMIT 1);
UPDATE users SET nick_name='快乐星球班长', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13076813513';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013390751', 'U15013390751', '哈哈', '', '15013390751', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 15:20:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013390751' LIMIT 1);
UPDATE users SET nick_name='哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013390751';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802926990', 'U13802926990', '慢板', '', '13802926990', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 15:08:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802926990' LIMIT 1);
UPDATE users SET nick_name='慢板', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802926990';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521225724', 'U15521225724', '天亮了', '', '15521225724', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 14:57:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521225724' LIMIT 1);
UPDATE users SET nick_name='天亮了', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521225724';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17671430740', 'U17671430740', '林咪', '', '17671430740', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 14:46:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17671430740' LIMIT 1);
UPDATE users SET nick_name='林咪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17671430740';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15177678506', 'U15177678506', '_xxxx_', '', '15177678506', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 14:28:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15177678506' LIMIT 1);
UPDATE users SET nick_name='_xxxx_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15177678506';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13192752756', 'U13192752756', '猫七', '', '13192752756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 14:04:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13192752756' LIMIT 1);
UPDATE users SET nick_name='猫七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13192752756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631425250', 'U13631425250', 'dee', '', '13631425250', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 14:01:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631425250' LIMIT 1);
UPDATE users SET nick_name='dee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631425250';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565233769', 'U18565233769', '兜兜', '', '18565233769', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 13:37:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565233769' LIMIT 1);
UPDATE users SET nick_name='兜兜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565233769';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631329128', 'U13631329128', 'HowesFeng', '', '13631329128', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 12:38:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631329128' LIMIT 1);
UPDATE users SET nick_name='HowesFeng', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631329128';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15913160293', 'U15913160293', '牛牛', '', '15913160293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 12:29:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15913160293' LIMIT 1);
UPDATE users SET nick_name='牛牛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15913160293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989168001', 'U15989168001', 'OC鍾', '', '15989168001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 12:12:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989168001' LIMIT 1);
UPDATE users SET nick_name='OC鍾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989168001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17602068609', 'U17602068609', '曹睿', '', '17602068609', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 10:38:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17602068609' LIMIT 1);
UPDATE users SET nick_name='曹睿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17602068609';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539902448', 'U13539902448', '椰', '', '13539902448', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 10:16:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539902448' LIMIT 1);
UPDATE users SET nick_name='椰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539902448';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13197198130', 'U13197198130', 'CL辅', '', '13197198130', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 09:54:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13197198130' LIMIT 1);
UPDATE users SET nick_name='CL辅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13197198130';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13170823522', 'U13170823522', 'lrl', '', '13170823522', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-16 01:34:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13170823522' LIMIT 1);
UPDATE users SET nick_name='lrl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13170823522';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217272664', 'U15217272664', 'Pua π！', '', '15217272664', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 21:07:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217272664' LIMIT 1);
UPDATE users SET nick_name='Pua π！', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217272664';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521455702', 'U15521455702', '八九十.', '', '15521455702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 20:53:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521455702' LIMIT 1);
UPDATE users SET nick_name='八九十.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521455702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829760028', 'U13829760028', '13829760028', '', '13829760028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 20:27:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829760028' LIMIT 1);
UPDATE users SET nick_name='13829760028', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829760028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688958419', 'U18688958419', '光年', '', '18688958419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 18:38:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688958419' LIMIT 1);
UPDATE users SET nick_name='光年', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688958419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610504756', 'U13610504756', 'Huskywu', '', '13610504756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 17:16:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610504756' LIMIT 1);
UPDATE users SET nick_name='Huskywu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610504756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826077993', 'U13826077993', 'Michelle', '', '13826077993', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 15:29:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826077993' LIMIT 1);
UPDATE users SET nick_name='Michelle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826077993';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250303688', 'U13250303688', 'c', '', '13250303688', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 14:11:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250303688' LIMIT 1);
UPDATE users SET nick_name='c', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250303688';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13590597269', 'U13590597269', 'Kp', '', '13590597269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 13:53:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13590597269' LIMIT 1);
UPDATE users SET nick_name='Kp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13590597269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822153095', 'U13822153095', '13822153095', '', '13822153095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 13:48:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822153095' LIMIT 1);
UPDATE users SET nick_name='13822153095', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822153095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13423639691', 'U13423639691', '🎉AUDREY🍍', '', '13423639691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 13:26:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13423639691' LIMIT 1);
UPDATE users SET nick_name='🎉AUDREY🍍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13423639691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665064618', 'U17665064618', 'kkkkkk', '', '17665064618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 12:29:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665064618' LIMIT 1);
UPDATE users SET nick_name='kkkkkk', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665064618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17373512127', 'U17373512127', 'Gel', '', '17373512127', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 899, '2025-08-15 10:33:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17373512127' LIMIT 1);
UPDATE users SET nick_name='Gel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 899) WHERE phone='17373512127';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824651007', 'U13824651007', 'Ellen', '', '13824651007', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-15 10:12:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824651007' LIMIT 1);
UPDATE users SET nick_name='Ellen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824651007';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18307060410', 'U18307060410', '小布', '', '18307060410', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-14 20:27:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18307060410' LIMIT 1);
UPDATE users SET nick_name='小布', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18307060410';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622798634', 'U15622798634', 'h', '', '15622798634', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-14 18:16:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622798634' LIMIT 1);
UPDATE users SET nick_name='h', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622798634';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760735813', 'U13760735813', '123', '', '13760735813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-14 15:39:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760735813' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760735813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662488399', 'U13662488399', 'Nata$ha', '', '13662488399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-14 15:23:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662488399' LIMIT 1);
UPDATE users SET nick_name='Nata$ha', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662488399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15603059824', 'U15603059824', '土萌萤', '', '15603059824', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-14 14:57:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15603059824' LIMIT 1);
UPDATE users SET nick_name='土萌萤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15603059824';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520381350', 'U18520381350', ':P', '', '18520381350', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-14 14:29:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520381350' LIMIT 1);
UPDATE users SET nick_name=':P', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520381350';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914904104', 'U15914904104', 'Leon', '', '15914904104', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-14 14:26:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914904104' LIMIT 1);
UPDATE users SET nick_name='Leon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914904104';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450455670', 'U13450455670', '依霖', '', '13450455670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-14 13:42:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450455670' LIMIT 1);
UPDATE users SET nick_name='依霖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450455670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242868423', 'U13242868423', 'aj', '', '13242868423', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-14 07:38:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242868423' LIMIT 1);
UPDATE users SET nick_name='aj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242868423';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710809011', 'U13710809011', 'SU', '', '13710809011', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-14 01:04:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710809011' LIMIT 1);
UPDATE users SET nick_name='SU', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710809011';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013323872', 'U15013323872', 'Lorraine', '', '15013323872', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-13 23:16:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013323872' LIMIT 1);
UPDATE users SET nick_name='Lorraine', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013323872';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902080323', 'U15902080323', '豪小子', '', '15902080323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-13 21:09:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902080323' LIMIT 1);
UPDATE users SET nick_name='豪小子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902080323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13068698618', 'U13068698618', '大娱乐家', '', '13068698618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-13 20:28:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13068698618' LIMIT 1);
UPDATE users SET nick_name='大娱乐家', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13068698618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760608907', 'U13760608907', 'Siu', '', '13760608907', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 388, '2025-08-13 18:07:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760608907' LIMIT 1);
UPDATE users SET nick_name='Siu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 388) WHERE phone='13760608907';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17576007329', 'U17576007329', '17576007329', '', '17576007329', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-13 18:05:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17576007329' LIMIT 1);
UPDATE users SET nick_name='17576007329', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17576007329';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250523271', 'U13250523271', 'Stranger', '', '13250523271', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-13 16:32:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250523271' LIMIT 1);
UPDATE users SET nick_name='Stranger', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250523271';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15007112476', 'U15007112476', '777', '', '15007112476', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-13 16:12:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15007112476' LIMIT 1);
UPDATE users SET nick_name='777', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15007112476';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521129869', 'U15521129869', '高高高敏敏敏', '', '15521129869', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-13 16:10:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521129869' LIMIT 1);
UPDATE users SET nick_name='高高高敏敏敏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521129869';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418116152', 'U13418116152', '龙～虾🐟', '', '13418116152', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-13 16:05:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418116152' LIMIT 1);
UPDATE users SET nick_name='龙～虾🐟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13418116152';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18669867821', 'U18669867821', '小西瓜', '', '18669867821', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2025-08-13 13:02:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18669867821' LIMIT 1);
UPDATE users SET nick_name='小西瓜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18669867821';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642307830', 'U13642307830', '金鈺', '', '13642307830', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-08-13 12:19:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642307830' LIMIT 1);
UPDATE users SET nick_name='金鈺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13642307830';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925125508', 'U13925125508', '曹朋', '', '13925125508', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 126, '2025-08-13 11:39:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925125508' LIMIT 1);
UPDATE users SET nick_name='曹朋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 126) WHERE phone='13925125508';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434349951', 'U13434349951', 'Ivy', '', '13434349951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-13 11:29:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434349951' LIMIT 1);
UPDATE users SET nick_name='Ivy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13434349951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13225039749', 'U13225039749', 'Joying', '', '13225039749', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-13 10:31:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13225039749' LIMIT 1);
UPDATE users SET nick_name='Joying', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13225039749';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631424100', 'U13631424100', 'ling', '', '13631424100', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-13 09:23:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631424100' LIMIT 1);
UPDATE users SET nick_name='ling', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631424100';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602301473', 'U15602301473', 'emmmm', '', '15602301473', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 23:28:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602301473' LIMIT 1);
UPDATE users SET nick_name='emmmm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15602301473';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802842269', 'U13802842269', '🍭', '', '13802842269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 22:49:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802842269' LIMIT 1);
UPDATE users SET nick_name='🍭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802842269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19002001220', 'U19002001220', '星星', '', '19002001220', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 20:15:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19002001220' LIMIT 1);
UPDATE users SET nick_name='星星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19002001220';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13827782982', 'U13827782982', '13827782982', '', '13827782982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 19:20:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13827782982' LIMIT 1);
UPDATE users SET nick_name='13827782982', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13827782982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13486186856', 'U13486186856', 'Wick_M', '', '13486186856', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 17:40:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13486186856' LIMIT 1);
UPDATE users SET nick_name='Wick_M', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13486186856';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570428310', 'U13570428310', 'DOUBLe', '', '13570428310', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 16:35:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570428310' LIMIT 1);
UPDATE users SET nick_name='DOUBLe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570428310';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925153649', 'U18925153649', '曼巴', '', '18925153649', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 15:40:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925153649' LIMIT 1);
UPDATE users SET nick_name='曼巴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925153649';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866080518', 'U19866080518', '黄嘉琪kakki', '', '19866080518', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2025-08-12 12:28:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866080518' LIMIT 1);
UPDATE users SET nick_name='黄嘉琪kakki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='19866080518';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18376910147', 'U18376910147', '小蓝', '', '18376910147', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 11:02:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18376910147' LIMIT 1);
UPDATE users SET nick_name='小蓝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18376910147';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556021529', 'U13556021529', '方建勋®', '', '13556021529', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 10:26:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556021529' LIMIT 1);
UPDATE users SET nick_name='方建勋®', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556021529';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922103725', 'U13922103725', '卢', '', '13922103725', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 10:18:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922103725' LIMIT 1);
UPDATE users SET nick_name='卢', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922103725';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825088658', 'U13825088658', '张晨', '', '13825088658', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 09:38:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825088658' LIMIT 1);
UPDATE users SET nick_name='张晨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825088658';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13889907648', 'U13889907648', '当歌', '', '13889907648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2025-08-12 08:49:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13889907648' LIMIT 1);
UPDATE users SET nick_name='当歌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13889907648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688443614', 'U18688443614', 'man', '', '18688443614', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2025-08-12 01:26:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688443614' LIMIT 1);
UPDATE users SET nick_name='man', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688443614';
