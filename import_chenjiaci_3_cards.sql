SET NAMES utf8mb4;
START TRANSACTION;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Airel文婷～'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-09-12','2026-10-12',NULL,'active','admin_give','mt:68553362 20260912125920RXOMDJ006545_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-12 12:59:19','2026-09-12 12:59:19'
FROM users u WHERE u.phone='13824417829'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:68553362%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '阳'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次闲时发球机次卡' LIMIT 1),
  '3 次闲时发球机次卡','times',5,5,'2026-09-12','2026-12-31','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:68550569  商家直接发放','数据迁入',0,'2026-09-12 12:33:01','2026-09-12 12:33:01'
FROM users u WHERE u.phone='15027010107'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:68550569%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Nickylee'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-09-12','2026-10-12',NULL,'active','admin_give','mt:68547539  商家直接发放','数据迁入',0,'2026-09-12 11:57:09','2026-09-12 11:57:09'
FROM users u WHERE u.phone='13829738317'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:68547539%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Contentment'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,10,'2026-09-12','2026-12-11',NULL,'active','admin_give','mt:68544722 20260912111012EULIHL068414_MT02 【商家直接发放】商家直接发放540元','数据迁入',540.0,'2026-09-12 11:10:11','2026-09-12 11:10:11'
FROM users u WHERE u.phone='16620359283'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:68544722%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Dallas'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-09-11','2026-10-11',NULL,'active','meituan','mt:68450339  美团兑换码 0108012108554','数据迁入',0,'2026-09-11 10:45:21','2026-09-11 10:45:21'
FROM users u WHERE u.phone='18312663989'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:68450339%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-09-11','2026-09-27',NULL,'active','admin_give','mt:68448902  商家直接发放','数据迁入',0,'2026-09-11 10:01:03','2026-09-11 10:01:03'
FROM users u WHERE u.phone='17820573640'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:68448902%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Lynn'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-09-10','2026-10-10',NULL,'active','meituan','mt:68412519  美团兑换码 0105483550892','数据迁入',0,'2026-09-10 18:53:35','2026-09-10 18:53:35'
FROM users u WHERE u.phone='13672415115'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:68412519%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '知恩知恩的Uaena'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-09-10','2026-11-09',NULL,'active','admin_give','mt:67886837 20260910113046QXYBXN259881_MT02 【商家直接发放】商家直接发放176元','数据迁入',176.0,'2026-09-10 11:30:46','2026-09-10 11:30:46'
FROM users u WHERE u.phone='13760811596'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67886837%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '梦楠'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-09-11','2026-10-09','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:67808905 20260909192944RPHHAL682845_MT02 【商家直接发放】商家直接发放287元','数据迁入',287.0,'2026-09-09 19:29:44','2026-09-09 19:29:44'
FROM users u WHERE u.phone='13073077169'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67808905%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Jay'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-09-08','2026-10-08',NULL,'active','admin_give','mt:67750853  商家直接发放','数据迁入',0,'2026-09-08 20:57:31','2026-09-08 20:57:31'
FROM users u WHERE u.phone='15602333300'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67750853%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Jay'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-09-08','2026-11-07',NULL,'active','admin_give','mt:67750776  商家直接发放','数据迁入',0,'2026-09-08 20:56:37','2026-09-08 20:56:37'
FROM users u WHERE u.phone='15602333300'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67750776%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Kelly'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-09-08','2026-11-07',NULL,'active','admin_give','mt:67731811 20260908172418KSPCJJ268495_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-09-08 17:24:18','2026-09-08 17:24:18'
FROM users u WHERE u.phone='15989121022'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67731811%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '腿毛'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-09-08','2026-11-07',NULL,'active','admin_give','mt:67731751 20260908172328HITXHP696229_MT02 【商家直接发放】商家直接发放202元','数据迁入',202.0,'2026-09-08 17:23:28','2026-09-08 17:23:28'
FROM users u WHERE u.phone='13246887222'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67731751%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Lún ®'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='全时段发球机（合同卡）' LIMIT 1),
  '全时段发球机（合同卡）','times',20,20,'2026-09-08','2027-03-07',NULL,'active','admin_give','mt:67722974  商家直接发放','数据迁入',0,'2026-09-08 15:01:01','2026-09-08 15:01:01'
FROM users u WHERE u.phone='13049621414'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67722974%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Lún ®'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='全时段发球机（合同卡）' LIMIT 1),
  '全时段发球机（合同卡）','times',20,20,'2026-09-08','2027-03-07',NULL,'active','admin_give','mt:67722638  商家直接发放','数据迁入',0,'2026-09-08 14:58:02','2026-09-08 14:58:02'
FROM users u WHERE u.phone='13049621414'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67722638%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'yy'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-09-07','2026-11-06',NULL,'active','admin_give','mt:67671181 20260907182403STDLQK979649_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-09-07 18:24:03','2026-09-07 18:24:03'
FROM users u WHERE u.phone='18680470611'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67671181%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'WU_H M'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-09-07','2026-10-07',NULL,'active','meituan','mt:67666977  美团兑换码 0104859197075','数据迁入',0,'2026-09-07 17:28:15','2026-09-07 17:28:15'
FROM users u WHERE u.phone='15902067955'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67666977%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '吉'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-09-07','2026-10-07',NULL,'active','admin_give','mt:67659385 20260907153045WOTLSN311440_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-09-07 15:30:45','2026-09-07 15:30:45'
FROM users u WHERE u.phone='13427522205'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67659385%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 2 私教10 次卡（闲时段）' LIMIT 1),
  '1 对 2 私教10 次卡（闲时段）','coach',10,10,'2026-09-07','2027-01-05','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:67649308 20260907125707WTJVQE629820_MT02 【商家直接发放】商家直接发放2985元','数据迁入',2985.0,'2026-09-07 12:57:07','2026-09-07 12:57:07'
FROM users u WHERE u.phone='13929571943'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67649308%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Stephanieieᰔᩚ'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教5次卡 （全时段）' LIMIT 1),
  '1 对 1 私教5次卡 （全时段）','coach',5,5,'2026-09-07','2027-02-04',NULL,'active','admin_give','mt:67644595 20260907110816DHQCIC079759_MT02 【商家直接发放】商家直接发放1588元','数据迁入',1588.0,'2026-09-07 11:08:16','2026-09-07 11:08:16'
FROM users u WHERE u.phone='13422348406'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67644595%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Vanessa'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-09-07','2026-10-07',NULL,'active','meituan','mt:67632684  美团兑换码 0110652701150','数据迁入',0,'2026-09-07 00:35:18','2026-09-07 00:35:18'
FROM users u WHERE u.phone='15802152146'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67632684%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '允馨'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620905 20260906212501QWCCDO110035_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-09-06 21:25:01','2026-09-06 21:25:01'
FROM users u WHERE u.phone='13533781641'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620905%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'DU'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='9.9元全时段发球机券' LIMIT 1),
  '9.9元全时段发球机券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620896 20260906212449TPXGPR069505_MT02 【商家直接发放】商家直接发放9.9元','数据迁入',9.9,'2026-09-06 21:24:49','2026-09-06 21:24:49'
FROM users u WHERE u.phone='13902293608'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620896%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Chris'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620884 20260906212436NMSJXO366232_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-06 21:24:36','2026-09-06 21:24:36'
FROM users u WHERE u.phone='13926466606'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620884%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '水晶'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620864 20260906212420LSADHT583328_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-06 21:24:20','2026-09-06 21:24:20'
FROM users u WHERE u.phone='13802887374'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620864%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Pizza'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620844 20260906212406RXCEMV615156_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-06 21:24:06','2026-09-06 21:24:06'
FROM users u WHERE u.phone='18929566073'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620844%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Amery '), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620799 20260906212351MCGSNE121430_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-06 21:23:51','2026-09-06 21:23:51'
FROM users u WHERE u.phone='13660370325'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620799%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '余亦知冬深'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620775 20260906212338HGKNVR017201_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-06 21:23:37','2026-09-06 21:23:37'
FROM users u WHERE u.phone='18023499636'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620775%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '月半小木土'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620759 20260906212321VHMLBF655720_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-09-06 21:23:21','2026-09-06 21:23:21'
FROM users u WHERE u.phone='15656289889'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620759%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '李雪锋'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='9.9元全时段发球机券' LIMIT 1),
  '9.9元全时段发球机券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620736 20260906212309IJXIRX230999_MT02 【商家直接发放】商家直接发放9.9元','数据迁入',9.9,'2026-09-06 21:23:09','2026-09-06 21:23:09'
FROM users u WHERE u.phone='13144400551'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620736%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '叮当'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620716 20260906212257TNRTLB551030_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-09-06 21:22:57','2026-09-06 21:22:57'
FROM users u WHERE u.phone='13710814900'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620716%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Kawee.'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620692 20260906212244UMKMDK324443_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-06 21:22:44','2026-09-06 21:22:44'
FROM users u WHERE u.phone='13672464314'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620692%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '肯肯'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='9.9元全时段发球机券' LIMIT 1),
  '9.9元全时段发球机券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620665 20260906212227DWJOBA004643_MT02 【商家直接发放】商家直接发放9.9元','数据迁入',9.9,'2026-09-06 21:22:26','2026-09-06 21:22:26'
FROM users u WHERE u.phone='13642797868'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620665%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '秋屏'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620534 20260906212106RRDLYW854295_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-06 21:21:06','2026-09-06 21:21:06'
FROM users u WHERE u.phone='13802787044'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620534%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'KKG'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='9.9元全时段发球机券' LIMIT 1),
  '9.9元全时段发球机券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620515 20260906212050KIOIKH660389_MT02 【商家直接发放】商家直接发放9.9元','数据迁入',9.9,'2026-09-06 21:20:50','2026-09-06 21:20:50'
FROM users u WHERE u.phone='18923091779'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620515%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '咕'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620386 20260906211939AHQVJJ763200_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-09-06 21:19:39','2026-09-06 21:19:39'
FROM users u WHERE u.phone='17728981017'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620386%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'J'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='9.9元全时段发球机券' LIMIT 1),
  '9.9元全时段发球机券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67620235 20260906211749KORZNU488239_MT02 【商家直接发放】商家直接发放9.9元','数据迁入',9.9,'2026-09-06 21:17:49','2026-09-06 21:17:49'
FROM users u WHERE u.phone='13798972472'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67620235%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 's'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67613209 20260906201113RLMEJE377213_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-09-06 20:11:13','2026-09-06 20:11:13'
FROM users u WHERE u.phone='13533511288'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67613209%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '偶尔也会发呆'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67603778 20260906185015PVCXPH614720_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-06 18:50:15','2026-09-06 18:50:15'
FROM users u WHERE u.phone='18680525888'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67603778%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'shirley'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-09-06','2026-10-06',NULL,'active','admin_give','mt:67603746 20260906184954LVXTDV976722_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-06 18:49:54','2026-09-06 18:49:54'
FROM users u WHERE u.phone='19515080756'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67603746%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-09-06','2026-11-05',NULL,'active','admin_give','mt:67600274  商家直接发放','数据迁入',0,'2026-09-06 18:15:46','2026-09-06 18:15:46'
FROM users u WHERE u.phone='13542089851'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67600274%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3节私教+3次发球机' LIMIT 1),
  '3节私教+3次发球机','coach',3,2,'2026-09-06','2026-10-07',NULL,'active','admin_give','mt:67600244 20260906181531DEBPUD345362_MT02 【商家直接发放】商家直接发放796元','数据迁入',796.0,'2026-09-06 18:15:31','2026-09-06 18:15:31'
FROM users u WHERE u.phone='13542089851'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67600244%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-09-06','2026-11-05',NULL,'active','admin_give','mt:67599779  商家直接发放','数据迁入',0,'2026-09-06 18:10:43','2026-09-06 18:10:43'
FROM users u WHERE u.phone='18695131334'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67599779%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3节私教+3次发球机' LIMIT 1),
  '3节私教+3次发球机','coach',3,1,'2026-09-06','2026-10-07',NULL,'active','admin_give','mt:67599597 20260906180856RIMAJX121345_MT02 【商家直接发放】商家直接发放796元','数据迁入',796.0,'2026-09-06 18:08:56','2026-09-06 18:08:56'
