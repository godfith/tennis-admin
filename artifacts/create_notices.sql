CREATE TABLE IF NOT EXISTS notice_templates (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL DEFAULT '预约注意事项',
  content TEXT,
  status VARCHAR(20) DEFAULT 'active',
  venue_id VARCHAR(64) DEFAULT '',
  sort_order INT DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 插入一条默认模板
INSERT INTO notice_templates (title, content, status)
SELECT '预约注意事项', '1. 请提前10分钟到场\n2. 请穿着运动服装和运动鞋\n3. 取消预约请提前2小时\n4. 爱护场地设施，保持整洁', 'active'
FROM DUAL
WHERE NOT EXISTS (SELECT 1 FROM notice_templates LIMIT 1);
