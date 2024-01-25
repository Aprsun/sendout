CREATE TABLE `sec_outsend_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID，主键',
  `uid` bigint(20) NOT NULL COMMENT 'uid',
  `mis_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mis',
  `send_timestamp` bigint(20) NOT NULL COMMENT '发送时间戳（ms）',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件name',
  `ua` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ua',
  `ip` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录IP',
  `raw_log` JSON COMMENT '原始日志',
  `add_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_ip_send_timestamp` (`ip`,`send_timestamp`),
  KEY `idx_uid_send_timestamp` (`login_id`,`send_timestamp`),
  KEY `idx_update_time` (`update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=9537 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='发送记录';