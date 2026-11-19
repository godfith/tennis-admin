-- goat_prod 预览 SQL：固定/自组团课字段、团课设置表、杨箕标空壳、温莎空壳馆及内部团课场地。
-- 请在 DBeaver 对 goat_prod 按节执行。本文件不会自动改库；助手未执行任何 UPDATE/INSERT/ALTER/DELETE。
-- 若某条 ALTER 报「重复列」，说明字段已在，可忽略并继续下一节。
-- 建议顺序：1 预览 → 2 建表/默认设置 → 3 ALTER → 4 杨箕/温莎 → 5 内部场地 → 6 复核。

-- ============================================================
-- 1. 预览（只读，应先跑）
-- ============================================================
SELECT id, name, status, sort, address
  FROM venues
 ORDER BY sort ASC, id ASC;

SELECT id, venue_id, name, type, sort, status, IFNULL(customer_visible,1) AS customer_visible, remark
  FROM courts
 WHERE venue_id IN ('venue_yangji', 'venue_weisha')
 ORDER BY venue_id, sort, id;

SHOW COLUMNS FROM venues LIKE 'booking_enabled';
SHOW COLUMNS FROM venues LIKE 'is_shell';
SHOW COLUMNS FROM group_classes LIKE 'class_type';
SHOW COLUMNS FROM group_classes LIKE 'theme';
SHOW TABLES LIKE 'app_settings';

-- ============================================================
-- 2. 团课设置表 + 默认配置（仅在还没有这条配置时写入）
-- ============================================================
CREATE TABLE IF NOT EXISTS app_settings (
  setting_key VARCHAR(64) NOT NULL COMMENT '配置键',
  setting_value JSON NOT NULL COMMENT 'JSON 配置',
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (setting_key)
) COMMENT='应用配置，如团课轮转与报名规则';

INSERT INTO app_settings (setting_key, setting_value)
SELECT 'group_class', CAST('{
  "rotationVenues": [
    {"venueId": "venue_huadiwan", "capacity": 4},
    {"venueId": "venue_haixinsha", "capacity": 4},
    {"venueId": "venue_zhongda", "capacity": 4},
    {"venueId": "venue_chenjiaci", "capacity": 4},
    {"venueId": "venue_yangji", "capacity": 4},
    {"venueId": "venue_weisha", "capacity": 4}
  ],
  "rotationStartDate": "2026-11-16",
  "fixedOpenAnytime": true,
  "selfOrganizeAdvanceDays": 2,
  "defaultCancelBeforeHours": 2,
  "defaultMinEnrollment": 0
}' AS JSON)
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM app_settings WHERE setting_key = 'group_class'
);

-- ============================================================
-- 3. 字段（已存在会报重复列，可忽略）
-- ============================================================
ALTER TABLE venues
  ADD COLUMN booking_enabled TINYINT NOT NULL DEFAULT 1 COMMENT '1=对客人开放普通订场，0=不开放',
  ADD COLUMN is_shell TINYINT NOT NULL DEFAULT 0 COMMENT '1=空壳馆，仅排团课和记报名';

ALTER TABLE group_classes
  ADD COLUMN class_type VARCHAR(16) NOT NULL DEFAULT 'fixed' COMMENT 'fixed=固定团课, self=自组团课',
  ADD COLUMN theme VARCHAR(200) NOT NULL DEFAULT '' COMMENT '当日训练主题';

-- ============================================================
-- 4. 杨箕标空壳（沿用 venue_yangji，不新建馆）；温莎幂等插入
--    杨箕现用名保持「山羊Goat网球馆（杨箕店）」，不改名。
-- ============================================================
UPDATE venues
   SET booking_enabled = 0,
       is_shell = 1
 WHERE id = 'venue_yangji';

INSERT INTO venues (id, name, status, sort, address, booking_enabled, is_shell)
SELECT 'venue_weisha', '温莎大石店', 'active', 5, '', 0, 1
FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM venues WHERE id = 'venue_weisha');

-- 若温莎已存在但还不是空壳，补标记（不会改名称）
UPDATE venues
   SET booking_enabled = 0,
       is_shell = 1
 WHERE id = 'venue_weisha';

-- ============================================================
-- 5. 空壳馆内部团课场地（不对客人开放，名称不是「外场」）
--    杨箕现有「外场」仍留给教练排课，团课不要用那块。
-- ============================================================
INSERT INTO courts (venue_id, name, type, sort, status, remark, customer_visible)
SELECT 'venue_yangji', '团课1号场', '网球', 2, 'open', '空壳馆内部团课场地，不对客人开放订场', 0
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM courts WHERE venue_id = 'venue_yangji' AND name = '团课1号场'
);

INSERT INTO courts (venue_id, name, type, sort, status, remark, customer_visible)
SELECT 'venue_weisha', '团课1号场', '网球', 1, 'open', '空壳馆内部团课场地，不对客人开放订场', 0
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1 FROM courts WHERE venue_id = 'venue_weisha' AND name = '团课1号场'
);

-- ============================================================
-- 6. 复核
-- ============================================================
SELECT id, name, status, sort, booking_enabled, is_shell
  FROM venues
 ORDER BY sort ASC, id ASC;

SELECT id, venue_id, name, type, sort, status, customer_visible, remark
  FROM courts
 WHERE venue_id IN ('venue_yangji', 'venue_weisha')
 ORDER BY venue_id, sort, id;

SELECT setting_key, setting_value, updated_at
  FROM app_settings
 WHERE setting_key = 'group_class';

SELECT COLUMN_NAME, COLUMN_TYPE, COLUMN_DEFAULT, COLUMN_COMMENT
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = DATABASE()
   AND TABLE_NAME = 'group_classes'
   AND COLUMN_NAME IN ('class_type', 'theme', 'min_enrollment', 'cancel_before_hours', 'auto_cancel_exempt');
