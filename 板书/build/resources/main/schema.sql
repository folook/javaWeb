DROP DATABASE IF EXISTS ssm;
CREATE DATABASE ssm CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ssm;
CREATE TABLE Todo
(
    `id`      INT          NOT NULL AUTO_INCREMENT,
    `content`   VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
);



CREATE TABLE `ssm`.`weibo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(45) NULL,
  PRIMARY KEY (`id`)
);



CREATE TABLE `ssm`.`Topic` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `content` VARCHAR(1000) NOT NULL,
  `userId` INT NOT NULL,
  PRIMARY KEY (`id`));







CREATE TABLE `ssm`.`User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `role` ENUM('admin', 'guest', 'normal') NOT NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `ssm`.`WebNum` (
                                `id` INT NOT NULL,
                                `homePageNum` INT NOT NULL,
                                `indexPageNum` INT NOT NULL,
                                PRIMARY KEY (`id`));
