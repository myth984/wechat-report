CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222187 DEFAULT CHARSET=utf8mb4