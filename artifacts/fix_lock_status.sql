-- 锁场相关修复
-- 1. 确保 bookings.status 支持 'locked'（如果是 ENUM 则改成 VARCHAR）
-- 先查看当前字段类型：
-- SHOW COLUMNS FROM bookings LIKE 'status';

-- 如果是 ENUM 且没有 'locked'，执行下面这句：
ALTER TABLE bookings MODIFY COLUMN status VARCHAR(20) DEFAULT 'booked';

-- 2. 把之前错误写成普通预约的锁场记录修正回来
UPDATE bookings
SET status = 'locked',
    source = 'lock',
    user_name = '锁场'
WHERE status = 'booked'
  AND (user_name = '锁场' OR remark LIKE '[锁场]%' OR source = 'lock');

-- 3. 确认结果
-- SELECT id, court, date, time, status, source, user_name, remark
-- FROM bookings
-- WHERE user_name = '锁场' OR source = 'lock' OR status = 'locked'
-- ORDER BY date DESC, id DESC
-- LIMIT 50;
