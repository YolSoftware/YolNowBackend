-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Member`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Member` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Member` (
  `memberId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `ipAddress` VARCHAR(45) NULL,
  `gender` TINYINT NULL,
  `university` VARCHAR(45) NULL,
  PRIMARY KEY (`memberId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Room`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Room` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Room` (
  `roomId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `hashValue` VARCHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `createDate` TIMESTAMP NOT NULL,
  `maxNumOfPeople` INT UNSIGNED NOT NULL,
  `roomType` INT UNSIGNED NOT NULL,
  `roomActivateFlag` TINYINT NOT NULL,
  PRIMARY KEY (`roomId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Join`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Join` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Join` (
  `joinId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Room_roomId` INT UNSIGNED NOT NULL,
  `Member_memberId` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`joinId`),
  INDEX `fk_Join_Room1_idx` (`Room_roomId` ASC) VISIBLE,
  INDEX `fk_Join_Member1_idx` (`Member_memberId` ASC) VISIBLE,
  CONSTRAINT `fk_Join_Room1`
    FOREIGN KEY (`Room_roomId`)
    REFERENCES `mydb`.`Room` (`roomId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Join_Member1`
    FOREIGN KEY (`Member_memberId`)
    REFERENCES `mydb`.`Member` (`memberId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Comment` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Comment` (
  `commentId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `time` TIMESTAMP NOT NULL,
  `Room_roomId` INT UNSIGNED NOT NULL,
  `Member_memberId` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`commentId`),
  INDEX `fk_Comment_Room1_idx` (`Room_roomId` ASC) VISIBLE,
  INDEX `fk_Comment_Member1_idx` (`Member_memberId` ASC) VISIBLE,
  CONSTRAINT `fk_Comment_Room1`
    FOREIGN KEY (`Room_roomId`)
    REFERENCES `mydb`.`Room` (`roomId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comment_Member1`
    FOREIGN KEY (`Member_memberId`)
    REFERENCES `mydb`.`Member` (`memberId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`timestamp`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`timestamp` ;

CREATE TABLE IF NOT EXISTS `mydb`.`timestamp` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
