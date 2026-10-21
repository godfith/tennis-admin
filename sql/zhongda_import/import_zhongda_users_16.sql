SET NAMES utf8mb4;
-- 中大店用户导入 part 16 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15652425889', 'U15652425889', '汶浔', '', '15652425889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-09 22:12:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15652425889' LIMIT 1);
UPDATE users SET nick_name='汶浔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15652425889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18070284270', 'U18070284270', 'Debin', '', '18070284270', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-09 19:01:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18070284270' LIMIT 1);
UPDATE users SET nick_name='Debin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18070284270';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570012988', 'U13570012988', '13570012988', '', '13570012988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-09 18:49:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570012988' LIMIT 1);
UPDATE users SET nick_name='13570012988', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570012988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15942326052', 'U15942326052', '今天吃面了没', '', '15942326052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-09 16:57:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15942326052' LIMIT 1);
UPDATE users SET nick_name='今天吃面了没', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15942326052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570442032', 'U13570442032', 'Doris Wong', '', '13570442032', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-09 14:50:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570442032' LIMIT 1);
UPDATE users SET nick_name='Doris Wong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570442032';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688853553', 'U18688853553', '承远', '', '18688853553', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-09 14:15:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688853553' LIMIT 1);
UPDATE users SET nick_name='承远', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688853553';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876245657', 'U15876245657', 'ts', '', '15876245657', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-09 13:57:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876245657' LIMIT 1);
UPDATE users SET nick_name='ts', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15876245657';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13199283612', 'U13199283612', '王金鑫13199283612', '', '13199283612', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-09 12:18:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13199283612' LIMIT 1);
UPDATE users SET nick_name='王金鑫13199283612', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13199283612';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17604867912', 'U17604867912', 'she.', '', '17604867912', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-09 11:10:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17604867912' LIMIT 1);
UPDATE users SET nick_name='she.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17604867912';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826095895', 'U13826095895', '文', '', '13826095895', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-09 11:02:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826095895' LIMIT 1);
UPDATE users SET nick_name='文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826095895';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027385737', 'U18027385737', '李英爱', '', '18027385737', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-08 16:18:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027385737' LIMIT 1);
UPDATE users SET nick_name='李英爱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027385737';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818400216', 'U18818400216', '包大人', '', '18818400216', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-08 15:59:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818400216' LIMIT 1);
UPDATE users SET nick_name='包大人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818400216';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914539319', 'U15914539319', '🌟🦋', '', '15914539319', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-08 15:32:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914539319' LIMIT 1);
UPDATE users SET nick_name='🌟🦋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15914539319';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560304803', 'U13560304803', '13560304803', '', '13560304803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-08 14:45:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560304803' LIMIT 1);
UPDATE users SET nick_name='13560304803', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560304803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15768882183', 'U15768882183', 'Qzzzzz', '', '15768882183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-08 14:19:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15768882183' LIMIT 1);
UPDATE users SET nick_name='Qzzzzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15768882183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18575746046', 'U18575746046', '18575746046', '', '18575746046', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-08 13:05:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18575746046' LIMIT 1);
UPDATE users SET nick_name='18575746046', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18575746046';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322355004', 'U15322355004', '方', '', '15322355004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-08 12:54:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322355004' LIMIT 1);
UPDATE users SET nick_name='方', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15322355004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760609038', 'U13760609038', 'hellowing', '', '13760609038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-08 12:27:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760609038' LIMIT 1);
UPDATE users SET nick_name='hellowing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760609038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13005575217', 'U13005575217', 'A @winter', '', '13005575217', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 21:12:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13005575217' LIMIT 1);
UPDATE users SET nick_name='A @winter', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13005575217';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13500028208', 'U13500028208', '13500028208', '', '13500028208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 20:52:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13500028208' LIMIT 1);
UPDATE users SET nick_name='13500028208', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13500028208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13692301274', 'U13692301274', '13692301274', '', '13692301274', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 20:40:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13692301274' LIMIT 1);
UPDATE users SET nick_name='13692301274', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13692301274';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17377687328', 'U17377687328', '17377687328', '', '17377687328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 20:01:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17377687328' LIMIT 1);
UPDATE users SET nick_name='17377687328', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17377687328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18148708412', 'U18148708412', '霖宗', '', '18148708412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-07 18:57:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18148708412' LIMIT 1);
UPDATE users SET nick_name='霖宗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18148708412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18511889940', 'U18511889940', '18511889940', '', '18511889940', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 18:26:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18511889940' LIMIT 1);
UPDATE users SET nick_name='18511889940', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18511889940';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626426469', 'U15626426469', '粥粥', '', '15626426469', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 17:43:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626426469' LIMIT 1);
UPDATE users SET nick_name='粥粥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626426469';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15816497147', 'U15816497147', '黄文斌👏', '', '15816497147', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-12-07 17:34:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15816497147' LIMIT 1);
UPDATE users SET nick_name='黄文斌👏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='15816497147';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17831123865', 'U17831123865', 'Z', '', '17831123865', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-07 17:01:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17831123865' LIMIT 1);
UPDATE users SET nick_name='Z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17831123865';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503017091', 'U13503017091', '1', '', '13503017091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 16:53:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503017091' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503017091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710798813', 'U13710798813', 'Tin', '', '13710798813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 16:36:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710798813' LIMIT 1);
UPDATE users SET nick_name='Tin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710798813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250582462', 'U13250582462', '我不是2b', '', '13250582462', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 15:45:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250582462' LIMIT 1);
UPDATE users SET nick_name='我不是2b', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250582462';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14718101788', 'U14718101788', 'lyccc', '', '14718101788', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 15:42:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14718101788' LIMIT 1);
UPDATE users SET nick_name='lyccc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14718101788';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622382858', 'U15622382858', '15622382858', '', '15622382858', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 15:31:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622382858' LIMIT 1);
UPDATE users SET nick_name='15622382858', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622382858';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18024612785', 'U18024612785', '18024612785', '', '18024612785', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 14:31:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18024612785' LIMIT 1);
UPDATE users SET nick_name='18024612785', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18024612785';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15768617420', 'U15768617420', '15768617420', '', '15768617420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 14:01:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15768617420' LIMIT 1);
UPDATE users SET nick_name='15768617420', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15768617420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450357773', 'U13450357773', 'Ivan', '', '13450357773', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-12-07 13:07:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450357773' LIMIT 1);
UPDATE users SET nick_name='Ivan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13450357773';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246882691', 'U13246882691', '朱先生', '', '13246882691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 12:31:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246882691' LIMIT 1);
UPDATE users SET nick_name='朱先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13246882691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13724767280', 'U13724767280', '13724767280', '', '13724767280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 11:28:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13724767280' LIMIT 1);
UPDATE users SET nick_name='13724767280', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13724767280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822151888', 'U13822151888', '雪峰', '', '13822151888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 10:36:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822151888' LIMIT 1);
UPDATE users SET nick_name='雪峰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822151888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18811599074', 'U18811599074', '桥一', '', '18811599074', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 09:47:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18811599074' LIMIT 1);
UPDATE users SET nick_name='桥一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18811599074';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922375585', 'U13922375585', '曾哥', '', '13922375585', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 08:55:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922375585' LIMIT 1);
UPDATE users SET nick_name='曾哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922375585';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430212641', 'U13430212641', 'Bailey', '', '13430212641', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-12-07 08:53:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430212641' LIMIT 1);
UPDATE users SET nick_name='Bailey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13430212641';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922326968', 'U18922326968', '陈坤达', '', '18922326968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-07 08:41:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922326968' LIMIT 1);
UPDATE users SET nick_name='陈坤达', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922326968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17363265985', 'U17363265985', '17363265985', '', '17363265985', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-06 21:15:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17363265985' LIMIT 1);
UPDATE users SET nick_name='17363265985', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17363265985';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512765040', 'U13512765040', '0oo大璇璇oo0', '', '13512765040', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-06 20:57:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512765040' LIMIT 1);
UPDATE users SET nick_name='0oo大璇璇oo0', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512765040';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726768780', 'U13726768780', '13726768780', '', '13726768780', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-06 20:20:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726768780' LIMIT 1);
UPDATE users SET nick_name='13726768780', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726768780';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19353462610', 'U19353462610', 'kanye', '', '19353462610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-06 19:48:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19353462610' LIMIT 1);
UPDATE users SET nick_name='kanye', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19353462610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18707219104', 'U18707219104', '桃乐丝', '', '18707219104', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-06 18:23:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18707219104' LIMIT 1);
UPDATE users SET nick_name='桃乐丝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18707219104';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18771780873', 'U18771780873', '水寿', '', '18771780873', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-06 17:51:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18771780873' LIMIT 1);
UPDATE users SET nick_name='水寿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18771780873';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15036407832', 'U15036407832', 'mel', '', '15036407832', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-06 17:30:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15036407832' LIMIT 1);
UPDATE users SET nick_name='mel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15036407832';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19303036961', 'U19303036961', '老张', '', '19303036961', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-06 16:14:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19303036961' LIMIT 1);
UPDATE users SET nick_name='老张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19303036961';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710868680', 'U13710868680', '13710868680', '', '13710868680', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-06 15:56:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710868680' LIMIT 1);
UPDATE users SET nick_name='13710868680', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710868680';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18923367637', 'U18923367637', '北在北方', '', '18923367637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-06 15:20:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18923367637' LIMIT 1);
UPDATE users SET nick_name='北在北方', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18923367637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13502857257', 'U13502857257', 'Vicky', '', '13502857257', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-06 12:36:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13502857257' LIMIT 1);
UPDATE users SET nick_name='Vicky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13502857257';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16624622685', 'U16624622685', 'Mmmaarrss', '', '16624622685', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-05 21:57:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16624622685' LIMIT 1);
UPDATE users SET nick_name='Mmmaarrss', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16624622685';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760678874', 'U13760678874', 'WingWing', '', '13760678874', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-05 20:08:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760678874' LIMIT 1);
UPDATE users SET nick_name='WingWing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760678874';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697487921', 'U13697487921', '菜', '', '13697487921', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-05 16:55:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697487921' LIMIT 1);
UPDATE users SET nick_name='菜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13697487921';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15601834515', 'U15601834515', '占着茅坑不拉史女士', '', '15601834515', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 176, '2024-12-05 15:02:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15601834515' LIMIT 1);
UPDATE users SET nick_name='占着茅坑不拉史女士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 176) WHERE phone='15601834515';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825602782', 'U18825602782', '野', '', '18825602782', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-05 12:35:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825602782' LIMIT 1);
UPDATE users SET nick_name='野', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825602782';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539774734', 'U13539774734', '一能', '', '13539774734', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-12-05 11:44:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539774734' LIMIT 1);
UPDATE users SET nick_name='一能', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13539774734';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988947679', 'U18988947679', '18988947679', '', '18988947679', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-05 11:22:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988947679' LIMIT 1);
UPDATE users SET nick_name='18988947679', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18988947679';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18523277660', 'U18523277660', '悠米', '', '18523277660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-05 09:58:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18523277660' LIMIT 1);
UPDATE users SET nick_name='悠米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18523277660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17666006362', 'U17666006362', 'o', '', '17666006362', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-04 21:06:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17666006362' LIMIT 1);
UPDATE users SET nick_name='o', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17666006362';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15071209290', 'U15071209290', 'qq', '', '15071209290', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-04 20:18:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15071209290' LIMIT 1);
UPDATE users SET nick_name='qq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15071209290';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13410552609', 'U13410552609', '13410552609', '', '13410552609', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-04 20:15:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13410552609' LIMIT 1);
UPDATE users SET nick_name='13410552609', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13410552609';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17819575230', 'U17819575230', 'Xiyangcai', '', '17819575230', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-04 19:09:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17819575230' LIMIT 1);
UPDATE users SET nick_name='Xiyangcai', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17819575230';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15584223545', 'U15584223545', 'Donny 🤿', '', '15584223545', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-04 14:33:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15584223545' LIMIT 1);
UPDATE users SET nick_name='Donny 🤿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15584223545';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665000183', 'U18665000183', '卡啊', '', '18665000183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-04 14:19:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665000183' LIMIT 1);
UPDATE users SET nick_name='卡啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665000183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13908060184', 'U13908060184', '13908060184', '', '13908060184', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-04 13:42:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13908060184' LIMIT 1);
UPDATE users SET nick_name='13908060184', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13908060184';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726229314', 'U13726229314', '是小詹同学', '', '13726229314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 999, '2024-12-04 13:39:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726229314' LIMIT 1);
UPDATE users SET nick_name='是小詹同学', balance=GREATEST(balance, 0.00), points=GREATEST(points, 999) WHERE phone='13726229314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520250252', 'U18520250252', 'KWAN', '', '18520250252', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-03 22:29:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520250252' LIMIT 1);
UPDATE users SET nick_name='KWAN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520250252';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15797957397', 'U15797957397', 'Ty', '', '15797957397', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-03 21:41:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15797957397' LIMIT 1);
UPDATE users SET nick_name='Ty', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15797957397';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825526637', 'U18825526637', '爱吃魚的考拉.', '', '18825526637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-03 21:02:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825526637' LIMIT 1);
UPDATE users SET nick_name='爱吃魚的考拉.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825526637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826243096', 'U18826243096', '翠花', '', '18826243096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-03 13:54:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826243096' LIMIT 1);
UPDATE users SET nick_name='翠花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826243096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710297917', 'U13710297917', 'kikigaki', '', '13710297917', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-03 12:33:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710297917' LIMIT 1);
UPDATE users SET nick_name='kikigaki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710297917';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018408221', 'U15018408221', '1', '', '15018408221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-12-03 10:35:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018408221' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15018408221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920123587', 'U15920123587', 'Wuhlin', '', '15920123587', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-12-03 10:18:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920123587' LIMIT 1);
UPDATE users SET nick_name='Wuhlin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15920123587';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602006612', 'U18602006612', '18602006612', '', '18602006612', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-03 09:57:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602006612' LIMIT 1);
UPDATE users SET nick_name='18602006612', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602006612';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15387338438', 'U15387338438', 'L.ZC', '', '15387338438', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-02 21:58:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15387338438' LIMIT 1);
UPDATE users SET nick_name='L.ZC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15387338438';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17742972507', 'U17742972507', 'CJ', '', '17742972507', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-02 21:30:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17742972507' LIMIT 1);
UPDATE users SET nick_name='CJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17742972507';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13501540061', 'U13501540061', 'vin', '', '13501540061', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-12-02 20:15:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13501540061' LIMIT 1);
UPDATE users SET nick_name='vin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13501540061';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13104790271', 'U13104790271', '明天', '', '13104790271', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-02 18:56:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13104790271' LIMIT 1);
UPDATE users SET nick_name='明天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13104790271';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626053140', 'U15626053140', '15626053140', '', '15626053140', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-02 16:57:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626053140' LIMIT 1);
UPDATE users SET nick_name='15626053140', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626053140';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521222730', 'U15521222730', '晚晴', '', '15521222730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 500, '2024-12-02 13:33:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521222730' LIMIT 1);
UPDATE users SET nick_name='晚晴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 500) WHERE phone='15521222730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17605881098', 'U17605881098', '喵叔', '', '17605881098', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-02 12:24:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17605881098' LIMIT 1);
UPDATE users SET nick_name='喵叔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17605881098';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128570637', 'U13128570637', '彤儿 Tong', '', '13128570637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 168, '2024-12-02 09:30:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128570637' LIMIT 1);
UPDATE users SET nick_name='彤儿 Tong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 168) WHERE phone='13128570637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316133277', 'U13316133277', 'viviannnnn', '', '13316133277', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-01 22:44:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316133277' LIMIT 1);
UPDATE users SET nick_name='viviannnnn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13316133277';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820576912', 'U15820576912', '翔_LHS', '', '15820576912', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-01 16:59:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820576912' LIMIT 1);
UPDATE users SET nick_name='翔_LHS', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820576912';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18079156415', 'U18079156415', '单', '', '18079156415', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-01 15:38:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18079156415' LIMIT 1);
UPDATE users SET nick_name='单', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18079156415';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924777427', 'U19924777427', 'ZoeDan', '', '19924777427', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-01 15:30:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924777427' LIMIT 1);
UPDATE users SET nick_name='ZoeDan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924777427';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829795070', 'U13829795070', '余小珊🤍', '', '13829795070', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-01 15:27:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829795070' LIMIT 1);
UPDATE users SET nick_name='余小珊🤍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829795070';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918696568', 'U15918696568', '老李', '', '15918696568', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-01 13:25:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918696568' LIMIT 1);
UPDATE users SET nick_name='老李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15918696568';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533553833', 'U13533553833', '嫦🌺228', '', '13533553833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-01 13:16:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533553833' LIMIT 1);
UPDATE users SET nick_name='嫦🌺228', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533553833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565231026', 'U18565231026', '18565231026', '', '18565231026', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-01 12:52:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565231026' LIMIT 1);
UPDATE users SET nick_name='18565231026', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565231026';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13428150708', 'U13428150708', '冬瓜哟', '', '13428150708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-01 12:44:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13428150708' LIMIT 1);
UPDATE users SET nick_name='冬瓜哟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13428150708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113656633', 'U15113656633', 'ryan', '', '15113656633', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-12-01 12:42:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113656633' LIMIT 1);
UPDATE users SET nick_name='ryan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15113656633';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620210013', 'U18620210013', '🌱Evies', '', '18620210013', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-01 12:38:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620210013' LIMIT 1);
UPDATE users SET nick_name='🌱Evies', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620210013';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802932288', 'U13802932288', '13802932288', '', '13802932288', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-01 12:33:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802932288' LIMIT 1);
UPDATE users SET nick_name='13802932288', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802932288';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711178491', 'U13711178491', '琴', '', '13711178491', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-12-01 11:02:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711178491' LIMIT 1);
UPDATE users SET nick_name='琴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13711178491';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316075154', 'U13316075154', 'Johnny', '', '13316075154', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-12-01 09:33:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316075154' LIMIT 1);
UPDATE users SET nick_name='Johnny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316075154';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760808380', 'U13760808380', 'kboss', '', '13760808380', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 23:00:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760808380' LIMIT 1);
UPDATE users SET nick_name='kboss', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760808380';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826286208', 'U13826286208', '好', '', '13826286208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 19:46:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826286208' LIMIT 1);
UPDATE users SET nick_name='好', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826286208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202829956', 'U13202829956', 'JING', '', '13202829956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 19:27:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202829956' LIMIT 1);
UPDATE users SET nick_name='JING', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202829956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819300542', 'U18819300542', '负分', '', '18819300542', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 19:24:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819300542' LIMIT 1);
UPDATE users SET nick_name='负分', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819300542';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975183025', 'U15975183025', '苏醒的美少女', '', '15975183025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 19:18:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975183025' LIMIT 1);
UPDATE users SET nick_name='苏醒的美少女', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975183025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17634988418', 'U17634988418', 'J\'hang', '', '17634988418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-30 17:58:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17634988418' LIMIT 1);
UPDATE users SET nick_name='J\'hang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17634988418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18198703453', 'U18198703453', '乐', '', '18198703453', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 17:24:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18198703453' LIMIT 1);
UPDATE users SET nick_name='乐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18198703453';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13635470614', 'U13635470614', '13635470614', '', '13635470614', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 17:09:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13635470614' LIMIT 1);
UPDATE users SET nick_name='13635470614', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13635470614';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565289337', 'U18565289337', 'hhh', '', '18565289337', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 15:05:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565289337' LIMIT 1);
UPDATE users SET nick_name='hhh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565289337';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127958885', 'U18127958885', 'zerry', '', '18127958885', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-11-30 15:04:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127958885' LIMIT 1);
UPDATE users SET nick_name='zerry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18127958885';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13035796914', 'U13035796914', '不在', '', '13035796914', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 14:37:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13035796914' LIMIT 1);
UPDATE users SET nick_name='不在', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13035796914';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18566462606', 'U18566462606', '鲍勃', '', '18566462606', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 14:34:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18566462606' LIMIT 1);
UPDATE users SET nick_name='鲍勃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18566462606';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18218185559', 'U18218185559', '雅峰', '', '18218185559', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 14:25:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18218185559' LIMIT 1);
UPDATE users SET nick_name='雅峰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18218185559';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13042003629', 'U13042003629', '13042003629', '', '13042003629', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 14:09:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13042003629' LIMIT 1);
UPDATE users SET nick_name='13042003629', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13042003629';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13360026265', 'U13360026265', '韵', '', '13360026265', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 14:03:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13360026265' LIMIT 1);
UPDATE users SET nick_name='韵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13360026265';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013091702', 'U15013091702', 'Roban', '', '15013091702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 13:43:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013091702' LIMIT 1);
UPDATE users SET nick_name='Roban', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013091702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539552312', 'U13539552312', 'kitty🌸', '', '13539552312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 13:25:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539552312' LIMIT 1);
UPDATE users SET nick_name='kitty🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13539552312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18506387832', 'U18506387832', '送', '', '18506387832', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 12:13:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18506387832' LIMIT 1);
UPDATE users SET nick_name='送', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18506387832';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588824086', 'U18588824086', '与其', '', '18588824086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 11:54:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588824086' LIMIT 1);
UPDATE users SET nick_name='与其', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588824086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802447547', 'U13802447547', '蛋蛋', '', '13802447547', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 11:12:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802447547' LIMIT 1);
UPDATE users SET nick_name='蛋蛋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802447547';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580518578', 'U13580518578', 'Joey ～', '', '13580518578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 10:27:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580518578' LIMIT 1);
UPDATE users SET nick_name='Joey ～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580518578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665621535', 'U18665621535', '胖胖柳', '', '18665621535', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-30 10:12:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665621535' LIMIT 1);
UPDATE users SET nick_name='胖胖柳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665621535';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027328165', 'U18027328165', '西红柿', '', '18027328165', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 21:05:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027328165' LIMIT 1);
UPDATE users SET nick_name='西红柿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027328165';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819268995', 'U18819268995', '一位不愿意透露姓名的Reus', '', '18819268995', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-29 18:36:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819268995' LIMIT 1);
UPDATE users SET nick_name='一位不愿意透露姓名的Reus', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18819268995';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13296898236', 'U13296898236', 'lang', '', '13296898236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 18:33:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13296898236' LIMIT 1);
UPDATE users SET nick_name='lang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13296898236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13432744383', 'U13432744383', '雨洁', '', '13432744383', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 16:42:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13432744383' LIMIT 1);
UPDATE users SET nick_name='雨洁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13432744383';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013041510', 'U15013041510', '青柚茶', '', '15013041510', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 15:41:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013041510' LIMIT 1);
UPDATE users SET nick_name='青柚茶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013041510';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819416544', 'U18819416544', 'Vivienne🦋', '', '18819416544', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-29 15:23:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819416544' LIMIT 1);
UPDATE users SET nick_name='Vivienne🦋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18819416544';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13244823770', 'U13244823770', 'Nakki', '', '13244823770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 14:55:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13244823770' LIMIT 1);
UPDATE users SET nick_name='Nakki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13244823770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028679397', 'U18028679397', 'Nico', '', '18028679397', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 14:52:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028679397' LIMIT 1);
UPDATE users SET nick_name='Nico', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18028679397';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622259785', 'U15622259785', '方什么方๛', '', '15622259785', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 13:52:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622259785' LIMIT 1);
UPDATE users SET nick_name='方什么方๛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622259785';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18159891563', 'U18159891563', 'For you', '', '18159891563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 13:40:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18159891563' LIMIT 1);
UPDATE users SET nick_name='For you', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18159891563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664633875', 'U18664633875', '1', '', '18664633875', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 13:07:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664633875' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664633875';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13042029774', 'U13042029774', 'Vesper', '', '13042029774', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 999, '2024-11-29 12:56:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13042029774' LIMIT 1);
UPDATE users SET nick_name='Vesper', balance=GREATEST(balance, 0.00), points=GREATEST(points, 999) WHERE phone='13042029774';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520594602', 'U18520594602', '万有引力', '', '18520594602', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 12:53:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520594602' LIMIT 1);
UPDATE users SET nick_name='万有引力', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520594602';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682262088', 'U13682262088', 'novia', '', '13682262088', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 999, '2024-11-29 12:52:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682262088' LIMIT 1);
UPDATE users SET nick_name='novia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 999) WHERE phone='13682262088';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13021211588', 'U13021211588', '脆脆鲨', '', '13021211588', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 12:34:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13021211588' LIMIT 1);
UPDATE users SET nick_name='脆脆鲨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13021211588';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622310618', 'U15622310618', 'miss M_Y✨', '', '15622310618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 12:19:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622310618' LIMIT 1);
UPDATE users SET nick_name='miss M_Y✨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622310618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19966268302', 'U19966268302', 'ciao', '', '19966268302', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 12:16:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19966268302' LIMIT 1);
UPDATE users SET nick_name='ciao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19966268302';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924274968', 'U19924274968', '19924274968', '', '19924274968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 11:24:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924274968' LIMIT 1);
UPDATE users SET nick_name='19924274968', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924274968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13686714293', 'U13686714293', '2Ru1', '', '13686714293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 10:56:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13686714293' LIMIT 1);
UPDATE users SET nick_name='2Ru1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13686714293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828404689', 'U13828404689', '棉花糖', '', '13828404689', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-29 09:40:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828404689' LIMIT 1);
UPDATE users SET nick_name='棉花糖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13828404689';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022414015', 'U18022414015', '梁大钉', '', '18022414015', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-28 20:13:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022414015' LIMIT 1);
UPDATE users SET nick_name='梁大钉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022414015';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13232734755', 'U13232734755', '13232734755', '', '13232734755', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-28 18:03:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13232734755' LIMIT 1);
UPDATE users SET nick_name='13232734755', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13232734755';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922497427', 'U13922497427', '13922497427', '', '13922497427', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-28 18:03:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922497427' LIMIT 1);
UPDATE users SET nick_name='13922497427', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922497427';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18064817626', 'U18064817626', '怪怪', '', '18064817626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-28 17:48:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18064817626' LIMIT 1);
UPDATE users SET nick_name='怪怪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18064817626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18518982491', 'U18518982491', '廖小天', '', '18518982491', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-28 17:28:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18518982491' LIMIT 1);
UPDATE users SET nick_name='廖小天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18518982491';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17310593519', 'U17310593519', '惠杰', '', '17310593519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-28 15:45:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17310593519' LIMIT 1);
UPDATE users SET nick_name='惠杰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17310593519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928805430', 'U18928805430', 'jc', '', '18928805430', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-28 14:01:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928805430' LIMIT 1);
UPDATE users SET nick_name='jc', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928805430';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15959236563', 'U15959236563', '小月亮', '', '15959236563', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-28 11:42:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15959236563' LIMIT 1);
UPDATE users SET nick_name='小月亮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15959236563';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920522150', 'U15920522150', 'W', '', '15920522150', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-27 19:35:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920522150' LIMIT 1);
UPDATE users SET nick_name='W', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15920522150';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521038309', 'U15521038309', 'awei', '', '15521038309', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-27 17:58:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521038309' LIMIT 1);
UPDATE users SET nick_name='awei', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521038309';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602299177', 'U13602299177', 'Eleven', '', '13602299177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-27 15:40:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602299177' LIMIT 1);
UPDATE users SET nick_name='Eleven', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602299177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19865180260', 'U19865180260', '球女士', '', '19865180260', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-27 13:33:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19865180260' LIMIT 1);
UPDATE users SET nick_name='球女士', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='19865180260';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925364088', 'U18925364088', 'aaLok.', '', '18925364088', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-27 11:36:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925364088' LIMIT 1);
UPDATE users SET nick_name='aaLok.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18925364088';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19926056030', 'U19926056030', '222', '', '19926056030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-27 09:05:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19926056030' LIMIT 1);
UPDATE users SET nick_name='222', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19926056030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19129232837', 'U19129232837', 'divi', '', '19129232837', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-26 22:20:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19129232837' LIMIT 1);
UPDATE users SET nick_name='divi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19129232837';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919308002', 'U15919308002', '姑娘', '', '15919308002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-26 20:06:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919308002' LIMIT 1);
UPDATE users SET nick_name='姑娘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919308002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824403040', 'U13824403040', '聪哥', '', '13824403040', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-26 19:58:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824403040' LIMIT 1);
UPDATE users SET nick_name='聪哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13824403040';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620487032', 'U18620487032', '(｡•ˇ‸ˇ•｡)', '', '18620487032', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-26 17:24:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620487032' LIMIT 1);
UPDATE users SET nick_name='(｡•ˇ‸ˇ•｡)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620487032';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15728619898', 'U15728619898', '呵呵', '', '15728619898', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-26 17:16:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15728619898' LIMIT 1);
UPDATE users SET nick_name='呵呵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15728619898';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626211319', 'U15626211319', '黄泳娴', '', '15626211319', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-26 16:21:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626211319' LIMIT 1);
UPDATE users SET nick_name='黄泳娴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626211319';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535455194', 'U13535455194', 'cheukhimn', '', '13535455194', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-26 09:26:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535455194' LIMIT 1);
UPDATE users SET nick_name='cheukhimn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535455194';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588734307', 'U18588734307', '大空翼', '', '18588734307', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-25 20:58:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588734307' LIMIT 1);
UPDATE users SET nick_name='大空翼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588734307';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570012968', 'U13570012968', 'J', '', '13570012968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2024-11-25 18:38:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570012968' LIMIT 1);
UPDATE users SET nick_name='J', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13570012968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920313521', 'U15920313521', 'yiyi', '', '15920313521', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-25 18:02:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920313521' LIMIT 1);
UPDATE users SET nick_name='yiyi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920313521';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919303030', 'U15919303030', '何骏鑫', '', '15919303030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-25 17:55:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919303030' LIMIT 1);
UPDATE users SET nick_name='何骏鑫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919303030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627866595', 'U15627866595', '阿辽', '', '15627866595', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-25 14:58:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627866595' LIMIT 1);
UPDATE users SET nick_name='阿辽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627866595';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876686301', 'U15876686301', '魚嵎愚', '', '15876686301', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-25 14:29:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876686301' LIMIT 1);
UPDATE users SET nick_name='魚嵎愚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876686301';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680560770', 'U18680560770', '18680560770', '', '18680560770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-25 12:27:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680560770' LIMIT 1);
UPDATE users SET nick_name='18680560770', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680560770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13434132540', 'U13434132540', '麦', '', '13434132540', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-25 10:11:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13434132540' LIMIT 1);
UPDATE users SET nick_name='麦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13434132540';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760862956', 'U13760862956', 'Yann💭', '', '13760862956', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-25 08:14:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760862956' LIMIT 1);
UPDATE users SET nick_name='Yann💭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760862956';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922291156', 'U13922291156', '李笛', '', '13922291156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 117, '2024-11-25 02:27:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922291156' LIMIT 1);
UPDATE users SET nick_name='李笛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 117) WHERE phone='13922291156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15388066999', 'U15388066999', 'Qiao', '', '15388066999', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-24 23:52:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15388066999' LIMIT 1);
UPDATE users SET nick_name='Qiao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15388066999';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620050314', 'U18620050314', '檸.', '', '18620050314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 57, '2024-11-24 20:07:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620050314' LIMIT 1);
UPDATE users SET nick_name='檸.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 57) WHERE phone='18620050314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15694557667', 'U15694557667', '15694557667', '', '15694557667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-24 16:37:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15694557667' LIMIT 1);
UPDATE users SET nick_name='15694557667', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15694557667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13005146273', 'U13005146273', '12', '', '13005146273', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-24 15:42:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13005146273' LIMIT 1);
UPDATE users SET nick_name='12', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13005146273';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15810875778', 'U15810875778', '水星人', '', '15810875778', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-24 15:37:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15810875778' LIMIT 1);
UPDATE users SET nick_name='水星人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15810875778';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928709135', 'U18928709135', '巴那那', '', '18928709135', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-24 14:36:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928709135' LIMIT 1);
UPDATE users SET nick_name='巴那那', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928709135';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580492954', 'U13580492954', 'Snail', '', '13580492954', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-24 13:33:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580492954' LIMIT 1);
UPDATE users SET nick_name='Snail', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13580492954';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922499605', 'U18922499605', '在', '', '18922499605', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-24 13:31:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922499605' LIMIT 1);
UPDATE users SET nick_name='在', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922499605';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535494598', 'U13535494598', '13535494598', '', '13535494598', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-24 12:44:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535494598' LIMIT 1);
UPDATE users SET nick_name='13535494598', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535494598';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602054435', 'U18602054435', 'Carnegie', '', '18602054435', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-24 10:19:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602054435' LIMIT 1);
UPDATE users SET nick_name='Carnegie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602054435';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664851780', 'U18664851780', 'li', '', '18664851780', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-24 09:50:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664851780' LIMIT 1);
UPDATE users SET nick_name='li', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664851780';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697480748', 'U13697480748', 'Ciel', '', '13697480748', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-24 09:04:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697480748' LIMIT 1);
UPDATE users SET nick_name='Ciel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697480748';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711120484', 'U13711120484', 'vin', '', '13711120484', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-24 08:02:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711120484' LIMIT 1);
UPDATE users SET nick_name='vin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13711120484';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13527658353', 'U13527658353', 'grace', '', '13527658353', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 20:26:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13527658353' LIMIT 1);
UPDATE users SET nick_name='grace', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13527658353';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17725604361', 'U17725604361', 'asd', '', '17725604361', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-23 19:40:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17725604361' LIMIT 1);
UPDATE users SET nick_name='asd', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17725604361';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820420515', 'U18820420515', 'YY', '', '18820420515', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 15:07:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820420515' LIMIT 1);
UPDATE users SET nick_name='YY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820420515';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13502331034', 'U13502331034', 'BIN～', '', '13502331034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 14:57:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13502331034' LIMIT 1);
UPDATE users SET nick_name='BIN～', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13502331034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924069421', 'U13924069421', 'Y', '', '13924069421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 14:48:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924069421' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924069421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13016082836', 'U13016082836', 'Matthew', '', '13016082836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 14:39:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13016082836' LIMIT 1);
UPDATE users SET nick_name='Matthew', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13016082836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570985970', 'U13570985970', '黎先生', '', '13570985970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 14:37:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570985970' LIMIT 1);
UPDATE users SET nick_name='黎先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570985970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813323587', 'U15813323587', 'Miss.panpan', '', '15813323587', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 13:57:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813323587' LIMIT 1);
UPDATE users SET nick_name='Miss.panpan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813323587';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660000423', 'U13660000423', '卷🍊卷', '', '13660000423', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-23 13:53:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660000423' LIMIT 1);
UPDATE users SET nick_name='卷🍊卷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13660000423';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13636370022', 'U13636370022', 'unclekane', '', '13636370022', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 13:08:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13636370022' LIMIT 1);
UPDATE users SET nick_name='unclekane', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13636370022';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826418483', 'U18826418483', '🌪', '', '18826418483', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 13:03:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826418483' LIMIT 1);
UPDATE users SET nick_name='🌪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826418483';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102226397', 'U18102226397', '💎', '', '18102226397', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 11:09:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102226397' LIMIT 1);
UPDATE users SET nick_name='💎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102226397';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989297225', 'U15989297225', '木→_→H.S.Z', '', '15989297225', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 10:47:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989297225' LIMIT 1);
UPDATE users SET nick_name='木→_→H.S.Z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989297225';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18024096604', 'U18024096604', '姚da', '', '18024096604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-23 09:00:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18024096604' LIMIT 1);
UPDATE users SET nick_name='姚da', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18024096604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17322061330', 'U17322061330', '塔迪斯', '', '17322061330', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 22:23:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17322061330' LIMIT 1);
UPDATE users SET nick_name='塔迪斯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17322061330';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18098118381', 'U18098118381', '喵叮', '', '18098118381', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-22 22:21:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18098118381' LIMIT 1);
UPDATE users SET nick_name='喵叮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18098118381';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13717307807', 'U13717307807', 'Splendid', '', '13717307807', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 22:14:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13717307807' LIMIT 1);
UPDATE users SET nick_name='Splendid', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13717307807';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626450126', 'U15626450126', 'HHH', '', '15626450126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-22 19:46:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626450126' LIMIT 1);
UPDATE users SET nick_name='HHH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15626450126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17820684474', 'U17820684474', '小雪糕💕', '', '17820684474', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 17:53:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17820684474' LIMIT 1);
UPDATE users SET nick_name='小雪糕💕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17820684474';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622190546', 'U15622190546', 'Jemma🐻', '', '15622190546', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 16:19:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622190546' LIMIT 1);
UPDATE users SET nick_name='Jemma🐻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622190546';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760797968', 'U13760797968', '溪沉', '', '13760797968', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 15:21:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760797968' LIMIT 1);
UPDATE users SET nick_name='溪沉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760797968';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826238986', 'U18826238986', 'JEFFERY', '', '18826238986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 15:07:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826238986' LIMIT 1);
UPDATE users SET nick_name='JEFFERY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826238986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18954447142', 'U18954447142', '18954447142', '', '18954447142', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 15:06:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18954447142' LIMIT 1);
UPDATE users SET nick_name='18954447142', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18954447142';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13528408927', 'U13528408927', '.', '', '13528408927', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 14:50:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13528408927' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13528408927';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18211476136', 'U18211476136', '雲閣', '', '18211476136', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 14:20:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18211476136' LIMIT 1);
UPDATE users SET nick_name='雲閣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18211476136';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622247570', 'U13622247570', '熊抱林', '', '13622247570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 13:21:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622247570' LIMIT 1);
UPDATE users SET nick_name='熊抱林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622247570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15832182188', 'U15832182188', 'wu', '', '15832182188', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 12:05:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15832182188' LIMIT 1);
UPDATE users SET nick_name='wu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15832182188';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15992131865', 'U15992131865', '713qys', '', '15992131865', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 11:58:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15992131865' LIMIT 1);
UPDATE users SET nick_name='713qys', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15992131865';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989283129', 'U15989283129', 'te', '', '15989283129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-22 10:56:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989283129' LIMIT 1);
UPDATE users SET nick_name='te', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989283129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726894243', 'U13726894243', 'Yv', '', '13726894243', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-21 21:03:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726894243' LIMIT 1);
UPDATE users SET nick_name='Yv', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726894243';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819469862', 'U18819469862', '🎀🧸Naomi💜', '', '18819469862', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-21 20:56:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819469862' LIMIT 1);
UPDATE users SET nick_name='🎀🧸Naomi💜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819469862';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813316480', 'U15813316480', '纪佳帆', '', '15813316480', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-21 16:17:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813316480' LIMIT 1);
UPDATE users SET nick_name='纪佳帆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813316480';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13690744802', 'U13690744802', 'Penny', '', '13690744802', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-11-21 15:03:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13690744802' LIMIT 1);
UPDATE users SET nick_name='Penny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13690744802';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15500008689', 'U15500008689', 'Chuck科依', '', '15500008689', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 66, '2024-11-21 10:49:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15500008689' LIMIT 1);
UPDATE users SET nick_name='Chuck科依', balance=GREATEST(balance, 0.00), points=GREATEST(points, 66) WHERE phone='15500008689';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15337480030', 'U15337480030', '鱼', '', '15337480030', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-21 10:40:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15337480030' LIMIT 1);
UPDATE users SET nick_name='鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15337480030';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570452642', 'U13570452642', '金刚芭比', '', '13570452642', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 290, '2024-11-20 23:32:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570452642' LIMIT 1);
UPDATE users SET nick_name='金刚芭比', balance=GREATEST(balance, 0.00), points=GREATEST(points, 290) WHERE phone='13570452642';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17769342958', 'U17769342958', '早餐店吃夜宵', '', '17769342958', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 57, '2024-11-20 23:04:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17769342958' LIMIT 1);
UPDATE users SET nick_name='早餐店吃夜宵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 57) WHERE phone='17769342958';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13878840283', 'U13878840283', '阿茜', '', '13878840283', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-20 21:43:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13878840283' LIMIT 1);
UPDATE users SET nick_name='阿茜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13878840283';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822191628', 'U13822191628', '陈上进', '', '13822191628', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-20 21:10:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822191628' LIMIT 1);
UPDATE users SET nick_name='陈上进', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13822191628';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610369870', 'U13610369870', '黄', '', '13610369870', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-20 19:07:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610369870' LIMIT 1);
UPDATE users SET nick_name='黄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13610369870';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521381034', 'U15521381034', '章鱼杰', '', '15521381034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-20 18:02:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521381034' LIMIT 1);
UPDATE users SET nick_name='章鱼杰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521381034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920955771', 'U15920955771', 'MF', '', '15920955771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-20 17:42:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920955771' LIMIT 1);
UPDATE users SET nick_name='MF', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920955771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570436662', 'U13570436662', 'AX序', '', '13570436662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-20 15:49:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570436662' LIMIT 1);
UPDATE users SET nick_name='AX序', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13570436662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556548949', 'U13556548949', 'Leo', '', '13556548949', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-20 10:50:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556548949' LIMIT 1);
UPDATE users SET nick_name='Leo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556548949';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826907800', 'U18826907800', '山高高', '', '18826907800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-20 09:42:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826907800' LIMIT 1);
UPDATE users SET nick_name='山高高', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826907800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18824101143', 'U18824101143', '镭射', '', '18824101143', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-19 20:24:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18824101143' LIMIT 1);
UPDATE users SET nick_name='镭射', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18824101143';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13389281095', 'U13389281095', 'Turambar', '', '13389281095', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-11-19 20:11:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13389281095' LIMIT 1);
UPDATE users SET nick_name='Turambar', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13389281095';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15697567823', 'U15697567823', 'Jessie', '', '15697567823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-19 20:03:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15697567823' LIMIT 1);
UPDATE users SET nick_name='Jessie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15697567823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13360001249', 'U13360001249', '达夫', '', '13360001249', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-19 18:48:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13360001249' LIMIT 1);
UPDATE users SET nick_name='达夫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13360001249';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17512816645', 'U17512816645', '17512816645', '', '17512816645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-19 18:44:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17512816645' LIMIT 1);
UPDATE users SET nick_name='17512816645', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17512816645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13413416913', 'U13413416913', 'nomad庄', '', '13413416913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-19 18:37:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13413416913' LIMIT 1);
UPDATE users SET nick_name='nomad庄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13413416913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580359254', 'U13580359254', 'JINJIN', '', '13580359254', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-19 14:47:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580359254' LIMIT 1);
UPDATE users SET nick_name='JINJIN', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580359254';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588585269', 'U18588585269', '大龙', '', '18588585269', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-19 14:24:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588585269' LIMIT 1);
UPDATE users SET nick_name='大龙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588585269';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711112072', 'U13711112072', '荷鲁斯', '', '13711112072', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-19 14:15:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711112072' LIMIT 1);
UPDATE users SET nick_name='荷鲁斯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711112072';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13911199139', 'U13911199139', '璇子', '', '13911199139', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-19 09:26:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13911199139' LIMIT 1);
UPDATE users SET nick_name='璇子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13911199139';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15768712458', 'U15768712458', '菜', '', '15768712458', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-18 20:04:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15768712458' LIMIT 1);
UPDATE users SET nick_name='菜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15768712458';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15359878756', 'U15359878756', 'Xuan', '', '15359878756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-18 18:00:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15359878756' LIMIT 1);
UPDATE users SET nick_name='Xuan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15359878756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450424658', 'U13450424658', 'Badgoodman', '', '13450424658', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-18 17:09:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450424658' LIMIT 1);
UPDATE users SET nick_name='Badgoodman', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450424658';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710126371', 'U13710126371', 'lusi', '', '13710126371', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 48, '2024-11-18 16:22:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710126371' LIMIT 1);
UPDATE users SET nick_name='lusi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 48) WHERE phone='13710126371';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826075322', 'U18826075322', 'Michael 曹健豪', '', '18826075322', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-18 15:46:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826075322' LIMIT 1);
UPDATE users SET nick_name='Michael 曹健豪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826075322';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751733618', 'U13751733618', 'chyj1129', '', '13751733618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 155, '2024-11-18 15:45:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751733618' LIMIT 1);
UPDATE users SET nick_name='chyj1129', balance=GREATEST(balance, 0.00), points=GREATEST(points, 155) WHERE phone='13751733618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602002626', 'U18602002626', '先理后兵', '', '18602002626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-18 15:13:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602002626' LIMIT 1);
UPDATE users SET nick_name='先理后兵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602002626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680277872', 'U18680277872', '雪域之光', '', '18680277872', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-18 15:00:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680277872' LIMIT 1);
UPDATE users SET nick_name='雪域之光', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680277872';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17361475052', 'U17361475052', '康紫寒彬彬', '', '17361475052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-18 14:35:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17361475052' LIMIT 1);
UPDATE users SET nick_name='康紫寒彬彬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17361475052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925008001', 'U13925008001', '豆芽菜', '', '13925008001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-18 13:12:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925008001' LIMIT 1);
UPDATE users SET nick_name='豆芽菜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925008001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570326601', 'U13570326601', 'B', '', '13570326601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-18 10:20:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570326601' LIMIT 1);
UPDATE users SET nick_name='B', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570326601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13048736356', 'U13048736356', '13048736356', '', '13048736356', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-18 10:08:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13048736356' LIMIT 1);
UPDATE users SET nick_name='13048736356', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13048736356';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632241637', 'U13632241637', '陈炯燊🇨🇳', '', '13632241637', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 22:48:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632241637' LIMIT 1);
UPDATE users SET nick_name='陈炯燊🇨🇳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632241637';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665708803', 'U18665708803', '过儿', '', '18665708803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 17:45:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665708803' LIMIT 1);
UPDATE users SET nick_name='过儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665708803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19050155268', 'U19050155268', '双一', '', '19050155268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 128, '2024-11-17 15:47:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19050155268' LIMIT 1);
UPDATE users SET nick_name='双一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 128) WHERE phone='19050155268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18437995330', 'U18437995330', '琪琪', '', '18437995330', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 14:24:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18437995330' LIMIT 1);
UPDATE users SET nick_name='琪琪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18437995330';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18682498147', 'U18682498147', '柯尔斯腾', '', '18682498147', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 13:12:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18682498147' LIMIT 1);
UPDATE users SET nick_name='柯尔斯腾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18682498147';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102057672', 'U18102057672', '芥末章鱼烧', '', '18102057672', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 12:58:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102057672' LIMIT 1);
UPDATE users SET nick_name='芥末章鱼烧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102057672';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13917344804', 'U13917344804', 'Mike', '', '13917344804', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 11, '2024-11-17 12:54:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13917344804' LIMIT 1);
UPDATE users SET nick_name='Mike', balance=GREATEST(balance, 0.00), points=GREATEST(points, 11) WHERE phone='13917344804';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613169712', 'U18613169712', 'Yolanda', '', '18613169712', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 12:11:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613169712' LIMIT 1);
UPDATE users SET nick_name='Yolanda', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613169712';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826529373', 'U18826529373', '茄子', '', '18826529373', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 12:00:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826529373' LIMIT 1);
UPDATE users SET nick_name='茄子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826529373';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640627710', 'U13640627710', 'chloe', '', '13640627710', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 11:47:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640627710' LIMIT 1);
UPDATE users SET nick_name='chloe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640627710';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711418794', 'U13711418794', '芳芳', '', '13711418794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 11:38:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711418794' LIMIT 1);
UPDATE users SET nick_name='芳芳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711418794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13512766648', 'U13512766648', '上善若水', '', '13512766648', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 10:33:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13512766648' LIMIT 1);
UPDATE users SET nick_name='上善若水', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13512766648';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711232771', 'U13711232771', '亮亮', '', '13711232771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 10:31:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711232771' LIMIT 1);
UPDATE users SET nick_name='亮亮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711232771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18301799787', 'U18301799787', '小张', '', '18301799787', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 10:08:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18301799787' LIMIT 1);
UPDATE users SET nick_name='小张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18301799787';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570282599', 'U13570282599', '姚生', '', '13570282599', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 10:03:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570282599' LIMIT 1);
UPDATE users SET nick_name='姚生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570282599';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19167647032', 'U19167647032', '照旧', '', '19167647032', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-17 09:56:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19167647032' LIMIT 1);
UPDATE users SET nick_name='照旧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19167647032';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13423631392', 'U13423631392', '繁星點點。。', '', '13423631392', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 130, '2024-11-16 22:40:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13423631392' LIMIT 1);
UPDATE users SET nick_name='繁星點點。。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 130) WHERE phone='13423631392';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18689440705', 'U18689440705', '九九', '', '18689440705', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-11-16 22:35:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18689440705' LIMIT 1);
UPDATE users SET nick_name='九九', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18689440705';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19539999901', 'U19539999901', '譽滿中華🇨🇳', '', '19539999901', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 22:28:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19539999901' LIMIT 1);
UPDATE users SET nick_name='譽滿中華🇨🇳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19539999901';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925116176', 'U13925116176', '默默', '', '13925116176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 20:22:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925116176' LIMIT 1);
UPDATE users SET nick_name='默默', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925116176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15126546221', 'U15126546221', '树强', '', '15126546221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 19:57:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15126546221' LIMIT 1);
UPDATE users SET nick_name='树强', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15126546221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626847499', 'U15626847499', '33', '', '15626847499', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 19:36:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626847499' LIMIT 1);
UPDATE users SET nick_name='33', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626847499';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318802631', 'U13318802631', '13318802631', '', '13318802631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 18:13:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318802631' LIMIT 1);
UPDATE users SET nick_name='13318802631', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318802631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15113820280', 'U15113820280', '园长', '', '15113820280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-16 17:56:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15113820280' LIMIT 1);
UPDATE users SET nick_name='园长', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15113820280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826066038', 'U18826066038', '18826066038', '', '18826066038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 17:36:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826066038' LIMIT 1);
UPDATE users SET nick_name='18826066038', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826066038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19584441282', 'U19584441282', '小八', '', '19584441282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2024-11-16 17:21:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19584441282' LIMIT 1);
UPDATE users SET nick_name='小八', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='19584441282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15347170312', 'U15347170312', '大毛毛', '', '15347170312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 16:06:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15347170312' LIMIT 1);
UPDATE users SET nick_name='大毛毛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15347170312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13923999782', 'U13923999782', 'Ecole🕊', '', '13923999782', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-11-16 15:29:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13923999782' LIMIT 1);
UPDATE users SET nick_name='Ecole🕊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13923999782';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392644800', 'U13392644800', '🐳挛毛小王子', '', '13392644800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 14:51:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392644800' LIMIT 1);
UPDATE users SET nick_name='🐳挛毛小王子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392644800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533433426', 'U13533433426', '13533433426', '', '13533433426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 14:45:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533433426' LIMIT 1);
UPDATE users SET nick_name='13533433426', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533433426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17516819058', 'U17516819058', '17516819058', '', '17516819058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 14:39:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17516819058' LIMIT 1);
UPDATE users SET nick_name='17516819058', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17516819058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15274852251', 'U15274852251', '15274852251', '', '15274852251', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 13:53:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15274852251' LIMIT 1);
UPDATE users SET nick_name='15274852251', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15274852251';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727010774', 'U13727010774', 'Alex', '', '13727010774', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-16 13:08:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727010774' LIMIT 1);
UPDATE users SET nick_name='Alex', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13727010774';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819132422', 'U18819132422', 'Zero', '', '18819132422', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-11-16 11:53:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819132422' LIMIT 1);
UPDATE users SET nick_name='Zero', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='18819132422';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660082399', 'U13660082399', '郑', '', '13660082399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-16 09:51:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660082399' LIMIT 1);
UPDATE users SET nick_name='郑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13660082399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013303532', 'U15013303532', 'ZAQ01', '', '15013303532', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-15 23:34:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013303532' LIMIT 1);
UPDATE users SET nick_name='ZAQ01', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013303532';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826415850', 'U18826415850', '自然醒', '', '18826415850', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-15 22:32:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826415850' LIMIT 1);
UPDATE users SET nick_name='自然醒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826415850';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826766975', 'U13826766975', 'nnne.', '', '13826766975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-15 22:09:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826766975' LIMIT 1);
UPDATE users SET nick_name='nnne.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826766975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18594038096', 'U18594038096', 'Cambiar_', '', '18594038096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-15 18:02:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18594038096' LIMIT 1);
UPDATE users SET nick_name='Cambiar_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18594038096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13035803635', 'U13035803635', '唠嗑娟', '', '13035803635', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-15 16:47:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13035803635' LIMIT 1);
UPDATE users SET nick_name='唠嗑娟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13035803635';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18975465187', 'U18975465187', '18975465187', '', '18975465187', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-15 16:33:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18975465187' LIMIT 1);
UPDATE users SET nick_name='18975465187', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18975465187';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815865704', 'U15815865704', 'dec十ade', '', '15815865704', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-15 16:18:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815865704' LIMIT 1);
UPDATE users SET nick_name='dec十ade', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815865704';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13044210100', 'U13044210100', '麦麦', '', '13044210100', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-15 14:23:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13044210100' LIMIT 1);
UPDATE users SET nick_name='麦麦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13044210100';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622278868', 'U13622278868', '🐰ིྀBoss', '', '13622278868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-15 14:06:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622278868' LIMIT 1);
UPDATE users SET nick_name='🐰ིྀBoss', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622278868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922235731', 'U13922235731', 'Nick-Fq', '', '13922235731', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-15 10:45:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922235731' LIMIT 1);
UPDATE users SET nick_name='Nick-Fq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13922235731';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664662867', 'U18664662867', 'CHRIS', '', '18664662867', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 628, '2024-11-15 10:30:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664662867' LIMIT 1);
UPDATE users SET nick_name='CHRIS', balance=GREATEST(balance, 0.00), points=GREATEST(points, 628) WHERE phone='18664662867';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18023888770', 'U18023888770', '落日不会飞车(修复划痕版)', '', '18023888770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 20:06:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18023888770' LIMIT 1);
UPDATE users SET nick_name='落日不会飞车(修复划痕版)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18023888770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818840540', 'U15818840540', 'Gssl', '', '15818840540', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-14 19:54:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818840540' LIMIT 1);
UPDATE users SET nick_name='Gssl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15818840540';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352897740', 'U13352897740', 'huizi', '', '13352897740', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 19:35:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352897740' LIMIT 1);
UPDATE users SET nick_name='huizi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352897740';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18695680630', 'U18695680630', '鲤子', '', '18695680630', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1448, '2024-11-14 18:53:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18695680630' LIMIT 1);
UPDATE users SET nick_name='鲤子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1448) WHERE phone='18695680630';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302232872', 'U13302232872', '巧燕', '', '13302232872', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2024-11-14 17:55:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302232872' LIMIT 1);
UPDATE users SET nick_name='巧燕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13302232872';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660026267', 'U13660026267', 'David', '', '13660026267', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 16:45:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660026267' LIMIT 1);
UPDATE users SET nick_name='David', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660026267';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16782271025', 'U16782271025', '小七', '', '16782271025', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-14 16:28:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16782271025' LIMIT 1);
UPDATE users SET nick_name='小七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='16782271025';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15802657807', 'U15802657807', '15802657807', '', '15802657807', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 14:34:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15802657807' LIMIT 1);
UPDATE users SET nick_name='15802657807', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15802657807';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760454267', 'U13760454267', 'Rock', '', '13760454267', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 12:01:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760454267' LIMIT 1);
UPDATE users SET nick_name='Rock', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760454267';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760888923', 'U13760888923', '恩米', '', '13760888923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 11:56:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760888923' LIMIT 1);
UPDATE users SET nick_name='恩米', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760888923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580470232', 'U13580470232', 'Hao', '', '13580470232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-14 11:56:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580470232' LIMIT 1);
UPDATE users SET nick_name='Hao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13580470232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15817094314', 'U15817094314', 'Jacob_平', '', '15817094314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 11:27:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15817094314' LIMIT 1);
UPDATE users SET nick_name='Jacob_平', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15817094314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143131126', 'U13143131126', 'CoCo', '', '13143131126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 11:14:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143131126' LIMIT 1);
UPDATE users SET nick_name='CoCo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143131126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18257753525', 'U18257753525', 'bruuushbin', '', '18257753525', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 10:52:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18257753525' LIMIT 1);
UPDATE users SET nick_name='bruuushbin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18257753525';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017373755', 'U15017373755', '面糕', '', '15017373755', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 10:45:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017373755' LIMIT 1);
UPDATE users SET nick_name='面糕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017373755';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989107991', 'U15989107991', '🧄', '', '15989107991', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 10:38:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989107991' LIMIT 1);
UPDATE users SET nick_name='🧄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989107991';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622802058', 'U13622802058', '是真没意思啊', '', '13622802058', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 10:09:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622802058' LIMIT 1);
UPDATE users SET nick_name='是真没意思啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622802058';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919168676', 'U15919168676', '黄峰', '', '15919168676', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 00:12:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919168676' LIMIT 1);
UPDATE users SET nick_name='黄峰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15919168676';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600060016', 'U13600060016', 'Herr Daniel', '', '13600060016', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-14 00:11:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600060016' LIMIT 1);
UPDATE users SET nick_name='Herr Daniel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600060016';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18370846082', 'U18370846082', '18370846082', '', '18370846082', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 19:46:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18370846082' LIMIT 1);
UPDATE users SET nick_name='18370846082', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18370846082';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13641763396', 'U13641763396', '酥', '', '13641763396', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 18:33:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13641763396' LIMIT 1);
UPDATE users SET nick_name='酥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13641763396';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15376931125', 'U15376931125', '可乐', '', '15376931125', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 18:23:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15376931125' LIMIT 1);
UPDATE users SET nick_name='可乐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15376931125';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819427765', 'U18819427765', '🥚', '', '18819427765', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 18:12:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819427765' LIMIT 1);
UPDATE users SET nick_name='🥚', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819427765';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19854807475', 'U19854807475', 'wcl', '', '19854807475', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 17:40:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19854807475' LIMIT 1);
UPDATE users SET nick_name='wcl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19854807475';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825089668', 'U13825089668', 'Lily', '', '13825089668', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-13 17:40:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825089668' LIMIT 1);
UPDATE users SET nick_name='Lily', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13825089668';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15540927221', 'U15540927221', '15540927221', '', '15540927221', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 17:02:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15540927221' LIMIT 1);
UPDATE users SET nick_name='15540927221', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15540927221';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13143718731', 'U13143718731', '11', '', '13143718731', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 14:35:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13143718731' LIMIT 1);
UPDATE users SET nick_name='11', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13143718731';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18589281518', 'U18589281518', '123456789', '', '18589281518', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-13 14:11:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18589281518' LIMIT 1);
UPDATE users SET nick_name='123456789', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18589281518';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18371586412', 'U18371586412', 'ོ.', '', '18371586412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 13:05:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18371586412' LIMIT 1);
UPDATE users SET nick_name='ོ.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18371586412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060912649', 'U13060912649', 'J', '', '13060912649', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 12:03:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060912649' LIMIT 1);
UPDATE users SET nick_name='J', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13060912649';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820774542', 'U18820774542', 'Belinda林大静', '', '18820774542', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 11:52:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820774542' LIMIT 1);
UPDATE users SET nick_name='Belinda林大静', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820774542';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013002837', 'U15013002837', '乔子', '', '15013002837', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 11:34:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013002837' LIMIT 1);
UPDATE users SET nick_name='乔子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013002837';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15019848199', 'U15019848199', '斯多亚不动心', '', '15019848199', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-13 10:10:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15019848199' LIMIT 1);
UPDATE users SET nick_name='斯多亚不动心', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15019848199';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18023499850', 'U18023499850', '阿甜', '', '18023499850', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-12 22:52:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18023499850' LIMIT 1);
UPDATE users SET nick_name='阿甜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18023499850';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15074975794', 'U15074975794', '。', '', '15074975794', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-12 18:37:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15074975794' LIMIT 1);
UPDATE users SET nick_name='。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15074975794';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15274844978', 'U15274844978', '刘一一', '', '15274844978', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-12 18:36:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15274844978' LIMIT 1);
UPDATE users SET nick_name='刘一一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15274844978';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430884607', 'U13430884607', '🦋', '', '13430884607', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-12 18:19:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430884607' LIMIT 1);
UPDATE users SET nick_name='🦋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430884607';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18927070160', 'U18927070160', '清宇2421💰4🐴51💰', '', '18927070160', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-12 16:36:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18927070160' LIMIT 1);
UPDATE users SET nick_name='清宇2421💰4🐴51💰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18927070160';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352818557', 'U13352818557', '李大爷', '', '13352818557', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-12 14:46:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352818557' LIMIT 1);
UPDATE users SET nick_name='李大爷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352818557';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600536565', 'U13600536565', '深蓝AC', '', '13600536565', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-12 14:13:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600536565' LIMIT 1);
UPDATE users SET nick_name='深蓝AC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600536565';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622734759', 'U15622734759', '好名字可以让你的朋友更容易记住你', '', '15622734759', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-12 14:06:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622734759' LIMIT 1);
UPDATE users SET nick_name='好名字可以让你的朋友更容易记住你', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15622734759';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926071810', 'U13926071810', '行者', '', '13926071810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-12 12:49:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926071810' LIMIT 1);
UPDATE users SET nick_name='行者', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926071810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610120724', 'U13610120724', 'Incredible💃Ada', '', '13610120724', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-12 12:37:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610120724' LIMIT 1);
UPDATE users SET nick_name='Incredible💃Ada', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13610120724';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316639517', 'U18316639517', 'maiyu', '', '18316639517', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-12 11:03:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316639517' LIMIT 1);
UPDATE users SET nick_name='maiyu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316639517';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15975534813', 'U15975534813', '求其', '', '15975534813', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-12 10:29:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15975534813' LIMIT 1);
UPDATE users SET nick_name='求其', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15975534813';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18607305277', 'U18607305277', '18607305277', '', '18607305277', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-11 19:51:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18607305277' LIMIT 1);
UPDATE users SET nick_name='18607305277', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18607305277';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17623587316', 'U17623587316', '林', '', '17623587316', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-11 19:28:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17623587316' LIMIT 1);
UPDATE users SET nick_name='林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17623587316';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602716669', 'U13602716669', 'Rae Wong', '', '13602716669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-11 17:23:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602716669' LIMIT 1);
UPDATE users SET nick_name='Rae Wong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602716669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19130625812', 'U19130625812', 'Y', '', '19130625812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-11-11 16:38:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19130625812' LIMIT 1);
UPDATE users SET nick_name='Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='19130625812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13048055722', 'U13048055722', '何亞運(天天绣花&天天纸业)', '', '13048055722', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-11 15:22:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13048055722' LIMIT 1);
UPDATE users SET nick_name='何亞運(天天绣花&天天纸业)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13048055722';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15738812812', 'U15738812812', '梦梦', '', '15738812812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-11 12:53:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15738812812' LIMIT 1);
UPDATE users SET nick_name='梦梦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15738812812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19824544858', 'U19824544858', '19824544858', '', '19824544858', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-11 11:39:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19824544858' LIMIT 1);
UPDATE users SET nick_name='19824544858', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19824544858';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680209556', 'U18680209556', 'Allen', '', '18680209556', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-11 11:14:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680209556' LIMIT 1);
UPDATE users SET nick_name='Allen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680209556';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13870609996', 'U13870609996', 'Warm☀️', '', '13870609996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-11 10:21:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13870609996' LIMIT 1);
UPDATE users SET nick_name='Warm☀️', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13870609996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826089553', 'U13826089553', '哞', '', '13826089553', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-10 19:08:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826089553' LIMIT 1);
UPDATE users SET nick_name='哞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13826089553';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535448986', 'U13535448986', 'Bottle', '', '13535448986', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 69, '2024-11-10 18:18:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535448986' LIMIT 1);
UPDATE users SET nick_name='Bottle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 69) WHERE phone='13535448986';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826056692', 'U18826056692', 'Zzz.', '', '18826056692', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-10 17:48:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826056692' LIMIT 1);
UPDATE users SET nick_name='Zzz.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826056692';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15992468642', 'U15992468642', '大晴🔆', '', '15992468642', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-10 17:22:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15992468642' LIMIT 1);
UPDATE users SET nick_name='大晴🔆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15992468642';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18982470771', 'U18982470771', '王吃源（到处灯儿晃版）', '', '18982470771', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-10 16:59:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18982470771' LIMIT 1);
UPDATE users SET nick_name='王吃源（到处灯儿晃版）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18982470771';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17818146823', 'U17818146823', '17818146823', '', '17818146823', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-10 16:45:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17818146823' LIMIT 1);
UPDATE users SET nick_name='17818146823', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17818146823';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626128828', 'U15626128828', 'Oloi', '', '15626128828', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-10 16:07:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626128828' LIMIT 1);
UPDATE users SET nick_name='Oloi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626128828';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430286865', 'U13430286865', 'Vito', '', '13430286865', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-10 15:20:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430286865' LIMIT 1);
UPDATE users SET nick_name='Vito', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430286865';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18357373770', 'U18357373770', '🦀', '', '18357373770', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-10 15:09:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18357373770' LIMIT 1);
UPDATE users SET nick_name='🦀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18357373770';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18397914902', 'U18397914902', 'David', '', '18397914902', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-10 13:55:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18397914902' LIMIT 1);
UPDATE users SET nick_name='David', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18397914902';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825177204', 'U18825177204', '张程', '', '18825177204', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-10 13:46:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825177204' LIMIT 1);
UPDATE users SET nick_name='张程', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825177204';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16675367663', 'U16675367663', '可心', '', '16675367663', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-10 11:04:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16675367663' LIMIT 1);
UPDATE users SET nick_name='可心', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16675367663';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632389577', 'U13632389577', 'IVAN YIM', '', '13632389577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-10 10:20:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632389577' LIMIT 1);
UPDATE users SET nick_name='IVAN YIM', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13632389577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19866678051', 'U19866678051', '1122', '', '19866678051', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-10 10:20:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19866678051' LIMIT 1);
UPDATE users SET nick_name='1122', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='19866678051';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318808631', 'U13318808631', '伊妮', '', '13318808631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2024-11-10 10:06:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318808631' LIMIT 1);
UPDATE users SET nick_name='伊妮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='13318808631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802880840', 'U13802880840', '蒋先生', '', '13802880840', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-10 09:44:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802880840' LIMIT 1);
UPDATE users SET nick_name='蒋先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13802880840';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826460680', 'U18826460680', 'Bonnibel', '', '18826460680', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-11-10 09:17:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826460680' LIMIT 1);
UPDATE users SET nick_name='Bonnibel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='18826460680';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15883004144', 'U15883004144', 'Max', '', '15883004144', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 22:09:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15883004144' LIMIT 1);
UPDATE users SET nick_name='Max', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15883004144';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13148955202', 'U13148955202', '小林豆包', '', '13148955202', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 21:54:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13148955202' LIMIT 1);
UPDATE users SET nick_name='小林豆包', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13148955202';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928857811', 'U18928857811', 'cwl1', '', '18928857811', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 20:34:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928857811' LIMIT 1);
UPDATE users SET nick_name='cwl1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928857811';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924067118', 'U13924067118', 'cwl', '', '13924067118', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 20:27:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924067118' LIMIT 1);
UPDATE users SET nick_name='cwl', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924067118';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18642313321', 'U18642313321', '18642313321', '', '18642313321', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 19:22:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18642313321' LIMIT 1);
UPDATE users SET nick_name='18642313321', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18642313321';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17350224316', 'U17350224316', '王博文Greg', '', '17350224316', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 19:19:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17350224316' LIMIT 1);
UPDATE users SET nick_name='王博文Greg', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17350224316';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927536120', 'U19927536120', '别放蒜了🧄', '', '19927536120', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 18:18:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927536120' LIMIT 1);
UPDATE users SET nick_name='别放蒜了🧄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927536120';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13501514832', 'U13501514832', 'NelsonOY', '', '13501514832', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-11-09 16:48:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13501514832' LIMIT 1);
UPDATE users SET nick_name='NelsonOY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13501514832';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15012402600', 'U15012402600', 'Gahyechan', '', '15012402600', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 15:51:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15012402600' LIMIT 1);
UPDATE users SET nick_name='Gahyechan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15012402600';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15112131481', 'U15112131481', 'David.D', '', '15112131481', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 14:11:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15112131481' LIMIT 1);
UPDATE users SET nick_name='David.D', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15112131481';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18924167471', 'U18924167471', 'ROGER', '', '18924167471', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 13:07:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18924167471' LIMIT 1);
UPDATE users SET nick_name='ROGER', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18924167471';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18318169962', 'U18318169962', 'sasa 🎀', '', '18318169962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 12:31:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18318169962' LIMIT 1);
UPDATE users SET nick_name='sasa 🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18318169962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13903051970', 'U13903051970', '陈吴承霖', '', '13903051970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-09 11:25:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13903051970' LIMIT 1);
UPDATE users SET nick_name='陈吴承霖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13903051970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13680055975', 'U13680055975', '李大大', '', '13680055975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-09 09:22:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13680055975' LIMIT 1);
UPDATE users SET nick_name='李大大', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13680055975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920996695', 'U15920996695', 'CIT·_Ak🔥人气设计师）', '', '15920996695', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 23:33:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920996695' LIMIT 1);
UPDATE users SET nick_name='CIT·_Ak🔥人气设计师）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920996695';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570954424', 'U13570954424', '罗先生', '', '13570954424', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 599, '2024-11-08 23:06:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570954424' LIMIT 1);
UPDATE users SET nick_name='罗先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 599) WHERE phone='13570954424';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15607313415', 'U15607313415', '沱沱', '', '15607313415', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-08 21:22:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15607313415' LIMIT 1);
UPDATE users SET nick_name='沱沱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15607313415';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13990876242', 'U13990876242', 'Judy.', '', '13990876242', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 21:05:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13990876242' LIMIT 1);
UPDATE users SET nick_name='Judy.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13990876242';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19868900795', 'U19868900795', '奥特奥', '', '19868900795', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-08 20:58:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19868900795' LIMIT 1);
UPDATE users SET nick_name='奥特奥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='19868900795';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609039903', 'U13609039903', '美宝', '', '13609039903', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 20:21:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609039903' LIMIT 1);
UPDATE users SET nick_name='美宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609039903';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15878546069', 'U15878546069', '太阳', '', '15878546069', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 17:41:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15878546069' LIMIT 1);
UPDATE users SET nick_name='太阳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15878546069';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924180480', 'U13924180480', '我+Y', '', '13924180480', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 16:24:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924180480' LIMIT 1);
UPDATE users SET nick_name='我+Y', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924180480';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920805412', 'U15920805412', 'Natalie -苏烈', '', '15920805412', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 16:14:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920805412' LIMIT 1);
UPDATE users SET nick_name='Natalie -苏烈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920805412';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13431055066', 'U13431055066', '潘小成', '', '13431055066', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 15:18:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13431055066' LIMIT 1);
UPDATE users SET nick_name='潘小成', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13431055066';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544384662', 'U13544384662', 'mm', '', '13544384662', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 14:55:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544384662' LIMIT 1);
UPDATE users SET nick_name='mm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544384662';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520468520', 'U18520468520', '事事', '', '18520468520', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 14:43:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520468520' LIMIT 1);
UPDATE users SET nick_name='事事', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520468520';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13054141314', 'U13054141314', '江', '', '13054141314', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-08 13:46:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13054141314' LIMIT 1);
UPDATE users SET nick_name='江', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13054141314';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13597849555', 'U13597849555', '顺其自然', '', '13597849555', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-08 12:36:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13597849555' LIMIT 1);
UPDATE users SET nick_name='顺其自然', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13597849555';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18823458604', 'U18823458604', 'Abner', '', '18823458604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 12:07:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18823458604' LIMIT 1);
UPDATE users SET nick_name='Abner', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18823458604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622101040', 'U15622101040', '大麦', '', '15622101040', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 10:55:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622101040' LIMIT 1);
UPDATE users SET nick_name='大麦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622101040';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825051551', 'U13825051551', 'Lillian💙林仔碗', '', '13825051551', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2024-11-08 10:28:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825051551' LIMIT 1);
UPDATE users SET nick_name='Lillian💙林仔碗', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13825051551';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316694697', 'U18316694697', '妮', '', '18316694697', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-08 10:13:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316694697' LIMIT 1);
UPDATE users SET nick_name='妮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316694697';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917793034', 'U15917793034', 'Melody', '', '15917793034', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-08 09:15:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917793034' LIMIT 1);
UPDATE users SET nick_name='Melody', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15917793034';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560082806', 'U13560082806', 'Rita', '', '13560082806', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-07 20:58:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560082806' LIMIT 1);
UPDATE users SET nick_name='Rita', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560082806';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725409969', 'U13725409969', '蓦然', '', '13725409969', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-07 20:55:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725409969' LIMIT 1);
UPDATE users SET nick_name='蓦然', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725409969';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17820286467', 'U17820286467', '啊', '', '17820286467', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-07 18:34:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17820286467' LIMIT 1);
UPDATE users SET nick_name='啊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17820286467';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127805987', 'U18127805987', '寅', '', '18127805987', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 500, '2024-11-07 12:10:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127805987' LIMIT 1);
UPDATE users SET nick_name='寅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 500) WHERE phone='18127805987';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927708229', 'U19927708229', '@Jacob', '', '19927708229', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-07 11:49:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927708229' LIMIT 1);
UPDATE users SET nick_name='@Jacob', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927708229';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902308716', 'U13902308716', 'lol', '', '13902308716', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 14, '2024-11-07 11:27:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902308716' LIMIT 1);
UPDATE users SET nick_name='lol', balance=GREATEST(balance, 0.00), points=GREATEST(points, 14) WHERE phone='13902308716';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450376762', 'U13450376762', '狮子实', '', '13450376762', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-07 10:51:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450376762' LIMIT 1);
UPDATE users SET nick_name='狮子实', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450376762';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18144827313', 'U18144827313', 'penny one', '', '18144827313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-07 10:40:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18144827313' LIMIT 1);
UPDATE users SET nick_name='penny one', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18144827313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102250545', 'U18102250545', '黄', '', '18102250545', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-07 10:15:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102250545' LIMIT 1);
UPDATE users SET nick_name='黄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18102250545';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122487234', 'U18122487234', '黄小姐', '', '18122487234', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-07 09:54:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122487234' LIMIT 1);
UPDATE users SET nick_name='黄小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18122487234';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017589237', 'U15017589237', 'gosen', '', '15017589237', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-06 23:22:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017589237' LIMIT 1);
UPDATE users SET nick_name='gosen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15017589237';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15608448708', 'U15608448708', '15608448708', '', '15608448708', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-06 20:38:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15608448708' LIMIT 1);
UPDATE users SET nick_name='15608448708', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15608448708';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14754547951', 'U14754547951', '霞', '', '14754547951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-06 20:22:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14754547951' LIMIT 1);
UPDATE users SET nick_name='霞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14754547951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17757950635', 'U17757950635', 'jeremy', '', '17757950635', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-06 17:41:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17757950635' LIMIT 1);
UPDATE users SET nick_name='jeremy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17757950635';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620250101', 'U18620250101', '浩鑫', '', '18620250101', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-06 16:02:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620250101' LIMIT 1);
UPDATE users SET nick_name='浩鑫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620250101';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13929581354', 'U13929581354', 'lancat', '', '13929581354', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-06 15:07:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13929581354' LIMIT 1);
UPDATE users SET nick_name='lancat', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13929581354';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13889901129', 'U13889901129', '😃', '', '13889901129', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-06 12:28:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13889901129' LIMIT 1);
UPDATE users SET nick_name='😃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13889901129';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450351669', 'U13450351669', 'Tionne', '', '13450351669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-06 12:27:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450351669' LIMIT 1);
UPDATE users SET nick_name='Tionne', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450351669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588711253', 'U18588711253', '18588711253', '', '18588711253', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-06 12:11:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588711253' LIMIT 1);
UPDATE users SET nick_name='18588711253', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588711253';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242815421', 'U13242815421', 'Somnus👺', '', '13242815421', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-06 11:57:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242815421' LIMIT 1);
UPDATE users SET nick_name='Somnus👺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242815421';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18265308076', 'U18265308076', '梁山伯', '', '18265308076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-06 10:06:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18265308076' LIMIT 1);
UPDATE users SET nick_name='梁山伯', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18265308076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922465533', 'U13922465533', '燕', '', '13922465533', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-06 10:03:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922465533' LIMIT 1);
UPDATE users SET nick_name='燕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922465533';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13001263177', 'U13001263177', '13001263177', '', '13001263177', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-05 20:27:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13001263177' LIMIT 1);
UPDATE users SET nick_name='13001263177', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13001263177';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17675626876', 'U17675626876', '🌟符心羽', '', '17675626876', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-05 20:25:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17675626876' LIMIT 1);
UPDATE users SET nick_name='🌟符心羽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17675626876';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17328287814', 'U17328287814', '17328287814', '', '17328287814', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-05 20:02:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17328287814' LIMIT 1);
UPDATE users SET nick_name='17328287814', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17328287814';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529505038', 'U18529505038', 'Jusylvia', '', '18529505038', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-05 17:07:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529505038' LIMIT 1);
UPDATE users SET nick_name='Jusylvia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529505038';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535321497', 'U13535321497', '13535321497', '', '13535321497', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-05 15:58:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535321497' LIMIT 1);
UPDATE users SET nick_name='13535321497', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535321497';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825174228', 'U18825174228', 'KinaPige', '', '18825174228', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-05 11:26:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825174228' LIMIT 1);
UPDATE users SET nick_name='KinaPige', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18825174228';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820264147', 'U15820264147', '15820264147', '', '15820264147', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-05 09:49:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820264147' LIMIT 1);
UPDATE users SET nick_name='15820264147', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820264147';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986366316', 'U15986366316', '只有体重最稳', '', '15986366316', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-04 22:20:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986366316' LIMIT 1);
UPDATE users SET nick_name='只有体重最稳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15986366316';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18244980021', 'U18244980021', 'Eileen', '', '18244980021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-04 19:19:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18244980021' LIMIT 1);
UPDATE users SET nick_name='Eileen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18244980021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18040246759', 'U18040246759', '徐名建', '', '18040246759', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-04 18:51:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18040246759' LIMIT 1);
UPDATE users SET nick_name='徐名建', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18040246759';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17364599874', 'U17364599874', 'ZI', '', '17364599874', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-04 17:11:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17364599874' LIMIT 1);
UPDATE users SET nick_name='ZI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17364599874';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560303133', 'U13560303133', 'Wendy_D🌞', '', '13560303133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-04 16:45:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560303133' LIMIT 1);
UPDATE users SET nick_name='Wendy_D🌞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560303133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588574335', 'U18588574335', 'Chen', '', '18588574335', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-04 14:42:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588574335' LIMIT 1);
UPDATE users SET nick_name='Chen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588574335';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13168866333', 'U13168866333', '13168866333', '', '13168866333', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-04 11:46:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13168866333' LIMIT 1);
UPDATE users SET nick_name='13168866333', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13168866333';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620100626', 'U18620100626', '冷月独酌', '', '18620100626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-04 11:12:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620100626' LIMIT 1);
UPDATE users SET nick_name='冷月独酌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620100626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430309123', 'U13430309123', 'Mandymini๛', '', '13430309123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-04 01:28:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430309123' LIMIT 1);
UPDATE users SET nick_name='Mandymini๛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430309123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13042009905', 'U13042009905', 'Luv(sic)', '', '13042009905', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-03 18:43:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13042009905' LIMIT 1);
UPDATE users SET nick_name='Luv(sic)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13042009905';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660089020', 'U13660089020', '20', '', '13660089020', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-03 17:07:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660089020' LIMIT 1);
UPDATE users SET nick_name='20', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13660089020';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824187908', 'U13824187908', '🦐🦐', '', '13824187908', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 17:07:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824187908' LIMIT 1);
UPDATE users SET nick_name='🦐🦐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824187908';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18891829944', 'U18891829944', '18891829944', '', '18891829944', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 16:42:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18891829944' LIMIT 1);
UPDATE users SET nick_name='18891829944', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18891829944';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825004323', 'U13825004323', 'Jm.', '', '13825004323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 16:15:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825004323' LIMIT 1);
UPDATE users SET nick_name='Jm.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13825004323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15575192087', 'U15575192087', '张', '', '15575192087', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 16:13:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15575192087' LIMIT 1);
UPDATE users SET nick_name='张', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15575192087';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18801360464', 'U18801360464', 'Leah', '', '18801360464', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1937, '2024-11-03 15:57:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18801360464' LIMIT 1);
UPDATE users SET nick_name='Leah', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1937) WHERE phone='18801360464';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13829779357', 'U13829779357', 'David', '', '13829779357', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 15:37:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13829779357' LIMIT 1);
UPDATE users SET nick_name='David', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13829779357';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011834176', 'U18011834176', '18011834176', '', '18011834176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 15:20:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011834176' LIMIT 1);
UPDATE users SET nick_name='18011834176', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011834176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664978009', 'U18664978009', '茱莉', '', '18664978009', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 15:05:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664978009' LIMIT 1);
UPDATE users SET nick_name='茱莉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664978009';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533666391', 'U13533666391', '是肯定', '', '13533666391', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 14:58:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533666391' LIMIT 1);
UPDATE users SET nick_name='是肯定', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533666391';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610023218', 'U13610023218', '13610023218', '', '13610023218', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 13:59:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610023218' LIMIT 1);
UPDATE users SET nick_name='13610023218', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13610023218';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18529378080', 'U18529378080', 'Gaki', '', '18529378080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 13:54:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18529378080' LIMIT 1);
UPDATE users SET nick_name='Gaki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529378080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127900523', 'U18127900523', '花花', '', '18127900523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 13:21:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127900523' LIMIT 1);
UPDATE users SET nick_name='花花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127900523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17718858268', 'U17718858268', '老曹', '', '17718858268', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-03 12:16:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17718858268' LIMIT 1);
UPDATE users SET nick_name='老曹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17718858268';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533112600', 'U13533112600', '龙少爷', '', '13533112600', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-03 10:14:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533112600' LIMIT 1);
UPDATE users SET nick_name='龙少爷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13533112600';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416182490', 'U13416182490', '阎冰', '', '13416182490', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 23, '2024-11-02 22:22:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416182490' LIMIT 1);
UPDATE users SET nick_name='阎冰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 23) WHERE phone='13416182490';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13431062740', 'U13431062740', '13431062740', '', '13431062740', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 20:36:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13431062740' LIMIT 1);
UPDATE users SET nick_name='13431062740', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13431062740';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288819741', 'U13288819741', '牛逼', '', '13288819741', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-11-02 20:07:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288819741' LIMIT 1);
UPDATE users SET nick_name='牛逼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13288819741';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13703080460', 'U13703080460', 'eee', '', '13703080460', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2024-11-02 18:12:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13703080460' LIMIT 1);
UPDATE users SET nick_name='eee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='13703080460';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665154704', 'U17665154704', '🍊', '', '17665154704', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 17:54:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665154704' LIMIT 1);
UPDATE users SET nick_name='🍊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665154704';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915827764', 'U15915827764', '『Ray』', '', '15915827764', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-11-02 16:29:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915827764' LIMIT 1);
UPDATE users SET nick_name='『Ray』', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='15915827764';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15940010500', 'U15940010500', '嘻嘻🐌', '', '15940010500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 16:23:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15940010500' LIMIT 1);
UPDATE users SET nick_name='嘻嘻🐌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15940010500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13138460303', 'U13138460303', '.', '', '13138460303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 15:52:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13138460303' LIMIT 1);
UPDATE users SET nick_name='.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13138460303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18897055636', 'U18897055636', 'h.', '', '18897055636', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 15:45:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18897055636' LIMIT 1);
UPDATE users SET nick_name='h.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18897055636';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217200436', 'U15217200436', 'KiNZ.🍋', '', '15217200436', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 15:42:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217200436' LIMIT 1);
UPDATE users SET nick_name='KiNZ.🍋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15217200436';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13691677970', 'U13691677970', '8', '', '13691677970', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 13:10:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13691677970' LIMIT 1);
UPDATE users SET nick_name='8', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13691677970';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418166311', 'U13418166311', '郭', '', '13418166311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2024-11-02 13:05:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418166311' LIMIT 1);
UPDATE users SET nick_name='郭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='13418166311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813368039', 'U15813368039', '15813368039', '', '15813368039', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 12:19:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813368039' LIMIT 1);
UPDATE users SET nick_name='15813368039', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813368039';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711232892', 'U13711232892', 'M.梁', '', '13711232892', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 12:17:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711232892' LIMIT 1);
UPDATE users SET nick_name='M.梁', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13711232892';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013142212', 'U15013142212', '理子', '', '15013142212', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 12:05:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013142212' LIMIT 1);
UPDATE users SET nick_name='理子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013142212';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926405125', 'U13926405125', '13926405125', '', '13926405125', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 11:50:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926405125' LIMIT 1);
UPDATE users SET nick_name='13926405125', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926405125';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18270521028', 'U18270521028', '有森', '', '18270521028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 2788, '2024-11-02 11:35:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18270521028' LIMIT 1);
UPDATE users SET nick_name='有森', balance=GREATEST(balance, 0.00), points=GREATEST(points, 2788) WHERE phone='18270521028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13332882260', 'U13332882260', '13332882260', '', '13332882260', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 10:25:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13332882260' LIMIT 1);
UPDATE users SET nick_name='13332882260', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13332882260';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544522599', 'U13544522599', '小丸子', '', '13544522599', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1016, '2024-11-02 10:19:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544522599' LIMIT 1);
UPDATE users SET nick_name='小丸子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1016) WHERE phone='13544522599';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570142989', 'U13570142989', 'Jam 高', '', '13570142989', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-02 10:12:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570142989' LIMIT 1);
UPDATE users SET nick_name='Jam 高', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13570142989';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17819574685', 'U17819574685', 'Marshall Mui', '', '17819574685', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 10:12:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17819574685' LIMIT 1);
UPDATE users SET nick_name='Marshall Mui', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17819574685';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826087275', 'U13826087275', 'Rachel_鐘', '', '13826087275', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-02 09:13:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826087275' LIMIT 1);
UPDATE users SET nick_name='Rachel_鐘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826087275';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18774998066', 'U18774998066', '曾曾曾', '', '18774998066', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-02 00:53:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18774998066' LIMIT 1);
UPDATE users SET nick_name='曾曾曾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18774998066';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18102265693', 'U18102265693', '222', '', '18102265693', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-02 00:07:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18102265693' LIMIT 1);
UPDATE users SET nick_name='222', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18102265693';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620410925', 'U18620410925', 'GY', '', '18620410925', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 22:56:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620410925' LIMIT 1);
UPDATE users SET nick_name='GY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620410925';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18852000578', 'U18852000578', '焕', '', '18852000578', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-11-01 22:39:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18852000578' LIMIT 1);
UPDATE users SET nick_name='焕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='18852000578';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13437624006', 'U13437624006', '雨', '', '13437624006', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 22:13:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13437624006' LIMIT 1);
UPDATE users SET nick_name='雨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13437624006';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560350089', 'U13560350089', 'ludan', '', '13560350089', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 21:23:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560350089' LIMIT 1);
UPDATE users SET nick_name='ludan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560350089';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902542962', 'U13902542962', '红杨桃', '', '13902542962', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 20:40:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902542962' LIMIT 1);
UPDATE users SET nick_name='红杨桃', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902542962';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13544551851', 'U13544551851', 'Derek Kwang', '', '13544551851', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-11-01 20:16:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13544551851' LIMIT 1);
UPDATE users SET nick_name='Derek Kwang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13544551851';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560253843', 'U13560253843', 'jessie', '', '13560253843', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 19:41:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560253843' LIMIT 1);
UPDATE users SET nick_name='jessie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560253843';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18684940981', 'U18684940981', '江江子💕', '', '18684940981', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-01 18:34:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18684940981' LIMIT 1);
UPDATE users SET nick_name='江江子💕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18684940981';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13342861911', 'U13342861911', '徐名建', '', '13342861911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 18:23:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13342861911' LIMIT 1);
UPDATE users SET nick_name='徐名建', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13342861911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632261687', 'U13632261687', 'Rennie', '', '13632261687', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-11-01 17:48:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632261687' LIMIT 1);
UPDATE users SET nick_name='Rennie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13632261687';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18565196631', 'U18565196631', '✨👑✨', '', '18565196631', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 17:35:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18565196631' LIMIT 1);
UPDATE users SET nick_name='✨👑✨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18565196631';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920801530', 'U15920801530', '喵咪老师🐈', '', '15920801530', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 16:20:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920801530' LIMIT 1);
UPDATE users SET nick_name='喵咪老师🐈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920801530';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18396352518', 'U18396352518', '西风不识面', '', '18396352518', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-01 16:05:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18396352518' LIMIT 1);
UPDATE users SET nick_name='西风不识面', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18396352518';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13859521361', 'U13859521361', 'Lollipop', '', '13859521361', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-11-01 15:56:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13859521361' LIMIT 1);
UPDATE users SET nick_name='Lollipop', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13859521361';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560378411', 'U13560378411', '13560378411', '', '13560378411', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 15:10:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560378411' LIMIT 1);
UPDATE users SET nick_name='13560378411', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560378411';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725359710', 'U13725359710', 'tony', '', '13725359710', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 12:36:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725359710' LIMIT 1);
UPDATE users SET nick_name='tony', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725359710';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13352898036', 'U13352898036', 'pp', '', '13352898036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 12:31:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13352898036' LIMIT 1);
UPDATE users SET nick_name='pp', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13352898036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710108138', 'U13710108138', '曾', '', '13710108138', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 12:27:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710108138' LIMIT 1);
UPDATE users SET nick_name='曾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710108138';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13068801305', 'U13068801305', '🎶 Kallista⁺', '', '13068801305', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-11-01 12:23:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13068801305' LIMIT 1);
UPDATE users SET nick_name='🎶 Kallista⁺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13068801305';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602442118', 'U13602442118', '你', '', '13602442118', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-11-01 11:49:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602442118' LIMIT 1);
UPDATE users SET nick_name='你', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602442118';
