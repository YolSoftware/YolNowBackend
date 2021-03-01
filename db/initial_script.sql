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
-- Table `mydb`.`Members`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Members` (
  `memberId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `ipAddress` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NULL,
  `university` VARCHAR(45) NULL,
  PRIMARY KEY (`memberId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Rooms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Rooms` (
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
CREATE TABLE IF NOT EXISTS `mydb`.`Join` (
  `joinId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Rooms_roomId` INT UNSIGNED NOT NULL,
  `Members_memberId` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`joinId`),
  INDEX `fk_Join_Rooms1_idx` (`Rooms_roomId` ASC) VISIBLE,
  INDEX `fk_Join_Members1_idx` (`Members_memberId` ASC) VISIBLE,
  CONSTRAINT `fk_Join_Rooms1`
    FOREIGN KEY (`Rooms_roomId`)
    REFERENCES `mydb`.`Rooms` (`roomId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Join_Members1`
    FOREIGN KEY (`Members_memberId`)
    REFERENCES `mydb`.`Members` (`memberId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Comments` (
  `commentId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `time` TIMESTAMP NOT NULL,
  `Rooms_roomId` INT UNSIGNED NOT NULL,
  `Members_memberId` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`commentId`),
  INDEX `fk_Comments_Rooms1_idx` (`Rooms_roomId` ASC) VISIBLE,
  INDEX `fk_Comments_Members1_idx` (`Members_memberId` ASC) VISIBLE,
  CONSTRAINT `fk_Comments_Rooms1`
    FOREIGN KEY (`Rooms_roomId`)
    REFERENCES `mydb`.`Rooms` (`roomId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comments_Members1`
    FOREIGN KEY (`Members_memberId`)
    REFERENCES `mydb`.`Members` (`memberId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`timestamps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`timestamps` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
