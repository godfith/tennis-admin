SET NAMES utf8mb4;
-- 中大店用户导入 part 18 (按手机号去重，已存在跳过)
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18938962323', 'U18938962323', '🔸一只团子🔸', '', '18938962323', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-28 15:34:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18938962323' LIMIT 1);
UPDATE users SET nick_name='🔸一只团子🔸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='18938962323';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418185123', 'U13418185123', 'Chow 先生', '', '13418185123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-28 14:26:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418185123' LIMIT 1);
UPDATE users SET nick_name='Chow 先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13418185123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914379920', 'U15914379920', 'JOEY.un', '', '15914379920', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-09-28 14:15:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914379920' LIMIT 1);
UPDATE users SET nick_name='JOEY.un', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15914379920';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17608992929', 'U17608992929', 'oli', '', '17608992929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 13:13:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17608992929' LIMIT 1);
UPDATE users SET nick_name='oli', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17608992929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218885699', 'U15218885699', '小叶', '', '15218885699', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 13:06:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218885699' LIMIT 1);
UPDATE users SET nick_name='小叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218885699';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521028330', 'U15521028330', '牛腩', '', '15521028330', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 12:21:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521028330' LIMIT 1);
UPDATE users SET nick_name='牛腩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521028330';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570958068', 'U13570958068', 'Sharpenlin', '', '13570958068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-28 12:20:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570958068' LIMIT 1);
UPDATE users SET nick_name='Sharpenlin', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13570958068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570983660', 'U13570983660', 'Josie', '', '13570983660', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 12:13:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570983660' LIMIT 1);
UPDATE users SET nick_name='Josie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570983660';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13790085809', 'U13790085809', '13790085809', '', '13790085809', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 12:01:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13790085809' LIMIT 1);
UPDATE users SET nick_name='13790085809', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13790085809';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521134366', 'U15521134366', '白水胶囊🐳', '', '15521134366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 10:52:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521134366' LIMIT 1);
UPDATE users SET nick_name='白水胶囊🐳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521134366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13604363632', 'U13604363632', '冬', '', '13604363632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-28 10:50:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13604363632' LIMIT 1);
UPDATE users SET nick_name='冬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13604363632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13196157775', 'U13196157775', 'Vom Baum am Berge', '', '13196157775', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-28 10:49:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13196157775' LIMIT 1);
UPDATE users SET nick_name='Vom Baum am Berge', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13196157775';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435657930', 'U13435657930', 'Kevin👑', '', '13435657930', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-28 10:32:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435657930' LIMIT 1);
UPDATE users SET nick_name='Kevin👑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13435657930';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450429838', 'U13450429838', 'FiFi.Tse', '', '13450429838', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 127, '2024-09-28 10:17:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450429838' LIMIT 1);
UPDATE users SET nick_name='FiFi.Tse', balance=GREATEST(balance, 0.00), points=GREATEST(points, 127) WHERE phone='13450429838';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19928336169', 'U19928336169', '网球人员i', '', '19928336169', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 10:16:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19928336169' LIMIT 1);
UPDATE users SET nick_name='网球人员i', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19928336169';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288491465', 'U13288491465', 'Joanna', '', '13288491465', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 10:09:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288491465' LIMIT 1);
UPDATE users SET nick_name='Joanna', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288491465';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13610212815', 'U13610212815', '品', '', '13610212815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-28 10:02:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13610212815' LIMIT 1);
UPDATE users SET nick_name='品', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13610212815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521424865', 'U15521424865', '小七', '', '15521424865', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 90, '2024-09-28 10:01:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521424865' LIMIT 1);
UPDATE users SET nick_name='小七', balance=GREATEST(balance, 0.00), points=GREATEST(points, 90) WHERE phone='15521424865';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18818525910', 'U18818525910', '程爱芬', '', '18818525910', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 10:00:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18818525910' LIMIT 1);
UPDATE users SET nick_name='程爱芬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18818525910';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15815904677', 'U15815904677', '琪', '', '15815904677', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-28 09:02:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15815904677' LIMIT 1);
UPDATE users SET nick_name='琪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15815904677';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18584865280', 'U18584865280', '123', '', '18584865280', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-27 21:19:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18584865280' LIMIT 1);
UPDATE users SET nick_name='123', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18584865280';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17502067850', 'U17502067850', '🎧', '', '17502067850', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-27 21:02:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17502067850' LIMIT 1);
UPDATE users SET nick_name='🎧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17502067850';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15730990191', 'U15730990191', '欢乐马', '', '15730990191', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-27 20:44:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15730990191' LIMIT 1);
UPDATE users SET nick_name='欢乐马', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15730990191';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570565792', 'U13570565792', 'Fenser_fang', '', '13570565792', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1000, '2024-09-27 20:13:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570565792' LIMIT 1);
UPDATE users SET nick_name='Fenser_fang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1000) WHERE phone='13570565792';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17812126825', 'U17812126825', 'Alo', '', '17812126825', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-27 19:29:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17812126825' LIMIT 1);
UPDATE users SET nick_name='Alo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17812126825';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560032561', 'U13560032561', '囡囡', '', '13560032561', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 128, '2024-09-27 18:56:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560032561' LIMIT 1);
UPDATE users SET nick_name='囡囡', balance=GREATEST(balance, 0.00), points=GREATEST(points, 128) WHERE phone='13560032561';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13756981881', 'U13756981881', '爱车人', '', '13756981881', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-27 16:08:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13756981881' LIMIT 1);
UPDATE users SET nick_name='爱车人', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13756981881';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13142132002', 'U13142132002', 'Gang Yang', '', '13142132002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-27 14:49:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13142132002' LIMIT 1);
UPDATE users SET nick_name='Gang Yang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13142132002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640054579', 'U13640054579', 'Mercredi.', '', '13640054579', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-27 14:37:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640054579' LIMIT 1);
UPDATE users SET nick_name='Mercredi.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640054579';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15819358301', 'U15819358301', '15819358301', '', '15819358301', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-27 14:14:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15819358301' LIMIT 1);
UPDATE users SET nick_name='15819358301', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15819358301';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18725069100', 'U18725069100', '瑶瑶', '', '18725069100', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-27 12:48:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18725069100' LIMIT 1);
UPDATE users SET nick_name='瑶瑶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18725069100';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13682202910', 'U13682202910', '暴力Jessica', '', '13682202910', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-27 11:05:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13682202910' LIMIT 1);
UPDATE users SET nick_name='暴力Jessica', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13682202910';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15602324114', 'U15602324114', 'KolTen', '', '15602324114', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 2597, '2024-09-27 10:02:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15602324114' LIMIT 1);
UPDATE users SET nick_name='KolTen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 2597) WHERE phone='15602324114';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15763588979', 'U15763588979', 'aaad', '', '15763588979', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-27 09:42:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15763588979' LIMIT 1);
UPDATE users SET nick_name='aaad', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15763588979';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680515913', 'U18680515913', 'Samuel', '', '18680515913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-26 22:14:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680515913' LIMIT 1);
UPDATE users SET nick_name='Samuel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680515913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826071805', 'U18826071805', 'Fayyy', '', '18826071805', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-26 21:39:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826071805' LIMIT 1);
UPDATE users SET nick_name='Fayyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826071805';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665022345', 'U18665022345', 'HYO', '', '18665022345', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-09-26 20:44:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665022345' LIMIT 1);
UPDATE users SET nick_name='HYO', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18665022345';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017579803', 'U15017579803', '😎司徒🤩', '', '15017579803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-09-26 19:10:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017579803' LIMIT 1);
UPDATE users SET nick_name='😎司徒🤩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='15017579803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13901418982', 'U13901418982', '粥粥', '', '13901418982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-09-26 14:15:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13901418982' LIMIT 1);
UPDATE users SET nick_name='粥粥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13901418982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620253543', 'U18620253543', 'JK', '', '18620253543', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-26 14:05:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620253543' LIMIT 1);
UPDATE users SET nick_name='JK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620253543';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631355123', 'U13631355123', '知乐', '', '13631355123', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-26 13:31:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631355123' LIMIT 1);
UPDATE users SET nick_name='知乐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631355123';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17612092797', 'U17612092797', '叶修', '', '17612092797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-26 13:22:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17612092797' LIMIT 1);
UPDATE users SET nick_name='叶修', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17612092797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520102290', 'U18520102290', '小兜', '', '18520102290', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-26 13:05:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520102290' LIMIT 1);
UPDATE users SET nick_name='小兜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520102290';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570912844', 'U13570912844', '河边有条鱼', '', '13570912844', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-26 12:31:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570912844' LIMIT 1);
UPDATE users SET nick_name='河边有条鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570912844';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719189024', 'U13719189024', 'Aj', '', '13719189024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 206, '2024-09-26 11:08:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719189024' LIMIT 1);
UPDATE users SET nick_name='Aj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 206) WHERE phone='13719189024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560458042', 'U13560458042', '小蚊子', '', '13560458042', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 198, '2024-09-26 10:37:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560458042' LIMIT 1);
UPDATE users SET nick_name='小蚊子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 198) WHERE phone='13560458042';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18966378554', 'U18966378554', '✨小蚊子🌸', '', '18966378554', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-26 10:36:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18966378554' LIMIT 1);
UPDATE users SET nick_name='✨小蚊子🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18966378554';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18500902695', 'U18500902695', '吴', '', '18500902695', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-26 10:26:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18500902695' LIMIT 1);
UPDATE users SET nick_name='吴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18500902695';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450406103', 'U13450406103', '咖啡茵', '', '13450406103', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-25 23:17:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450406103' LIMIT 1);
UPDATE users SET nick_name='咖啡茵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13450406103';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15365183116', 'U15365183116', 'pooh', '', '15365183116', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-09-25 19:41:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15365183116' LIMIT 1);
UPDATE users SET nick_name='pooh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15365183116';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13765801984', 'U13765801984', '吉', '', '13765801984', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 94, '2024-09-25 17:59:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13765801984' LIMIT 1);
UPDATE users SET nick_name='吉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 94) WHERE phone='13765801984';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535325934', 'U13535325934', '🌸SuSan🌸', '', '13535325934', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-25 17:32:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535325934' LIMIT 1);
UPDATE users SET nick_name='🌸SuSan🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535325934';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15361502046', 'U15361502046', 'Jade', '', '15361502046', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-25 16:52:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15361502046' LIMIT 1);
UPDATE users SET nick_name='Jade', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15361502046';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503011080', 'U13503011080', '老马', '', '13503011080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-25 16:27:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503011080' LIMIT 1);
UPDATE users SET nick_name='老马', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='13503011080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588593328', 'U18588593328', 'Dominic Yiu', '', '18588593328', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-25 15:57:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588593328' LIMIT 1);
UPDATE users SET nick_name='Dominic Yiu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588593328';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13316106669', 'U13316106669', '🍭-T-L-L-🚲', '', '13316106669', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-25 15:49:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13316106669' LIMIT 1);
UPDATE users SET nick_name='🍭-T-L-L-🚲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13316106669';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15600990187', 'U15600990187', '彬大區', '', '15600990187', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-25 15:21:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15600990187' LIMIT 1);
UPDATE users SET nick_name='彬大區', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='15600990187';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922083809', 'U18922083809', '弥笙', '', '18922083809', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-25 15:01:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922083809' LIMIT 1);
UPDATE users SET nick_name='弥笙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18922083809';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820214004', 'U15820214004', '马马吖', '', '15820214004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-25 14:15:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820214004' LIMIT 1);
UPDATE users SET nick_name='马马吖', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15820214004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247664366', 'U13247664366', 'LYJ', '', '13247664366', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-25 13:09:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247664366' LIMIT 1);
UPDATE users SET nick_name='LYJ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13247664366';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560097922', 'U13560097922', '卡卡爷Carla', '', '13560097922', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-25 11:27:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560097922' LIMIT 1);
UPDATE users SET nick_name='卡卡爷Carla', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560097922';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392102811', 'U13392102811', 'fai', '', '13392102811', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-25 11:26:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392102811' LIMIT 1);
UPDATE users SET nick_name='fai', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13392102811';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18899759194', 'U18899759194', '·Runᴗo·ᰔᩚ', '', '18899759194', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-25 11:18:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18899759194' LIMIT 1);
UPDATE users SET nick_name='·Runᴗo·ᰔᩚ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18899759194';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15099961691', 'U15099961691', 'Vchᴗᰔᩚ', '', '15099961691', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-25 11:18:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15099961691' LIMIT 1);
UPDATE users SET nick_name='Vchᴗᰔᩚ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15099961691';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15934297996', 'U15934297996', '呵', '', '15934297996', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-25 09:17:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15934297996' LIMIT 1);
UPDATE users SET nick_name='呵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15934297996';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18721378036', 'U18721378036', 'zld', '', '18721378036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-24 21:15:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18721378036' LIMIT 1);
UPDATE users SET nick_name='zld', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18721378036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17708489262', 'U17708489262', 'Wancheng🎾', '', '17708489262', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-24 21:12:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17708489262' LIMIT 1);
UPDATE users SET nick_name='Wancheng🎾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17708489262';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15180449534', 'U15180449534', 'Yangyoung🥤', '', '15180449534', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-09-24 19:14:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15180449534' LIMIT 1);
UPDATE users SET nick_name='Yangyoung🥤', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15180449534';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18806688186', 'U18806688186', '春青', '', '18806688186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-24 19:07:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18806688186' LIMIT 1);
UPDATE users SET nick_name='春青', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='18806688186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640341495', 'U13640341495', 'Einjacky', '', '13640341495', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2024-09-24 16:10:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640341495' LIMIT 1);
UPDATE users SET nick_name='Einjacky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='13640341495';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15625057782', 'U15625057782', 'L', '', '15625057782', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-24 14:20:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15625057782' LIMIT 1);
UPDATE users SET nick_name='L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15625057782';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18638947156', 'U18638947156', '王十二', '', '18638947156', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-24 13:30:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18638947156' LIMIT 1);
UPDATE users SET nick_name='王十二', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18638947156';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18878979943', 'U18878979943', '太阳', '', '18878979943', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-24 13:25:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18878979943' LIMIT 1);
UPDATE users SET nick_name='太阳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18878979943';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13811084863', 'U13811084863', 'Rodi', '', '13811084863', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-09-24 12:36:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13811084863' LIMIT 1);
UPDATE users SET nick_name='Rodi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13811084863';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028170789', 'U18028170789', '烽_', '', '18028170789', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-24 12:25:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028170789' LIMIT 1);
UPDATE users SET nick_name='烽_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='18028170789';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578790403', 'U18578790403', 'L', '', '18578790403', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 59, '2024-09-24 09:36:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578790403' LIMIT 1);
UPDATE users SET nick_name='L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 59) WHERE phone='18578790403';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560405957', 'U13560405957', '王子不是我', '', '13560405957', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 1171, '2024-09-23 18:25:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560405957' LIMIT 1);
UPDATE users SET nick_name='王子不是我', balance=GREATEST(balance, 0.00), points=GREATEST(points, 1171) WHERE phone='13560405957';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17610470186', 'U17610470186', '树', '', '17610470186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-23 17:43:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17610470186' LIMIT 1);
UPDATE users SET nick_name='树', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17610470186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622288882', 'U13622288882', 'leeyg', '', '13622288882', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-23 17:36:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622288882' LIMIT 1);
UPDATE users SET nick_name='leeyg', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13622288882';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15000080975', 'U15000080975', 'liuzj', '', '15000080975', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-23 17:28:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15000080975' LIMIT 1);
UPDATE users SET nick_name='liuzj', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15000080975';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18288630982', 'U18288630982', 'mi', '', '18288630982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-23 16:42:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18288630982' LIMIT 1);
UPDATE users SET nick_name='mi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18288630982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560788517', 'U13560788517', 'Here', '', '13560788517', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 66, '2024-09-23 15:07:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560788517' LIMIT 1);
UPDATE users SET nick_name='Here', balance=GREATEST(balance, 0.00), points=GREATEST(points, 66) WHERE phone='13560788517';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17512956356', 'U17512956356', 'z', '', '17512956356', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-23 14:48:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17512956356' LIMIT 1);
UPDATE users SET nick_name='z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17512956356';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798956039', 'U13798956039', '李丸子', '', '13798956039', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-23 12:51:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798956039' LIMIT 1);
UPDATE users SET nick_name='李丸子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13798956039';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602776655', 'U13602776655', '寶記', '', '13602776655', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-23 10:03:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602776655' LIMIT 1);
UPDATE users SET nick_name='寶記', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602776655';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928705160', 'U18928705160', 'YVONNE', '', '18928705160', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 177, '2024-09-23 08:20:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928705160' LIMIT 1);
UPDATE users SET nick_name='YVONNE', balance=GREATEST(balance, 0.00), points=GREATEST(points, 177) WHERE phone='18928705160';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710611230', 'U13710611230', '__橘子橘', '', '13710611230', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2024-09-23 02:54:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710611230' LIMIT 1);
UPDATE users SET nick_name='__橘子橘', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='13710611230';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902239507', 'U13902239507', 'Rex李', '', '13902239507', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 23:20:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902239507' LIMIT 1);
UPDATE users SET nick_name='Rex李', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902239507';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802990992', 'U13802990992', 'Longman', '', '13802990992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-22 22:59:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802990992' LIMIT 1);
UPDATE users SET nick_name='Longman', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='13802990992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316108611', 'U18316108611', '18316108611', '', '18316108611', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 22:10:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316108611' LIMIT 1);
UPDATE users SET nick_name='18316108611', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316108611';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726979155', 'U13726979155', '13726979155', '', '13726979155', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 18:23:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726979155' LIMIT 1);
UPDATE users SET nick_name='13726979155', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726979155';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18627680784', 'U18627680784', 'shashibier', '', '18627680784', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 17:23:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18627680784' LIMIT 1);
UPDATE users SET nick_name='shashibier', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18627680784';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18270502599', 'U18270502599', 'caloline', '', '18270502599', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 16:58:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18270502599' LIMIT 1);
UPDATE users SET nick_name='caloline', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18270502599';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18617366793', 'U18617366793', '正妹😊', '', '18617366793', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 128, '2024-09-22 15:17:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18617366793' LIMIT 1);
UPDATE users SET nick_name='正妹😊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 128) WHERE phone='18617366793';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18718682282', 'U18718682282', 'Terry', '', '18718682282', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-09-22 14:58:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18718682282' LIMIT 1);
UPDATE users SET nick_name='Terry', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18718682282';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13417792973', 'U13417792973', 'Xavier_', '', '13417792973', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 14:29:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13417792973' LIMIT 1);
UPDATE users SET nick_name='Xavier_', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13417792973';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925110427', 'U13925110427', '欢凸凸儿', '', '13925110427', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-22 13:08:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925110427' LIMIT 1);
UPDATE users SET nick_name='欢凸凸儿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13925110427';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533742529', 'U13533742529', '一步一逍遥', '', '13533742529', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 12:22:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533742529' LIMIT 1);
UPDATE users SET nick_name='一步一逍遥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533742529';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13112392652', 'U13112392652', '黄然大悟🤔', '', '13112392652', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 12:22:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13112392652' LIMIT 1);
UPDATE users SET nick_name='黄然大悟🤔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13112392652';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_14754672308', 'U14754672308', 'cici', '', '14754672308', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 11:38:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='14754672308' LIMIT 1);
UPDATE users SET nick_name='cici', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='14754672308';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580358383', 'U13580358383', '神仙鱼', '', '13580358383', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 11:33:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580358383' LIMIT 1);
UPDATE users SET nick_name='神仙鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580358383';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13381231161', 'U13381231161', '吴先生', '', '13381231161', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 10:59:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13381231161' LIMIT 1);
UPDATE users SET nick_name='吴先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13381231161';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520564180', 'U18520564180', 'Holly', '', '18520564180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 57, '2024-09-22 10:59:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520564180' LIMIT 1);
UPDATE users SET nick_name='Holly', balance=GREATEST(balance, 0.00), points=GREATEST(points, 57) WHERE phone='18520564180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920186592', 'U15920186592', '欣', '', '15920186592', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 10:00:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920186592' LIMIT 1);
UPDATE users SET nick_name='欣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920186592';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15808169169', 'U15808169169', '快乐精灵', '', '15808169169', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-22 09:08:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15808169169' LIMIT 1);
UPDATE users SET nick_name='快乐精灵', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15808169169';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18310645540', 'U18310645540', 'miss', '', '18310645540', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 23:15:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18310645540' LIMIT 1);
UPDATE users SET nick_name='miss', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18310645540';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19168864892', 'U19168864892', 'Samara', '', '19168864892', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2024-09-21 23:07:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19168864892' LIMIT 1);
UPDATE users SET nick_name='Samara', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='19168864892';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826377952', 'U18826377952', 'Je', '', '18826377952', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-21 23:04:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826377952' LIMIT 1);
UPDATE users SET nick_name='Je', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='18826377952';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17788772215', 'U17788772215', '林', '', '17788772215', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-21 21:46:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17788772215' LIMIT 1);
UPDATE users SET nick_name='林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17788772215';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726158010', 'U13726158010', 'Eorange', '', '13726158010', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 21:38:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726158010' LIMIT 1);
UPDATE users SET nick_name='Eorange', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726158010';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13828409036', 'U13828409036', '💋何女王®💋', '', '13828409036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-21 21:25:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13828409036' LIMIT 1);
UPDATE users SET nick_name='💋何女王®💋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13828409036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609017577', 'U13609017577', '狄', '', '13609017577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 20:36:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609017577' LIMIT 1);
UPDATE users SET nick_name='狄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609017577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915800144', 'U15915800144', 'jmay', '', '15915800144', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 20:35:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915800144' LIMIT 1);
UPDATE users SET nick_name='jmay', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915800144';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922230711', 'U13922230711', 'ＬｚＫ', '', '13922230711', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 116, '2024-09-21 18:38:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922230711' LIMIT 1);
UPDATE users SET nick_name='ＬｚＫ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 116) WHERE phone='13922230711';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802600942', 'U13802600942', 'Rita', '', '13802600942', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 134, '2024-09-21 18:00:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802600942' LIMIT 1);
UPDATE users SET nick_name='Rita', balance=GREATEST(balance, 0.00), points=GREATEST(points, 134) WHERE phone='13802600942';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18143407833', 'U18143407833', '18143407833', '', '18143407833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 17:45:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18143407833' LIMIT 1);
UPDATE users SET nick_name='18143407833', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18143407833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18382086076', 'U18382086076', 'Iris', '', '18382086076', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2024-09-21 16:41:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18382086076' LIMIT 1);
UPDATE users SET nick_name='Iris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='18382086076';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922258440', 'U13922258440', '周海燕', '', '13922258440', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-21 16:16:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922258440' LIMIT 1);
UPDATE users SET nick_name='周海燕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13922258440';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250309961', 'U13250309961', 'jqwong', '', '13250309961', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-21 15:51:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250309961' LIMIT 1);
UPDATE users SET nick_name='jqwong', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13250309961';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924192319', 'U13924192319', 'ggtttt', '', '13924192319', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 15:40:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924192319' LIMIT 1);
UPDATE users SET nick_name='ggtttt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924192319';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13042058296', 'U13042058296', '越', '', '13042058296', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-21 14:09:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13042058296' LIMIT 1);
UPDATE users SET nick_name='越', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13042058296';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15817197060', 'U15817197060', 'Joe', '', '15817197060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 14:02:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15817197060' LIMIT 1);
UPDATE users SET nick_name='Joe', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15817197060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13728874655', 'U13728874655', 'hiupang', '', '13728874655', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 14:00:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13728874655' LIMIT 1);
UPDATE users SET nick_name='hiupang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13728874655';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922292667', 'U13922292667', '锅锅', '', '13922292667', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 13:57:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922292667' LIMIT 1);
UPDATE users SET nick_name='锅锅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13922292667';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922276907', 'U13922276907', '谭先生', '', '13922276907', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-09-21 12:40:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922276907' LIMIT 1);
UPDATE users SET nick_name='谭先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13922276907';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13590611266', 'U13590611266', '古月', '', '13590611266', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 89, '2024-09-21 12:18:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13590611266' LIMIT 1);
UPDATE users SET nick_name='古月', balance=GREATEST(balance, 0.00), points=GREATEST(points, 89) WHERE phone='13590611266';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19849997553', 'U19849997553', '沐夕', '', '19849997553', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-09-21 12:06:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19849997553' LIMIT 1);
UPDATE users SET nick_name='沐夕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='19849997553';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580599604', 'U13580599604', 'Hegelian', '', '13580599604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 09:59:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580599604' LIMIT 1);
UPDATE users SET nick_name='Hegelian', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580599604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819175880', 'U18819175880', 'rz', '', '18819175880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 09:04:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819175880' LIMIT 1);
UPDATE users SET nick_name='rz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819175880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688487304', 'U18688487304', '陈啧啧', '', '18688487304', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-21 08:09:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688487304' LIMIT 1);
UPDATE users SET nick_name='陈啧啧', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688487304';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13358362079', 'U13358362079', '一个柚子', '', '13358362079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-09-21 00:49:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13358362079' LIMIT 1);
UPDATE users SET nick_name='一个柚子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13358362079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928963192', 'U13928963192', 'Daybreak.', '', '13928963192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 155, '2024-09-21 00:00:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928963192' LIMIT 1);
UPDATE users SET nick_name='Daybreak.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 155) WHERE phone='13928963192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826160004', 'U13826160004', 'LiaName', '', '13826160004', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 129, '2024-09-20 23:36:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826160004' LIMIT 1);
UPDATE users SET nick_name='LiaName', balance=GREATEST(balance, 0.00), points=GREATEST(points, 129) WHERE phone='13826160004';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19194293403', 'U19194293403', 'p', '', '19194293403', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-20 21:46:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19194293403' LIMIT 1);
UPDATE users SET nick_name='p', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19194293403';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18615770096', 'U18615770096', 'ys', '', '18615770096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-20 21:22:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18615770096' LIMIT 1);
UPDATE users SET nick_name='ys', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18615770096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926220646', 'U18926220646', '是胡不是祸 👻', '', '18926220646', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-20 17:33:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926220646' LIMIT 1);
UPDATE users SET nick_name='是胡不是祸 👻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18926220646';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13202332008', 'U13202332008', '宝总', '', '13202332008', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-20 17:25:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13202332008' LIMIT 1);
UPDATE users SET nick_name='宝总', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13202332008';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18138732775', 'U18138732775', '焦糖马奇怪', '', '18138732775', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 255, '2024-09-20 16:58:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18138732775' LIMIT 1);
UPDATE users SET nick_name='焦糖马奇怪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 255) WHERE phone='18138732775';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13542632330', 'U13542632330', 'create.', '', '13542632330', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-20 16:55:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13542632330' LIMIT 1);
UPDATE users SET nick_name='create.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13542632330';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013249889', 'U15013249889', '叻', '', '15013249889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-20 16:29:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013249889' LIMIT 1);
UPDATE users SET nick_name='叻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15013249889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665665815', 'U18665665815', '18665665815', '', '18665665815', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-20 15:09:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665665815' LIMIT 1);
UPDATE users SET nick_name='18665665815', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665665815';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18938127023', 'U18938127023', 'bou2', '', '18938127023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-20 14:26:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18938127023' LIMIT 1);
UPDATE users SET nick_name='bou2', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18938127023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13169640702', 'U13169640702', 'Biubiubiu绮珍😇', '', '13169640702', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-09-20 14:20:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13169640702' LIMIT 1);
UPDATE users SET nick_name='Biubiubiu绮珍😇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13169640702';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688260764', 'U18688260764', 'i', '', '18688260764', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-20 12:32:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688260764' LIMIT 1);
UPDATE users SET nick_name='i', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688260764';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18053466142', 'U18053466142', '笑', '', '18053466142', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-20 10:03:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18053466142' LIMIT 1);
UPDATE users SET nick_name='笑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18053466142';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18127937504', 'U18127937504', 'Kim', '', '18127937504', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-20 09:07:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18127937504' LIMIT 1);
UPDATE users SET nick_name='Kim', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18127937504';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919638632', 'U15919638632', 'yao', '', '15919638632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-20 08:24:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919638632' LIMIT 1);
UPDATE users SET nick_name='yao', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15919638632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819253810', 'U18819253810', 'crazylee', '', '18819253810', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-20 08:20:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819253810' LIMIT 1);
UPDATE users SET nick_name='crazylee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18819253810';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13242860437', 'U13242860437', '弋远', '', '13242860437', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 21:45:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13242860437' LIMIT 1);
UPDATE users SET nick_name='弋远', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13242860437';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926232817', 'U13926232817', '🌸🌸凯菲💍💍🌸🎀', '', '13926232817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 21:28:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926232817' LIMIT 1);
UPDATE users SET nick_name='🌸🌸凯菲💍💍🌸🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926232817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802731086', 'U13802731086', '天天', '', '13802731086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 128, '2024-09-19 19:03:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802731086' LIMIT 1);
UPDATE users SET nick_name='天天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 128) WHERE phone='13802731086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15711870882', 'U15711870882', 'Aggapsong🦄', '', '15711870882', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-09-19 18:37:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15711870882' LIMIT 1);
UPDATE users SET nick_name='Aggapsong🦄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='15711870882';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18643513019', 'U18643513019', '18643513019', '', '18643513019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 18:23:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18643513019' LIMIT 1);
UPDATE users SET nick_name='18643513019', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18643513019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692007983', 'U15692007983', 'Hello 小郑', '', '15692007983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 158, '2024-09-19 17:20:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692007983' LIMIT 1);
UPDATE users SET nick_name='Hello 小郑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 158) WHERE phone='15692007983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692411478', 'U15692411478', '15692411478', '', '15692411478', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 16:14:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692411478' LIMIT 1);
UPDATE users SET nick_name='15692411478', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692411478';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15014299933', 'U15014299933', '15014299933', '', '15014299933', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 16:09:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15014299933' LIMIT 1);
UPDATE users SET nick_name='15014299933', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15014299933';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665735817', 'U18665735817', 'wydmn', '', '18665735817', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 15:28:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665735817' LIMIT 1);
UPDATE users SET nick_name='wydmn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665735817';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18370992747', 'U18370992747', 'DFH', '', '18370992747', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 13:36:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18370992747' LIMIT 1);
UPDATE users SET nick_name='DFH', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18370992747';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126780119', 'U18126780119', 'lynn', '', '18126780119', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 256, '2024-09-19 13:32:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126780119' LIMIT 1);
UPDATE users SET nick_name='lynn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 256) WHERE phone='18126780119';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928822261', 'U18928822261', '阿企xoxo', '', '18928822261', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 12:50:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928822261' LIMIT 1);
UPDATE users SET nick_name='阿企xoxo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18928822261';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13825631002', 'U13825631002', 'Cindy', '', '13825631002', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-19 11:25:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13825631002' LIMIT 1);
UPDATE users SET nick_name='Cindy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13825631002';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602805517', 'U13602805517', '廖生', '', '13602805517', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 11:15:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602805517' LIMIT 1);
UPDATE users SET nick_name='廖生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602805517';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18729579231', 'U18729579231', '.....', '', '18729579231', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 11:02:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18729579231' LIMIT 1);
UPDATE users SET nick_name='.....', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18729579231';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813380897', 'U15813380897', 'xinyuan', '', '15813380897', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 10:57:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813380897' LIMIT 1);
UPDATE users SET nick_name='xinyuan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813380897';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13662322232', 'U13662322232', '念一', '', '13662322232', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 10:56:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13662322232' LIMIT 1);
UPDATE users SET nick_name='念一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13662322232';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798153760', 'U13798153760', '秋天', '', '13798153760', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 128, '2024-09-19 10:30:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798153760' LIMIT 1);
UPDATE users SET nick_name='秋天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 128) WHERE phone='13798153760';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318830690', 'U13318830690', '大剩', '', '13318830690', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 09:19:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318830690' LIMIT 1);
UPDATE users SET nick_name='大剩', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318830690';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926411655', 'U13926411655', '奕奕', '', '13926411655', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 128, '2024-09-19 08:58:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926411655' LIMIT 1);
UPDATE users SET nick_name='奕奕', balance=GREATEST(balance, 0.00), points=GREATEST(points, 128) WHERE phone='13926411655';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15711823978', 'U15711823978', 'N', '', '15711823978', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-19 08:35:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15711823978' LIMIT 1);
UPDATE users SET nick_name='N', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15711823978';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622833933', 'U13622833933', 'momo', '', '13622833933', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-18 23:37:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622833933' LIMIT 1);
UPDATE users SET nick_name='momo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='13622833933';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15651763762', 'U15651763762', 'ashley', '', '15651763762', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 21:45:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15651763762' LIMIT 1);
UPDATE users SET nick_name='ashley', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15651763762';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422329585', 'U13422329585', '-..-', '', '13422329585', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 20:20:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422329585' LIMIT 1);
UPDATE users SET nick_name='-..-', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422329585';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570277389', 'U13570277389', 'Kelvin海狮', '', '13570277389', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 18:18:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570277389' LIMIT 1);
UPDATE users SET nick_name='Kelvin海狮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570277389';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826208198', 'U13826208198', '邝', '', '13826208198', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 18:17:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826208198' LIMIT 1);
UPDATE users SET nick_name='邝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826208198';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813751225', 'U18813751225', 'Garven', '', '18813751225', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-18 17:41:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813751225' LIMIT 1);
UPDATE users SET nick_name='Garven', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='18813751225';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480292449', 'U13480292449', 'TAMMY', '', '13480292449', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 17:24:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480292449' LIMIT 1);
UPDATE users SET nick_name='TAMMY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13480292449';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798010001', 'U13798010001', '张冬', '', '13798010001', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 16:40:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798010001' LIMIT 1);
UPDATE users SET nick_name='张冬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798010001';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15140733466', 'U15140733466', '拉拉', '', '15140733466', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 16:35:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15140733466' LIMIT 1);
UPDATE users SET nick_name='拉拉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15140733466';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18520261929', 'U18520261929', '陳小姐', '', '18520261929', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 16:27:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18520261929' LIMIT 1);
UPDATE users SET nick_name='陳小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18520261929';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18922184488', 'U18922184488', '石榴果', '', '18922184488', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 15:59:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18922184488' LIMIT 1);
UPDATE users SET nick_name='石榴果', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18922184488';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926422055', 'U13926422055', '大觉有情Onz', '', '13926422055', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 15:36:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926422055' LIMIT 1);
UPDATE users SET nick_name='大觉有情Onz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926422055';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18144415183', 'U18144415183', '花喽花喽', '', '18144415183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 15:22:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18144415183' LIMIT 1);
UPDATE users SET nick_name='花喽花喽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18144415183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13343065924', 'U13343065924', '洋', '', '13343065924', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 15:18:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13343065924' LIMIT 1);
UPDATE users SET nick_name='洋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13343065924';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13528207419', 'U13528207419', '好好学习天天向上', '', '13528207419', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-18 14:40:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13528207419' LIMIT 1);
UPDATE users SET nick_name='好好学习天天向上', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13528207419';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808895472', 'U13808895472', '彬少（何志彬）', '', '13808895472', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 14:34:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808895472' LIMIT 1);
UPDATE users SET nick_name='彬少（何志彬）', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13808895472';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924267313', 'U13924267313', '鸿儒', '', '13924267313', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 14:16:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924267313' LIMIT 1);
UPDATE users SET nick_name='鸿儒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924267313';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915887164', 'U15915887164', '小馨', '', '15915887164', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 12:58:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915887164' LIMIT 1);
UPDATE users SET nick_name='小馨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915887164';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18814185471', 'U18814185471', '胡生', '', '18814185471', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 11:57:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18814185471' LIMIT 1);
UPDATE users SET nick_name='胡生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18814185471';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392647426', 'U13392647426', '说早安和晚安的安好', '', '13392647426', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-18 10:30:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392647426' LIMIT 1);
UPDATE users SET nick_name='说早安和晚安的安好', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13392647426';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13822255060', 'U13822255060', '水涛', '', '13822255060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-18 10:22:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13822255060' LIMIT 1);
UPDATE users SET nick_name='水涛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13822255060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710178245', 'U13710178245', 'ChanSzeYuChris', '', '13710178245', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-18 10:09:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710178245' LIMIT 1);
UPDATE users SET nick_name='ChanSzeYuChris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710178245';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642253980', 'U13642253980', '啊Sam', '', '13642253980', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-17 19:54:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642253980' LIMIT 1);
UPDATE users SET nick_name='啊Sam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13642253980';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915814800', 'U15915814800', '房建鹏', '', '15915814800', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-17 17:17:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915814800' LIMIT 1);
UPDATE users SET nick_name='房建鹏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='15915814800';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924258293', 'U19924258293', '19924258293', '', '19924258293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-17 16:40:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924258293' LIMIT 1);
UPDATE users SET nick_name='19924258293', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19924258293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620406729', 'U18620406729', '爱国de羊驼', '', '18620406729', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-17 15:56:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620406729' LIMIT 1);
UPDATE users SET nick_name='爱国de羊驼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620406729';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725400941', 'U13725400941', '白日梦想家', '', '13725400941', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-17 13:30:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725400941' LIMIT 1);
UPDATE users SET nick_name='白日梦想家', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13725400941';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826219988', 'U13826219988', '13826219988', '', '13826219988', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-17 11:51:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826219988' LIMIT 1);
UPDATE users SET nick_name='13826219988', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826219988';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13192949441', 'U13192949441', '清欢不爱笑', '', '13192949441', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-17 11:27:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13192949441' LIMIT 1);
UPDATE users SET nick_name='清欢不爱笑', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13192949441';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602855385', 'U13602855385', '小木头😊', '', '13602855385', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-17 11:06:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602855385' LIMIT 1);
UPDATE users SET nick_name='小木头😊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='13602855385';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570314640', 'U13570314640', 'Sunny🔛重启ⁱⁿᵍ···', '', '13570314640', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-17 10:33:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570314640' LIMIT 1);
UPDATE users SET nick_name='Sunny🔛重启ⁱⁿᵍ···', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570314640';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521437480', 'U15521437480', '15521437480', '', '15521437480', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-17 10:09:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521437480' LIMIT 1);
UPDATE users SET nick_name='15521437480', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15521437480';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18806682186', 'U18806682186', '18806682186', '', '18806682186', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-17 10:03:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18806682186' LIMIT 1);
UPDATE users SET nick_name='18806682186', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18806682186';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13886147812', 'U13886147812', '柯柯 Sonia', '', '13886147812', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-17 00:04:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13886147812' LIMIT 1);
UPDATE users SET nick_name='柯柯 Sonia', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13886147812';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15779274526', 'U15779274526', '水星', '', '15779274526', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-16 21:20:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15779274526' LIMIT 1);
UPDATE users SET nick_name='水星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15779274526';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665563223', 'U18665563223', 'winnie', '', '18665563223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2024-09-16 19:04:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665563223' LIMIT 1);
UPDATE users SET nick_name='winnie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='18665563223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688893728', 'U18688893728', 'Jessie Yu', '', '18688893728', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-16 18:21:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688893728' LIMIT 1);
UPDATE users SET nick_name='Jessie Yu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688893728';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13808882466', 'U13808882466', '冬日暖阳', '', '13808882466', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-16 18:08:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13808882466' LIMIT 1);
UPDATE users SET nick_name='冬日暖阳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13808882466';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122377475', 'U18122377475', 'x', '', '18122377475', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-16 18:05:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122377475' LIMIT 1);
UPDATE users SET nick_name='x', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18122377475';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322006946', 'U15322006946', '毛毛', '', '15322006946', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-16 16:51:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322006946' LIMIT 1);
UPDATE users SET nick_name='毛毛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15322006946';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533111223', 'U13533111223', '何先生', '', '13533111223', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-16 16:30:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533111223' LIMIT 1);
UPDATE users SET nick_name='何先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533111223';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13600070159', 'U13600070159', 'KC', '', '13600070159', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-16 15:04:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13600070159' LIMIT 1);
UPDATE users SET nick_name='KC', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='13600070159';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13763357396', 'U13763357396', 'Amy', '', '13763357396', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2024-09-16 14:18:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13763357396' LIMIT 1);
UPDATE users SET nick_name='Amy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='13763357396';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13823668945', 'U13823668945', '窜天猴', '', '13823668945', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-16 14:10:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13823668945' LIMIT 1);
UPDATE users SET nick_name='窜天猴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13823668945';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13066333033', 'U13066333033', 'Kuny', '', '13066333033', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2024-09-16 13:40:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13066333033' LIMIT 1);
UPDATE users SET nick_name='Kuny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13066333033';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18888888888', 'U18888888888', '18888888888', '', '18888888888', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-16 13:29:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18888888888' LIMIT 1);
UPDATE users SET nick_name='18888888888', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18888888888';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711301898', 'U13711301898', 'Ray', '', '13711301898', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2024-09-16 10:18:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711301898' LIMIT 1);
UPDATE users SET nick_name='Ray', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='13711301898';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18674069192', 'U18674069192', '周', '', '18674069192', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-16 10:14:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18674069192' LIMIT 1);
UPDATE users SET nick_name='周', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18674069192';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15521446036', 'U15521446036', 'A梦', '', '15521446036', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 99, '2024-09-16 09:58:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15521446036' LIMIT 1);
UPDATE users SET nick_name='A梦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 99) WHERE phone='15521446036';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632341792', 'U13632341792', '小布布', '', '13632341792', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-09-16 09:42:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632341792' LIMIT 1);
UPDATE users SET nick_name='小布布', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13632341792';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602753465', 'U13602753465', '我', '', '13602753465', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 85, '2024-09-16 09:14:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602753465' LIMIT 1);
UPDATE users SET nick_name='我', balance=GREATEST(balance, 0.00), points=GREATEST(points, 85) WHERE phone='13602753465';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632427276', 'U13632427276', '黄先生', '', '13632427276', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-09-16 00:46:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632427276' LIMIT 1);
UPDATE users SET nick_name='黄先生', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13632427276';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435846880', 'U13435846880', '钟大大', '', '13435846880', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-15 22:34:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435846880' LIMIT 1);
UPDATE users SET nick_name='钟大大', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13435846880';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688895208', 'U18688895208', 'holonking', '', '18688895208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-15 21:43:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688895208' LIMIT 1);
UPDATE users SET nick_name='holonking', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688895208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13088440379', 'U13088440379', '退堂鼓撤鼓师', '', '13088440379', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-15 19:12:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13088440379' LIMIT 1);
UPDATE users SET nick_name='退堂鼓撤鼓师', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13088440379';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288664442', 'U13288664442', 'Max', '', '13288664442', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-15 18:21:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288664442' LIMIT 1);
UPDATE users SET nick_name='Max', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13288664442';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13902231513', 'U13902231513', 'ᴅᴀɴɴᴀ. ᴄʜ', '', '13902231513', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-15 18:01:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13902231513' LIMIT 1);
UPDATE users SET nick_name='ᴅᴀɴɴᴀ. ᴄʜ', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13902231513';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15013190780', 'U15013190780', 'Fiona', '', '15013190780', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-09-15 17:58:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15013190780' LIMIT 1);
UPDATE users SET nick_name='Fiona', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='15013190780';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13642771391', 'U13642771391', '祖哥', '', '13642771391', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-15 14:36:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13642771391' LIMIT 1);
UPDATE users SET nick_name='祖哥', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13642771391';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602883171', 'U13602883171', '音符琳', '', '13602883171', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-15 13:07:59'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602883171' LIMIT 1);
UPDATE users SET nick_name='音符琳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13602883171';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18926126188', 'U18926126188', '朱', '', '18926126188', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-15 12:03:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18926126188' LIMIT 1);
UPDATE users SET nick_name='朱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18926126188';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13909785325', 'U13909785325', '发牙花', '', '13909785325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-15 11:43:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13909785325' LIMIT 1);
UPDATE users SET nick_name='发牙花', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13909785325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802061023', 'U18802061023', '小白', '', '18802061023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-15 11:29:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802061023' LIMIT 1);
UPDATE users SET nick_name='小白', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18802061023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660449096', 'U13660449096', '木头匠', '', '13660449096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-15 11:23:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660449096' LIMIT 1);
UPDATE users SET nick_name='木头匠', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13660449096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13668907527', 'U13668907527', '君君', '', '13668907527', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-15 11:21:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13668907527' LIMIT 1);
UPDATE users SET nick_name='君君', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13668907527';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826041990', 'U13826041990', 'chung', '', '13826041990', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-14 21:52:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826041990' LIMIT 1);
UPDATE users SET nick_name='chung', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13826041990';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265043107', 'U13265043107', '懒猪儿.', '', '13265043107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-14 20:19:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265043107' LIMIT 1);
UPDATE users SET nick_name='懒猪儿.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13265043107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15812449572', 'U15812449572', 'Leung-Mingching', '', '15812449572', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-14 20:10:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15812449572' LIMIT 1);
UPDATE users SET nick_name='Leung-Mingching', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15812449572';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915993399', 'U15915993399', '皮拉尔👹', '', '15915993399', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-14 20:01:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915993399' LIMIT 1);
UPDATE users SET nick_name='皮拉尔👹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915993399';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914459303', 'U15914459303', '猪队', '', '15914459303', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-09-14 18:44:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914459303' LIMIT 1);
UPDATE users SET nick_name='猪队', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='15914459303';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622743170', 'U15622743170', 'Craze', '', '15622743170', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-09-14 18:43:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622743170' LIMIT 1);
UPDATE users SET nick_name='Craze', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='15622743170';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719329881', 'U13719329881', 'ya', '', '13719329881', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-14 18:42:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719329881' LIMIT 1);
UPDATE users SET nick_name='ya', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719329881';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802929744', 'U13802929744', '老明', '', '13802929744', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-09-14 18:25:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802929744' LIMIT 1);
UPDATE users SET nick_name='老明', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13802929744';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15323037195', 'U15323037195', '虾壳粉', '', '15323037195', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-14 17:55:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15323037195' LIMIT 1);
UPDATE users SET nick_name='虾壳粉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='15323037195';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13630486052', 'U13630486052', 'Tammy', '', '13630486052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-14 17:33:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13630486052' LIMIT 1);
UPDATE users SET nick_name='Tammy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13630486052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928810642', 'U13928810642', '卉', '', '13928810642', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-14 17:12:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928810642' LIMIT 1);
UPDATE users SET nick_name='卉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13928810642';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710412670', 'U13710412670', 'Y.', '', '13710412670', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-14 17:04:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710412670' LIMIT 1);
UPDATE users SET nick_name='Y.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13710412670';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430350300', 'U13430350300', '兜兜', '', '13430350300', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 56, '2024-09-14 16:47:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430350300' LIMIT 1);
UPDATE users SET nick_name='兜兜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 56) WHERE phone='13430350300';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710320241', 'U13710320241', 'Lester Ou', '', '13710320241', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-14 16:25:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710320241' LIMIT 1);
UPDATE users SET nick_name='Lester Ou', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710320241';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13809240833', 'U13809240833', 'NIKI', '', '13809240833', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-14 15:03:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13809240833' LIMIT 1);
UPDATE users SET nick_name='NIKI', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13809240833';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18302041958', 'U18302041958', '净净', '', '18302041958', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-14 14:45:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18302041958' LIMIT 1);
UPDATE users SET nick_name='净净', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18302041958';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13870257196', 'U13870257196', '慧敏', '', '13870257196', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-14 14:05:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13870257196' LIMIT 1);
UPDATE users SET nick_name='慧敏', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13870257196';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665419763', 'U17665419763', '左就是右', '', '17665419763', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 255, '2024-09-14 13:56:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665419763' LIMIT 1);
UPDATE users SET nick_name='左就是右', balance=GREATEST(balance, 0.00), points=GREATEST(points, 255) WHERE phone='17665419763';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18787459091', 'U18787459091', 'Yu \'\'mang🔅', '', '18787459091', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-14 12:41:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18787459091' LIMIT 1);
UPDATE users SET nick_name='Yu \'\'mang🔅', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18787459091';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13713428246', 'U13713428246', '佳', '', '13713428246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2024-09-14 12:39:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13713428246' LIMIT 1);
UPDATE users SET nick_name='佳', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='13713428246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13711481887', 'U13711481887', '培记', '', '13711481887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-14 11:35:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13711481887' LIMIT 1);
UPDATE users SET nick_name='培记', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13711481887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710113731', 'U13710113731', '小珍珍', '', '13710113731', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-14 10:30:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710113731' LIMIT 1);
UPDATE users SET nick_name='小珍珍', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13710113731';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18822878483', 'U18822878483', 'P1Honey', '', '18822878483', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 59, '2024-09-13 22:24:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18822878483' LIMIT 1);
UPDATE users SET nick_name='P1Honey', balance=GREATEST(balance, 0.00), points=GREATEST(points, 59) WHERE phone='18822878483';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17702035853', 'U17702035853', 'eaton', '', '17702035853', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-13 22:00:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17702035853' LIMIT 1);
UPDATE users SET nick_name='eaton', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='17702035853';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19874470887', 'U19874470887', 'qq', '', '19874470887', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-13 20:41:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19874470887' LIMIT 1);
UPDATE users SET nick_name='qq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='19874470887';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15322270913', 'U15322270913', 'yyy', '', '15322270913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-13 20:38:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15322270913' LIMIT 1);
UPDATE users SET nick_name='yyy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='15322270913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15017572659', 'U15017572659', 'Uny立文', '', '15017572659', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-09-13 19:22:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15017572659' LIMIT 1);
UPDATE users SET nick_name='Uny立文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='15017572659';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126782016', 'U18126782016', '阿汤哥™', '', '18126782016', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 75, '2024-09-13 19:09:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126782016' LIMIT 1);
UPDATE users SET nick_name='阿汤哥™', balance=GREATEST(balance, 0.00), points=GREATEST(points, 75) WHERE phone='18126782016';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15994994519', 'U15994994519', '✨Jayson', '', '15994994519', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-13 19:04:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15994994519' LIMIT 1);
UPDATE users SET nick_name='✨Jayson', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15994994519';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620804994', 'U18620804994', '博文', '', '18620804994', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-13 17:47:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620804994' LIMIT 1);
UPDATE users SET nick_name='博文', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18620804994';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609081937', 'U13609081937', '1', '', '13609081937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-13 15:07:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609081937' LIMIT 1);
UPDATE users SET nick_name='1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13609081937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15340549899', 'U15340549899', '将换名进行到底', '', '15340549899', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 48, '2024-09-13 12:23:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15340549899' LIMIT 1);
UPDATE users SET nick_name='将换名进行到底', balance=GREATEST(balance, 0.00), points=GREATEST(points, 48) WHERE phone='15340549899';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422113685', 'U13422113685', 'ChrisL', '', '13422113685', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-13 09:46:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422113685' LIMIT 1);
UPDATE users SET nick_name='ChrisL', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13422113685';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15382699236', 'U15382699236', 'zz', '', '15382699236', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-13 08:18:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15382699236' LIMIT 1);
UPDATE users SET nick_name='zz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15382699236';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422267077', 'U13422267077', 'chris', '', '13422267077', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-13 07:17:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422267077' LIMIT 1);
UPDATE users SET nick_name='chris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13422267077';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631451786', 'U13631451786', '小猪', '', '13631451786', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-09-12 22:56:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631451786' LIMIT 1);
UPDATE users SET nick_name='小猪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='13631451786';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15217593924', 'U15217593924', 'Lumen', '', '15217593924', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-09-12 22:09:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15217593924' LIMIT 1);
UPDATE users SET nick_name='Lumen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='15217593924';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725236184', 'U13725236184', '清界', '', '13725236184', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 21:30:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725236184' LIMIT 1);
UPDATE users SET nick_name='清界', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13725236184';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620974382', 'U18620974382', '阿东', '', '18620974382', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 21:18:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620974382' LIMIT 1);
UPDATE users SET nick_name='阿东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18620974382';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19513738836', 'U19513738836', '小许', '', '19513738836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 21:01:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19513738836' LIMIT 1);
UPDATE users SET nick_name='小许', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='19513738836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920328139', 'U15920328139', '🍭月えい', '', '15920328139', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 20:49:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920328139' LIMIT 1);
UPDATE users SET nick_name='🍭月えい', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='15920328139';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18824482099', 'U18824482099', '辣辣。', '', '18824482099', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 20:46:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18824482099' LIMIT 1);
UPDATE users SET nick_name='辣辣。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18824482099';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17875302518', 'U17875302518', 'lgdw', '', '17875302518', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 20:45:01'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17875302518' LIMIT 1);
UPDATE users SET nick_name='lgdw', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='17875302518';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13609014904', 'U13609014904', '54', '', '13609014904', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 20:39:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13609014904' LIMIT 1);
UPDATE users SET nick_name='54', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13609014904';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13531253733', 'U13531253733', '㉨', '', '13531253733', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 20:38:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13531253733' LIMIT 1);
UPDATE users SET nick_name='㉨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13531253733';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120773450', 'U19120773450', '111', '', '19120773450', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 20:37:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120773450' LIMIT 1);
UPDATE users SET nick_name='111', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='19120773450';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15820358295', 'U15820358295', '🍞', '', '15820358295', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 20:36:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15820358295' LIMIT 1);
UPDATE users SET nick_name='🍞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='15820358295';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631240418', 'U13631240418', 'h', '', '13631240418', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 20:36:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631240418' LIMIT 1);
UPDATE users SET nick_name='h', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13631240418';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18502070176', 'U18502070176', 'Hotpot', '', '18502070176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 20:36:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18502070176' LIMIT 1);
UPDATE users SET nick_name='Hotpot', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18502070176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18594080316', 'U18594080316', '宋星澄 Irina', '', '18594080316', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-12 20:12:46'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18594080316' LIMIT 1);
UPDATE users SET nick_name='宋星澄 Irina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18594080316';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13025100842', 'U13025100842', 'kitty', '', '13025100842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-12 19:44:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13025100842' LIMIT 1);
UPDATE users SET nick_name='kitty', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13025100842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13060854176', 'U13060854176', 'Civiy🌞', '', '13060854176', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-12 19:43:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13060854176' LIMIT 1);
UPDATE users SET nick_name='Civiy🌞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13060854176';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120539206', 'U19120539206', '🎾', '', '19120539206', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-12 19:21:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120539206' LIMIT 1);
UPDATE users SET nick_name='🎾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19120539206';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620019297', 'U17620019297', '张树强', '', '17620019297', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 18:41:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620019297' LIMIT 1);
UPDATE users SET nick_name='张树强', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='17620019297';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13432807190', 'U13432807190', '洪爷', '', '13432807190', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-12 17:15:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13432807190' LIMIT 1);
UPDATE users SET nick_name='洪爷', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13432807190';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18148986682', 'U18148986682', '沥沥在沐', '', '18148986682', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 17:05:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18148986682' LIMIT 1);
UPDATE users SET nick_name='沥沥在沐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18148986682';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13911189891', 'U13911189891', '王大宝', '', '13911189891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 74, '2024-09-12 16:18:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13911189891' LIMIT 1);
UPDATE users SET nick_name='王大宝', balance=GREATEST(balance, 0.00), points=GREATEST(points, 74) WHERE phone='13911189891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13232380023', 'U13232380023', '13232380023', '', '13232380023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-12 15:50:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13232380023' LIMIT 1);
UPDATE users SET nick_name='13232380023', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13232380023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18802068293', 'U18802068293', '星辰', '', '18802068293', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 15:21:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18802068293' LIMIT 1);
UPDATE users SET nick_name='星辰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18802068293';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18559490520', 'U18559490520', '夏天', '', '18559490520', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 15:19:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18559490520' LIMIT 1);
UPDATE users SET nick_name='夏天', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18559490520';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588880178', 'U18588880178', '阿兴', '', '18588880178', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 15:07:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588880178' LIMIT 1);
UPDATE users SET nick_name='阿兴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18588880178';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15919339107', 'U15919339107', '子云', '', '15919339107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 108, '2024-09-12 14:40:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15919339107' LIMIT 1);
UPDATE users SET nick_name='子云', balance=GREATEST(balance, 0.00), points=GREATEST(points, 108) WHERE phone='15919339107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13767212816', 'U13767212816', '旭群', '', '13767212816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 14:00:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13767212816' LIMIT 1);
UPDATE users SET nick_name='旭群', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13767212816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13725276146', 'U13725276146', '🎀LamKawing🎀', '', '13725276146', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 13:59:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13725276146' LIMIT 1);
UPDATE users SET nick_name='🎀LamKawing🎀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13725276146';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18928939043', 'U18928939043', '易展翅求职', '', '18928939043', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 13:58:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18928939043' LIMIT 1);
UPDATE users SET nick_name='易展翅求职', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18928939043';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15008005333', 'U15008005333', '伏烟', '', '15008005333', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-12 13:44:40'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15008005333' LIMIT 1);
UPDATE users SET nick_name='伏烟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15008005333';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560461118', 'U13560461118', '儊baby👣👣', '', '13560461118', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 13:37:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560461118' LIMIT 1);
UPDATE users SET nick_name='儊baby👣👣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13560461118';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13622765616', 'U13622765616', '卢小雪 💋', '', '13622765616', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 13:36:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13622765616' LIMIT 1);
UPDATE users SET nick_name='卢小雪 💋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13622765616';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13265159737', 'U13265159737', 'lq', '', '13265159737', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 13:36:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13265159737' LIMIT 1);
UPDATE users SET nick_name='lq', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13265159737';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533832632', 'U13533832632', 'Wing', '', '13533832632', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-12 12:59:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533832632' LIMIT 1);
UPDATE users SET nick_name='Wing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533832632';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760655675', 'U13760655675', 'hhhhhh', '', '13760655675', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 12:33:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760655675' LIMIT 1);
UPDATE users SET nick_name='hhhhhh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13760655675';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751710911', 'U13751710911', 'Ivy', '', '13751710911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 12:31:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751710911' LIMIT 1);
UPDATE users SET nick_name='Ivy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13751710911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925166420', 'U18925166420', '黄煌Chris', '', '18925166420', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-12 12:30:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925166420' LIMIT 1);
UPDATE users SET nick_name='黄煌Chris', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18925166420';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15838335312', 'U15838335312', '一念、菜菜', '', '15838335312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-12 11:20:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15838335312' LIMIT 1);
UPDATE users SET nick_name='一念、菜菜', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15838335312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15876531500', 'U15876531500', 'eiu', '', '15876531500', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-12 11:19:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15876531500' LIMIT 1);
UPDATE users SET nick_name='eiu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15876531500';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13138641206', 'U13138641206', 'lingling', '', '13138641206', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 114, '2024-09-12 09:14:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13138641206' LIMIT 1);
UPDATE users SET nick_name='lingling', balance=GREATEST(balance, 0.00), points=GREATEST(points, 114) WHERE phone='13138641206';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17620803524', 'U17620803524', 'Rooftop🌟', '', '17620803524', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 21:58:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17620803524' LIMIT 1);
UPDATE users SET nick_name='Rooftop🌟', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='17620803524';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13415260514', 'U13415260514', 'Jane.w', '', '13415260514', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 21:09:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13415260514' LIMIT 1);
UPDATE users SET nick_name='Jane.w', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13415260514';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13503031696', 'U13503031696', 'Ray', '', '13503031696', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 19:54:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13503031696' LIMIT 1);
UPDATE users SET nick_name='Ray', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13503031696';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920304626', 'U15920304626', 'bubi', '', '15920304626', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 197, '2024-09-11 19:13:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920304626' LIMIT 1);
UPDATE users SET nick_name='bubi', balance=GREATEST(balance, 0.00), points=GREATEST(points, 197) WHERE phone='15920304626';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15986348544', 'U15986348544', 'Zzz', '', '15986348544', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 16:48:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15986348544' LIMIT 1);
UPDATE users SET nick_name='Zzz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15986348544';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751869394', 'U13751869394', 'Johnny Rocketman🚀', '', '13751869394', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 15:41:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751869394' LIMIT 1);
UPDATE users SET nick_name='Johnny Rocketman🚀', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13751869394';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15363289673', 'U15363289673', 'Janus', '', '15363289673', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 14:37:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15363289673' LIMIT 1);
UPDATE users SET nick_name='Janus', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='15363289673';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666001600', 'U18666001600', 'F聪', '', '18666001600', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 14:30:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666001600' LIMIT 1);
UPDATE users SET nick_name='F聪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18666001600';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719252370', 'U13719252370', 'Paul.', '', '13719252370', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 14:23:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719252370' LIMIT 1);
UPDATE users SET nick_name='Paul.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13719252370';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435757718', 'U13435757718', '大象', '', '13435757718', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-09-11 13:45:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435757718' LIMIT 1);
UPDATE users SET nick_name='大象', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='13435757718';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18965167891', 'U18965167891', '貳爺', '', '18965167891', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 13:45:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18965167891' LIMIT 1);
UPDATE users SET nick_name='貳爺', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18965167891';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13620425869', 'U13620425869', '宝马', '', '13620425869', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 13:26:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13620425869' LIMIT 1);
UPDATE users SET nick_name='宝马', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13620425869';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18826053821', 'U18826053821', '丿', '', '18826053821', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 13:20:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18826053821' LIMIT 1);
UPDATE users SET nick_name='丿', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18826053821';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751273312', 'U13751273312', 'Season', '', '13751273312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 13:17:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751273312' LIMIT 1);
UPDATE users SET nick_name='Season', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13751273312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533993498', 'U13533993498', '明添咁好', '', '13533993498', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 12:54:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533993498' LIMIT 1);
UPDATE users SET nick_name='明添咁好', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13533993498';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18666086393', 'U18666086393', 'wing', '', '18666086393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 12:47:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18666086393' LIMIT 1);
UPDATE users SET nick_name='wing', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18666086393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920153060', 'U15920153060', 'MiuMio', '', '15920153060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 12:45:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920153060' LIMIT 1);
UPDATE users SET nick_name='MiuMio', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='15920153060';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535275925', 'U13535275925', 'Dincky', '', '13535275925', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 12:37:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535275925' LIMIT 1);
UPDATE users SET nick_name='Dincky', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535275925';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15918816706', 'U15918816706', 'CR.Fang', '', '15918816706', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 12:27:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15918816706' LIMIT 1);
UPDATE users SET nick_name='CR.Fang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15918816706';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13580491339', 'U13580491339', 'DT', '', '13580491339', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 12:15:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13580491339' LIMIT 1);
UPDATE users SET nick_name='DT', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13580491339';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13246401021', 'U13246401021', '范柠语Vanny🦋', '', '13246401021', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-09-11 12:04:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13246401021' LIMIT 1);
UPDATE users SET nick_name='范柠语Vanny🦋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='13246401021';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13145735601', 'U13145735601', 'Zhang', '', '13145735601', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-11 12:01:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13145735601' LIMIT 1);
UPDATE users SET nick_name='Zhang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13145735601';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18998492195', 'U18998492195', '好久不见。', '', '18998492195', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-11 11:59:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18998492195' LIMIT 1);
UPDATE users SET nick_name='好久不见。', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18998492195';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899972906', 'U15899972906', '林', '', '15899972906', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:57:43'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899972906' LIMIT 1);
UPDATE users SET nick_name='林', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15899972906';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660637370', 'U13660637370', '田田🍭', '', '13660637370', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:53:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660637370' LIMIT 1);
UPDATE users SET nick_name='田田🍭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660637370';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18820775444', 'U18820775444', 'fzh', '', '18820775444', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:52:12'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18820775444' LIMIT 1);
UPDATE users SET nick_name='fzh', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18820775444';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13729859856', 'U13729859856', 'susu', '', '13729859856', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-11 11:51:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13729859856' LIMIT 1);
UPDATE users SET nick_name='susu', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13729859856';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620638191', 'U18620638191', 'JING', '', '18620638191', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-11 11:51:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620638191' LIMIT 1);
UPDATE users SET nick_name='JING', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18620638191';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250528816', 'U13250528816', '9w', '', '13250528816', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:49:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250528816' LIMIT 1);
UPDATE users SET nick_name='9w', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250528816';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18024505210', 'U18024505210', 'Είναι小火®²⁰²⁴', '', '18024505210', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:49:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18024505210' LIMIT 1);
UPDATE users SET nick_name='Είναι小火®²⁰²⁴', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18024505210';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19902816173', 'U19902816173', '零', '', '19902816173', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:49:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19902816173' LIMIT 1);
UPDATE users SET nick_name='零', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19902816173';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18578769719', 'U18578769719', 'mmmm', '', '18578769719', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:49:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18578769719' LIMIT 1);
UPDATE users SET nick_name='mmmm', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18578769719';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19526226674', 'U19526226674', '195', '', '19526226674', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:49:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19526226674' LIMIT 1);
UPDATE users SET nick_name='195', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19526226674';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15603062941', 'U15603062941', '小玉壶', '', '15603062941', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:49:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15603062941' LIMIT 1);
UPDATE users SET nick_name='小玉壶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15603062941';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18918215075', 'U18918215075', '张0🌙', '', '18918215075', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:49:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18918215075' LIMIT 1);
UPDATE users SET nick_name='张0🌙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18918215075';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16676806645', 'U16676806645', '壹陆陆', '', '16676806645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16676806645' LIMIT 1);
UPDATE users SET nick_name='壹陆陆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16676806645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626174698', 'U15626174698', 'Susanna', '', '15626174698', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:53'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626174698' LIMIT 1);
UPDATE users SET nick_name='Susanna', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626174698';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17714401409', 'U17714401409', '177', '', '17714401409', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17714401409' LIMIT 1);
UPDATE users SET nick_name='177', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17714401409';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418149728', 'U13418149728', 'penny', '', '13418149728', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418149728' LIMIT 1);
UPDATE users SET nick_name='penny', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13418149728';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011777618', 'U18011777618', '李俊杰', '', '18011777618', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011777618' LIMIT 1);
UPDATE users SET nick_name='李俊杰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18011777618';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430230913', 'U13430230913', 'Evelyn', '', '13430230913', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430230913' LIMIT 1);
UPDATE users SET nick_name='Evelyn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430230913';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13318743253', 'U13318743253', 'Wong🎈', '', '13318743253', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13318743253' LIMIT 1);
UPDATE users SET nick_name='Wong🎈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13318743253';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17607041868', 'U17607041868', '9', '', '17607041868', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-11 11:48:18'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17607041868' LIMIT 1);
UPDATE users SET nick_name='9', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17607041868';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18012617297', 'U18012617297', 'JO🦋', '', '18012617297', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18012617297' LIMIT 1);
UPDATE users SET nick_name='JO🦋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18012617297';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13553696037', 'U13553696037', '爱吃香菜蘑菇', '', '13553696037', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13553696037' LIMIT 1);
UPDATE users SET nick_name='爱吃香菜蘑菇', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13553696037';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18200993730', 'U18200993730', 'Chansace', '', '18200993730', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18200993730' LIMIT 1);
UPDATE users SET nick_name='Chansace', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18200993730';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688462926', 'U18688462926', '陈', '', '18688462926', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688462926' LIMIT 1);
UPDATE users SET nick_name='陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688462926';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15011852992', 'U15011852992', 'CX', '', '15011852992', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:48:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15011852992' LIMIT 1);
UPDATE users SET nick_name='CX', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15011852992';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925059361', 'U13925059361', '丹🎾', '', '13925059361', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 128, '2024-09-11 11:48:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925059361' LIMIT 1);
UPDATE users SET nick_name='丹🎾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 128) WHERE phone='13925059361';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602883128', 'U13602883128', '321', '', '13602883128', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 11:48:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602883128' LIMIT 1);
UPDATE users SET nick_name='321', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13602883128';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13798033701', 'U13798033701', 'bibi.wan', '', '13798033701', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13798033701' LIMIT 1);
UPDATE users SET nick_name='bibi.wan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13798033701';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19880891449', 'U19880891449', '壹玖捌', '', '19880891449', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19880891449' LIMIT 1);
UPDATE users SET nick_name='壹玖捌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19880891449';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819482049', 'U18819482049', 'R. XK', '', '18819482049', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819482049' LIMIT 1);
UPDATE users SET nick_name='R. XK', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819482049';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13517499910', 'U13517499910', '🇩 🇺 🇰 🇦 🇳 🇬', '', '13517499910', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13517499910' LIMIT 1);
UPDATE users SET nick_name='🇩 🇺 🇰 🇦 🇳 🇬', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13517499910';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13247675803', 'U13247675803', 'agill', '', '13247675803', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13247675803' LIMIT 1);
UPDATE users SET nick_name='agill', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13247675803';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18028083467', 'U18028083467', 'aki', '', '18028083467', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-09-11 11:47:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18028083467' LIMIT 1);
UPDATE users SET nick_name='aki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='18028083467';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13418044814', 'U13418044814', 'Cici', '', '13418044814', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 11:47:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13418044814' LIMIT 1);
UPDATE users SET nick_name='Cici', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13418044814';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15566005311', 'U15566005311', '张0🌙', '', '15566005311', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15566005311' LIMIT 1);
UPDATE users SET nick_name='张0🌙', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15566005311';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18070785066', 'U18070785066', '文仪', '', '18070785066', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18070785066' LIMIT 1);
UPDATE users SET nick_name='文仪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18070785066';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15179448057', 'U15179448057', '55', '', '15179448057', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-11 11:47:26'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15179448057' LIMIT 1);
UPDATE users SET nick_name='55', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='15179448057';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660005798', 'U13660005798', 'TytytytytY', '', '13660005798', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660005798' LIMIT 1);
UPDATE users SET nick_name='TytytytytY', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660005798';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18553711299', 'U18553711299', '🌀洋葱的聪', '', '18553711299', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18553711299' LIMIT 1);
UPDATE users SET nick_name='🌀洋葱的聪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18553711299';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825081146', 'U18825081146', '可啦思刻', '', '18825081146', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825081146' LIMIT 1);
UPDATE users SET nick_name='可啦思刻', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825081146';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19834432115', 'U19834432115', 'Ailsa🦋', '', '19834432115', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19834432115' LIMIT 1);
UPDATE users SET nick_name='Ailsa🦋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19834432115';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18819160822', 'U18819160822', 'luoxz', '', '18819160822', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18819160822' LIMIT 1);
UPDATE users SET nick_name='luoxz', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18819160822';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13480274041', 'U13480274041', '诺里', '', '13480274041', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-11 11:47:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13480274041' LIMIT 1);
UPDATE users SET nick_name='诺里', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13480274041';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15915996552', 'U15915996552', 'Venice', '', '15915996552', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15915996552' LIMIT 1);
UPDATE users SET nick_name='Venice', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15915996552';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18316661017', 'U18316661017', '郑美丽', '', '18316661017', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18316661017' LIMIT 1);
UPDATE users SET nick_name='郑美丽', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18316661017';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13214170699', 'U13214170699', '🔒', '', '13214170699', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:47:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13214170699' LIMIT 1);
UPDATE users SET nick_name='🔒', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13214170699';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15018478723', 'U15018478723', '赖文隆-We Fun', '', '15018478723', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:46:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15018478723' LIMIT 1);
UPDATE users SET nick_name='赖文隆-We Fun', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15018478723';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826469416', 'U13826469416', '小辉', '', '13826469416', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:46:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826469416' LIMIT 1);
UPDATE users SET nick_name='小辉', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826469416';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15828062356', 'U15828062356', '努力减肥的瘦子', '', '15828062356', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:46:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15828062356' LIMIT 1);
UPDATE users SET nick_name='努力减肥的瘦子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15828062356';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15899964165', 'U15899964165', '哈哈(*^ω^*)就是我', '', '15899964165', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:46:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15899964165' LIMIT 1);
UPDATE users SET nick_name='哈哈(*^ω^*)就是我', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15899964165';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13715420148', 'U13715420148', 'Clno1', '', '13715420148', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:46:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13715420148' LIMIT 1);
UPDATE users SET nick_name='Clno1', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13715420148';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13366000188', 'U13366000188', '机器猫', '', '13366000188', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:46:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13366000188' LIMIT 1);
UPDATE users SET nick_name='机器猫', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13366000188';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19865003249', 'U19865003249', 'Mortal.', '', '19865003249', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 11:45:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19865003249' LIMIT 1);
UPDATE users SET nick_name='Mortal.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='19865003249';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027272243', 'U18027272243', 'Brezzchen-Dragon', '', '18027272243', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:45:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027272243' LIMIT 1);
UPDATE users SET nick_name='Brezzchen-Dragon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027272243';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688485312', 'U18688485312', 'kast_li', '', '18688485312', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 98, '2024-09-11 11:45:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688485312' LIMIT 1);
UPDATE users SET nick_name='kast_li', balance=GREATEST(balance, 0.00), points=GREATEST(points, 98) WHERE phone='18688485312';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19927188714', 'U19927188714', '不吃洋葱的洋葱', '', '19927188714', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:45:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19927188714' LIMIT 1);
UPDATE users SET nick_name='不吃洋葱的洋葱', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19927188714';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13288599591', 'U13288599591', '泽航', '', '13288599591', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-11 11:45:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13288599591' LIMIT 1);
UPDATE users SET nick_name='泽航', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13288599591';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13125066582', 'U13125066582', '很可爱的牛', '', '13125066582', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:44:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13125066582' LIMIT 1);
UPDATE users SET nick_name='很可爱的牛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13125066582';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626291024', 'U15626291024', '点点点o', '', '15626291024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:44:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626291024' LIMIT 1);
UPDATE users SET nick_name='点点点o', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626291024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17665183842', 'U17665183842', '李煌', '', '17665183842', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:44:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17665183842' LIMIT 1);
UPDATE users SET nick_name='李煌', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17665183842';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13726707023', 'U13726707023', '那皮', '', '13726707023', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:44:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13726707023' LIMIT 1);
UPDATE users SET nick_name='那皮', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13726707023';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626463178', 'U15626463178', '晓治', '', '15626463178', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:44:17'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626463178' LIMIT 1);
UPDATE users SET nick_name='晓治', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626463178';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13250742889', 'U13250742889', '叶', '', '13250742889', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:44:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13250742889' LIMIT 1);
UPDATE users SET nick_name='叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13250742889';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18011947510', 'U18011947510', '小鲨鱼', '', '18011947510', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-11 11:43:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18011947510' LIMIT 1);
UPDATE users SET nick_name='小鲨鱼', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18011947510';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13204171797', 'U13204171797', '水田', '', '13204171797', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 11:43:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13204171797' LIMIT 1);
UPDATE users SET nick_name='水田', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13204171797';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13928866393', 'U13928866393', 'An', '', '13928866393', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-11 10:15:38'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13928866393' LIMIT 1);
UPDATE users SET nick_name='An', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13928866393';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813081707', 'U18813081707', '安妮住在绿山墙🌸', '', '18813081707', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 21:45:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813081707' LIMIT 1);
UPDATE users SET nick_name='安妮住在绿山墙🌸', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18813081707';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13727059481', 'U13727059481', '赖东东', '', '13727059481', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-10 18:18:36'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13727059481' LIMIT 1);
UPDATE users SET nick_name='赖东东', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13727059481';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13750592006', 'U13750592006', 'Rec.', '', '13750592006', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-10 18:12:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13750592006' LIMIT 1);
UPDATE users SET nick_name='Rec.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13750592006';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15989281559', 'U15989281559', '15989281559', '', '15989281559', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 18:08:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15989281559' LIMIT 1);
UPDATE users SET nick_name='15989281559', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15989281559';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13794265528', 'U13794265528', 'KNie', '', '13794265528', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-10 18:04:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13794265528' LIMIT 1);
UPDATE users SET nick_name='KNie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13794265528';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18602030937', 'U18602030937', '18602030937', '', '18602030937', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 18:03:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18602030937' LIMIT 1);
UPDATE users SET nick_name='18602030937', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18602030937';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13122290811', 'U13122290811', 'Scott Lychee', '', '13122290811', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 18:01:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13122290811' LIMIT 1);
UPDATE users SET nick_name='Scott Lychee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13122290811';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13660097951', 'U13660097951', '梁小霞', '', '13660097951', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 17:59:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13660097951' LIMIT 1);
UPDATE users SET nick_name='梁小霞', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13660097951';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620845198', 'U16620845198', '进无止境', '', '16620845198', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 17:57:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620845198' LIMIT 1);
UPDATE users SET nick_name='进无止境', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620845198';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19128270715', 'U19128270715', '19128270715', '', '19128270715', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 17:43:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19128270715' LIMIT 1);
UPDATE users SET nick_name='19128270715', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19128270715';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18680483480', 'U18680483480', 'Moon', '', '18680483480', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 17:41:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18680483480' LIMIT 1);
UPDATE users SET nick_name='Moon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18680483480';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13640685193', 'U13640685193', '阿李叭叭', '', '13640685193', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 17:39:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13640685193' LIMIT 1);
UPDATE users SET nick_name='阿李叭叭', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13640685193';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13431031042', 'U13431031042', 'teaw', '', '13431031042', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 16:11:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13431031042' LIMIT 1);
UPDATE users SET nick_name='teaw', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13431031042';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825197062', 'U18825197062', 'Timon', '', '18825197062', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 16:08:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825197062' LIMIT 1);
UPDATE users SET nick_name='Timon', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825197062';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19120413910', 'U19120413910', 'momomogul', '', '19120413910', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-09-10 15:31:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19120413910' LIMIT 1);
UPDATE users SET nick_name='momomogul', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='19120413910';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392105079', 'U13392105079', 'GZ 枫叶', '', '13392105079', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 15:16:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392105079' LIMIT 1);
UPDATE users SET nick_name='GZ 枫叶', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13392105079';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15775030659', 'U15775030659', '徐', '', '15775030659', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 12:30:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15775030659' LIMIT 1);
UPDATE users SET nick_name='徐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15775030659';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13719085584', 'U13719085584', '李健', '', '13719085584', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-10 11:29:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13719085584' LIMIT 1);
UPDATE users SET nick_name='李健', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13719085584';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664528213', 'U18664528213', 'tttttt', '', '18664528213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 87, '2024-09-09 22:40:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664528213' LIMIT 1);
UPDATE users SET nick_name='tttttt', balance=GREATEST(balance, 0.00), points=GREATEST(points, 87) WHERE phone='18664528213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15914386213', 'U15914386213', '小黄小姐®', '', '15914386213', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-09 20:15:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15914386213' LIMIT 1);
UPDATE users SET nick_name='小黄小姐®', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15914386213';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570996687', 'U13570996687', 'faye', '', '13570996687', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-09 17:00:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570996687' LIMIT 1);
UPDATE users SET nick_name='faye', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13570996687';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13560423107', 'U13560423107', '725189', '', '13560423107', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-09 16:36:47'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13560423107' LIMIT 1);
UPDATE users SET nick_name='725189', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13560423107';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18845130857', 'U18845130857', 'jiangying1231', '', '18845130857', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-09 15:55:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18845130857' LIMIT 1);
UPDATE users SET nick_name='jiangying1231', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18845130857';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13539980033', 'U13539980033', '郑小妹', '', '13539980033', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 117, '2024-09-09 15:31:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13539980033' LIMIT 1);
UPDATE users SET nick_name='郑小妹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 117) WHERE phone='13539980033';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19966250145', 'U19966250145', '丁一', '', '19966250145', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-09-09 14:41:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19966250145' LIMIT 1);
UPDATE users SET nick_name='丁一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='19966250145';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620828591', 'U18620828591', 'Levie', '', '18620828591', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-09 14:33:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620828591' LIMIT 1);
UPDATE users SET nick_name='Levie', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620828591';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15818807332', 'U15818807332', '一', '', '15818807332', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 118, '2024-09-09 14:00:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15818807332' LIMIT 1);
UPDATE users SET nick_name='一', balance=GREATEST(balance, 0.00), points=GREATEST(points, 118) WHERE phone='15818807332';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13602820604', 'U13602820604', '姜锋', '', '13602820604', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 134, '2024-09-09 13:44:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13602820604' LIMIT 1);
UPDATE users SET nick_name='姜锋', balance=GREATEST(balance, 0.00), points=GREATEST(points, 134) WHERE phone='13602820604';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_16620027553', 'U16620027553', '脑虎', '', '16620027553', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-09 13:14:03'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='16620027553' LIMIT 1);
UPDATE users SET nick_name='脑虎', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='16620027553';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588495206', 'U18588495206', '周千竣 Dalton', '', '18588495206', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-09-09 12:58:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588495206' LIMIT 1);
UPDATE users SET nick_name='周千竣 Dalton', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='18588495206';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13713905819', 'U13713905819', '黄小姐', '', '13713905819', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-09 11:53:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13713905819' LIMIT 1);
UPDATE users SET nick_name='黄小姐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='13713905819';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13628660911', 'U13628660911', '栗子', '', '13628660911', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-09 11:26:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13628660911' LIMIT 1);
UPDATE users SET nick_name='栗子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13628660911';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15917642645', 'U15917642645', 'Cici', '', '15917642645', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-09 11:23:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15917642645' LIMIT 1);
UPDATE users SET nick_name='Cici', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15917642645';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18700962703', 'U18700962703', 'Ccccara', '', '18700962703', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-09 10:57:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18700962703' LIMIT 1);
UPDATE users SET nick_name='Ccccara', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18700962703';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18607093133', 'U18607093133', '齐天大圣', '', '18607093133', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-09 10:31:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18607093133' LIMIT 1);
UPDATE users SET nick_name='齐天大圣', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18607093133';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13433902982', 'U13433902982', 'ww', '', '13433902982', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-08 21:46:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13433902982' LIMIT 1);
UPDATE users SET nick_name='ww', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13433902982';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13672422208', 'U13672422208', 'yee', '', '13672422208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-08 21:42:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13672422208' LIMIT 1);
UPDATE users SET nick_name='yee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13672422208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622155019', 'U15622155019', 'YANG', '', '15622155019', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-08 17:25:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622155019' LIMIT 1);
UPDATE users SET nick_name='YANG', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622155019';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13030178707', 'U13030178707', 'tata🌰', '', '13030178707', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-08 16:55:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13030178707' LIMIT 1);
UPDATE users SET nick_name='tata🌰', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='13030178707';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13358542859', 'U13358542859', '椰子', '', '13358542859', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-08 14:14:41'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13358542859' LIMIT 1);
UPDATE users SET nick_name='椰子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13358542859';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18022420954', 'U18022420954', '山羊网球(番禺店)', '', '18022420954', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-08 13:19:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18022420954' LIMIT 1);
UPDATE users SET nick_name='山羊网球(番禺店)', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18022420954';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128209183', 'U13128209183', 'Darling吖！', '', '13128209183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-08 12:42:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128209183' LIMIT 1);
UPDATE users SET nick_name='Darling吖！', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13128209183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15085991181', 'U15085991181', 'Tan .', '', '15085991181', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 97, '2024-09-08 12:19:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15085991181' LIMIT 1);
UPDATE users SET nick_name='Tan .', balance=GREATEST(balance, 0.00), points=GREATEST(points, 97) WHERE phone='15085991181';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13757194570', 'U13757194570', 'tina', '', '13757194570', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-08 12:12:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13757194570' LIMIT 1);
UPDATE users SET nick_name='tina', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13757194570';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13697972597', 'U13697972597', 'Yu.an', '', '13697972597', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-07 23:14:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13697972597' LIMIT 1);
UPDATE users SET nick_name='Yu.an', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13697972597';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15813357080', 'U15813357080', '崽崽🐾', '', '15813357080', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-07 21:12:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15813357080' LIMIT 1);
UPDATE users SET nick_name='崽崽🐾', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15813357080';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13585434753', 'U13585434753', 'Abby', '', '13585434753', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 76, '2024-09-07 19:07:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13585434753' LIMIT 1);
UPDATE users SET nick_name='Abby', balance=GREATEST(balance, 0.00), points=GREATEST(points, 76) WHERE phone='13585434753';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18122129652', 'U18122129652', '在云端', '', '18122129652', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-09-07 14:11:29'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18122129652' LIMIT 1);
UPDATE users SET nick_name='在云端', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='18122129652';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13925130635', 'U13925130635', 'William', '', '13925130635', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-07 13:15:30'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13925130635' LIMIT 1);
UPDATE users SET nick_name='William', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13925130635';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15692426905', 'U15692426905', 'SYee', '', '15692426905', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-07 12:22:10'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15692426905' LIMIT 1);
UPDATE users SET nick_name='SYee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15692426905';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18588762131', 'U18588762131', 'LawLokyung', '', '18588762131', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-07 12:21:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18588762131' LIMIT 1);
UPDATE users SET nick_name='LawLokyung', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18588762131';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19510164841', 'U19510164841', '七彩小子', '', '19510164841', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-07 12:21:15'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19510164841' LIMIT 1);
UPDATE users SET nick_name='七彩小子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19510164841';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18988977189', 'U18988977189', '瓜🌼🐳🌲', '', '18988977189', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-07 10:33:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18988977189' LIMIT 1);
UPDATE users SET nick_name='瓜🌼🐳🌲', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='18988977189';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18010939237', 'U18010939237', '许涛', '', '18010939237', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-07 10:17:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18010939237' LIMIT 1);
UPDATE users SET nick_name='许涛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18010939237';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802787931', 'U13802787931', '翔', '', '13802787931', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-09-07 09:14:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802787931' LIMIT 1);
UPDATE users SET nick_name='翔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='13802787931';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18126675086', 'U18126675086', '马钰琪', '', '18126675086', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 66, '2024-09-07 08:27:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18126675086' LIMIT 1);
UPDATE users SET nick_name='马钰琪', balance=GREATEST(balance, 0.00), points=GREATEST(points, 66) WHERE phone='18126675086';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19924751028', 'U19924751028', 'David', '', '19924751028', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 88, '2024-09-07 00:43:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19924751028' LIMIT 1);
UPDATE users SET nick_name='David', balance=GREATEST(balance, 0.00), points=GREATEST(points, 88) WHERE phone='19924751028';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13570931923', 'U13570931923', 'Kiki', '', '13570931923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 38, '2024-09-06 23:30:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13570931923' LIMIT 1);
UPDATE users SET nick_name='Kiki', balance=GREATEST(balance, 0.00), points=GREATEST(points, 38) WHERE phone='13570931923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18396366325', 'U18396366325', 'SInn', '', '18396366325', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 107, '2024-09-06 21:38:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18396366325' LIMIT 1);
UPDATE users SET nick_name='SInn', balance=GREATEST(balance, 0.00), points=GREATEST(points, 107) WHERE phone='18396366325';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13922784246', 'U13922784246', '周星星', '', '13922784246', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-09-06 16:30:11'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13922784246' LIMIT 1);
UPDATE users SET nick_name='周星星', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13922784246';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15218870024', 'U15218870024', 'nat', '', '15218870024', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-06 16:26:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15218870024' LIMIT 1);
UPDATE users SET nick_name='nat', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15218870024';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632788326', 'U13632788326', '小怡子', '', '13632788326', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 59, '2024-09-06 15:41:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632788326' LIMIT 1);
UPDATE users SET nick_name='小怡子', balance=GREATEST(balance, 0.00), points=GREATEST(points, 59) WHERE phone='13632788326';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18613035096', 'U18613035096', 'Cloudy', '', '18613035096', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-06 14:03:45'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18613035096' LIMIT 1);
UPDATE users SET nick_name='Cloudy', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18613035096';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19872942068', 'U19872942068', 'L', '', '19872942068', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 9, '2024-09-06 12:03:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19872942068' LIMIT 1);
UPDATE users SET nick_name='L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 9) WHERE phone='19872942068';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15198207753', 'U15198207753', 'Lisa', '', '15198207753', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 78, '2024-09-06 11:11:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15198207753' LIMIT 1);
UPDATE users SET nick_name='Lisa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 78) WHERE phone='15198207753';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18986674361', 'U18986674361', 'Michelle', '', '18986674361', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-05 23:03:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18986674361' LIMIT 1);
UPDATE users SET nick_name='Michelle', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='18986674361';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450225617', 'U13450225617', 'Pan', '', '13450225617', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 166, '2024-09-05 22:19:25'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450225617' LIMIT 1);
UPDATE users SET nick_name='Pan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 166) WHERE phone='13450225617';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13631487538', 'U13631487538', 'YY-帆S', '', '13631487538', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-05 20:19:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13631487538' LIMIT 1);
UPDATE users SET nick_name='YY-帆S', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13631487538';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15202054923', 'U15202054923', '零零零.零零', '', '15202054923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-05 16:56:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15202054923' LIMIT 1);
UPDATE users SET nick_name='零零零.零零', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15202054923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430256358', 'U13430256358', 'Charleen', '', '13430256358', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-05 16:10:37'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430256358' LIMIT 1);
UPDATE users SET nick_name='Charleen', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430256358';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18027440505', 'U18027440505', 'shaw', '', '18027440505', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-05 14:11:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18027440505' LIMIT 1);
UPDATE users SET nick_name='shaw', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18027440505';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13392454577', 'U13392454577', '严', '', '13392454577', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 68, '2024-09-05 13:24:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13392454577' LIMIT 1);
UPDATE users SET nick_name='严', balance=GREATEST(balance, 0.00), points=GREATEST(points, 68) WHERE phone='13392454577';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826495397', 'U13826495397', 'Yoyo', '', '13826495397', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-04 21:55:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826495397' LIMIT 1);
UPDATE users SET nick_name='Yoyo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826495397';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15627229802', 'U15627229802', 'kakeichui', '', '15627229802', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-04 17:40:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15627229802' LIMIT 1);
UPDATE users SET nick_name='kakeichui', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15627229802';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15920817126', 'U15920817126', '彬仔', '', '15920817126', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-04 15:51:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15920817126' LIMIT 1);
UPDATE users SET nick_name='彬仔', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15920817126';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13533208523', 'U13533208523', 'poom_z', '', '13533208523', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-04 12:40:33'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13533208523' LIMIT 1);
UPDATE users SET nick_name='poom_z', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13533208523';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19968175719', 'U19968175719', '愈', '', '19968175719', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 56, '2024-09-04 11:12:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19968175719' LIMIT 1);
UPDATE users SET nick_name='愈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 56) WHERE phone='19968175719';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18617396866', 'U18617396866', '陈', '', '18617396866', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-04 09:56:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18617396866' LIMIT 1);
UPDATE users SET nick_name='陈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18617396866';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17688845642', 'U17688845642', 'L', '', '17688845642', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 29, '2024-09-04 01:24:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17688845642' LIMIT 1);
UPDATE users SET nick_name='L', balance=GREATEST(balance, 0.00), points=GREATEST(points, 29) WHERE phone='17688845642';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535148113', 'U13535148113', '美女', '', '13535148113', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-03 23:39:49'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535148113' LIMIT 1);
UPDATE users SET nick_name='美女', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13535148113';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18813654560', 'U18813654560', 'Lychee', '', '18813654560', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 127, '2024-09-03 23:27:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18813654560' LIMIT 1);
UPDATE users SET nick_name='Lychee', balance=GREATEST(balance, 0.00), points=GREATEST(points, 127) WHERE phone='18813654560';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13005266924', 'U13005266924', '陆', '', '13005266924', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-03 21:24:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13005266924' LIMIT 1);
UPDATE users SET nick_name='陆', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13005266924';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664666938', 'U18664666938', '🐱ChenFangYi✨', '', '18664666938', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 47, '2024-09-03 20:58:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664666938' LIMIT 1);
UPDATE users SET nick_name='🐱ChenFangYi✨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 47) WHERE phone='18664666938';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626095981', 'U15626095981', 'Elroy 177', '', '15626095981', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-03 17:45:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626095981' LIMIT 1);
UPDATE users SET nick_name='Elroy 177', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626095981';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13128605208', 'U13128605208', 'Baroque', '', '13128605208', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 668, '2024-09-03 15:22:16'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13128605208' LIMIT 1);
UPDATE users SET nick_name='Baroque', balance=GREATEST(balance, 0.00), points=GREATEST(points, 668) WHERE phone='13128605208';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15622718167', 'U15622718167', '何珊stella', '', '15622718167', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-03 13:20:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15622718167' LIMIT 1);
UPDATE users SET nick_name='何珊stella', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15622718167';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15992988756', 'U15992988756', 'aa', '', '15992988756', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-03 12:02:28'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15992988756' LIMIT 1);
UPDATE users SET nick_name='aa', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15992988756';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13535493183', 'U13535493183', '毛毛', '', '13535493183', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 39, '2024-09-02 16:59:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13535493183' LIMIT 1);
UPDATE users SET nick_name='毛毛', balance=GREATEST(balance, 0.00), points=GREATEST(points, 39) WHERE phone='13535493183';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13882297298', 'U13882297298', 'Bella🍊', '', '13882297298', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-02 16:51:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13882297298' LIMIT 1);
UPDATE users SET nick_name='Bella🍊', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13882297298';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13632210309', 'U13632210309', 'Sophia_Li✨', '', '13632210309', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 67, '2024-09-02 14:55:54'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13632210309' LIMIT 1);
UPDATE users SET nick_name='Sophia_Li✨', balance=GREATEST(balance, 0.00), points=GREATEST(points, 67) WHERE phone='13632210309';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13450394272', 'U13450394272', 'Jet', '', '13450394272', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-09-02 11:05:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13450394272' LIMIT 1);
UPDATE users SET nick_name='Jet', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13450394272';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15810557097', 'U15810557097', 'Alice', '', '15810557097', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 43, '2024-09-02 10:08:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15810557097' LIMIT 1);
UPDATE users SET nick_name='Alice', balance=GREATEST(balance, 0.00), points=GREATEST(points, 43) WHERE phone='15810557097';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13802921923', 'U13802921923', 'fang', '', '13802921923', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 304, '2024-09-02 09:47:42'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13802921923' LIMIT 1);
UPDATE users SET nick_name='fang', balance=GREATEST(balance, 0.00), points=GREATEST(points, 304) WHERE phone='13802921923';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_19898661864', 'U19898661864', '哈哈', '', '19898661864', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-01 16:40:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='19898661864' LIMIT 1);
UPDATE users SET nick_name='哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='19898661864';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13416124699', 'U13416124699', 'summmer', '', '13416124699', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-01 15:40:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13416124699' LIMIT 1);
UPDATE users SET nick_name='summmer', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13416124699';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18925102514', 'U18925102514', 'B.H', '', '18925102514', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 2696, '2024-09-01 15:30:13'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18925102514' LIMIT 1);
UPDATE users SET nick_name='B.H', balance=GREATEST(balance, 0.00), points=GREATEST(points, 2696) WHERE phone='18925102514';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18679937188', 'U18679937188', '71', '', '18679937188', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-01 12:46:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18679937188' LIMIT 1);
UPDATE users SET nick_name='71', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18679937188';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18318684197', 'U18318684197', 'Caroline', '', '18318684197', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-09-01 11:17:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18318684197' LIMIT 1);
UPDATE users SET nick_name='Caroline', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18318684197';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13716242515', 'U13716242515', '李玉章', '', '13716242515', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 77, '2024-09-01 09:32:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13716242515' LIMIT 1);
UPDATE users SET nick_name='李玉章', balance=GREATEST(balance, 0.00), points=GREATEST(points, 77) WHERE phone='13716242515';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13435457856', 'U13435457856', 'Lan', '', '13435457856', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-31 20:54:57'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13435457856' LIMIT 1);
UPDATE users SET nick_name='Lan', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13435457856';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13824483538', 'U13824483538', 'Angel', '', '13824483538', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2024-08-31 16:45:02'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13824483538' LIMIT 1);
UPDATE users SET nick_name='Angel', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13824483538';