FROM users u WHERE u.phone='18695131334'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67599597%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Alana :)一切都是最好的安排果然'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-09-06','2026-10-06','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:67596522 20260906173552CCRIIM290984_MT02 【商家直接发放】商家直接发放296元','数据迁入',296.0,'2026-09-06 17:35:52','2026-09-06 17:35:52'
FROM users u WHERE u.phone='13808876681'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67596522%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '滚烫星河'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-09-10','2026-12-05',NULL,'active','admin_give','mt:67596146 20260906173157VJCDDM060780_MT02 【商家直接发放】商家直接发放899元','数据迁入',899.0,'2026-09-06 17:31:56','2026-09-06 17:31:56'
FROM users u WHERE u.phone='19925752953'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67596146%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '莫老爺'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-09-06','2026-11-05',NULL,'active','admin_give','mt:67556571 20260906113531INOBIG954178_MT02 【商家直接发放】商家直接发放176元','数据迁入',176.0,'2026-09-06 11:35:31','2026-09-06 11:35:31'
FROM users u WHERE u.phone='13926292872'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67556571%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Mr. kwok'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-09-06','2026-11-05',NULL,'active','admin_give','mt:67556557 20260906113516PYVJMU781275_MT02 【商家直接发放】商家直接发放176元','数据迁入',176.0,'2026-09-06 11:35:16','2026-09-06 11:35:16'
FROM users u WHERE u.phone='18929570663'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67556557%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '小呆'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-09-05','2026-10-05',NULL,'active','admin_give','mt:67520670  商家直接发放','数据迁入',0,'2026-09-05 21:25:57','2026-09-05 21:25:57'
FROM users u WHERE u.phone='13535370720'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67520670%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '妃姐非我莫属'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教5次卡 （全时段）' LIMIT 1),
  '1 对 1 私教5次卡 （全时段）','coach',5,4,'2026-09-05','2027-02-02',NULL,'active','admin_give','mt:67519870  商家直接发放','数据迁入',0,'2026-09-05 21:20:27','2026-09-05 21:20:27'
FROM users u WHERE u.phone='13602848862'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67519870%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '妃姐非我莫属'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='个人定制外场私教课（5+5节 | 闲时）' LIMIT 1),
  '个人定制外场私教课（5+5节 | 闲时）','coach',10,5,'2026-09-05','2027-09-05','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:67519762 20260905211945JKRMHL380138_MT02 【商家直接发放】商家直接发放3499元','数据迁入',3499.0,'2026-09-05 21:19:45','2026-09-05 21:19:45'
FROM users u WHERE u.phone='13602848862'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67519762%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Tata'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-09-05','2026-10-05',NULL,'active','admin_give','mt:67501923 20260905192904XGXYKC807981_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-05 19:29:04','2026-09-05 19:29:04'
FROM users u WHERE u.phone='13570987441'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67501923%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Tata'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,8,'2026-09-05','2027-01-03',NULL,'active','admin_give','mt:67501722 20260905192757YWBFYU741025_MT02 【商家直接发放】商家直接发放2820元','数据迁入',2820.0,'2026-09-05 19:27:57','2026-09-05 19:27:57'
FROM users u WHERE u.phone='13570987441'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67501722%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-09-05','2026-11-04',NULL,'active','admin_give','mt:67481065  商家直接发放','数据迁入',0,'2026-09-05 17:14:12','2026-09-05 17:14:12'
FROM users u WHERE u.phone='15767130594'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67481065%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 2 私教 3 次卡（全时段）' LIMIT 1),
  '1 对 2 私教 3 次卡（全时段）','coach',3,1,'2026-09-05','2026-11-04',NULL,'active','admin_give','mt:67481035 20260905171358AHTVXL384481_MT02 【商家直接发放】商家直接发放946元','数据迁入',946.0,'2026-09-05 17:13:58','2026-09-05 17:13:58'
FROM users u WHERE u.phone='15767130594'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67481035%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Berry Ma'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-09-05','2026-11-04',NULL,'active','admin_give','mt:67467239  商家直接发放','数据迁入',0,'2026-09-05 15:15:22','2026-09-05 15:15:22'
FROM users u WHERE u.phone='13926109606'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67467239%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Berry Ma'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,20,'2026-09-05','2027-03-04',NULL,'active','admin_give','mt:67467140 20260905151438GNXWAX514234_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-09-05 15:14:38','2026-09-05 15:14:38'
FROM users u WHERE u.phone='13926109606'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67467140%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Berry Ma'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-09-05','2026-11-04',NULL,'active','admin_give','mt:67452326 20260905132712KZOJYD402613_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-09-05 13:27:12','2026-09-05 13:27:12'
FROM users u WHERE u.phone='13926109606'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67452326%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Rick'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-09-05','2026-11-04',NULL,'active','admin_give','mt:67439080  商家直接发放','数据迁入',0,'2026-09-05 10:39:31','2026-09-05 10:39:31'
FROM users u WHERE u.phone='13602407733'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67439080%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Rick'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1外场私教课（10节 | 全时段）' LIMIT 1),
  '1 对 1外场私教课（10节 | 全时段）','coach',10,8,'2026-09-05','2027-01-03',NULL,'active','admin_give','mt:67439056 20260905103907PTFGQZ524560_MT02 【商家直接发放】商家直接发放3900元','数据迁入',3900.0,'2026-09-05 10:39:07','2026-09-05 10:39:07'
FROM users u WHERE u.phone='13602407733'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67439056%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'fc'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 2 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 2 私教 10 次卡（全时段）','coach',10,10,'2026-09-05','2027-01-03',NULL,'active','admin_give','mt:67436211 20260905093041DRNNTD664552_MT02 【商家直接发放】商家直接发放3400元','数据迁入',3400.0,'2026-09-05 09:30:41','2026-09-05 09:30:41'
FROM users u WHERE u.phone='18620947003'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67436211%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '小8fish'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-09-03','2026-10-03',NULL,'active','admin_give','mt:67287154 20260903141742XNRJLK860021_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-03 14:17:42','2026-09-03 14:17:42'
FROM users u WHERE u.phone='13570216345'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67287154%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '月半小木土'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-09-02','2026-10-02',NULL,'active','admin_give','mt:67231885 20260902175438VISPPW599682_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-02 17:54:38','2026-09-02 17:54:38'
FROM users u WHERE u.phone='15656289889'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67231885%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '不过尔尔。'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教单次（全时段）' LIMIT 1),
  '1 对 1 私教单次（全时段）','coach',1,1,'2026-09-02','2026-10-02',NULL,'active','admin_give','mt:67231845  商家直接发放','数据迁入',0,'2026-09-02 17:54:01','2026-09-02 17:54:01'
FROM users u WHERE u.phone='15180473184'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67231845%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '不过尔尔。'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教单次（全时段）' LIMIT 1),
  '1 对 1 私教单次（全时段）','coach',1,1,'2026-09-02','2026-10-02',NULL,'active','admin_give','mt:67231843  商家直接发放','数据迁入',0,'2026-09-02 17:54:01','2026-09-02 17:54:01'
FROM users u WHERE u.phone='15180473184'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67231843%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Pro'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-09-02','2026-10-02',NULL,'active','admin_give','mt:67229982  商家直接发放','数据迁入',0,'2026-09-02 17:29:23','2026-09-02 17:29:23'
FROM users u WHERE u.phone='13435822967'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67229982%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '全卡卡卡卡卡住了'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-09-02','2026-11-01',NULL,'active','admin_give','mt:67229916 20260902172821PBHVAK297531_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-09-02 17:28:21','2026-09-02 17:28:21'
FROM users u WHERE u.phone='15627863142'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67229916%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Saki'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-09-02','2026-10-02',NULL,'active','admin_give','mt:67224386  商家直接发放','数据迁入',0,'2026-09-02 16:08:17','2026-09-02 16:08:17'
FROM users u WHERE u.phone='13570325417'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67224386%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'n；'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-09-02','2026-10-02',NULL,'active','admin_give','mt:67224169 20260902160506URZDZR683083_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-09-02 16:05:06','2026-09-02 16:05:06'
FROM users u WHERE u.phone='13035771839'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67224169%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Caden'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-09-01','2026-10-01',NULL,'active','meituan','mt:67160260  美团兑换码 0108452727697','数据迁入',0,'2026-09-01 18:29:48','2026-09-01 18:29:48'
FROM users u WHERE u.phone='18028623429'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67160260%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Zwm'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-09-01','2026-10-01','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:67147397 20260901154121MYANPK987587_MT02 【商家直接发放】商家直接发放287元','数据迁入',287.0,'2026-09-01 15:41:21','2026-09-01 15:41:21'
FROM users u WHERE u.phone='15692428350'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67147397%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'K'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-09-01','2026-10-01','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:67143421 20260901145111KDKFIK198612_MT02 【商家直接发放】商家直接发放287元','数据迁入',287.0,'2026-09-01 14:51:11','2026-09-01 14:51:11'
FROM users u WHERE u.phone='13535551103'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67143421%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'cherry'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-09-02','2026-11-30','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:67143252 20260901144912ELBINF277641_MT02 【商家直接发放】商家直接发放566元','数据迁入',566.0,'2026-09-01 14:49:12','2026-09-01 14:49:12'
FROM users u WHERE u.phone='15915736360'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67143252%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Pokchak·Kuok'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打月卡' LIMIT 1),
  '工作日畅打月卡','time',0,0,'2026-09-03','2026-10-01','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:67127737 20260901102338TLCQOG651268_MT02 【商家直接发放】商家直接发放384元','数据迁入',384.0,'2026-09-01 10:23:38','2026-09-01 10:23:38'
FROM users u WHERE u.phone='15917469002'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67127737%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'O2.'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='闲时 1 小时发球机' LIMIT 1),
  '闲时 1 小时发球机','times',1,1,'2026-08-31','2026-09-30','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:67074175  商家直接发放','数据迁入',0,'2026-08-31 16:24:38','2026-08-31 16:24:38'
FROM users u WHERE u.phone='18988832123'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67074175%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '小明同学'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-09-01','2026-09-30','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:67074133 20260831162405KQUAQL187250_MT02 【商家直接发放】商家直接发放287元','数据迁入',287.0,'2026-08-31 16:24:05','2026-08-31 16:24:05'
FROM users u WHERE u.phone='19221693289'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67074133%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Tiff'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-09-01','2026-11-29',NULL,'active','admin_give','mt:67072849 20260831160832RMNFGA144332_MT02 【商家直接发放】商家直接发放899元','数据迁入',899.0,'2026-08-31 16:08:32','2026-08-31 16:08:32'
FROM users u WHERE u.phone='13926080243'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67072849%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Moneta Huang'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-31','2026-09-30',NULL,'active','admin_give','mt:67061050 20260831140337VERJLN912456_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-31 14:03:37','2026-08-31 14:03:37'
FROM users u WHERE u.phone='13025949713'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:67061050%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Emmmmaa_zzz'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-08-30','2026-10-29',NULL,'active','admin_give','mt:66994988 20260830175249KZFMWG599255_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-08-30 17:52:49','2026-08-30 17:52:49'
FROM users u WHERE u.phone='13533977500'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66994988%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'yang'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,8,'2026-08-30','2026-11-28',NULL,'active','admin_give','mt:66989214 20260830165655HIMWNS072506_MT02 【商家直接发放】商家直接发放540元','数据迁入',540.0,'2026-08-30 16:56:55','2026-08-30 16:56:55'
FROM users u WHERE u.phone='17713762724'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66989214%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Raphazel'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66987382 20260830163838LZFXDX278695_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-08-30 16:38:38','2026-08-30 16:38:38'
FROM users u WHERE u.phone='18925158881'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66987382%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'abby'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66987361 20260830163823MIAONI768613_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-30 16:38:23','2026-08-30 16:38:23'
FROM users u WHERE u.phone='18664608633'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66987361%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '扇子'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66986978 20260830163458EDWCRG326736_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-30 16:34:58','2026-08-30 16:34:58'
FROM users u WHERE u.phone='19927699680'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66986978%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '谢开心'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66984907 20260830161611MVFRVF460900_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-30 16:16:11','2026-08-30 16:16:11'
FROM users u WHERE u.phone='13622762539'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66984907%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '小叶'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66984809 20260830161509CSONLS941372_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-08-30 16:15:09','2026-08-30 16:15:09'
FROM users u WHERE u.phone='18903077680'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66984809%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Joey'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='9.9元全时段发球机券' LIMIT 1),
  '9.9元全时段发球机券','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66984781 20260830161453KPOJNG010199_MT02 【商家直接发放】商家直接发放9.9元','数据迁入',9.9,'2026-08-30 16:14:52','2026-08-30 16:14:52'
