CREATE TABLE IF NOT EXISTS notify_scripts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  type VARCHAR(20) NOT NULL COMMENT 'normal / coach',
  content TEXT,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uk_type (type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO notify_scripts (type, content) VALUES
('normal', '如取消或改期需提前2小时告知'),
('coach', '请准时到场，如需取消请提前告知教练')
ON DUPLICATE KEY UPDATE content = content;
