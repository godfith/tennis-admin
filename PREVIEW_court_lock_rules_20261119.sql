-- =============================================================================
-- 山羊网球 goat_prod · 锁场规则 court_lock_rules + bookings/lock_intents.lock_rule_id
-- 生成：2026-11-19（UTC+8）
--
-- 用途：管理后台把锁场改成「一条规则管一批锁场，删除规则即解锁」。
--       锁场本身仍是 bookings 里的锁场行（user_name='锁场'，status='locked'，
--       source='lock'，备注以 [锁场] 开头）。小程序占用显示不用改。
--
-- 本文件只做 DDL（建表 / 加可空列和索引），不改已有锁场数据，不自动归入规则。
-- 请在 DBeaver 对 goat_prod 按节执行。先跑第 1 节只读，确认后再跑第 2–4 节，最后跑第 5 节复核。
-- 可重复执行：表用 IF NOT EXISTS，列和索引用 information_schema 判断后再 ALTER。
--
-- 注意：bookings 是热表，加列/加索引可能要一会儿。请在业务低峰执行。
-- 云函数不会自动 ALTER bookings。若还未跑本 SQL，保存/删除规则会提示先执行本文件。
-- =============================================================================

SET NAMES utf8mb4;
SET time_zone = '+08:00';

-- ---------------------------------------------------------------------------
-- 1) 只读预览：表、列、索引是否已存在；现有锁场有多少条还没有规则 id
-- ---------------------------------------------------------------------------
SELECT TABLE_NAME, ENGINE, TABLE_COLLATION, TABLE_ROWS
  FROM information_schema.TABLES
 WHERE TABLE_SCHEMA = DATABASE()
   AND TABLE_NAME IN ('court_lock_rules', 'lock_intents', 'bookings')
 ORDER BY TABLE_NAME;

SELECT TABLE_NAME, COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT, COLUMN_COMMENT
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = DATABASE()
   AND (
         (TABLE_NAME = 'court_lock_rules')
      OR (TABLE_NAME = 'bookings' AND COLUMN_NAME = 'lock_rule_id')
      OR (TABLE_NAME = 'lock_intents' AND COLUMN_NAME = 'lock_rule_id')
       )
 ORDER BY TABLE_NAME, ORDINAL_POSITION;

SELECT TABLE_NAME, INDEX_NAME, NON_UNIQUE, COLUMN_NAME, SEQ_IN_INDEX
  FROM information_schema.STATISTICS
 WHERE TABLE_SCHEMA = DATABASE()
   AND (
         (TABLE_NAME = 'court_lock_rules' AND INDEX_NAME IN ('idx_lock_rules_venue_status', 'idx_lock_rules_dates'))
      OR (TABLE_NAME = 'bookings' AND INDEX_NAME = 'idx_bookings_lock_rule_id')
      OR (TABLE_NAME = 'lock_intents' AND INDEX_NAME = 'idx_lock_intents_lock_rule_id')
       )
 ORDER BY TABLE_NAME, INDEX_NAME, SEQ_IN_INDEX;

SELECT COUNT(*) AS lock_booking_total
  FROM bookings
 WHERE (status = 'locked' OR source IN ('lock', 'court_lock') OR user_name = '锁场')
   AND status <> 'cancelled';
-- 现有锁场在加列前都没有规则 id。加列后的分组统计见第 5 节。

-- ---------------------------------------------------------------------------
-- 2) 建规则表（已存在则跳过，不会改已有行）
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS court_lock_rules (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(128) NOT NULL DEFAULT '' COMMENT '规则标题，空则按锁场',
  venue_id VARCHAR(64) NOT NULL COMMENT '场馆 id，一条规则只属于一个场馆',
  venue_name VARCHAR(128) NOT NULL DEFAULT '',
  courts TEXT NOT NULL COMMENT '场地名称 JSON 数组，例如 ["1号场","2号场"]',
  date_start DATE NOT NULL,
  date_end DATE NOT NULL,
  weekdays VARCHAR(64) NOT NULL DEFAULT '[1,2,3,4,5,6,7]' COMMENT '星期 JSON，1=周一 … 7=周日',
  time_start VARCHAR(8) NOT NULL DEFAULT '00:00' COMMENT '每天开始时间 HH:MM；与 time_end 同为 00:00 表示全天',
  time_end VARCHAR(8) NOT NULL DEFAULT '00:00' COMMENT '每天结束时间 HH:MM，不含该时刻开始的时段',
  status VARCHAR(16) NOT NULL DEFAULT 'active' COMMENT 'active=有效, deleted=已删除（软删）',
  operator_name VARCHAR(64) NOT NULL DEFAULT '',
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY idx_lock_rules_venue_status (venue_id, status),
  KEY idx_lock_rules_dates (date_start, date_end)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='锁场规则，删除后解除该规则生成的锁场';

-- ---------------------------------------------------------------------------
-- 3) bookings.lock_rule_id（可空；已存在则跳过）
-- ---------------------------------------------------------------------------
SET @db = DATABASE();

