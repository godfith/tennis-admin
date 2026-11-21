-- 用户3032 / 预约#16077（海心沙 丁克球3号场 2026-11-21 16:00-17:00）
-- 今天 10:06 已做「只退款·改发卡」：预约仍在、金额已改为 0、已发卡 4643 并扣 1 次，
-- 流水已记 court_refund -30 和 issue_card +30，但微信支付单 GT1795174879236805（pay_orders.id=359）仍是 paid。
-- 本文件只补记一条待确认的「补退微信」申请，并把已有退款流水挂上支付单。
-- 不会向微信发起退款。超级管理员在「退款申请」里确认后才会退。
-- 请先跑第 1–3 节预览，确认无误后再跑第 4、5 节，最后跑第 6 节核对。

-- 1) 预览支付单（应仍是 paid，金额 3000 分）
SELECT id, out_trade_no, status, amount_fen, booking_id, user_name, paid_at, updated_at
  FROM pay_orders
 WHERE id = 359 OR out_trade_no = 'GT1795174879236805';

-- 2) 预览流水（应已有 court_refund -30，pay_order_id 可能为空）
SELECT id, type, amount, booking_id, pay_order_id, remark, created_at
  FROM finance_ledger
 WHERE id IN (6431, 6432, 6363)
    OR booking_id = 16077
    OR pay_order_id = 359
 ORDER BY id;

-- 3) 预览是否已有申请（应为空）
SELECT id, card_id, user_id, pay_order_id, status, refund_amount, reason, requested_at
  FROM card_refund_requests
 WHERE pay_order_id = 359
    OR IFNULL(reason,'') LIKE '%bid=16077%';

-- 4) 把已记的 court_refund 挂上支付单，避免以后对账对不上（不改金额）
UPDATE finance_ledger
   SET pay_order_id = 359
 WHERE id = 6431
   AND type = 'court_refund'
   AND amount = -30
   AND booking_id = 16077
   AND pay_order_id IS NULL;

-- 5) 插入待确认的补退申请（仅此一条；支付单已不是 paid 或已有申请时不会插入）
INSERT INTO card_refund_requests
  (card_id, user_id, openid, pay_order_id, status,
   paid_amount, refund_amount, reason, operator_name, requested_at)
SELECT
  0,
  27876,
  'oQL_mxSNRzW5GgDBZVCas7PCGlZg',
  359,
  'pending',
  30.00,
  30.00,
  'BKREF|v1|booking_wx_refund|bid=16077|init=19065412234|src=admin|vid=venue_haixinsha|vn=山羊Goat网球馆（海心沙店）|sum=补退微信30元 丁克球3号场 16:00-17:00 GT1795174879236805',
  '19065412234',
  NOW()
FROM DUAL
WHERE EXISTS (
  SELECT 1 FROM pay_orders
   WHERE id = 359 AND out_trade_no = 'GT1795174879236805' AND status = 'paid'
)
AND NOT EXISTS (
  SELECT 1 FROM card_refund_requests
   WHERE pay_order_id = 359
      OR IFNULL(reason,'') LIKE '%bid=16077%'
);

-- 6) 核对插入结果
SELECT id, card_id, user_id, pay_order_id, status, refund_amount, reason, requested_at
  FROM card_refund_requests
 WHERE pay_order_id = 359
    OR IFNULL(reason,'') LIKE '%bid=16077%';
