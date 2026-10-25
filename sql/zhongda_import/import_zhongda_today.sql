SET NAMES utf8mb4;
-- 中大店今日增量 2026-10-25 13:38
-- 新增用户 11，更新用户 0，新增卡 3，更新卡 10

INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13924031125', 'U13924031125', '13924031125', '', '13924031125', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-25 19:29:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13924031125' LIMIT 1);
UPDATE users SET nick_name='13924031125', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13924031125';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18665653907', 'U18665653907', '18665653907', '', '18665653907', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-25 19:20:04'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18665653907' LIMIT 1);
UPDATE users SET nick_name='18665653907', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18665653907';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13556403180', 'U13556403180', '13556403180', '', '13556403180', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-25 18:47:52'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13556403180' LIMIT 1);
UPDATE users SET nick_name='13556403180', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13556403180';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18566356790', 'U18566356790', '18566356790', '', '18566356790', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-25 16:41:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18566356790' LIMIT 1);
UPDATE users SET nick_name='18566356790', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18566356790';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13422335522', 'U13422335522', '黄', '', '13422335522', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-25 15:29:19'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13422335522' LIMIT 1);
UPDATE users SET nick_name='黄', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13422335522';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13302392613', 'U13302392613', 'Britney', '', '13302392613', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-25 15:16:34'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13302392613' LIMIT 1);
UPDATE users SET nick_name='Britney', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13302392613';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13751877610', 'U13751877610', '13751877610', '', '13751877610', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-25 13:47:56'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13751877610' LIMIT 1);
UPDATE users SET nick_name='13751877610', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13751877610';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13710736059', 'U13710736059', '13710736059', '', '13710736059', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-25 13:46:39'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13710736059' LIMIT 1);
UPDATE users SET nick_name='13710736059', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13710736059';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17728064052', 'U17728064052', '17728064052', '', '17728064052', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-25 10:50:58'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17728064052' LIMIT 1);
UPDATE users SET nick_name='17728064052', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17728064052';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13058561181', 'U13058561181', 'A', '', '13058561181', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-22 20:30:27'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13058561181' LIMIT 1);
UPDATE users SET nick_name='A', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13058561181';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13430388060', 'U13430388060', 'Oops！Pancake', '', '13430388060', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-24 19:37:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13430388060' LIMIT 1);
UPDATE users SET nick_name='Oops！Pancake', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13430388060';
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '29.9全时段发球机中奖券', 'times', 1, 1, '2026-10-25', '2026-11-24', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": true}]}', 'active', 'import', 'mt:72409154', '数据迁入', 29.90, '2026-10-25 11:33:47'
FROM users u WHERE u.phone='13168362130' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72409154%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '9.9元全时段发球机中奖券', 'times', 1, 1, '2026-10-25', '2026-11-24', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": true}]}', 'active', 'import', 'mt:72408614', '数据迁入', 0.00, '2026-10-25 11:22:55'
FROM users u WHERE u.phone='13657258071' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72408614%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '3 次全时段发球机次卡(4)', 'times', 3, 1, '2026-10-16', '2026-12-15', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": false, "timeSlots": [{"start": "08:00", "end": "22:00"}]}]}', 'active', 'import', 'mt:71654978', '数据迁入', 171.00, '2026-10-16 18:09:29'
FROM users u WHERE u.phone='13822166842' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:71654978%' LIMIT 1) LIMIT 1;
UPDATE member_cards SET remaining_times=8, status='active' WHERE remark LIKE 'mt:72208564%';
UPDATE member_cards SET remaining_times=18, status='active' WHERE remark LIKE 'mt:72139784%';
UPDATE member_cards SET remaining_times=3, status='active' WHERE remark LIKE 'mt:72081017%';
UPDATE member_cards SET remaining_times=4, status='active' WHERE remark LIKE 'mt:71973231%';
UPDATE member_cards SET remaining_times=14, status='active' WHERE remark LIKE 'mt:70373975%';
UPDATE member_cards SET remaining_times=1, status='active' WHERE remark LIKE 'mt:66994988%';
UPDATE member_cards SET remaining_times=4, status='active' WHERE remark LIKE 'mt:65617105%';
UPDATE member_cards SET remaining_times=3, status='active' WHERE remark LIKE 'mt:63824385%';
UPDATE member_cards SET remaining_times=11, status='active' WHERE remark LIKE 'mt:62871771%';
UPDATE member_cards SET remaining_times=4, status='active' WHERE remark LIKE 'mt:58243333%';
