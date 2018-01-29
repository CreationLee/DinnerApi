ALTER TABLE `dinner`.`orders` 
CHANGE COLUMN `order_status` `order_status` INT(2) NOT NULL DEFAULT 0 COMMENT '订单状态0：未支付 1：已支付' ,
CHANGE COLUMN `pay_type` `pay_type` INT(2) NOT NULL COMMENT '0：微信 1：线下（尚前不用)' ;
ALTER TABLE `dinner`.`orders` 
CHANGE COLUMN `type` `type` INT(2) NOT NULL DEFAULT 0 COMMENT '0：堂食1：外带' ;
ALTER TABLE `dinner`.`orders` 
CHANGE COLUMN `paid` `paid` DECIMAL(10,2) NOT NULL COMMENT '实际支付' ;
