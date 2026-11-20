-- 执行：为团课商城 / 购卡支付 / 超管确认退款 / 课程内容 增加兼容字段。
-- 请先跑 preview_gc_mall_pay.sql 核对后再执行。
-- 全部语句可重复执行（已存在的列/表会跳过）。
-- 云函数在缺列时会降级，不执行本文件也不会导致启动崩溃，但购卡退款申请表缺失时无法提交申请。
-- 不要把数据库密码写进本文件。

-- 1) 卡模板：小程序商城上架开关
SET @sql := (
  SELECT IF(COUNT(*) = 0,
    'ALTER TABLE card_templates ADD COLUMN mall_listed TINYINT(1) NOT NULL DEFAULT 0 COMMENT ''小程序商城上架'' AFTER status',
    'SELECT ''card_templates.mall_listed exists'' AS info')
  FROM information_schema.COLUMNS
  WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'card_templates' AND COLUMN_NAME = 'mall_listed'
);
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

-- 默认只上架名称匹配「【通用】网球基础团」的团课卡（不写死 ID）
UPDATE card_templates
   SET mall_listed = 1
 WHERE type = 'group'
   AND name LIKE '%网球基础团%'
   AND name LIKE '%通用%';

-- 2) 已发卡：记录购卡订单和实付金额（退款按实付，不按改价后的模板价）
SET @sql := (
  SELECT IF(COUNT(*) = 0,
    'ALTER TABLE member_cards ADD COLUMN pay_order_id BIGINT NULL COMMENT ''微信支付订单'' AFTER price',
    'SELECT ''member_cards.pay_order_id exists'' AS info')
  FROM information_schema.COLUMNS
  WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'member_cards' AND COLUMN_NAME = 'pay_order_id'
);
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

SET @sql := (
  SELECT IF(COUNT(*) = 0,
    'ALTER TABLE member_cards ADD COLUMN paid_amount DECIMAL(10,2) NULL COMMENT ''购卡实付金额'' AFTER pay_order_id',
    'SELECT ''member_cards.paid_amount exists'' AS info')
  FROM information_schema.COLUMNS
  WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'member_cards' AND COLUMN_NAME = 'paid_amount'
);
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

-- 3) 支付订单：区分订场 / 购卡
SET @sql := (
  SELECT IF(COUNT(*) = 0,
    'ALTER TABLE pay_orders ADD COLUMN biz_type VARCHAR(32) NOT NULL DEFAULT ''court'' COMMENT ''court|card'' AFTER status',
    'SELECT ''pay_orders.biz_type exists'' AS info')
  FROM information_schema.COLUMNS
  WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'pay_orders' AND COLUMN_NAME = 'biz_type'
);
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

SET @sql := (
  SELECT IF(COUNT(*) = 0,
    'ALTER TABLE pay_orders ADD COLUMN template_id BIGINT NULL COMMENT ''购卡模板'' AFTER biz_type',
    'SELECT ''pay_orders.template_id exists'' AS info')
  FROM information_schema.COLUMNS
  WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'pay_orders' AND COLUMN_NAME = 'template_id'
);
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

SET @sql := (
  SELECT IF(COUNT(*) = 0,
    'ALTER TABLE pay_orders ADD COLUMN card_id BIGINT NULL COMMENT ''购卡发卡结果'' AFTER template_id',
    'SELECT ''pay_orders.card_id exists'' AS info')
  FROM information_schema.COLUMNS
  WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'pay_orders' AND COLUMN_NAME = 'card_id'
);
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

-- 4) 团课行：课程内容
SET @sql := (
  SELECT IF(COUNT(*) = 0,
    'ALTER TABLE group_classes ADD COLUMN course_content_id VARCHAR(64) NULL COMMENT ''课程内容ID'' AFTER theme',
    'SELECT ''group_classes.course_content_id exists'' AS info')
  FROM information_schema.COLUMNS
  WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'group_classes' AND COLUMN_NAME = 'course_content_id'
);
PREPARE stmt FROM @sql; EXECUTE stmt; DEALLOCATE PREPARE stmt;

-- 5) 线上购卡退款申请
CREATE TABLE IF NOT EXISTS card_refund_requests (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  card_id BIGINT NOT NULL,
  user_id BIGINT NULL,
  openid VARCHAR(64) NULL,
  pay_order_id BIGINT NULL,
  status VARCHAR(32) NOT NULL DEFAULT 'pending',
  remaining_times INT NULL,
  total_times INT NULL,
  paid_amount DECIMAL(10,2) NULL,
  refund_amount DECIMAL(10,2) NULL,
  out_refund_no VARCHAR(64) NULL,
  wx_refund_id VARCHAR(64) NULL,
  reason VARCHAR(255) NULL,
  operator_name VARCHAR(64) NULL,
  requested_at DATETIME NULL,
  confirmed_at DATETIME NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uk_card_refund_no (out_refund_no),
  KEY idx_card_refund_card (card_id),
  KEY idx_card_refund_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 6) 可选：把标题含「团课」且尚未填写跳转的轮播，指向团课报名页。
-- 如需自动写入，取消下一行注释后执行。
-- UPDATE banners SET link='/pages/group/group' WHERE (title LIKE '%团课%') AND IFNULL(link,'')='';

-- 7) 课程内容与卡模板绑定请在后台「团课设置」里勾选。
--    「正手球-基础」请勾选名称含「【通用】网球基础团」的两张卡；
--    「正手球-进阶」先留空，不上架、不定价。
--    本文件不改 app_settings JSON，以免覆盖你们已有的轮转门店配置。
