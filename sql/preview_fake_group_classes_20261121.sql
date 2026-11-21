-- 假团课，用来看小程序月历效果。
-- 日期格子下会显示场地；点日期后列出有课的场地。
-- 看完跑最下面的删除。

-- ========== 预览现有场地 ==========
SELECT venue_id, name FROM venues ORDER BY id;

-- ========== 插入假团课 ==========
INSERT INTO group_classes
  (venue_id, name, date, time, court, coach_id, coach_name, capacity, enrolled, status, remark,
   min_enrollment, cancel_before_hours, auto_cancel_exempt, class_type, theme)
VALUES
  ('venue_chenjiaci', '晚间周课', '2026-11-21', '19:00-20:00', '2号场', NULL, '测试教练', 4, 1, 'open', '【测试】假数据-月历', 0, 2, 0, 'fixed', '正手球-基础'),
  ('venue_chenjiaci', '自组体验', '2026-11-21', '20:00-21:00', '3号场', NULL, '测试教练', 4, 0, 'open', '【测试】假数据-月历', 0, 2, 0, 'self', '自组体验'),
  ('venue_haixinsha', '晚间周课', '2026-11-21', '18:00-19:00', '1号场', NULL, '测试教练', 4, 2, 'open', '【测试】假数据-月历', 0, 2, 0, 'fixed', '正手球-基础'),
  ('venue_zhongda', '晚间周课', '2026-11-22', '19:00-20:00', '1号场', NULL, '测试教练', 4, 0, 'open', '【测试】假数据-月历', 0, 2, 0, 'fixed', '正手球-基础'),
  ('venue_huadiwan', '自组团课', '2026-11-22', '16:00-17:00', '2号场', NULL, '测试教练', 6, 1, 'open', '【测试】假数据-月历', 0, 2, 0, 'self', '自组体验'),
  ('venue_chenjiaci', '晚间周课', '2026-11-23', '21:00-22:00', '2号场', NULL, '测试教练', 4, 2, 'open', '【测试】假数据-月历', 0, 2, 0, 'fixed', '正手球-基础');

-- ========== 看效果 ==========
SELECT id, venue_id, name, date, time, court, class_type, theme, status
  FROM group_classes
 WHERE remark = '【测试】假数据-月历'
 ORDER BY date, venue_id, time;

-- ========== 看完删除 ==========
-- DELETE FROM group_classes WHERE remark = '【测试】假数据-月历';