SET @col_exists = (
  SELECT COUNT(*) FROM information_schema.COLUMNS
   WHERE TABLE_SCHEMA = @db AND TABLE_NAME = 'bookings' AND COLUMN_NAME = 'lock_rule_id'
);
SET @sql = IF(
  @col_exists = 0,
  'ALTER TABLE bookings ADD COLUMN lock_rule_id INT NULL COMMENT ''所属锁场规则id，空表示未归入规则'' AFTER remark',
  'SELECT ''bookings.lock_rule_id already exists'' AS info'
);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @idx_exists = (
  SELECT COUNT(*) FROM information_schema.STATISTICS
   WHERE TABLE_SCHEMA = @db AND TABLE_NAME = 'bookings' AND INDEX_NAME = 'idx_bookings_lock_rule_id'
);
SET @sql = IF(
  @idx_exists = 0,
  'ALTER TABLE bookings ADD INDEX idx_bookings_lock_rule_id (lock_rule_id)',
  'SELECT ''idx_bookings_lock_rule_id already exists'' AS info'
);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- ---------------------------------------------------------------------------
-- 4) lock_intents.lock_rule_id（可空；若表还不存在，可先部署云函数或稍后再跑本节）
-- ---------------------------------------------------------------------------
SET @tbl_exists = (
  SELECT COUNT(*) FROM information_schema.TABLES
   WHERE TABLE_SCHEMA = @db AND TABLE_NAME = 'lock_intents'
);
SET @col_exists = (
  SELECT COUNT(*) FROM information_schema.COLUMNS
   WHERE TABLE_SCHEMA = @db AND TABLE_NAME = 'lock_intents' AND COLUMN_NAME = 'lock_rule_id'
);
SET @sql = IF(
  @tbl_exists = 0,
  'SELECT ''lock_intents 表还不存在，部署 adminSaveBooking 后会自动建表，然后再跑本节加列'' AS info',
  IF(
    @col_exists = 0,
    'ALTER TABLE lock_intents ADD COLUMN lock_rule_id INT NULL COMMENT ''所属锁场规则id'' AFTER booking_id',
    'SELECT ''lock_intents.lock_rule_id already exists'' AS info'
  )
);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @idx_exists = (
  SELECT COUNT(*) FROM information_schema.STATISTICS
   WHERE TABLE_SCHEMA = @db AND TABLE_NAME = 'lock_intents' AND INDEX_NAME = 'idx_lock_intents_lock_rule_id'
);
SET @sql = IF(
  @tbl_exists = 0,
  'SELECT ''skip lock_intents index: table missing'' AS info',
  IF(
    @idx_exists = 0,
    'ALTER TABLE lock_intents ADD INDEX idx_lock_intents_lock_rule_id (lock_rule_id)',
    'SELECT ''idx_lock_intents_lock_rule_id already exists'' AS info'
  )
);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- ---------------------------------------------------------------------------
-- 5) 复核：列和索引应已存在；锁场行不会被自动迁移，lock_rule_id 暂时都为空
-- ---------------------------------------------------------------------------
SELECT TABLE_NAME, COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_COMMENT
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = DATABASE()
   AND (
         (TABLE_NAME = 'court_lock_rules')
      OR (TABLE_NAME IN ('bookings', 'lock_intents') AND COLUMN_NAME = 'lock_rule_id')
       )
 ORDER BY TABLE_NAME, ORDINAL_POSITION;

SELECT TABLE_NAME, INDEX_NAME, COLUMN_NAME
  FROM information_schema.STATISTICS
 WHERE TABLE_SCHEMA = DATABASE()
   AND INDEX_NAME IN ('idx_lock_rules_venue_status', 'idx_lock_rules_dates', 'idx_bookings_lock_rule_id', 'idx_lock_intents_lock_rule_id')
 ORDER BY TABLE_NAME, INDEX_NAME;

SELECT COUNT(*) AS lock_booking_total,
       SUM(CASE WHEN lock_rule_id IS NULL OR lock_rule_id = 0 THEN 1 ELSE 0 END) AS lock_booking_without_rule,
       SUM(CASE WHEN lock_rule_id IS NOT NULL AND lock_rule_id > 0 THEN 1 ELSE 0 END) AS lock_booking_with_rule
  FROM bookings
 WHERE (status = 'locked' OR source IN ('lock', 'court_lock') OR user_name = '锁场')
   AND status <> 'cancelled';

SELECT COUNT(*) AS lock_rule_rows,
       SUM(CASE WHEN status = 'active' THEN 1 ELSE 0 END) AS active_rules,
       SUM(CASE WHEN status = 'deleted' THEN 1 ELSE 0 END) AS deleted_rules
  FROM court_lock_rules;
