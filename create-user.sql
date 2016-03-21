CREATE TABLE `user` ( 
	`id` INT( 255 ) AUTO_INCREMENT NOT NULL, 
	`username` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`password` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`email` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`created` DATETIME NOT NULL, 
	`logged` DATETIME NULL, 
	`roles` VARCHAR( 25 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`gravatar` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`active` TINYINT( 1 ) NOT NULL, 
	`homepage` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	 PRIMARY KEY ( `id` )