FROM users u WHERE u.phone='13076794653'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66984781%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '勇哥'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66984599 20260830161324ATEOAQ281487_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-30 16:13:24','2026-08-30 16:13:24'
FROM users u WHERE u.phone='13794395771'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66984599%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '233'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66982876 20260830155900BFPLZH999031_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-30 15:59:00','2026-08-30 15:59:00'
FROM users u WHERE u.phone='13428840669'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66982876%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '利生'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66975081 20260830145858YGCVVI101987_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-30 14:58:58','2026-08-30 14:58:58'
FROM users u WHERE u.phone='15017564552'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66975081%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '偶尔也会发呆'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='9.9元全时段发球机券' LIMIT 1),
  '9.9元全时段发球机券','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66975031 20260830145840BGQPOK463110_MT02 【商家直接发放】商家直接发放9.9元','数据迁入',9.9,'2026-08-30 14:58:40','2026-08-30 14:58:40'
FROM users u WHERE u.phone='18680525888'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66975031%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '夏羽灵'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66974106  商家直接发放','数据迁入',0,'2026-08-30 14:52:38','2026-08-30 14:52:38'
FROM users u WHERE u.phone='13826411288'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66974106%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '娮'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-30','2026-09-29',NULL,'active','admin_give','mt:66946958  商家直接发放','数据迁入',0,'2026-08-30 10:09:26','2026-08-30 10:09:26'
FROM users u WHERE u.phone='13760823909'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66946958%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '陈祖祖'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-29','2026-09-28',NULL,'active','admin_give','mt:66918805  商家直接发放','数据迁入',0,'2026-08-29 21:56:19','2026-08-29 21:56:19'
FROM users u WHERE u.phone='13602854503'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66918805%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '陈祖祖'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-29','2026-09-28',NULL,'active','admin_give','mt:66918804  商家直接发放','数据迁入',0,'2026-08-29 21:56:19','2026-08-29 21:56:19'
FROM users u WHERE u.phone='13602854503'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66918804%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '陈祖祖'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-29','2026-09-28',NULL,'active','admin_give','mt:66918803  商家直接发放','数据迁入',0,'2026-08-29 21:56:19','2026-08-29 21:56:19'
FROM users u WHERE u.phone='13602854503'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66918803%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'LBJ'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-08-31','2026-11-27','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66872108 20260829162440WTKCQE609201_MT02 【商家直接发放】商家直接发放599元','数据迁入',599.0,'2026-08-29 16:24:40','2026-08-29 16:24:40'
FROM users u WHERE u.phone='13036870516'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66872108%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '老头儿'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,20,'2026-08-29','2027-02-25',NULL,'active','admin_give','mt:66835895 20260829110409DYMJRM762836_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-08-29 11:04:09','2026-08-29 11:04:09'
FROM users u WHERE u.phone='13903000916'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66835895%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '钱'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,10,'2026-08-29','2026-11-27',NULL,'active','admin_give','mt:66834387  商家直接发放','数据迁入',0,'2026-08-29 10:32:39','2026-08-29 10:32:39'
FROM users u WHERE u.phone='13826495424'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66834387%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Tommy'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-08-29','2026-10-28',NULL,'active','admin_give','mt:66833529 20260829101442DOIITT585301_MT02 【商家直接发放】商家直接发放176元','数据迁入',176.0,'2026-08-29 10:14:42','2026-08-29 10:14:42'
FROM users u WHERE u.phone='13242834694'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66833529%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '肥仔星'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-08-28','2026-10-27',NULL,'active','admin_give','mt:66735691  商家直接发放','数据迁入',0,'2026-08-28 12:27:16','2026-08-28 12:27:16'
FROM users u WHERE u.phone='18520781413'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66735691%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '麦琪'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,20,'2026-08-28','2027-02-24',NULL,'active','admin_give','mt:66734528 20260828120954UDCKZA716406_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-08-28 12:09:54','2026-08-28 12:09:54'
FROM users u WHERE u.phone='13922486230'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66734528%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '汪汇（备战奥运版）'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教5次卡 （全时段）' LIMIT 1),
  '1 对 1 私教5次卡 （全时段）','coach',5,2,'2026-08-27','2027-01-24',NULL,'active','admin_give','mt:66704397 20260827212539CCCBPP316083_MT02 【商家直接发放】商家直接发放1429元','数据迁入',1429.0,'2026-08-27 21:25:39','2026-08-27 21:25:39'
FROM users u WHERE u.phone='15524111552'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66704397%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Sunny'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-27','2026-09-26',NULL,'active','balance','mt:66676553 20260827173606HZSKOI127417_MT02 【余额】抵扣0元','数据迁入',0.0,'2026-08-27 17:36:06','2026-08-27 17:36:06'
FROM users u WHERE u.phone='18826256801'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66676553%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '谜底'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,17,'2026-08-27','2027-02-23',NULL,'active','admin_give','mt:66663220 20260827150549VKOBJV257280_MT02 【商家直接发放】商家直接发放1197元','数据迁入',1197.0,'2026-08-27 15:05:49','2026-08-27 15:05:49'
FROM users u WHERE u.phone='13826021102'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66663220%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '麦琪'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-27','2026-09-26',NULL,'active','admin_give','mt:66644007  商家直接发放','数据迁入',0,'2026-08-27 11:05:39','2026-08-27 11:05:39'
FROM users u WHERE u.phone='13922486230'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66644007%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'In'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-08-28','2026-11-26','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66613585 20260826205142RFBIEE192894_MT02 【商家直接发放】商家直接发放566元','数据迁入',566.0,'2026-08-26 20:51:42','2026-08-26 20:51:42'
FROM users u WHERE u.phone='13533884761'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66613585%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Nick'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打月卡' LIMIT 1),
  '工作日畅打月卡','time',0,0,'2026-08-28','2026-09-26','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66580768 20260826153849UJRSFJ277855_MT02 【商家直接发放】商家直接发放399元','数据迁入',399.0,'2026-08-26 15:38:49','2026-08-26 15:38:49'
FROM users u WHERE u.phone='13560220006'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66580768%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Jun'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,5,'2026-08-26','2026-11-24',NULL,'active','admin_give','mt:66576494 20260826145626XINDUA179001_MT02 【商家直接发放】商家直接发放540元','数据迁入',540.0,'2026-08-26 14:56:26','2026-08-26 14:56:26'
FROM users u WHERE u.phone='13826408080'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66576494%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Cy.'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-08-26','2026-10-25',NULL,'active','admin_give','mt:66576449  商家直接发放','数据迁入',0,'2026-08-26 14:55:55','2026-08-26 14:55:55'
FROM users u WHERE u.phone='13609086536'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66576449%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'WinnieOoo'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-26','2026-09-25',NULL,'active','meituan','mt:66568182  美团兑换码 0105987708144','数据迁入',0,'2026-08-26 13:36:39','2026-08-26 13:36:39'
FROM users u WHERE u.phone='13925098953'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66568182%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Lihong'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-08-27','2026-09-25','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66557679 20260826104654KUTFUC809147_MT02 【商家直接发放】商家直接发放299元','数据迁入',299.0,'2026-08-26 10:46:54','2026-08-26 10:46:54'
FROM users u WHERE u.phone='18898826183'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66557679%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '张'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-25','2026-09-24',NULL,'active','meituan','mt:66530926  美团兑换码 0104286494419','数据迁入',0,'2026-08-25 21:29:32','2026-08-25 21:29:32'
FROM users u WHERE u.phone='15013034857'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66530926%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Kwongtk'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-08-25','2026-10-24',NULL,'active','admin_give','mt:66511989  商家直接发放','数据迁入',0,'2026-08-25 18:57:10','2026-08-25 18:57:10'
FROM users u WHERE u.phone='13418184024'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66511989%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Kwongtk'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-08-25','2026-10-24',NULL,'active','admin_give','mt:66511988  商家直接发放','数据迁入',0,'2026-08-25 18:57:10','2026-08-25 18:57:10'
FROM users u WHERE u.phone='13418184024'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66511988%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Kwongtk'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-08-25','2026-10-24',NULL,'active','admin_give','mt:66511986  商家直接发放','数据迁入',0,'2026-08-25 18:57:10','2026-08-25 18:57:10'
FROM users u WHERE u.phone='13418184024'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66511986%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '扁'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,9,'2026-08-25','2026-12-23',NULL,'active','admin_give','mt:66498698 20260825164059BESAUS194226_MT02 【商家直接发放】商家直接发放2900元','数据迁入',2900.0,'2026-08-25 16:40:59','2026-08-25 16:40:59'
FROM users u WHERE u.phone='13246488876'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66498698%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '桃子'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-25','2026-09-24',NULL,'active','admin_give','mt:66488092 20260825144722AGSUID136877_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-25 14:47:22','2026-08-25 14:47:22'
FROM users u WHERE u.phone='15347408771'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66488092%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Soc'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-08-26','2026-11-23','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66473336  商家直接发放','数据迁入',0,'2026-08-25 12:04:23','2026-08-25 12:04:23'
FROM users u WHERE u.phone='13600062862'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66473336%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '岩中花树'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,5,'2026-08-24','2026-12-22',NULL,'active','admin_give','mt:66443827 20260824214024BAPJAD313218_MT02 【商家直接发放】商家直接发放2820元','数据迁入',2820.0,'2026-08-24 21:40:24','2026-08-24 21:40:24'
FROM users u WHERE u.phone='13048225725'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66443827%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（ 闲时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（ 闲时段）','coach',10,7,'2026-08-24','2026-12-22','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66439086 20260824205748AMDVYT219851_MT02 【商家直接发放】商家直接发放2485元','数据迁入',2485.0,'2026-08-24 20:57:48','2026-08-24 20:57:48'
FROM users u WHERE u.phone='13332804617'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66439086%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'yukie啊'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-08-26','2026-09-23','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66412180 20260824171452KCFXKI375543_MT02 【商家直接发放】商家直接发放449元','数据迁入',449.0,'2026-08-24 17:14:52','2026-08-24 17:14:52'
FROM users u WHERE u.phone='13928780831'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66412180%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'DU'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-24','2026-09-23',NULL,'active','admin_give','mt:66381785 20260824115058ZZHYDE263377_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-24 11:50:58','2026-08-24 11:50:58'
FROM users u WHERE u.phone='13902293608'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66381785%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Susanna'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-08-24','2026-09-23',NULL,'active','admin_give','mt:66381754 20260824115018UVCGII501833_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-08-24 11:50:18','2026-08-24 11:50:18'
FROM users u WHERE u.phone='15626174698'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66381754%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Susanna'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-08-24','2026-09-23',NULL,'active','admin_give','mt:66381726 20260824114949GGMQBR242115_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-08-24 11:49:49','2026-08-24 11:49:49'
FROM users u WHERE u.phone='15626174698'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66381726%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Lyon'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-24','2026-09-23',NULL,'active','admin_give','mt:66381698 20260824114920KUUXBU501345_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-24 11:49:20','2026-08-24 11:49:20'
FROM users u WHERE u.phone='18565506805'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66381698%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Jan'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='9.9元全时段发球机券' LIMIT 1),
  '9.9元全时段发球机券','times',1,1,'2026-08-24','2026-09-23',NULL,'active','admin_give','mt:66381685 20260824114907MUKLCP931424_MT02 【商家直接发放】商家直接发放9.9元','数据迁入',9.9,'2026-08-24 11:49:07','2026-08-24 11:49:07'
