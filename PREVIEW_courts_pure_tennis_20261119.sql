-- =============================================================================
-- 山羊网球 goat_prod · courts.pure_tennis（纯网球、没有发球机）
-- 生成：2026-11-19（UTC+8）
--
-- 用途：给个别场地打标「纯网球、没有发球机」。勾选后，发球机卡不能约这块场；
--       网球卡和教练卡仍可约。网球场与发球机房默认仍按同一类训练场地互通。
--       匹克球场不适用此标记。默认全部为 0，本文件不会批量改已有场地的值。
--
-- 请在 DBeaver 对 goat_prod 按节执行。先跑第 1 节只读，确认后再跑第 2 节 DDL，
-- 最后跑第 3 节复核。可重复执行：列用 information_schema 判断后再 ALTER。
--
-- 注意：courts 表不大，加列一般很快；仍建议在业务低峰执行。
-- 云函数不会自动 ALTER courts。若还未跑本 SQL，保存场地时勾选该标记会提示先执行本文件，
-- 其他字段仍可正常保存；列表在缺列时按 0 返回。
-- =============================================================================

SET NAMES utf8mb4;
SET time_zone = '+08:00';

-- ---------------------------------------------------------------------------
-- 1) 只读预览：courts 表和 pure_tennis 列是否已存在
-- ---------------------------------------------------------------------------
SHOW COLUMNS FROM courts;

SELECT TABLE_NAME, COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT, COLUMN_COMMENT
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = DATABASE()
   AND TABLE_NAME = 'courts'
   AND COLUMN_NAME IN ('pure_tennis', 'customer_visible', 'type', 'name', 'status')
 ORDER BY ORDINAL_POSITION;

SELECT COUNT(*) AS courts_total FROM courts;

SELECT COUNT(*) AS pure_tennis_col_exists
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = DATABASE()
   AND TABLE_NAME = 'courts'
   AND COLUMN_NAME = 'pure_tennis';
-- 若 pure_tennis_col_exists = 0，说明第 2 节还没跑，属正常。不要在缺列时直接 SELECT courts.pure_tennis。

-- ---------------------------------------------------------------------------
-- 2) 加列 courts.pure_tennis（已存在则跳过，默认 0，不改已有行的业务含义）
-- ---------------------------------------------------------------------------
SET @db = DATABASE();

SET @col_exists = (
  SELECT COUNT(*) FROM information_schema.COLUMNS
   WHERE TABLE_SCHEMA = @db AND TABLE_NAME = 'courts' AND COLUMN_NAME = 'pure_tennis'
);
SET @sql = IF(
  @col_exists = 0,
  'ALTER TABLE courts ADD COLUMN pure_tennis TINYINT(1) NOT NULL DEFAULT 0 COMMENT ''纯网球无发球机（发球机卡不能约）'' AFTER remark',
  'SELECT ''courts.pure_tennis already exists'' AS info'
);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- ---------------------------------------------------------------------------
-- 3) 复核：列已存在，且已有场地未被批量打标（应为 0 条或仅手工勾选的条数）
-- ---------------------------------------------------------------------------
SELECT TABLE_NAME, COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT, COLUMN_COMMENT
  FROM information_schema.COLUMNS
 WHERE TABLE_SCHEMA = DATABASE()
   AND TABLE_NAME = 'courts'
   AND COLUMN_NAME = 'pure_tennis';

SELECT COUNT(*) AS courts_total,
       SUM(CASE WHEN pure_tennis = 1 THEN 1 ELSE 0 END) AS flagged_pure_tennis
  FROM courts;
