-- =============================================================================
-- 山羊网球 goat_prod · 新建两个联营人后台账号（陈家祠、花地湾、中大）
-- 2026-11-16（UTC+8）按节在 DBeaver 执行。先跑第 1 节预览，确认后再跑第 2 节。
-- 账号已存在则只更新姓名/权限/场馆，不改密码。
-- 新账号初始密码与手机号相同。
-- =============================================================================

SET NAMES utf8mb4;
SET time_zone = '+08:00';

-- 1) 预览：场馆是否存在、这两个手机号是否已有后台账号（不含密码）
SELECT id, name, status
  FROM venues
 WHERE id IN ('venue_chenjiaci', 'venue_huadiwan', 'venue_zhongda')
 ORDER BY FIELD(id, 'venue_chenjiaci', 'venue_huadiwan', 'venue_zhongda');

SELECT id, username, name, role, venue_id, venue_name, status, permissions, created_at
  FROM admins
 WHERE username IN ('15625212521', '18620208354')
 ORDER BY id;

-- 2) 写入（已存在则只改权限，不改密码；不存在则新建，密码=手机号）
UPDATE admins a
  JOIN venues v ON v.id = 'venue_chenjiaci'
   SET a.name = '联营人',
       a.role = 'manager',
       a.venue_id = v.id,
       a.venue_name = v.name,
       a.status = 'active',
       a.permissions = '["/finance","venue:venue_chenjiaci","venue:venue_huadiwan","venue:venue_zhongda"]'
 WHERE a.username = '15625212521';

INSERT INTO admins (username, password, name, role, venue_id, venue_name, status, permissions, created_at)
SELECT '15625212521', '15625212521', '联营人', 'manager',
       v.id, v.name, 'active',
       '["/finance","venue:venue_chenjiaci","venue:venue_huadiwan","venue:venue_zhongda"]', NOW()
  FROM venues v
 WHERE v.id = 'venue_chenjiaci'
   AND NOT EXISTS (SELECT 1 FROM admins WHERE username = '15625212521');

UPDATE admins a
  JOIN venues v ON v.id = 'venue_chenjiaci'
   SET a.name = '联营人',
       a.role = 'manager',
       a.venue_id = v.id,
       a.venue_name = v.name,
       a.status = 'active',
       a.permissions = '["/finance","venue:venue_chenjiaci","venue:venue_huadiwan","venue:venue_zhongda"]'
 WHERE a.username = '18620208354';

INSERT INTO admins (username, password, name, role, venue_id, venue_name, status, permissions, created_at)
SELECT '18620208354', '18620208354', '联营人', 'manager',
       v.id, v.name, 'active',
       '["/finance","venue:venue_chenjiaci","venue:venue_huadiwan","venue:venue_zhongda"]', NOW()
  FROM venues v
 WHERE v.id = 'venue_chenjiaci'
   AND NOT EXISTS (SELECT 1 FROM admins WHERE username = '18620208354');

-- 3) 复核（不含密码）
SELECT id, username, name, role, venue_id, venue_name, status, permissions, created_at
  FROM admins
 WHERE username IN ('15625212521', '18620208354')
 ORDER BY id;
