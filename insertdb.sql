-- MySQL Workbench Forward Engineering
```mysql
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
```
-- -----------------------------------------------------
-- Schema my_sql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema my_sql
-- -----------------------------------------------------
```mysql
CREATE SCHEMA `my_sql` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `my_sql` ;
```
-- -----------------------------------------------------
-- Table `my_sql`.`user`
-- -----------------------------------------------------
```mysql
CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL,
  `fullname` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `rank` TINYINT NOT NULL,
  `is_active` TINYINT NULL,
  `created_at` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
```

-- -----------------------------------------------------
-- Table `my_sql`.`category`
-- -----------------------------------------------------
```mysql
CREATE TABLE IF NOT EXISTS `category` (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `created_at` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;
```

-- -----------------------------------------------------
-- Table `my_sql`.`blog`
-- -----------------------------------------------------
```mysql
CREATE TABLE IF NOT EXISTS `blog` (
  `id` VARCHAR(45) NOT NULL,
  `category_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `view` INT NOT NULL,
  `is_active` TINYINT NULL,
  `content` TEXT NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  INDEX `fk_blog_user_idx` (`user_id` ASC),
  INDEX `fk_blog_category1_idx` (`category_id` ASC),
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  CONSTRAINT `fk_blog_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `my_sql`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_blog_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `my_sql`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
```

-- -----------------------------------------------------
-- Table `mysql`.`follow`
-- -----------------------------------------------------
```mysql
CREATE TABLE IF NOT EXISTS `follow` (
  `id` INT NOT NULL,
  `from_user_id` INT NOT NULL,
  `to_user_id` INT NOT NULL,
  `created_at` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idfollow_UNIQUE` (`id` ASC),
  INDEX `fk_follow_user1_idx` (`from_user_id` ASC),
  INDEX `fk_follow_user2_idx` (`to_user_id` ASC),
  CONSTRAINT `fk_follow_user1`
    FOREIGN KEY (`from_user_id`)
    REFERENCES `mysql`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_follow_user2`
    FOREIGN KEY (`to_user_id`)
    REFERENCES `mysql`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
```

-- -----------------------------------------------------
-- Table `mysql`.`comment`
-- -----------------------------------------------------
```mysql
CREATE TABLE IF NOT EXISTS `comment` (
  `id` INT NOT NULL,
  `target_table` VARCHAR(45) NOT NULL,
  `target_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `comment` TEXT NOT NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_comment_user1_idx` (`user_id` ASC),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  CONSTRAINT `fk_comment_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mysql`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
```

-- -----------------------------------------------------
-- Table `mysql`.`news`
-- -----------------------------------------------------
```mysql
CREATE TABLE IF NOT EXISTS `news` (
  `id` VARCHAR(45) NOT NULL,
  `category_id` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `view` INT NOT NULL,
  `is_active` TINYINT NULL,
  `content` TEXT NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  INDEX `fk_blog_category1_idx` (`category_id` ASC),
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  CONSTRAINT `fk_blog_category10`
    FOREIGN KEY (`category_id`)
    REFERENCES `mysql`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
```
```mysql
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
```