FROM users u WHERE u.phone='18925066715'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66381685%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'DU'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-24','2026-09-23',NULL,'active','admin_give','mt:66381493 20260824114543LBUSLZ044472_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-24 11:45:42','2026-08-24 11:45:42'
FROM users u WHERE u.phone='13902293608'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66381493%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Jared'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-08-23','2026-10-22',NULL,'active','admin_give','mt:66321524 20260823184152NJXJVS709440_MT02 【商家直接发放】商家直接发放171元','数据迁入',171.0,'2026-08-23 18:41:52','2026-08-23 18:41:52'
FROM users u WHERE u.phone='15622140249'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66321524%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '非子'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-23','2026-09-22',NULL,'active','admin_give','mt:66321391 20260823184042YAEIRQ593558_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-23 18:40:42','2026-08-23 18:40:42'
FROM users u WHERE u.phone='13560241332'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66321391%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Mengty.'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-23','2026-09-22',NULL,'active','admin_give','mt:66296478  商家直接发放','数据迁入',0,'2026-08-23 14:59:46','2026-08-23 14:59:46'
FROM users u WHERE u.phone='18551855976'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66296478%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Mengty.'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-23','2026-09-22',NULL,'active','admin_give','mt:66296477  商家直接发放','数据迁入',0,'2026-08-23 14:59:46','2026-08-23 14:59:46'
FROM users u WHERE u.phone='18551855976'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66296477%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '黄'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-08-18','2026-10-16','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66223275  商家直接发放','数据迁入',0,'2026-08-22 20:46:11','2026-08-22 20:46:11'
FROM users u WHERE u.phone='13424110384'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66223275%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 's'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-08-24','2026-09-21','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66220494 20260822202904LAZTTS892770_MT02 【商家直接发放】商家直接发放437元','数据迁入',437.0,'2026-08-22 20:29:04','2026-08-22 20:29:04'
FROM users u WHERE u.phone='15913197207'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66220494%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Anna'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,9,'2026-08-22','2026-11-20',NULL,'active','wechat','mt:66211657 20260822193821FRZAFY465419_MT02 【微信】支付780元','数据迁入',780.0,'2026-08-22 19:38:29','2026-08-22 19:38:29'
FROM users u WHERE u.phone='19120620570'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66211657%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Monkey23'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-22','2026-09-21',NULL,'active','admin_give','mt:66205219 20260822185853FMJOPG692277_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-22 18:58:53','2026-08-22 18:58:53'
FROM users u WHERE u.phone='13580438190'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66205219%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-22','2026-09-21',NULL,'active','admin_give','mt:66197707 20260822180152AENPGB037751_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-22 18:01:51','2026-08-22 18:01:51'
FROM users u WHERE u.phone='13924227147'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66197707%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '思聪王'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-08-22','2026-11-20',NULL,'active','admin_give','mt:66188730 20260822163651AONRXD484117_MT02 【商家直接发放】商家直接发放899元','数据迁入',899.0,'2026-08-22 16:36:51','2026-08-22 16:36:51'
FROM users u WHERE u.phone='13660121621'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66188730%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Chaos'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-08-24','2026-09-21','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66182426 20260822153900QKUKEO932344_MT02 【商家直接发放】商家直接发放449元','数据迁入',449.0,'2026-08-22 15:39:00','2026-08-22 15:39:00'
FROM users u WHERE u.phone='15622103295'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66182426%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Lún ®'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-22','2026-09-21',NULL,'active','admin_give','mt:66151731  商家直接发放','数据迁入',0,'2026-08-22 10:59:42','2026-08-22 10:59:42'
FROM users u WHERE u.phone='13049621414'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66151731%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '铃'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-21','2026-09-20',NULL,'active','admin_give','mt:66118690 20260821212350TYUCTL362178_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-21 21:23:50','2026-08-21 21:23:50'
FROM users u WHERE u.phone='13642320298'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66118690%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'hardy'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-21','2026-09-20',NULL,'active','meituan','mt:66112241  美团兑换码 0105500354256','数据迁入',0,'2026-08-21 20:38:13','2026-08-21 20:38:13'
FROM users u WHERE u.phone='18027310822'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66112241%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Yann'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-08-24','2026-11-19','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66088562 20260821175315VLLPRI111189_MT02 【商家直接发放】商家直接发放566元','数据迁入',566.0,'2026-08-21 17:53:15','2026-08-21 17:53:15'
FROM users u WHERE u.phone='13760862956'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66088562%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Bryce'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-08-26','2026-09-20','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:66077773 20260821160307ATSQCH849948_MT02 【商家直接发放】商家直接发放452元','数据迁入',452.0,'2026-08-21 16:03:07','2026-08-21 16:03:07'
FROM users u WHERE u.phone='15302481966'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66077773%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Kirsteen'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-08-20','2026-10-19',NULL,'active','admin_give','mt:66013670 20260820202846LZBKVG346319_MT02 【商家直接发放】商家直接发放176元','数据迁入',176.0,'2026-08-20 20:28:46','2026-08-20 20:28:46'
FROM users u WHERE u.phone='13660551119'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:66013670%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Mersara영흔'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,16,'2026-08-20','2027-02-16',NULL,'active','admin_give','mt:65985739 20260820181941JDBGLI771117_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-08-20 18:19:41','2026-08-20 18:19:41'
FROM users u WHERE u.phone='13632388899'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65985739%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '美肚鲨'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-08-21','2026-11-18',NULL,'active','admin_give','mt:65958021 20260820134116HDTXHP400065_MT02 【商家直接发放】商家直接发放899元','数据迁入',899.0,'2026-08-20 13:41:16','2026-08-20 13:41:16'
FROM users u WHERE u.phone='13560246112'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65958021%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '一步一逍遥【VIP3】'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-08-19','2026-11-17',NULL,'active','admin_give','mt:65911975 20260819205907XHCTGE073057_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-08-19 20:59:07','2026-08-19 20:59:07'
FROM users u WHERE u.phone='13533742529'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65911975%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '一步一逍遥【VIP3】'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-08-22','2026-11-17',NULL,'active','admin_give','mt:65911936 20260819205848NFFPFD444789_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-08-19 20:58:48','2026-08-19 20:58:48'
FROM users u WHERE u.phone='13533742529'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65911936%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-08-19','2026-10-18',NULL,'active','admin_give','mt:65911828 20260819205800KVGSFQ006911_MT02 【商家直接发放】商家直接发放179元','数据迁入',179.0,'2026-08-19 20:57:59','2026-08-19 20:57:59'
FROM users u WHERE u.phone='13916951715'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65911828%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '薛定谔的rrrose'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-08-19','2026-10-18',NULL,'active','admin_give','mt:65870370 20260819144546VRTPBX405623_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-08-19 14:45:46','2026-08-19 14:45:46'
FROM users u WHERE u.phone='18613954814'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65870370%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'YOYO'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-18','2026-09-17',NULL,'active','admin_give','mt:65823534 20260818213532LUWUJL932578_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-18 21:35:32','2026-08-18 21:35:32'
FROM users u WHERE u.phone='13711557673'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65823534%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '热心市民凡先生'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-08-18','2026-10-17',NULL,'active','admin_give','mt:65786569 20260818164009PSAGVV108078_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-08-18 16:40:09','2026-08-18 16:40:09'
FROM users u WHERE u.phone='15796325890'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65786569%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '秋屏'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次闲时发球机次卡' LIMIT 1),
  '3 次闲时发球机次卡','times',3,2,'2026-08-18','2026-10-17','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:65768137  商家直接发放','数据迁入',0,'2026-08-18 13:37:54','2026-08-18 13:37:54'
FROM users u WHERE u.phone='13802787044'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65768137%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'zzy'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打月卡' LIMIT 1),
  '工作日畅打月卡','time',0,0,'2026-08-19','2026-09-16','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:65694308 20260817163231OZPRJB574348_MT02 【商家直接发放】商家直接发放399元','数据迁入',399.0,'2026-08-17 16:32:31','2026-08-17 16:32:31'
FROM users u WHERE u.phone='13248250771'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65694308%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '桃瑞丝'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-17','2026-09-16',NULL,'active','admin_give','mt:65692471 20260817161106SYIKRY579972_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-17 16:11:06','2026-08-17 16:11:06'
FROM users u WHERE u.phone='18924088501'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65692471%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '琦'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-16','2026-09-15',NULL,'active','admin_give','mt:65644155 20260816225821MKMBSV274248_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-16 22:58:21','2026-08-16 22:58:21'
FROM users u WHERE u.phone='13724812645'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65644155%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Lee'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-08-16','2026-09-15',NULL,'active','admin_give','mt:65641594 20260816222917BUFRGU604145_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-08-16 22:29:17','2026-08-16 22:29:17'
FROM users u WHERE u.phone='13682247439'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65641594%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Brian.Lo..'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-16','2026-09-15',NULL,'active','admin_give','mt:65641456 20260816222750KULDDN896248_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-16 22:27:50','2026-08-16 22:27:50'
FROM users u WHERE u.phone='18681185189'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65641456%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '啦啦啦阿里'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-16','2026-09-15',NULL,'active','admin_give','mt:65638608 20260816215910KMNMXR151653_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-16 21:59:10','2026-08-16 21:59:10'
FROM users u WHERE u.phone='15976539977'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65638608%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Ane'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-16','2026-09-15',NULL,'active','admin_give','mt:65579654 20260816141017OSFUHA395281_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-16 14:10:17','2026-08-16 14:10:17'
FROM users u WHERE u.phone='13660484418'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65579654%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '东东'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-08-15','2026-10-14',NULL,'active','admin_give','mt:65527711 20260815215229ZHTVDC459809_MT02 【商家直接发放】商家直接发放176元','数据迁入',176.0,'2026-08-15 21:52:29','2026-08-15 21:52:29'
FROM users u WHERE u.phone='13570937668'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65527711%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '万安劳保 陈小姐15820251804'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,14,'2026-08-15','2027-02-11',NULL,'active','admin_give','mt:65502374  商家直接发放','数据迁入',0,'2026-08-15 19:11:51','2026-08-15 19:11:51'
FROM users u WHERE u.phone='15820251804'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65502374%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '州：Xu'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,10,'2026-08-15','2026-11-13',NULL,'active','admin_give','mt:65495155 20260815181958LDCVPB114316_MT02 【商家直接发放】商家直接发放660元','数据迁入',660.0,'2026-08-15 18:19:58','2026-08-15 18:19:58'
FROM users u WHERE u.phone='13602756911'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65495155%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Brian and Carol'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='19.9全时段发球机中奖券' LIMIT 1),
  '19.9全时段发球机中奖券','times',1,1,'2026-08-15','2026-10-14',NULL,'active','admin_give','mt:65477506 20260815153903NSYFUC210946_MT02 【商家直接发放】商家直接发放19.9元','数据迁入',19.9,'2026-08-15 15:39:03','2026-08-15 15:39:03'
FROM users u WHERE u.phone='15113808206'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65477506%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'KINLEUNGYEAH'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-15','2026-09-14',NULL,'active','admin_give','mt:65451268 20260815115330UPPYHI608564_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-15 11:53:30','2026-08-15 11:53:30'
FROM users u WHERE u.phone='13719304796'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65451268%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Gigi'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='29.9全时段发球机中奖券' LIMIT 1),
  '29.9全时段发球机中奖券','times',1,1,'2026-08-15','2026-09-14',NULL,'active','admin_give','mt:65451216 20260815115244SYWECI986469_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-15 11:52:44','2026-08-15 11:52:44'
