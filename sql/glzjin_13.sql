CREATE TABLE `payback` ( `id` BIGINT NOT NULL AUTO_INCREMENT , `total` DECIMAL(12,2) NOT NULL , `userid` BIGINT NOT NULL , `ref_by` BIGINT NOT NULL , `ref_get` DECIMAL(12,2) NOT NULL , `datetime` BIGINT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;



CREATE TABLE `shop` ( `id` BIGINT NOT NULL AUTO_INCREMENT , `name` TEXT NOT NULL , `price` DECIMAL(12,2) NOT NULL , `content` TEXT NOT NULL , `auto_renew` INT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `coupon` ( `id` BIGINT NOT NULL AUTO_INCREMENT , `code` TEXT NOT NULL , `onetime` INT NOT NULL , `expire` BIGINT NOT NULL , `shop` TEXT NOT NULL , `credit` INT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `bought` ( `id` BIGINT NOT NULL AUTO_INCREMENT , `userid` BIGINT NOT NULL , `shopid` BIGINT NOT NULL , `datetime` BIGINT NOT NULL , `renew` INT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

ALTER TABLE `bought` ADD `coupon` TEXT NOT NULL AFTER `renew`, ADD `price` DECIMAL(12,2) NOT NULL AFTER `coupon`;

ALTER TABLE `bought` CHANGE `renew` `renew` BIGINT(11) NOT NULL;