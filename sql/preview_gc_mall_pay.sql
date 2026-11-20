-- 预览：团课商城 / 购卡支付 / 退款申请 / 课程内容 所需字段与表
-- 只读，不会改库。请先跑本文件，核对结果后再执行 apply_gc_mall_pay.sql。
-- 不要把数据库密码写进本文件或回传记录。

SELECT 'card_templates' AS tbl, COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'card_templates'
   AND COLUMN_NAME IN ('mall_listed', 'price', 'name', 'type', 'status')
 ORDER BY COLUMN_NAME;

SELECT 'member_cards' AS tbl, COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'member_cards'
   AND COLUMN_NAME IN ('pay_order_id', 'paid_amount', 'price', 'template_id', 'remark', 'status')
 ORDER BY COLUMN_NAME;

SELECT 'pay_orders' AS tbl, COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'pay_orders'
   AND COLUMN_NAME IN ('biz_type', 'template_id', 'card_id', 'amount_fen', 'status', 'description', 'court')
 ORDER BY COLUMN_NAME;

SELECT 'group_classes' AS tbl, COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'group_classes'
   AND COLUMN_NAME IN ('course_content_id', 'class_type', 'theme', 'status')
 ORDER BY COLUMN_NAME;

SELECT 'banners' AS tbl, COLUMN_NAME, COLUMN_TYPE
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'banners'
   AND COLUMN_NAME IN ('link', 'title', 'status');

SHOW TABLES LIKE 'card_refund_requests';

-- 按名称查找「【通用】网球基础团」模板（不要写死 ID）
SELECT id, name, type, price, status
  FROM card_templates
 WHERE name LIKE '%网球基础团%'
 ORDER BY id;

-- 标题含「团课」的轮播，便于把跳转设到团课报名页
SELECT id, title, link, status, sort_order
  FROM banners
 WHERE title LIKE '%团课%' OR IFNULL(link,'') LIKE '%group%';

-- 当前团课设置（课程内容与上架信息在 JSON 里）
SELECT setting_key, setting_value, updated_at
  FROM app_settings
 WHERE setting_key = 'group_class'
 LIMIT 1;