FROM users u WHERE u.phone='13726757867'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65451216%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '雪'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-08-15','2026-10-14',NULL,'active','admin_give','mt:65447662  商家直接发放','数据迁入',0,'2026-08-15 10:43:58','2026-08-15 10:43:58'
FROM users u WHERE u.phone='18928985886'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65447662%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Rick'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-14','2026-09-13',NULL,'active','admin_give','mt:65416939  商家直接发放','数据迁入',0,'2026-08-14 21:34:04','2026-08-14 21:34:04'
FROM users u WHERE u.phone='13602407733'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65416939%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Rick'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-14','2026-09-13',NULL,'active','admin_give','mt:65416937  商家直接发放','数据迁入',0,'2026-08-14 21:34:04','2026-08-14 21:34:04'
FROM users u WHERE u.phone='13602407733'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65416937%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Rick'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-14','2026-09-13',NULL,'active','admin_give','mt:65416935  商家直接发放','数据迁入',0,'2026-08-14 21:34:04','2026-08-14 21:34:04'
FROM users u WHERE u.phone='13602407733'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65416935%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Rick'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,5,'2026-08-14','2026-12-12',NULL,'active','admin_give','mt:65416893 20260814213349GIJMRH593356_MT02 【商家直接发放】商家直接发放2755元','数据迁入',2755.0,'2026-08-14 21:33:49','2026-08-14 21:33:49'
FROM users u WHERE u.phone='13602407733'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65416893%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'cjh'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='美团好评券（全时段）' LIMIT 1),
  '美团好评券（全时段）','times',1,1,'2026-08-14','2026-09-13',NULL,'active','admin_give','mt:65392290 20260814184303HMCJVI881545_MT02 【商家直接发放】商家直接发放29.9元','数据迁入',29.9,'2026-08-14 18:43:03','2026-08-14 18:43:03'
FROM users u WHERE u.phone='15939192132'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65392290%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '曹'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-08-17','2026-09-13','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:65360265 20260814133309KJZQYW206848_MT02 【商家直接发放】商家直接发放299元','数据迁入',299.0,'2026-08-14 13:33:09','2026-08-14 13:33:09'
FROM users u WHERE u.phone='13450358355'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65360265%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Y'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,7,'2026-08-14','2026-11-12',NULL,'active','admin_give','mt:65360174 20260814133226JUXIJZ917786_MT02 【商家直接发放】商家直接发放660元','数据迁入',660.0,'2026-08-14 13:32:26','2026-08-14 13:32:26'
FROM users u WHERE u.phone='15920981124'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65360174%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '周郎'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-14','2026-09-13',NULL,'active','meituan','mt:65344123  美团兑换码 0110477609650','数据迁入',0,'2026-08-14 07:53:58','2026-08-14 07:53:58'
FROM users u WHERE u.phone='13924237866'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65344123%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Anna林紫颖'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,7,'2026-08-12','2026-09-30',NULL,'active','admin_give','mt:65229338  商家直接发放','数据迁入',0,'2026-08-12 20:43:03','2026-08-12 20:43:03'
FROM users u WHERE u.phone='13242885036'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65229338%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '腻腻'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-08-12','2026-10-11',NULL,'active','admin_give','mt:65208468 20260812174826GYTGVE945470_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-08-12 17:48:26','2026-08-12 17:48:26'
FROM users u WHERE u.phone='13790894238'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65208468%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'mine'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,6,'2026-08-12','2026-11-10',NULL,'active','admin_give','mt:65184570 20260812131934CEGTEV852962_MT02 【商家直接发放】商家直接发放540元','数据迁入',540.0,'2026-08-12 13:19:34','2026-08-12 13:19:34'
FROM users u WHERE u.phone='18666137789'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65184570%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '安定'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,9,'2026-08-11','2026-12-09',NULL,'active','admin_give','mt:65152435 20260811214826ENJQXD269203_MT02 【商家直接发放】商家直接发放2820元','数据迁入',2820.0,'2026-08-11 21:48:26','2026-08-11 21:48:26'
FROM users u WHERE u.phone='16620124905'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65152435%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Gigi'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-08-12','2026-11-09',NULL,'active','admin_give','mt:65150340 20260811212651YOKWLM908242_MT02 【商家直接发放】商家直接发放899元','数据迁入',899.0,'2026-08-11 21:26:51','2026-08-11 21:26:51'
FROM users u WHERE u.phone='13726757867'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65150340%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '小炽炽'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-08-27','2026-09-26','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:65121839 20260811170929VDKWWW913833_MT02 【商家直接发放】商家直接发放299元','数据迁入',299.0,'2026-08-11 17:09:29','2026-08-11 17:09:29'
FROM users u WHERE u.phone='13802776033'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65121839%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='工作日畅玩月卡（周一至五10-18）' LIMIT 1),
  '工作日畅玩月卡（周一至五10-18）','time',0,0,'2026-08-11','2026-09-15','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:65028166 20260810153453CNDVBT598617_MT02 【商家直接发放】商家直接发放299元','数据迁入',299.0,'2026-08-10 15:34:53','2026-08-10 15:34:53'
FROM users u WHERE u.phone='13266085817'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:65028166%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '别两难'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-08-10','2026-11-08','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:64968659 20260809202729BFUIPJ001628_MT02 【商家直接发放】商家直接发放596元','数据迁入',596.0,'2026-08-09 20:27:28','2026-08-09 20:27:28'
FROM users u WHERE u.phone='15398190900'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64968659%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Sam168'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-08-08','2026-10-07',NULL,'active','admin_give','mt:64869969  商家直接发放','数据迁入',0,'2026-08-08 21:26:16','2026-08-08 21:26:16'
FROM users u WHERE u.phone='19221653839'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64869969%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '我+Y'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-08-08','2026-10-07',NULL,'active','admin_give','mt:64869341  商家直接发放','数据迁入',0,'2026-08-08 21:21:59','2026-08-08 21:21:59'
FROM users u WHERE u.phone='13924180480'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64869341%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '我+Y'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-08-08','2026-10-07',NULL,'active','admin_give','mt:64869340  商家直接发放','数据迁入',0,'2026-08-08 21:21:59','2026-08-08 21:21:59'
FROM users u WHERE u.phone='13924180480'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64869340%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '李漂亮'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,15,'2026-08-07','2027-02-03',NULL,'active','admin_give','mt:64760742 20260807211227JASBRZ864286_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-08-07 21:12:27','2026-08-07 21:12:27'
FROM users u WHERE u.phone='15013255867'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64760742%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Alana :)一切都是最好的安排果然'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 5次卡（闲时）' LIMIT 1),
  '1 对 1 私教 5次卡（闲时）','coach',5,3,'2026-08-07','2026-12-05','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:64736806 20260807182513DMBQMF108668_MT02 【商家直接发放】商家直接发放1249元','数据迁入',1249.0,'2026-08-07 18:25:13','2026-08-07 18:25:13'
FROM users u WHERE u.phone='13808876681'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64736806%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '无忧'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-08-10','2026-11-05','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:64703353 20260807124211APRXXO544946_MT02 【商家直接发放】商家直接发放566元','数据迁入',566.0,'2026-08-07 12:42:11','2026-08-07 12:42:11'
FROM users u WHERE u.phone='15013101289'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64703353%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'a❤微微宜笑 ❤'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩月卡（全时段）' LIMIT 1),
  '自助畅玩月卡（全时段）','time',0,0,'2026-08-14','2026-09-13',NULL,'active','admin_give','mt:64677274 20260806225719UYGDSE290699_MT02 【商家直接发放】商家直接发放289元','数据迁入',289.0,'2026-08-06 22:57:19','2026-08-06 22:57:19'
FROM users u WHERE u.phone='13922131199'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64677274%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,3,'2026-08-06','2026-12-04',NULL,'active','admin_give','mt:64667730 20260806211816TZPANU928414_MT02 【商家直接发放】商家直接发放2820元','数据迁入',2820.0,'2026-08-06 21:18:16','2026-08-06 21:18:16'
FROM users u WHERE u.phone='18811729608'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64667730%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Tata'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-08-06','2026-10-05',NULL,'active','admin_give','mt:64667113  商家直接发放','数据迁入',0,'2026-08-06 21:12:49','2026-08-06 21:12:49'
FROM users u WHERE u.phone='13570987441'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64667113%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '罐头'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-08-06','2026-10-05',NULL,'active','admin_give','mt:64666792 20260806211005WYWXRJ905371_MT02 【商家直接发放】商家直接发放176元','数据迁入',176.0,'2026-08-06 21:10:05','2026-08-06 21:10:05'
FROM users u WHERE u.phone='13824422868'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64666792%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '汪汇（备战奥运版）'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-08-06','2026-10-05',NULL,'active','admin_give','mt:64606658  商家直接发放','数据迁入',0,'2026-08-06 10:15:59','2026-08-06 10:15:59'
FROM users u WHERE u.phone='15524111552'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64606658%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '靴子慢点跑'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-08-04','2026-10-03',NULL,'active','admin_give','mt:64486058 20260804205432KEVGUE650880_MT02 【商家直接发放】商家直接发放176元','数据迁入',176.0,'2026-08-04 20:54:32','2026-08-04 20:54:32'
FROM users u WHERE u.phone='13710333661'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64486058%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Angel黃'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,9,'2026-08-03','2026-11-01',NULL,'active','admin_give','mt:64388451 20260803195147PFOSPZ899137_MT02 【商家直接发放】商家直接发放540元','数据迁入',540.0,'2026-08-03 19:51:47','2026-08-03 19:51:47'
FROM users u WHERE u.phone='13310881004'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64388451%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '女神'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='全时段 1 小时发球机' LIMIT 1),
  '全时段 1 小时发球机','times',1,1,'2026-08-03','2026-10-02',NULL,'active','admin_give','mt:64369718  商家直接发放','数据迁入',0,'2026-08-03 17:01:04','2026-08-03 17:01:04'
FROM users u WHERE u.phone='13580353781'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64369718%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '垚Daisy'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-08-02','2026-10-01',NULL,'active','admin_give','mt:64281319  商家直接发放','数据迁入',0,'2026-08-02 17:48:36','2026-08-02 17:48:36'
FROM users u WHERE u.phone='13427616840'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64281319%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '垚Daisy'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,7,'2026-08-02','2026-11-30',NULL,'active','admin_give','mt:64281279 20260802174806KHWTVI174672_MT02 【商家直接发放】商家直接发放2988元','数据迁入',2988.0,'2026-08-02 17:48:05','2026-08-02 17:48:05'
FROM users u WHERE u.phone='13427616840'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64281279%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Bonnibel'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,3,'2026-08-02','2026-10-31',NULL,'active','admin_give','mt:64233569 20260802103000IFAQQK490744_MT02 【商家直接发放】商家直接发放660元','数据迁入',660.0,'2026-08-02 10:30:00','2026-08-02 10:30:00'
FROM users u WHERE u.phone='18826460680'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64233569%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '苗泳羽（HaloRain）'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教5次卡 （全时段）' LIMIT 1),
  '1 对 1 私教5次卡 （全时段）','coach',5,4,'2026-08-01','2026-12-29',NULL,'active','admin_give','mt:64203208 20260801215726CERWWU540359_MT02 【商家直接发放】商家直接发放1426元','数据迁入',1426.0,'2026-08-01 21:57:26','2026-08-01 21:57:26'
