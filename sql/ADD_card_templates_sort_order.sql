-- 预览 / 手动执行（DBeaver，库 goat_prod）
-- 不要在未确认前执行。仅当 card_templates 还没有 sort_order 字段时才需要跑第 2、3 节。
-- 本文件不会改数据以外的业务内容：加列，并仅在全部还是默认 0 时按已有约定回填顺序。

-- 1) 先看字段是否已存在（有结果就不必执行下面）
SHOW COLUMNS FROM card_templates LIKE 'sort_order';

-- 2) 没有该列时再执行
ALTER TABLE card_templates
  ADD COLUMN sort_order INT NOT NULL DEFAULT 0;

-- 3) 仅当全部 sort_order 仍为 0 时回填（按 id 倒序，与现有云函数约定一致：大 id 排前面）
--    已有非 0 顺序时不会改动。
UPDATE card_templates
   SET sort_order = (SELECT mx FROM (SELECT MAX(id) AS mx FROM card_templates) s) - id + 1
 WHERE (SELECT cnt FROM (SELECT COUNT(*) AS cnt FROM card_templates WHERE IFNULL(sort_order, 0) <> 0) t) = 0;

-- 4) 复核
SELECT id, name, sort_order
  FROM card_templates
 ORDER BY sort_order ASC, id ASC
 LIMIT 50;
