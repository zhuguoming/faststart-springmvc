CREATE TABLE `blog` (
  `id` VARCHAR(32) NOT NULL,
  `title` VARCHAR(45) NULL COMMENT '标题',
  `content` VARCHAR(45) NULL COMMENT '内容',
  `release_date` DATETIME NULL COMMENT '发布时间',
  `release_by` VARCHAR(45) NULL COMMENT '发布人',
  PRIMARY KEY (`id`))
COMMENT = '博客';

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