FROM users u WHERE u.phone='18688490123'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64203208%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '小炽炽'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-08-01','2026-09-30',NULL,'active','admin_give','mt:64161288 20260801165612GTKASO174722_MT02 【商家直接发放】商家直接发放179元','数据迁入',179.0,'2026-08-01 16:56:12','2026-08-01 16:56:12'
FROM users u WHERE u.phone='13802776033'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64161288%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'JUDY 朱迪'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,10,'2026-08-01','2026-11-29',NULL,'active','admin_give','mt:64150489 20260801151653CKWBNX434300_MT02 【商家直接发放】商家直接发放2755元','数据迁入',2755.0,'2026-08-01 15:16:53','2026-08-01 15:16:53'
FROM users u WHERE u.phone='13609000321'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64150489%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'JUDY 朱迪'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,15,'2026-08-01','2027-01-28',NULL,'active','admin_give','mt:64122996 20260801105523KXGFBI929802_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-08-01 10:55:23','2026-08-01 10:55:23'
FROM users u WHERE u.phone='13609000321'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:64122996%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'yeah'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-07-30','2026-09-28',NULL,'active','admin_give','mt:63967268 20260730175721NMFBQR163291_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-07-30 17:57:21','2026-07-30 17:57:21'
FROM users u WHERE u.phone='13500222484'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63967268%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Big童'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-07-29','2026-09-27',NULL,'active','admin_give','mt:63856766 20260729133326ZKUNYV936458_MT02 【商家直接发放】商家直接发放176元','数据迁入',176.0,'2026-07-29 13:33:26','2026-07-29 13:33:26'
FROM users u WHERE u.phone='15602339520'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63856766%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '十月'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-07-29','2026-09-27',NULL,'active','admin_give','mt:63846651  商家直接发放','数据迁入',0,'2026-07-29 10:39:31','2026-07-29 10:39:31'
FROM users u WHERE u.phone='15220466644'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63846651%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '星耀会员'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,19,'2026-07-28','2027-01-24',NULL,'active','admin_give','mt:63761301 20260728104119DSGDIW082992_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-07-28 10:41:19','2026-07-28 10:41:19'
FROM users u WHERE u.phone='13677195238'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63761301%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '蔚'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-07-28','2026-10-25',NULL,'active','admin_give','mt:63734833 20260727213328LJAHKJ819027_MT02 【商家直接发放】商家直接发放899元','数据迁入',899.0,'2026-07-27 21:33:28','2026-07-27 21:33:28'
FROM users u WHERE u.phone='13570556052'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63734833%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '遐姐*.'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-07-28','2026-10-25','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:63687135 20260727141347LWRQGB370327_MT02 【商家直接发放】商家直接发放566元','数据迁入',566.0,'2026-07-27 14:13:47','2026-07-27 14:13:47'
FROM users u WHERE u.phone='13660803734'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63687135%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'mumu'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,15,'2026-07-25','2027-01-21',NULL,'active','admin_give','mt:63469750 20260725115204LEMBKM928369_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-07-25 11:52:04','2026-07-25 11:52:04'
FROM users u WHERE u.phone='18578765765'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63469750%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '瑰丽彩虹'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-08-03','2026-10-22','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:63374258  商家直接发放','数据迁入',0,'2026-07-24 12:15:33','2026-07-24 12:15:33'
FROM users u WHERE u.phone='13822198930'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63374258%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'sasa'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,1,'2026-07-24','2026-09-22',NULL,'active','admin_give','mt:63371456 20260724112431EESGGB260932_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-07-24 11:24:31','2026-07-24 11:24:31'
FROM users u WHERE u.phone='13570364417'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63371456%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,5,'2026-07-23','2026-11-20',NULL,'active','admin_give','mt:63335809  商家直接发放','数据迁入',0,'2026-07-23 20:34:22','2026-07-23 20:34:22'
FROM users u WHERE u.phone='18923998838'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63335809%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'my'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-07-23','2026-09-21',NULL,'active','admin_give','mt:63333955 20260723202105KZGXNV649147_MT02 【商家直接发放】商家直接发放176元','数据迁入',176.0,'2026-07-23 20:21:05','2026-07-23 20:21:05'
FROM users u WHERE u.phone='13380196068'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63333955%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '芦荟'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-07-23','2026-09-21',NULL,'active','admin_give','mt:63281514 20260723100804AMGELC351512_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-07-23 10:08:04','2026-07-23 10:08:04'
FROM users u WHERE u.phone='18813298099'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:63281514%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '啊啊'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次闲时发球机次卡' LIMIT 1),
  '3 次闲时发球机次卡','times',3,1,'2026-07-19','2026-09-17','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:62981625  商家直接发放','数据迁入',0,'2026-07-19 20:18:18','2026-07-19 20:18:18'
FROM users u WHERE u.phone='13570258725'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62981625%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Irene'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,9,'2026-07-19','2026-10-17',NULL,'active','admin_give','mt:62919228 20260719112934MLABMG023933_MT02 【商家直接发放】商家直接发放540元','数据迁入',540.0,'2026-07-19 11:29:33','2026-07-19 11:29:33'
FROM users u WHERE u.phone='13570219050'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62919228%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'LFC_GYer'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-07-18','2026-09-16',NULL,'active','admin_give','mt:62828864 20260718144936OZIHUF278541_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-07-18 14:49:36','2026-07-18 14:49:36'
FROM users u WHERE u.phone='18819252877'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62828864%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '@'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-07-18','2026-09-16',NULL,'active','admin_give','mt:62802805 20260718100303HBFGNT673996_MT02 【商家直接发放】商家直接发放174元','数据迁入',174.0,'2026-07-18 10:03:03','2026-07-18 10:03:03'
FROM users u WHERE u.phone='13422251744'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62802805%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（ 闲时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（ 闲时段）','coach',10,3,'2026-07-17','2026-11-14','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:62715248 20260717132135WICSMA412298_MT02 【商家直接发放】商家直接发放2565元','数据迁入',2565.0,'2026-07-17 13:21:35','2026-07-17 13:21:35'
FROM users u WHERE u.phone='13533696632'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62715248%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '金灿灿林燕㊣'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-07-17','2026-09-15',NULL,'active','admin_give','mt:62707111 20260717111415UKQGEC698459_MT02 【商家直接发放】商家直接发放207元','数据迁入',207.0,'2026-07-17 11:14:15','2026-07-17 11:14:15'
FROM users u WHERE u.phone='13503010403'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62707111%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Linda'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-07-18','2026-10-14',NULL,'active','admin_give','mt:62651652 20260716180641HYGTFK263764_MT02 【商家直接发放】商家直接发放899元','数据迁入',899.0,'2026-07-16 18:06:41','2026-07-16 18:06:41'
FROM users u WHERE u.phone='18102739972'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62651652%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'emma'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-07-15','2026-10-13','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:62526245 20260715103716MQFLXI494281_MT02 【商家直接发放】商家直接发放596元','数据迁入',596.0,'2026-07-15 10:37:16','2026-07-15 10:37:16'
FROM users u WHERE u.phone='15915806884'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62526245%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'K'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（ 闲时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（ 闲时段）','coach',10,2,'2026-07-15','2026-11-12','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:62525704 20260715102129AIFZJZ429859_MT02 【商家直接发放】商家直接发放2562元','数据迁入',2562.0,'2026-07-15 10:21:29','2026-07-15 10:21:29'
FROM users u WHERE u.phone='13535551103'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62525704%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '王生'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-07-21','2026-10-22','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:62456590 20260714145722XGYLPJ233905_MT02 【商家直接发放】商家直接发放569元','数据迁入',569.0,'2026-07-14 14:57:22','2026-07-14 14:57:22'
FROM users u WHERE u.phone='18928825598'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62456590%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '冬touch'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-07-16','2026-10-11',NULL,'active','admin_give','mt:62386346 20260713182548FHGSPM773200_MT02 【商家直接发放】商家直接发放899元','数据迁入',899.0,'2026-07-13 18:25:48','2026-07-13 18:25:48'
FROM users u WHERE u.phone='13580337117'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62386346%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Zona'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 5次卡（闲时）' LIMIT 1),
  '1 对 1 私教 5次卡（闲时）','coach',5,5,'2026-07-13','2026-11-10','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:62386157 20260713182413BFTYHV987168_MT02 【商家直接发放】商家直接发放1300元','数据迁入',1300.0,'2026-07-13 18:24:13','2026-07-13 18:24:13'
FROM users u WHERE u.phone='17706722211'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62386157%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '阳'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1外场私教课（10节 | 全时段）' LIMIT 1),
  '1 对 1外场私教课（10节 | 全时段）','coach',10,7,'2026-07-12','2026-11-09',NULL,'active','admin_give','mt:62256229 20260712133302GGMROH331672_MT02 【商家直接发放】商家直接发放3900元','数据迁入',3900.0,'2026-07-12 13:33:02','2026-07-12 13:33:02'
FROM users u WHERE u.phone='15027010107'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:62256229%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Jerry Z'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,5,'2026-07-09','2026-11-06',NULL,'active','admin_give','mt:61989240  商家直接发放','数据迁入',0,'2026-07-09 20:18:25','2026-07-09 20:18:25'
FROM users u WHERE u.phone='15205067328'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61989240%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '十月'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='抖音 3节私教课' LIMIT 1),
  '抖音 3节私教课','coach',3,1,'2026-07-09','2026-10-07',NULL,'active','admin_give','mt:61986464  商家直接发放','数据迁入',0,'2026-07-09 19:59:26','2026-07-09 19:59:26'
FROM users u WHERE u.phone='15220466644'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61986464%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Ye'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-07-09','2026-10-07','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:61936852 20260709105518SHMJTL818293_MT02 【商家直接发放】商家直接发放566元','数据迁入',566.0,'2026-07-09 10:55:18','2026-07-09 10:55:18'
FROM users u WHERE u.phone='18819780890'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61936852%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '大成'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='1 对 1外场私教课（10节 | 全时段）' LIMIT 1),
  '1 对 1外场私教课（10节 | 全时段）','coach',10,5,'2026-07-08','2026-11-05',NULL,'active','admin_give','mt:61912740 20260708220543QPZTQP455917_MT02 【商家直接发放】商家直接发放4100元','数据迁入',4100.0,'2026-07-08 22:05:43','2026-07-08 22:05:43'
FROM users u WHERE u.phone='13802522972'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61912740%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'LiZn'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 2 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 2 私教 10 次卡（全时段）','coach',10,2,'2026-07-08','2026-11-05',NULL,'active','admin_give','mt:61911777 20260708215520HVYVQG244687_MT02 【商家直接发放】商家直接发放3250元','数据迁入',3250.0,'2026-07-08 21:55:20','2026-07-08 21:55:20'
FROM users u WHERE u.phone='15099953366'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61911777%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '向星星'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,3,'2026-07-08','2026-11-05',NULL,'active','admin_give','mt:61879557  商家直接发放','数据迁入',0,'2026-07-08 17:20:46','2026-07-08 17:20:46'
FROM users u WHERE u.phone='15323316167'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61879557%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '吉'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,3,'2026-07-07','2026-11-14',NULL,'active','admin_give','mt:61812022  商家直接发放','数据迁入',0,'2026-07-07 20:10:29','2026-07-07 20:10:29'
FROM users u WHERE u.phone='13427522205'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61812022%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '吉'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-07-07','2026-11-14',NULL,'active','admin_give','mt:61812021  商家直接发放','数据迁入',0,'2026-07-07 20:10:29','2026-07-07 20:10:29'
FROM users u WHERE u.phone='13427522205'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61812021%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '吉'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='亲子班（1大1小） 10 课时' LIMIT 1),
  '亲子班（1大1小） 10 课时','times',10,7,'2026-07-07','2026-11-04',NULL,'active','admin_give','mt:61811993 20260707201017PLVOBW520772_MT02 【商家直接发放】商家直接发放2980元','数据迁入',2980.0,'2026-07-07 20:10:17','2026-07-07 20:10:17'
