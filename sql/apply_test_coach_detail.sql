-- 写入：把「测试教练」加入教练名单，挂上已有测试团课，并加一条私教预约方便查看详情
-- 标记：TEST_GC_20261120
-- 不改正式教练资料。测完用 delete_test_gc_flow.sql 删除。
-- 不要把数据库密码写进本文件或回传记录。
-- 比较统一先转成 utf8mb4，避免 utf8mb3 / utf8mb4_0900_ai_ci 混用报错。

SET NAMES utf8mb4;
SET @test_phone = CONVERT('18420103039' USING utf8mb4) COLLATE utf8mb4_general_ci;
SET @tag = CONVERT('TEST_GC_20261120' USING utf8mb4) COLLATE utf8mb4_general_ci;
SET @coach_name = CONVERT('测试教练' USING utf8mb4) COLLATE utf8mb4_general_ci;
SET @venue_id = CONVERT('venue_haixinsha' USING utf8mb4) COLLATE utf8mb4_general_ci;
SET @book_date = CONVERT('2026-11-27' USING utf8mb4) COLLATE utf8mb4_general_ci;
SET @book_time = CONVERT('16:00-17:00' USING utf8mb4) COLLATE utf8mb4_general_ci;

SET @coach_id = (
  SELECT id FROM coaches
   WHERE CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci = @coach_name
     AND CONVERT(IFNULL(remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci = @tag
   ORDER BY id
   LIMIT 1
);

INSERT INTO coaches (venue_id, name, phone, specialty, sort, status, remark)
SELECT @venue_id, @coach_name, '', '', 999, 'active', @tag
 WHERE @coach_id IS NULL
   AND EXISTS (
     SELECT 1 FROM venues
      WHERE CONVERT(CAST(id AS CHAR) USING utf8mb4) COLLATE utf8mb4_general_ci = @venue_id
   );

SET @coach_id = (
  SELECT id FROM coaches
   WHERE CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci = @coach_name
     AND CONVERT(IFNULL(remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci = @tag
   ORDER BY id
   LIMIT 1
);

UPDATE group_classes
   SET coach_id = @coach_id,
       coach_name = @coach_name
 WHERE @coach_id IS NOT NULL
   AND (
     CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci = @tag
     OR CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci
   );

SET @uid = (SELECT id FROM users WHERE CONVERT(phone USING utf8mb4) COLLATE utf8mb4_general_ci = @test_phone LIMIT 1);
SET @uname = (SELECT CONVERT(IFNULL(nick_name, '') USING utf8mb4) COLLATE utf8mb4_general_ci FROM users WHERE id = @uid LIMIT 1);
SET @openid = (SELECT CONVERT(IFNULL(openid, '') USING utf8mb4) COLLATE utf8mb4_general_ci FROM users WHERE id = @uid LIMIT 1);
SET @uphone = (SELECT CONVERT(IFNULL(phone, '') USING utf8mb4) COLLATE utf8mb4_general_ci FROM users WHERE id = @uid LIMIT 1);
SET @vname = (
  SELECT CONVERT(IFNULL(name, '') USING utf8mb4) COLLATE utf8mb4_general_ci FROM venues
   WHERE CONVERT(CAST(id AS CHAR) USING utf8mb4) COLLATE utf8mb4_general_ci = @venue_id
   LIMIT 1
);

INSERT INTO bookings (
  venue_id, venue_name, court, date, time, user_id, openid, user_name, phone,
  status, card_id, card_name, card_type, coach_id, coach_name,
  source, amount, operator_name, remark
)
SELECT
  @venue_id,
  IFNULL(@vname, CONVERT('海心沙店' USING utf8mb4) COLLATE utf8mb4_general_ci),
  CONVERT('外场' USING utf8mb4) COLLATE utf8mb4_general_ci,
  @book_date,
  @book_time,
  @uid,
  IFNULL(@openid, ''),
  IFNULL(@uname, ''),
  IFNULL(@uphone, @test_phone),
  'booked',
  NULL,
  '',
  '',
  @coach_id,
  @coach_name,
  'user',
  200,
  '',
  CONCAT(CONVERT('【测试】假数据 私教预约 ' USING utf8mb4) COLLATE utf8mb4_general_ci, @tag)
 WHERE @uid IS NOT NULL
   AND @coach_id IS NOT NULL
   AND NOT EXISTS (
     SELECT 1 FROM bookings b
      WHERE b.coach_id = @coach_id
        AND CONVERT(b.date USING utf8mb4) COLLATE utf8mb4_general_ci = @book_date
        AND CONVERT(b.time USING utf8mb4) COLLATE utf8mb4_general_ci = @book_time
        AND CONVERT(IFNULL(b.status,'') USING utf8mb4) COLLATE utf8mb4_general_ci = CONVERT('booked' USING utf8mb4) COLLATE utf8mb4_general_ci
        AND (
          CONVERT(IFNULL(b.remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONCAT('%', @tag, '%')
          OR CONVERT(IFNULL(b.remark,'') USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('%【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci
        )
   );

SELECT
  IF(@coach_id IS NULL, '停止：测试教练没有写上，请先确认海心沙门店存在', CONCAT('测试教练ID ', @coach_id)) AS coach_check,
  IF(@uid IS NULL, '找不到测试用的登录用户', CONCAT('预约人用户ID ', @uid, ' / ', IFNULL(@uname,''))) AS user_check;

SELECT '测试教练' AS kind, id, venue_id, name, status, remark
  FROM coaches
 WHERE id = @coach_id;

SELECT '已挂测试课' AS kind, id, name, date, time, venue_id, court, coach_id, coach_name, enrolled, status
  FROM group_classes
 WHERE CONVERT(remark USING utf8mb4) COLLATE utf8mb4_general_ci = @tag
    OR CONVERT(name USING utf8mb4) COLLATE utf8mb4_general_ci LIKE CONVERT('【测试】假数据%' USING utf8mb4) COLLATE utf8mb4_general_ci
 ORDER BY date, time, id;

SELECT '测试私教预约' AS kind, id, date, time, venue_id, court, user_name, phone, coach_name, source, amount, status, remark
  FROM bookings
 WHERE coach_id = @coach_id
   AND CONVERT(date USING utf8mb4) COLLATE utf8mb4_general_ci = @book_date
   AND CONVERT(time USING utf8mb4) COLLATE utf8mb4_general_ci = @book_time
 ORDER BY id DESC
 LIMIT 5;
