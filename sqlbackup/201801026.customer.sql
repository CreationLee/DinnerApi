ALTER TABLE `customers` CHANGE `uniqueid` `openid` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '微信的主键id';