FROM users u WHERE u.phone='13427522205'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61811993%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '123'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-07-07','2026-10-05',NULL,'active','admin_give','mt:61764508 20260707113115QEBCOH285397_MT02 【商家直接发放】商家直接发放899元','数据迁入',899.0,'2026-07-07 11:31:15','2026-07-07 11:31:15'
FROM users u WHERE u.phone='15989195020'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61764508%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'bee'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,6,'2026-07-03','2026-10-01',NULL,'active','admin_give','mt:61406850 20260703185249TQHKBI667896_MT02 【商家直接发放】商家直接发放540元','数据迁入',540.0,'2026-07-03 18:52:49','2026-07-03 18:52:49'
FROM users u WHERE u.phone='13925074800'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61406850%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), ''), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（ 闲时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（ 闲时段）','coach',10,2,'2026-07-02','2026-10-30','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:61301464  商家直接发放','数据迁入',0,'2026-07-02 16:46:06','2026-07-02 16:46:06'
FROM users u WHERE u.phone='13424029936'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61301464%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Lester'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-07-27','2026-10-25',NULL,'active','admin_give','mt:61214881 20260701170512QUXOCR653705_MT02 【商家直接发放】商家直接发放899元','数据迁入',899.0,'2026-07-01 17:05:12','2026-07-01 17:05:12'
FROM users u WHERE u.phone='13802789730'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61214881%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '太阳_Edward'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='自助畅玩季卡（全时段）' LIMIT 1),
  '自助畅玩季卡（全时段）','time',0,0,'2026-07-01','2026-09-28',NULL,'active','admin_give','mt:61148147 20260630205002RAWSSI785336_MT02 【商家直接发放】商家直接发放899元','数据迁入',899.0,'2026-06-30 20:50:02','2026-06-30 20:50:02'
FROM users u WHERE u.phone='18520160913'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:61148147%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Joan'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,10,'2026-06-27','2026-12-24',NULL,'active','admin_give','mt:60841723 20260627182147OQZGTL695132_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-06-27 18:21:47','2026-06-27 18:21:47'
FROM users u WHERE u.phone='13422132286'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:60841723%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '蓝灵'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='10 次全时段发球机次卡' LIMIT 1),
  '10 次全时段发球机次卡','times',10,5,'2026-06-26','2026-09-24',NULL,'active','admin_give','mt:60740249 20260626194758DETDOZ134837_MT02 【商家直接发放】商家直接发放540元','数据迁入',540.0,'2026-06-26 19:47:58','2026-06-26 19:47:58'
FROM users u WHERE u.phone='18826239087'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:60740249%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Chris'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（ 闲时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（ 闲时段）','coach',5,1,'2026-06-25','2026-10-23','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:60644751 20260625190344LJHSKX539135_MT02 【商家直接发放】商家直接发放2565元','数据迁入',2565.0,'2026-06-25 19:03:44','2026-06-25 19:03:44'
FROM users u WHERE u.phone='18933928703'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:60644751%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Min'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='10 次闲时发球机次卡' LIMIT 1),
  '10 次闲时发球机次卡','times',10,10,'2026-06-24','2026-12-31','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:60552779 20260624170312IEBHNC653248_MT02 【商家直接发放】商家直接发放375元','数据迁入',375.0,'2026-06-24 17:03:12','2026-06-24 17:03:12'
FROM users u WHERE u.phone='18620067924'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:60552779%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Min'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='10 次闲时发球机次卡' LIMIT 1),
  '10 次闲时发球机次卡','times',10,10,'2026-06-24','2026-10-22','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:60552778 20260624170312HMQVMY627663_MT02 【商家直接发放】商家直接发放375元','数据迁入',375.0,'2026-06-24 17:03:12','2026-06-24 17:03:12'
FROM users u WHERE u.phone='18620067924'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:60552778%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'O2.'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对1 外场私教课（10节 | 闲时段）' LIMIT 1),
  '1 对1 外场私教课（10节 | 闲时段）','coach',10,5,'2026-06-20','2026-10-18','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:60199248 20260620165208OAWUOQ725590_MT02 【商家直接发放】商家直接发放3597元','数据迁入',3597.0,'2026-06-20 16:52:08','2026-06-20 16:52:08'
FROM users u WHERE u.phone='18988832123'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:60199248%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '羊肉包'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,4,'2026-06-19','2026-12-16',NULL,'active','admin_give','mt:60100151 20260619202323NXJTGD698303_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-06-19 20:23:23','2026-06-19 20:23:23'
FROM users u WHERE u.phone='15999949973'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:60100151%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '陈w芬'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,12,'2026-06-19','2026-12-16',NULL,'active','admin_give','mt:60033606 20260619130903POPMFO076849_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-06-19 13:09:03','2026-06-19 13:09:03'
FROM users u WHERE u.phone='13826107052'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:60033606%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Nick'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,5,'2026-06-17','2026-10-15',NULL,'active','admin_give','mt:59865721 20260617174312JMCKFI375939_MT02 【商家直接发放】商家直接发放2755元','数据迁入',2755.0,'2026-06-17 17:43:12','2026-06-17 17:43:12'
FROM users u WHERE u.phone='13560220006'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59865721%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Nick'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教5次卡 （全时段）' LIMIT 1),
  '1 对 1 私教5次卡 （全时段）','coach',5,2,'2026-06-17','2026-11-14',NULL,'active','admin_give','mt:59865687 20260617174247CJQYTS157443_MT02 【商家直接发放】商家直接发放1508.6元','数据迁入',1508.6,'2026-06-17 17:42:47','2026-06-17 17:42:47'
FROM users u WHERE u.phone='13560220006'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59865687%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Min'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,20,'2026-06-17','2026-12-31',NULL,'active','admin_give','mt:59842468 20260617123912UPVJBU935761_MT02 【商家直接发放】商家直接发放900元','数据迁入',900.0,'2026-06-17 12:39:12','2026-06-17 12:39:12'
FROM users u WHERE u.phone='18620067924'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59842468%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Min'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,17,'2026-06-17','2026-12-14',NULL,'active','admin_give','mt:59842467 20260617123912JJLPNQ874211_MT02 【商家直接发放】商家直接发放900元','数据迁入',900.0,'2026-06-17 12:39:12','2026-06-17 12:39:12'
FROM users u WHERE u.phone='18620067924'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59842467%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '陈祖祖'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,4,'2026-06-15','2026-10-13',NULL,'active','admin_give','mt:59733055 20260615203721LHCEYS971871_MT02 【商家直接发放】商家直接发放2755元','数据迁入',2755.0,'2026-06-15 20:37:21','2026-06-15 20:37:21'
FROM users u WHERE u.phone='13602854503'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59733055%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'OHYU'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 2 私教10 次卡（闲时段）' LIMIT 1),
  '1 对 2 私教10 次卡（闲时段）','coach',10,1,'2026-06-15','2026-10-13','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:59707116  商家直接发放','数据迁入',0,'2026-06-15 15:56:30','2026-06-15 15:56:30'
FROM users u WHERE u.phone='13144410040'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59707116%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '李小熊'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,4,'2026-06-14','2026-10-12',NULL,'active','admin_give','mt:59629229 20260614162000SFIXGW620365_MT02 【商家直接发放】商家直接发放2755元','数据迁入',2755.0,'2026-06-14 16:20:00','2026-06-14 16:20:00'
FROM users u WHERE u.phone='13763380462'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59629229%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Jared'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教5次卡 （全时段）' LIMIT 1),
  '1 对 1 私教5次卡 （全时段）','coach',5,2,'2026-06-14','2026-11-11',NULL,'active','admin_give','mt:59612941 20260614141222ALCUEA557404_MT02 【商家直接发放】商家直接发放1508元','数据迁入',1508.0,'2026-06-14 14:12:22','2026-06-14 14:12:22'
FROM users u WHERE u.phone='15622140249'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59612941%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'GBJ'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-06-16','2026-10-25','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:59612804 20260614141121PTMOTB544044_MT02 【商家直接发放】商家直接发放596元','数据迁入',596.0,'2026-06-14 14:11:21','2026-06-14 14:11:21'
FROM users u WHERE u.phone='18027198365'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59612804%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '自在如风的娜娜子'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-06-10','2026-10-08',NULL,'active','admin_give','mt:59246444  商家直接发放','数据迁入',0,'2026-06-10 15:40:46','2026-06-10 15:40:46'
FROM users u WHERE u.phone='13631359344'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59246444%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '泡面'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-06-09','2026-11-06','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:59096755 20260608162330CROSDC151379_MT02 【商家直接发放】商家直接发放596元','数据迁入',596.0,'2026-06-08 16:23:30','2026-06-08 16:23:30'
FROM users u WHERE u.phone='13392499479'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59096755%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '梁小姐'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='亲子班（1大1小） 10 课时' LIMIT 1),
  '亲子班（1大1小） 10 课时','times',10,4,'2026-06-07','2026-10-05',NULL,'active','admin_give','mt:59018117 20260607173038QOLGOE247066_MT02 【商家直接发放】商家直接发放2831元','数据迁入',2831.0,'2026-06-07 17:30:38','2026-06-07 17:30:38'
FROM users u WHERE u.phone='13826271613'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:59018117%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Leen 王木木'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,3,'2026-05-29','2026-09-26',NULL,'active','admin_give','mt:58157733 20260529172629GKMIOC037616_MT02 【商家直接发放】商家直接发放2900元','数据迁入',2900.0,'2026-05-29 17:26:28','2026-05-29 17:26:28'
FROM users u WHERE u.phone='13632485240'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:58157733%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '锦小子'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='1 对1 外场私教课（10节 | 闲时段）' LIMIT 1),
  '1 对1 外场私教课（10节 | 闲时段）','coach',10,1,'2026-05-28','2026-09-25','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:58097617 20260528202716LFJSWS092502_MT02 【商家直接发放】商家直接发放3499元','数据迁入',3499.0,'2026-05-28 20:27:16','2026-05-28 20:27:16'
FROM users u WHERE u.phone='13051257126'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:58097617%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '公瑾兴'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-05-27','2026-10-25','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:57984293 20260527113635VSFIBJ964184_MT02 【商家直接发放】商家直接发放596元','数据迁入',596.0,'2026-05-27 11:36:35','2026-05-27 11:36:35'
FROM users u WHERE u.phone='13650974050'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:57984293%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '忆尘'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-05-26','2026-10-08','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:57914291 20260526101139WKKSEX290228_MT02 【商家直接发放】商家直接发放596元','数据迁入',596.0,'2026-05-26 10:11:39','2026-05-26 10:11:39'
FROM users u WHERE u.phone='13539694620'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:57914291%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '女神'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,1,'2026-05-24','2026-09-21',NULL,'active','admin_give','mt:57763728  商家直接发放','数据迁入',0,'2026-05-24 11:38:34','2026-05-24 11:38:34'
FROM users u WHERE u.phone='13580353781'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:57763728%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '欧'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（全时段）','coach',10,5,'2026-05-21','2026-09-18',NULL,'active','admin_give','mt:57512691  商家直接发放','数据迁入',0,'2026-05-21 18:26:20','2026-05-21 18:26:20'
FROM users u WHERE u.phone='13580335113'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:57512691%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'JT Cao'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-05-19','2026-10-17','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:57359100 20260519134550MRFJQH673927_MT02 【商家直接发放】商家直接发放596元','数据迁入',596.0,'2026-05-19 13:45:50','2026-05-19 13:45:50'
FROM users u WHERE u.phone='13066317190'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:57359100%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '梁徐小颖'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教 10 次卡（ 闲时段）' LIMIT 1),
  '1 对 1 私教 10 次卡（ 闲时段）','coach',10,6,'2026-05-17','2026-09-14','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:57206979 20260517131711WVUTJE715863_MT02 【商家直接发放】商家直接发放2700元','数据迁入',2700.0,'2026-05-17 13:17:11','2026-05-17 13:17:11'
