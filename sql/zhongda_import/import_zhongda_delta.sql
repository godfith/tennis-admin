SET NAMES utf8mb4;
-- 中大店增量同步 2026-10-24 17:38
-- 新增用户 23，更新用户 5，新增卡 17，更新卡 19

INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17745169672', 'U17745169672', 'TAX.', '', '17745169672', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-24 21:15:06'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17745169672' LIMIT 1);
UPDATE users SET nick_name='TAX.', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17745169672';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18825139848', 'U18825139848', '18825139848', '', '18825139848', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-24 20:35:08'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18825139848' LIMIT 1);
UPDATE users SET nick_name='18825139848', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825139848';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13926089780', 'U13926089780', '13926089780', '', '13926089780', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-24 19:49:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13926089780' LIMIT 1);
UPDATE users SET nick_name='13926089780', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13926089780';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15626501135', 'U15626501135', '🎈', '', '15626501135', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-24 18:40:31'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15626501135' LIMIT 1);
UPDATE users SET nick_name='🎈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15626501135';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17817719836', 'U17817719836', '17817719836', '', '17817719836', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-24 16:46:05'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17817719836' LIMIT 1);
UPDATE users SET nick_name='17817719836', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17817719836';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760656480', 'U13760656480', '13760656480', '', '13760656480', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-24 15:19:22'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760656480' LIMIT 1);
UPDATE users SET nick_name='13760656480', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760656480';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18689459904', 'U18689459904', '18689459904', '', '18689459904', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-24 13:27:20'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18689459904' LIMIT 1);
UPDATE users SET nick_name='18689459904', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18689459904';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18688389908', 'U18688389908', '18688389908', '', '18688389908', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-24 12:37:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18688389908' LIMIT 1);
UPDATE users SET nick_name='18688389908', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18688389908';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15902096983', 'U15902096983', '15902096983', '', '15902096983', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-23 21:44:55'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15902096983' LIMIT 1);
UPDATE users SET nick_name='15902096983', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15902096983';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18382301506', 'U18382301506', 'Gregg', '', '18382301506', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-23 16:33:24'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18382301506' LIMIT 1);
UPDATE users SET nick_name='Gregg', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18382301506';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18664834395', 'U18664834395', '18664834395', '', '18664834395', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-23 14:35:32'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18664834395' LIMIT 1);
UPDATE users SET nick_name='18664834395', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18664834395';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13431785210', 'U13431785210', '00%', '', '13431785210', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-23 14:06:09'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13431785210' LIMIT 1);
UPDATE users SET nick_name='00%', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13431785210';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13826006229', 'U13826006229', '静', '', '13826006229', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-22 22:30:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13826006229' LIMIT 1);
UPDATE users SET nick_name='静', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13826006229';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18025192151', 'U18025192151', '年年顺景', '', '18025192151', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-22 20:33:48'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18025192151' LIMIT 1);
UPDATE users SET nick_name='年年顺景', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18025192151';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18620636928', 'U18620636928', '18620636928', '', '18620636928', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-22 15:42:35'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18620636928' LIMIT 1);
UPDATE users SET nick_name='18620636928', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18620636928';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18718881057', 'U18718881057', '18718881057', '', '18718881057', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-22 15:41:14'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18718881057' LIMIT 1);
UPDATE users SET nick_name='18718881057', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18718881057';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13630040932', 'U13630040932', '啦啦啦啦', '', '13630040932', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 15:37:23'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13630040932' LIMIT 1);
UPDATE users SET nick_name='啦啦啦啦', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13630040932';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_15302378884', 'U15302378884', 'c', '', '15302378884', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-17 15:35:07'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='15302378884' LIMIT 1);
UPDATE users SET nick_name='c', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='15302378884';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_17881960432', 'U17881960432', 'xzx', '', '17881960432', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-14 19:53:44'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='17881960432' LIMIT 1);
UPDATE users SET nick_name='xzx', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='17881960432';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13910935369', 'U13910935369', '端', '', '13910935369', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-05 17:25:51'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13910935369' LIMIT 1);
UPDATE users SET nick_name='端', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13910935369';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_13760480550', 'U13760480550', '罗锐', '', '13760480550', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-10-03 20:39:50'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='13760480550' LIMIT 1);
UPDATE users SET nick_name='罗锐', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13760480550';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18023475838', 'U18023475838', '哈哈', '', '18023475838', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-09-19 15:56:21'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18023475838' LIMIT 1);
UPDATE users SET nick_name='哈哈', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18023475838';
INSERT INTO users (openid, user_id, nick_name, avatar_url, phone, role, venue_id, venue_name, balance, points, created_at)
SELECT 'reg_18320084586', 'U18320084586', 'しんいち', '', '18320084586', 'user', 'venue_zhongda', '山羊Goat网球馆（中大店）', 0.00, 0, '2026-06-18 21:23:00'
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM users WHERE phone='18320084586' LIMIT 1);
UPDATE users SET nick_name='しんいち', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18320084586';
UPDATE users SET nick_name='ben', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13544489067';
UPDATE users SET nick_name='Evan Lam', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18148942236';
UPDATE users SET nick_name='CJR', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18825234602';
UPDATE users SET nick_name='lil_lolo', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='18529456126';
UPDATE users SET nick_name='冯小莹', balance=GREATEST(balance, 0.00), points=GREATEST(points, 0) WHERE phone='13600059119';
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_zhongda', '山羊Goat网球馆（中大店）', NULL, '自助畅玩月卡（全时段）', 'time', 1, 0, '2026-10-24', '2026-11-23', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": true}]}', 'active', 'import', 'mt:72343050', '数据迁入', 588.00, '2026-10-24 18:16:21'
FROM users u WHERE u.phone='13544489067' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72343050%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '【双11限定】网球发球机全时120天 1111元联系客服购买', 'time', 1, 0, '2026-10-24', '2027-02-21', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": true}]}', 'active', 'import', 'mt:72333811', '数据迁入', 1111.00, '2026-10-24 17:01:11'
FROM users u WHERE u.phone='18620016028' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72333811%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '10 次全时段发球机次卡(2)', 'times', 10, 6, '2026-10-24', '2027-01-22', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": false, "timeSlots": [{"start": "08:00", "end": "22:00"}]}]}', 'active', 'import', 'mt:72321768', '数据迁入', 0.00, '2026-10-24 15:24:57'
FROM users u WHERE u.phone='18102729840' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72321768%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '3 次全时段发球机次卡(2)', 'times', 3, 1, '2026-10-24', '2026-12-23', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": false, "timeSlots": [{"start": "08:00", "end": "22:00"}]}]}', 'active', 'import', 'mt:72299466', '数据迁入', 0.00, '2026-10-24 12:53:05'
FROM users u WHERE u.phone='18502050960' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72299466%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '3 次全时段发球机次卡', 'times', 3, 2, '2026-10-23', '2026-12-22', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": false, "timeSlots": [{"start": "08:00", "end": "22:00"}]}]}', 'active', 'import', 'mt:72247452', '数据迁入', 171.00, '2026-10-23 20:09:15'
FROM users u WHERE u.phone='13556021529' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72247452%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '10 次全时段发球机次卡(2)', 'times', 10, 1, '2026-10-23', '2027-01-21', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": false, "timeSlots": [{"start": "08:00", "end": "22:00"}]}]}', 'active', 'import', 'mt:72225026', '数据迁入', 0.00, '2026-10-23 17:24:01'
FROM users u WHERE u.phone='13360558701' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72225026%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '3 次全时段发球机次卡', 'times', 3, 2, '2026-10-23', '2026-12-22', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": false, "timeSlots": [{"start": "08:00", "end": "22:00"}]}]}', 'active', 'import', 'mt:72224859', '数据迁入', 171.00, '2026-10-23 17:22:14'
FROM users u WHERE u.phone='18565374462' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72224859%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '10 次闲时发球机次卡', 'times', 10, 10, '2026-10-23', '2027-04-21', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": false, "timeSlots": [{"start": "08:00", "end": "18:00"}]}]}', 'active', 'import', 'mt:72208587', '数据迁入', 0.00, '2026-10-23 14:16:39'
FROM users u WHERE u.phone='18688888279' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72208587%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '1 对 1 私教 10 次卡（ 闲时段）(2)', 'times', 10, 9, '2026-10-23', '2027-02-20', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": false, "timeSlots": [{"start": "00:00", "end": "18:00"}]}]}', 'active', 'import', 'mt:72208564', '数据迁入', 2565.00, '2026-10-23 14:16:25'
FROM users u WHERE u.phone='18688888279' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72208564%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '美团好评券（全时段）', 'times', 1, 1, '2026-10-22', '2026-11-21', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": true}]}', 'active', 'import', 'mt:72171302', '数据迁入', 29.90, '2026-10-22 20:57:31'
FROM users u WHERE u.phone='13560018436' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72171302%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '美团好评券（全时段）(2)', 'times', 1, 1, '2026-10-22', '2026-11-21', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": true}]}', 'active', 'import', 'mt:72171251', '数据迁入', 29.90, '2026-10-22 20:56:52'
FROM users u WHERE u.phone='13711698468' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72171251%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '3 次全时段发球机次卡(2)', 'times', 3, 2, '2026-10-22', '2026-12-21', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": false, "timeSlots": [{"start": "08:00", "end": "22:00"}]}]}', 'active', 'import', 'mt:72159205', '数据迁入', 171.00, '2026-10-22 19:06:02'
FROM users u WHERE u.phone='13316484732' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72159205%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '【双11限定】网球发球机全时120天 1111元联系客服购买', 'time', 1, 0, '2026-10-23', '2027-02-19', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": true}]}', 'active', 'import', 'mt:72159110', '数据迁入', 1111.00, '2026-10-22 19:05:12'
FROM users u WHERE u.phone='13808815021' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72159110%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '美团好评券（全时段）(3)', 'times', 1, 1, '2026-10-22', '2026-11-21', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": true}]}', 'active', 'import', 'mt:72143204', '数据迁入', 29.90, '2026-10-22 15:45:46'
FROM users u WHERE u.phone='13826231716' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72143204%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '3 次全时段发球机次卡(2)', 'times', 3, 2, '2026-10-22', '2026-12-21', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": false, "timeSlots": [{"start": "08:00", "end": "22:00"}]}]}', 'active', 'import', 'mt:72141942', '数据迁入', 171.00, '2026-10-22 15:26:18'
FROM users u WHERE u.phone='18826237181' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72141942%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '10 次全时段发球机次卡', 'times', 10, 8, '2026-10-22', '2027-01-20', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": false, "timeSlots": [{"start": "08:00", "end": "22:00"}]}]}', 'active', 'import', 'mt:72139806', '数据迁入', 0.00, '2026-10-22 14:55:12'
FROM users u WHERE u.phone='18529456126' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72139806%' LIMIT 1) LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_haixinsha', '山羊Goat网球馆（海心沙店）', NULL, '全时段定制私教课', 'times', 30, 19, '2026-10-22', '2026-12-21', '{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5, 6, 7], "unlimited": true}]}', 'active', 'import', 'mt:72139784', '数据迁入', 4088.00, '2026-10-22 14:54:52'
FROM users u WHERE u.phone='18529456126' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72139784%' LIMIT 1) LIMIT 1;
UPDATE member_cards SET remaining_times=4, status='active' WHERE remark LIKE 'mt:72081017%';
UPDATE member_cards SET remaining_times=1, status='active' WHERE remark LIKE 'mt:71937719%';
UPDATE member_cards SET remaining_times=23, status='active' WHERE remark LIKE 'mt:71715139%';
UPDATE member_cards SET remaining_times=5, status='active' WHERE remark LIKE 'mt:71321818%';
UPDATE member_cards SET remaining_times=2, status='active' WHERE remark LIKE 'mt:70972413%';
UPDATE member_cards SET remaining_times=13, status='active' WHERE remark LIKE 'mt:70742618%';
UPDATE member_cards SET remaining_times=1, status='active' WHERE remark LIKE 'mt:69883594%';
UPDATE member_cards SET remaining_times=6, status='active' WHERE remark LIKE 'mt:69883574%';
UPDATE member_cards SET remaining_times=18, status='active' WHERE remark LIKE 'mt:69307109%';
UPDATE member_cards SET remaining_times=3, status='active' WHERE remark LIKE 'mt:67804175%';
UPDATE member_cards SET remaining_times=7, status='active' WHERE remark LIKE 'mt:67452085%';
UPDATE member_cards SET remaining_times=8, status='active' WHERE remark LIKE 'mt:67349238%';
UPDATE member_cards SET remaining_times=6, status='active' WHERE remark LIKE 'mt:66413281%';
UPDATE member_cards SET remaining_times=1, status='active' WHERE remark LIKE 'mt:66338548%';
UPDATE member_cards SET remaining_times=10, status='active' WHERE remark LIKE 'mt:65453170%';
UPDATE member_cards SET remaining_times=10, status='active' WHERE remark LIKE 'mt:62871771%';
UPDATE member_cards SET remaining_times=17, status='active' WHERE remark LIKE 'mt:60795785%';
UPDATE member_cards SET remaining_times=12, status='active' WHERE remark LIKE 'mt:58417342%';
UPDATE member_cards SET remaining_times=5, status='active' WHERE remark LIKE 'mt:58243333%';
