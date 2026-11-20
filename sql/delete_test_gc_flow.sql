-- 删除：团课完整流程测试数据
-- 标记：TEST_GC_20261120
-- 请先只跑「预览将删除」这一段，核对名单后再跑后面的 DELETE。
-- 只删测试标记的课、卡、测试教练，以及它们产生的报名、私教预约、流水和日志。
-- 不会删除 11/20 陈家祠晚间周课等真实课，也不会删除正式卡模板或普通用户。
-- 不要把数据库密码写进本文件或回传记录。
-- 比较统一先转成 utf8mb4，避免 utf8mb3 / utf8mb4_0900_ai_ci 混用报错。

SET NAMES utf8mb4;
SET @tag = CONVERT('TEST_GC_20261120' USING utf8mb4) COLLATE utf8mb4_general_ci;

-- ========== 预览将删除（只读）==========
SELECT '测试课' AS kind, id, name, date, time, venue_id, enrolled, status, remark
  FROM group_classes
 WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci = @tag OR CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci
 ORDER BY date, time, id;

SELECT '测试卡' AS kind, id, user_id, user_name, card_name, remaining_times, status, remark
  FROM member_cards
 WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%') OR CONVERT(card_name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci
 ORDER BY id;

SELECT '测试报名或私教预约' AS kind, b.id, b.date, b.time, b.venue_id, b.user_name, b.phone, b.status, b.group_class_id, b.card_id, b.card_name, b.coach_name, b.remark
  FROM bookings b
 WHERE b.group_class_id IN (SELECT id FROM group_classes WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci = @tag OR CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci)
    OR b.card_id IN (SELECT id FROM member_cards WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%') OR CONVERT(card_name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci)
    OR CONVERT(IFNULL(b.remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%')
    OR CONVERT(IFNULL(b.remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('%【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci
 ORDER BY b.id;

SELECT '测试教练' AS kind, id, venue_id, name, status, remark
  FROM coaches
 WHERE CONVERT(IFNULL(remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci = @tag
    OR (CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci = CONVERT('测试教练' USING utf8mb4) COLLATE utf8mb4_general_ci
        AND CONVERT(IFNULL(remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%'))
 ORDER BY id;

SELECT '测试退款申请' AS kind, r.*
  FROM card_refund_requests r
 WHERE r.card_id IN (SELECT id FROM member_cards WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%') OR CONVERT(card_name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci);

SELECT '测试财务流水' AS kind, f.id, f.biz_date, f.type, f.amount, f.user_name, f.card_id, f.booking_id, f.remark
  FROM finance_ledger f
 WHERE f.card_id IN (SELECT id FROM member_cards WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%') OR CONVERT(card_name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci)
    OR f.booking_id IN (
         SELECT b.id FROM bookings b
          WHERE b.group_class_id IN (SELECT id FROM group_classes WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci = @tag OR CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci)
             OR b.card_id IN (SELECT id FROM member_cards WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%') OR CONVERT(card_name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci)
             OR CONVERT(IFNULL(b.remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%')
             OR CONVERT(IFNULL(b.remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('%【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci
       )
    OR CONVERT(IFNULL(f.remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('%【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci;

SELECT '测试操作日志' AS kind, l.id, l.type, l.user_name, l.phone, l.detail, l.created_at
  FROM activity_logs l
 WHERE CONVERT(IFNULL(detail,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('%【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci
    OR CONVERT(IFNULL(detail,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('%【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci
    OR CONVERT(IFNULL(detail,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%')
    OR CONVERT(IFNULL(card_name,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci;

-- ========== 确认名单无误后再执行下面这段 ==========
-- START TRANSACTION;
--
-- DELETE FROM activity_logs
--  WHERE CONVERT(IFNULL(detail,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('%【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci
--     OR CONVERT(IFNULL(detail,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('%【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci
--     OR CONVERT(IFNULL(detail,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%')
--     OR CONVERT(IFNULL(card_name,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci;
--
-- DELETE FROM finance_ledger
--  WHERE card_id IN (SELECT id FROM member_cards WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%') OR CONVERT(card_name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci)
--     OR booking_id IN (
--          SELECT b.id FROM bookings b
--           WHERE b.group_class_id IN (SELECT id FROM group_classes WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci = @tag OR CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci)
--              OR b.card_id IN (SELECT id FROM member_cards WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%') OR CONVERT(card_name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci)
--        )
--     OR CONVERT(IFNULL(remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('%【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci;
--
-- DELETE FROM card_refund_requests
--  WHERE card_id IN (SELECT id FROM member_cards WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%') OR CONVERT(card_name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci);
--
-- DELETE FROM bookings
--  WHERE group_class_id IN (SELECT id FROM group_classes WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci = @tag OR CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci)
--     OR card_id IN (SELECT id FROM member_cards WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%') OR CONVERT(card_name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci)
--     OR CONVERT(IFNULL(remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%')
--     OR CONVERT(IFNULL(remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('%【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci;
--
-- DELETE FROM member_cards
--  WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%') OR CONVERT(card_name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】团课卡%' USING utf8mb4) COLLATE utf8mb4_general_ci;
--
-- DELETE FROM group_classes
--  WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci = @tag OR CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci;
--
-- DELETE FROM coaches
--  WHERE CONVERT(IFNULL(remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci = @tag
--     OR (CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci = CONVERT('测试教练' USING utf8mb4) COLLATE utf8mb4_general_ci
--         AND CONVERT(IFNULL(remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%'));
--
-- COMMIT;
--
-- 删完后可再跑一遍本文件的预览段，应全部为空。