FROM users u WHERE u.phone='13450443317'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:57206979%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Miki'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,9,'2026-05-16','2026-10-13',NULL,'active','admin_give','mt:57161276 20260516211429APUKYU751197_MT02 【商家直接发放】商家直接发放968元','数据迁入',968.0,'2026-05-16 21:14:29','2026-05-16 21:14:29'
FROM users u WHERE u.phone='13802791172'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:57161276%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'MT'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,4,'2026-05-16','2026-10-13',NULL,'active','admin_give','mt:57081377 20260516104859YZHDFU813806_MT02 【商家直接发放】商家直接发放968元','数据迁入',968.0,'2026-05-16 10:48:59','2026-05-16 10:48:59'
FROM users u WHERE u.phone='13535416697'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:57081377%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '邓女士'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-05-15','2026-10-13','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:57005638 20260515151650PIJRJJ359403_MT02 【商家直接发放】商家直接发放599元','数据迁入',599.0,'2026-05-15 15:16:50','2026-05-15 15:16:50'
FROM users u WHERE u.phone='18620786922'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:57005638%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Hank ZOU'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,11,'2026-05-14','2026-10-11',NULL,'active','admin_give','mt:56958232 20260514194425SVNRUL113661_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-05-14 19:44:25','2026-05-14 19:44:25'
FROM users u WHERE u.phone='13922470807'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:56958232%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '锦小子'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教5次卡 （全时段）' LIMIT 1),
  '1 对 1 私教5次卡 （全时段）','coach',5,1,'2026-05-13','2026-10-10',NULL,'active','admin_give','mt:56897128 20260513214136RTFFKL864873_MT02 【商家直接发放】商家直接发放1588元','数据迁入',1588.0,'2026-05-13 21:41:36','2026-05-13 21:41:36'
FROM users u WHERE u.phone='13051257126'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:56897128%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Kepler'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='1 对 1 私教5次卡 （全时段）' LIMIT 1),
  '1 对 1 私教5次卡 （全时段）','coach',5,2,'2026-05-13','2026-10-10',NULL,'active','admin_give','mt:56897021 20260513214010RMXVGS296796_MT02 【商家直接发放】商家直接发放1588元','数据迁入',1588.0,'2026-05-13 21:40:10','2026-05-13 21:40:10'
FROM users u WHERE u.phone='15521321682'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:56897021%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '刘紫涵²⁰²⁵'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-05-11','2026-11-07','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:56495201 20260508161110SGDJCB359961_MT02 【商家直接发放】商家直接发放596元','数据迁入',596.0,'2026-05-08 16:11:10','2026-05-08 16:11:10'
FROM users u WHERE u.phone='13828425612'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:56495201%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '麦琪'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='1 对 2 私教 10 次卡（全时段）' LIMIT 1),
  '1 对 2 私教 10 次卡（全时段）','coach',10,5,'2026-05-04','2026-10-31',NULL,'active','admin_give','mt:56163932  商家直接发放','数据迁入',0,'2026-05-04 10:26:32','2026-05-04 10:26:32'
FROM users u WHERE u.phone='13922486230'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:56163932%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '李医生'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,16,'2026-05-01','2026-09-28',NULL,'active','admin_give','mt:55892286  商家直接发放','数据迁入',0,'2026-05-01 21:22:15','2026-05-01 21:22:15'
FROM users u WHERE u.phone='18925072707'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:55892286%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '黄超华'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='工作日畅打季卡（周一至五10-18）' LIMIT 1),
  '工作日畅打季卡（周一至五10-18）','time',0,0,'2026-04-30','2026-09-29','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:55719145 20260430152138MAXISN547107_MT02 【商家直接发放】商家直接发放596元','数据迁入',596.0,'2026-04-30 15:21:38','2026-04-30 15:21:38'
FROM users u WHERE u.phone='13602795262'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:55719145%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Bottle'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,13,'2026-04-26','2026-11-23',NULL,'active','admin_give','mt:55445321 20260426161307GFXQYZ727684_MT02 【商家直接发放】商家直接发放998元','数据迁入',998.0,'2026-04-26 16:13:07','2026-04-26 16:13:07'
FROM users u WHERE u.phone='13535448986'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:55445321%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Kaia 凯娅'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='双11全时段发球机18次' LIMIT 1),
  '双11全时段发球机18次','times',18,4,'2026-04-20','2026-10-31',NULL,'active','admin_give','mt:54988525  商家直接发放','数据迁入',0,'2026-04-20 18:01:46','2026-04-20 18:01:46'
FROM users u WHERE u.phone='13750154655'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:54988525%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '汪品'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,3,'2026-04-15','2026-09-12',NULL,'active','admin_give','mt:54567915 20260415190659SDGQJP750528_MT02 【商家直接发放】商家直接发放995元','数据迁入',995.0,'2026-04-15 19:06:59','2026-04-15 19:06:59'
FROM users u WHERE u.phone='18688860079'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:54567915%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '杰瑞'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='5 节室内+5节 室外私教 10 次卡（全时段）' LIMIT 1),
  '5 节室内+5节 室外私教 10 次卡（全时段）','coach',10,3,'2026-04-12','2026-10-09',NULL,'active','admin_give','mt:54371430 20260412181201ZNEEZR816265_MT02 【商家直接发放】商家直接发放3399元','数据迁入',3399.0,'2026-04-12 18:12:01','2026-04-12 18:12:01'
FROM users u WHERE u.phone='13928946652'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:54371430%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'charooo'), 'venue_zhongda', '山羊网球（中大店）',
  (SELECT id FROM card_templates WHERE name='3 次全时段发球机次卡' LIMIT 1),
  '3 次全时段发球机次卡','times',3,2,'2026-09-01','2026-11-01',NULL,'active','admin_give','mt:53270205 20260330153143FBSOGV328295_MT02 【商家直接发放】商家直接发放176元','数据迁入',176.0,'2026-03-30 15:31:43','2026-03-30 15:31:43'
FROM users u WHERE u.phone='13265926225'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:53270205%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'P-小漫'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='20次闲时段发球机券' LIMIT 1),
  '20次闲时段发球机券','times',20,16,'2026-03-16','2026-09-12','{"mode": "rules", "rules": [{"weekdays": [1, 2, 3, 4, 5], "unlimited": true, "timeSlots": [{"start": "10:00", "end": "18:00"}]}]}','active','admin_give','mt:52141009 20260316180129DZVUIM086188_MT02 【商家直接发放】商家直接发放916元','数据迁入',916.0,'2026-03-16 18:01:29','2026-03-16 18:01:29'
FROM users u WHERE u.phone='15099952281'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:52141009%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '昌9319'), 'venue_chenjiaci', '山羊Goat网球馆（陈家祠店）',
  (SELECT id FROM card_templates WHERE name='20 次全时段发球机次卡' LIMIT 1),
  '20 次全时段发球机次卡','times',20,20,'2025-10-30','2026-09-30',NULL,'active','admin_give','mt:40710361 20251030234455MBIUFN128894_MT02 【商家直接发放】商家直接发放1050元','数据迁入',1050.0,'2025-10-30 23:44:55','2025-10-30 23:44:55'
FROM users u WHERE u.phone='13418098626'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:40710361%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'SumYu'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='会员身份卡' LIMIT 1),
  '会员身份卡','times',1,1,NULL,NULL,NULL,'active','admin_give','mt:34806963  商家直接发放','数据迁入',0,'2025-08-14 16:43:36','2025-08-14 16:43:36'
FROM users u WHERE u.phone='18927250422'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:34806963%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'SumYu'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='会员身份卡' LIMIT 1),
  '会员身份卡','times',1,1,NULL,NULL,NULL,'active','admin_give','mt:34806911  商家直接发放','数据迁入',0,'2025-08-14 16:43:05','2025-08-14 16:43:05'
FROM users u WHERE u.phone='18927250422'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:34806911%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'SumYu'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='会员身份卡' LIMIT 1),
  '会员身份卡','times',1,1,NULL,NULL,NULL,'active','admin_give','mt:33755075  商家直接发放','数据迁入',0,'2025-08-01 12:58:47','2025-08-01 12:58:47'
FROM users u WHERE u.phone='18927250422'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:33755075%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), '周牟牟'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='决赛奖励卡' LIMIT 1),
  '决赛奖励卡','times',6,6,NULL,NULL,NULL,'active','admin_give','mt:33065523  商家直接发放','数据迁入',0,'2025-07-23 13:41:06','2025-07-23 13:41:06'
FROM users u WHERE u.phone='13808828861'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:33065523%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Pan'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='四强奖励卡' LIMIT 1),
  '四强奖励卡','times',3,3,NULL,NULL,NULL,'active','admin_give','mt:33065442  商家直接发放','数据迁入',0,'2025-07-23 13:39:58','2025-07-23 13:39:58'
FROM users u WHERE u.phone='13450225617'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:33065442%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'lynn'), 'venue_panyu', '山羊网球（番禺店）',
  (SELECT id FROM card_templates WHERE name='冠军奖励卡' LIMIT 1),
  '冠军奖励卡','times',6,6,NULL,NULL,NULL,'active','admin_give','mt:29883804  商家直接发放','数据迁入',0,'2025-06-11 13:05:39','2025-06-11 13:05:39'
FROM users u WHERE u.phone='18126780119'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:29883804%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'cjy'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='冠军奖励卡' LIMIT 1),
  '冠军奖励卡','times',6,5,NULL,NULL,NULL,'active','admin_give','mt:29821625  商家直接发放','数据迁入',0,'2025-06-10 11:11:53','2025-06-10 11:11:53'
FROM users u WHERE u.phone='13178867952'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:29821625%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'lynn'), 'venue_panyu', '山羊网球（番禺店）',
  (SELECT id FROM card_templates WHERE name='四强奖励卡' LIMIT 1),
  '四强奖励卡','times',2,1,NULL,NULL,NULL,'active','admin_give','mt:29426814  商家直接发放','数据迁入',0,'2025-06-04 21:45:50','2025-06-04 21:45:50'
FROM users u WHERE u.phone='18126780119'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:29426814%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'Pan'), 'venue_haixinsha', '山羊网球（海心沙店）',
  (SELECT id FROM card_templates WHERE name='八强奖励卡' LIMIT 1),
  '八强奖励卡','times',1,1,NULL,NULL,NULL,'active','admin_give','mt:29345600  商家直接发放','数据迁入',0,'2025-06-03 16:40:03','2025-06-03 16:40:03'
FROM users u WHERE u.phone='13450225617'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:29345600%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'V'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='会员身份卡' LIMIT 1),
  '会员身份卡','times',1,1,NULL,NULL,NULL,'active','admin_give','mt:28063310  商家直接发放','数据迁入',0,'2025-05-15 19:55:25','2025-05-15 19:55:25'
FROM users u WHERE u.phone='19927527328'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:28063310%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'V'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='会员身份卡' LIMIT 1),
  '会员身份卡','times',1,1,NULL,NULL,NULL,'active','admin_give','mt:27676447  商家直接发放','数据迁入',0,'2025-05-09 16:53:48','2025-05-09 16:53:48'
FROM users u WHERE u.phone='19927527328'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:27676447%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'V'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='会员身份卡' LIMIT 1),
  '会员身份卡','times',1,1,NULL,NULL,NULL,'active','admin_give','mt:26223630  商家直接发放','数据迁入',0,'2025-04-17 10:23:15','2025-04-17 10:23:15'
FROM users u WHERE u.phone='19927527328'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:26223630%' LIMIT 1)
LIMIT 1;
INSERT INTO member_cards (user_id, openid, user_name, venue_id, venue_name, template_id, card_name, type, total_times, remaining_times, valid_from, valid_to, time_rule, status, source, remark, issuer_name, price, created_at, updated_at)
SELECT u.id, IFNULL(u.openid,''), IFNULL(NULLIF(u.nick_name,''), 'V'), 'venue_huadiwan', '山羊Goat网球馆（花地湾店）',
  (SELECT id FROM card_templates WHERE name='会员身份卡' LIMIT 1),
  '会员身份卡','times',1,1,NULL,NULL,NULL,'active','admin_give','mt:26175134  商家直接发放','数据迁入',0,'2025-04-16 10:36:05','2025-04-16 10:36:05'
FROM users u WHERE u.phone='19927527328'
AND NOT EXISTS (SELECT 1 FROM member_cards c2 WHERE c2.remark LIKE 'mt:26175134%' LIMIT 1)
LIMIT 1;
INSERT IGNORE INTO user_tag_map (user_id, tag_id)
SELECT DISTINCT c.user_id, t.id FROM member_cards c JOIN user_tags t ON t.name='持卡' WHERE c.status='active' AND c.remark LIKE 'mt:%';
COMMIT;
