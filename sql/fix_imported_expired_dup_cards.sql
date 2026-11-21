-- 迁入过期卡 / 无老板延期重发导致的重复卡
-- 原则：过期的继续过期，不要改成储值卡，也不要做临时停卡。
-- 同一用户同一卡名：保留较新的有效卡，把已过期的旧卡标成 expired。
-- 先跑「预览」，确认数量后再跑「执行」。

-- ========== 1. 预览：已过期但仍是 active 的迁入卡 ==========
SELECT c.id, c.user_id, c.user_name, c.card_name, c.status,
       c.valid_from, c.valid_to, c.remaining_times, c.issuer_name, c.remark
  FROM member_cards c
 WHERE c.issuer_name = '数据迁入'
   AND IFNULL(c.status,'') = 'active'
   AND c.valid_to IS NOT NULL
   AND c.valid_to < CURDATE()
 ORDER BY c.user_id, c.id;

-- ========== 2. 预览：同一用户同一卡名，有过期卡 + 有效卡（重复） ==========
SELECT c.user_id, c.user_name, c.card_name,
       SUM(c.valid_to < CURDATE()) AS expired_cnt,
       SUM(IFNULL(c.status,'') = 'active' AND (c.valid_to IS NULL OR c.valid_to >= CURDATE())) AS active_cnt,
       GROUP_CONCAT(CONCAT(c.id, ':', c.status, ':', IFNULL(c.valid_to,'')) ORDER BY c.id) AS cards
  FROM member_cards c
 WHERE IFNULL(c.status,'') NOT IN ('deleted','refunded')
 GROUP BY c.user_id, c.user_name, c.card_name
HAVING expired_cnt > 0 AND active_cnt > 0
 ORDER BY c.user_id;

-- ========== 3. 执行：迁入且已过期的 active 卡，标成 expired ==========
-- 确认预览无误后再取消注释执行
-- UPDATE member_cards
--    SET status = 'expired',
--        remark = CONCAT(IFNULL(remark,''), ' [迁入过期停用]'),
--        updated_at = NOW()
--  WHERE issuer_name = '数据迁入'
--    AND IFNULL(status,'') = 'active'
--    AND valid_to IS NOT NULL
--    AND valid_to < CURDATE();

-- ========== 4. 执行：重复卡里，过期的那张标 expired，有效的不动 ==========
-- UPDATE member_cards old
--   JOIN (
--     SELECT user_id, card_name
--       FROM member_cards
--      WHERE IFNULL(status,'') NOT IN ('deleted','refunded')
--      GROUP BY user_id, card_name
--     HAVING SUM(valid_to < CURDATE()) > 0
--        AND SUM(IFNULL(status,'') = 'active' AND (valid_to IS NULL OR valid_to >= CURDATE())) > 0
--   ) d ON d.user_id = old.user_id AND d.card_name = old.card_name
--    SET old.status = 'expired',
--        old.remark = CONCAT(IFNULL(old.remark,''), ' [重复过期停用]'),
--        old.updated_at = NOW()
--  WHERE IFNULL(old.status,'') = 'active'
--    AND old.valid_to IS NOT NULL
--    AND old.valid_to < CURDATE();
