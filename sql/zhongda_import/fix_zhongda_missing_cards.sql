SET NAMES utf8mb4;
-- 补漏的2张有效卡 + 3张不限制有效期的处理

-- 补漏
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_zhongda', '山羊Goat网球馆（中大店）', NULL, '29.9全时段发球机中奖券', 'times', 1, 1, '2026-10-25', '2026-11-24', '{"mode":"rules","rules":[{"weekdays":[1,2,3,4,5,6,7],"unlimited":true}]}', 'active', 'import', 'mt:72409154', '数据迁入', 29.90, '2026-10-25 11:00:00'
FROM users u WHERE u.phone='13168362130' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72409154%' LIMIT 1) LIMIT 1;

INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at)
SELECT u.id, u.openid, u.nick_name, 'venue_zhongda', '山羊Goat网球馆（中大店）', NULL, '9.9元全时段发球机中奖券', 'times', 1, 1, '2026-10-25', '2026-11-24', '{"mode":"rules","rules":[{"weekdays":[1,2,3,4,5,6,7],"unlimited":true}]}', 'active', 'import', 'mt:72408614', '数据迁入', 9.90, '2026-10-25 11:00:00'
FROM users u WHERE u.phone='13657258071' AND NOT EXISTS (SELECT 1 FROM member_cards x WHERE x.remark LIKE 'mt:72408614%' LIMIT 1) LIMIT 1;

-- 3张「不限制，任意连续N天」的，有效期设为获得时间起算
-- 71604734 工作日畅玩月卡 不限制，任意连续25天
UPDATE member_cards SET valid_from='2026-10-01', valid_to='2026-10-26' WHERE remark LIKE 'mt:71604734%';
-- 70948833 工作日畅玩月卡 不限制，任意连续13天
UPDATE member_cards SET valid_from='2026-10-13', valid_to='2026-10-26' WHERE remark LIKE 'mt:70948833%';
-- 68992567 自助畅玩月卡 不限制，任意连续5天
UPDATE member_cards SET valid_from='2026-10-21', valid_to='2026-10-26' WHERE remark LIKE 'mt:68992567%';
