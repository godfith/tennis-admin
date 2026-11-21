-- =============================================================================
-- 山羊网球 goat_prod · 解锁 2026-11-24（含当天）及之后的锁场
-- 生成：2026-11-21（UTC+8）
--
-- 只解开锁场（status='locked'，且来源是锁场 / 用户名为「锁场」/ 备注以 [锁场] 开头）。
-- 不会改动已预订、支付中、已取消的客人预约，也不会改团课占用。
-- 同时清掉这些日期的「取消后自动锁」意图，并把还覆盖到 11.24 及以后的锁场规则截断或停用，
-- 避免之后再被规则重新锁上。
--
-- 请在 DBeaver 对 goat_prod 按节执行：
--   先跑第 1 节只读预览，核对条数和样例；
--   确认无误后再跑第 2–4 节（一个事务里提交）；
--   最后跑第 5 节复核。
-- =============================================================================

SET NAMES utf8mb4;
SET time_zone = '+08:00';

-- 解锁起点（含当天）。若只要 11.24 之后、不含 24 日，把下面改成 '2026-11-25'。
SET @unlock_from = '2026-11-24';

-- ---------------------------------------------------------------------------
-- 1) 只读预览（不改数据）
-- ---------------------------------------------------------------------------

-- 将被解锁的锁场，按门店、日期汇总
SELECT b.venue_name,
       b.date,
       COUNT(*) AS lock_cnt,
       GROUP_CONCAT(DISTINCT b.court ORDER BY b.court SEPARATOR '、') AS courts
  FROM bookings b
 WHERE b.date >= @unlock_from
   AND b.status = 'locked'
   AND (
         b.source IN ('lock', 'court_lock')
      OR b.user_name = '锁场'
      OR IFNULL(b.remark, '') LIKE '[锁场]%'
       )
 GROUP BY b.venue_id, b.venue_name, b.date
 ORDER BY b.date, b.venue_name;

-- 将被解锁的锁场明细（最多 500 条，便于抽查）
SELECT b.id, b.venue_name, b.court, b.date, b.time, b.status, b.source,
       b.user_name, b.operator_name, b.lock_rule_id, LEFT(b.remark, 80) AS remark
  FROM bookings b
 WHERE b.date >= @unlock_from
   AND b.status = 'locked'
   AND (
         b.source IN ('lock', 'court_lock')
      OR b.user_name = '锁场'
      OR IFNULL(b.remark, '') LIKE '[锁场]%'
       )
 ORDER BY b.date, b.venue_name, b.court, b.time
 LIMIT 500;

SELECT COUNT(*) AS lock_to_unlock_total
  FROM bookings b
 WHERE b.date >= @unlock_from
   AND b.status = 'locked'
   AND (
         b.source IN ('lock', 'court_lock')
      OR b.user_name = '锁场'
      OR IFNULL(b.remark, '') LIKE '[锁场]%'
       );

-- 同一时期的客人预约，只展示、不会被本脚本改动
SELECT status, COUNT(*) AS cnt
  FROM bookings
 WHERE date >= @unlock_from
   AND status IN ('booked', 'pending_pay')
 GROUP BY status;

SELECT COUNT(*) AS booked_kept_untouched
  FROM bookings
 WHERE date >= @unlock_from
   AND status IN ('booked', 'pending_pay');

-- 将被清除的「取消后自动锁」意图
SELECT venue_name, date, COUNT(*) AS intent_cnt
  FROM lock_intents
 WHERE date >= @unlock_from
 GROUP BY venue_id, venue_name, date
 ORDER BY date, venue_name;

SELECT COUNT(*) AS lock_intents_to_delete
  FROM lock_intents
 WHERE date >= @unlock_from;

-- 将被截断或停用的锁场规则
SELECT id, title, venue_name, date_start, date_end, status,
       CASE
         WHEN date_start >= @unlock_from THEN '将停用整条规则'
         WHEN date_end >= @unlock_from THEN CONCAT('将把结束日改到 ', DATE_SUB(@unlock_from, INTERVAL 1 DAY))
         ELSE '不动'
       END AS plan
  FROM court_lock_rules
 WHERE status <> 'deleted'
   AND date_end >= @unlock_from
 ORDER BY date_start, venue_name, id;

-- ---------------------------------------------------------------------------
-- 2–4) 确认预览无误后，整段一起执行（一个事务）
-- ---------------------------------------------------------------------------
START TRANSACTION;

-- 2) 取消 11.24 及之后的锁场记录（只改 locked）
UPDATE bookings
   SET status = 'cancelled',
       cancelled_by_admin = 1,
       operator_name = 'SQL解锁·11.24后',
       remark = CONCAT(IFNULL(remark, ''), ' [11.24后解锁]'),
       updated_at = NOW()
 WHERE date >= @unlock_from
   AND status = 'locked'
   AND (
         source IN ('lock', 'court_lock')
      OR user_name = '锁场'
      OR IFNULL(remark, '') LIKE '[锁场]%'
       );

SELECT ROW_COUNT() AS unlocked_lock_rows;

-- 3) 清掉这些日期的「取消后自动锁」，避免客人取消预约后被重新锁上
DELETE FROM lock_intents
 WHERE date >= @unlock_from;

SELECT ROW_COUNT() AS deleted_lock_intents;

-- 4) 调整锁场规则，避免以后再生成 11.24 及之后的锁场
-- 4a) 整段都在 11.24 及之后的规则：软删除
UPDATE court_lock_rules
   SET status = 'deleted',
       operator_name = 'SQL解锁·11.24后',
       updated_at = NOW()
 WHERE status <> 'deleted'
   AND date_start >= @unlock_from;

SELECT ROW_COUNT() AS rules_soft_deleted;

-- 4b) 跨过 11.24 的规则：结束日截到 11.23，11.23 及之前的锁场保留
UPDATE court_lock_rules
   SET date_end = DATE_SUB(@unlock_from, INTERVAL 1 DAY),
       operator_name = 'SQL解锁·11.24后',
       updated_at = NOW()
 WHERE status <> 'deleted'
   AND date_start < @unlock_from
   AND date_end >= @unlock_from;

SELECT ROW_COUNT() AS rules_end_truncated;

-- 下面这行提交。若预览后觉得不对，改成 ROLLBACK; 并停下。
COMMIT;

-- ---------------------------------------------------------------------------
-- 5) 复核（提交后再跑）
-- ---------------------------------------------------------------------------
SELECT COUNT(*) AS remaining_locks_from_1124
  FROM bookings
 WHERE date >= @unlock_from
   AND status = 'locked'
   AND (
         source IN ('lock', 'court_lock')
      OR user_name = '锁场'
      OR IFNULL(remark, '') LIKE '[锁场]%'
       );

SELECT COUNT(*) AS booked_still_there
  FROM bookings
 WHERE date >= @unlock_from
   AND status IN ('booked', 'pending_pay');

SELECT COUNT(*) AS remaining_intents_from_1124
  FROM lock_intents
 WHERE date >= @unlock_from;

SELECT id, title, venue_name, date_start, date_end, status
  FROM court_lock_rules
 WHERE operator_name = 'SQL解锁·11.24后'
    OR (status <> 'deleted' AND date_end >= @unlock_from)
 ORDER BY status, date_start, id;
