ALTER TABLE `dinner`.`orders` 
ADD COLUMN `restaurant_id` INT(11) NOT NULL COMMENT '餐厅id' AFTER `customer_id`;
ALTER TABLE `dinner`.`order_dishes` 
ADD COLUMN `dish_num` INT(11) NOT NULL AFTER `dish_id`;