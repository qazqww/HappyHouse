-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema happyhouse
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema happyhouse
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `happyhouse` DEFAULT CHARACTER SET utf8 ;
USE `happyhouse` ;

-- -----------------------------------------------------
-- Table `happyhouse`.`guguncode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`guguncode` (
  `gugunCode` VARCHAR(10) NOT NULL,
  `gugunName` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`gugunCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`apartvalue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`apartvalue` (
  `gugunCode` VARCHAR(10) NOT NULL,
  `average` INT NOT NULL,
  PRIMARY KEY (`gugunCode`),
  INDEX `apartvalue_to_guguncode_fk_idx` (`gugunCode` ASC) VISIBLE,
  CONSTRAINT `apartvalue_to_guguncode_fk`
    FOREIGN KEY (`gugunCode`)
    REFERENCES `happyhouse`.`guguncode` (`gugunCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`sidocode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`sidocode` (
  `sidoCode` VARCHAR(10) NOT NULL,
  `sidoName` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`sidoCode`),
  UNIQUE INDEX `sidoName` (`sidoName` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`dongcode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`dongcode` (
  `dongCode` VARCHAR(10) NOT NULL,
  `sidoName` VARCHAR(30) NULL DEFAULT NULL,
  `gugunName` VARCHAR(30) NULL DEFAULT NULL,
  `dongName` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`dongCode`),
  INDEX `sidoName` (`sidoName` ASC) VISIBLE,
  CONSTRAINT `dongcode_ibfk_1`
    FOREIGN KEY (`sidoName`)
    REFERENCES `happyhouse`.`sidocode` (`sidoName`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`baseaddress`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`baseaddress` (
  `no` INT NOT NULL AUTO_INCREMENT,
  `sidoName` VARCHAR(30) NULL DEFAULT NULL,
  `gugunName` VARCHAR(30) NULL DEFAULT NULL,
  `dongName` VARCHAR(30) NULL DEFAULT NULL,
  `dongCode` VARCHAR(10) NULL DEFAULT NULL,
  `lat` VARCHAR(20) NULL DEFAULT NULL,
  `lng` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`no`),
  UNIQUE INDEX `dongCode_UNIQUE` (`dongCode` ASC) VISIBLE,
  INDEX `dongCode` (`dongCode` ASC) VISIBLE,
  CONSTRAINT `baseaddress_ibfk_1`
    FOREIGN KEY (`dongCode`)
    REFERENCES `happyhouse`.`dongcode` (`dongCode`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`member` (
  `userid` VARCHAR(16) NOT NULL,
  `userpwd` VARCHAR(45) NOT NULL,
  `username` VARCHAR(30) NOT NULL,
  `email` VARCHAR(30) NULL DEFAULT NULL,
  `joindate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`favorite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`favorite` (
  `favno` INT NOT NULL AUTO_INCREMENT,
  `userid` VARCHAR(16) NULL DEFAULT NULL,
  `gugunCode` VARCHAR(10) NULL DEFAULT NULL,
  `addtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`favno`),
  INDEX `fav_to_member_fk_idx` (`userid` ASC) VISIBLE,
  INDEX `fav_to_guguncode_fk_idx` (`gugunCode` ASC) VISIBLE,
  CONSTRAINT `fav_to_guguncode_fk`
    FOREIGN KEY (`gugunCode`)
    REFERENCES `happyhouse`.`guguncode` (`gugunCode`),
  CONSTRAINT `fav_to_member_fk`
    FOREIGN KEY (`userid`)
    REFERENCES `happyhouse`.`member` (`userid`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`hospital`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`hospital` (
  `hospno` INT NOT NULL AUTO_INCREMENT,
  `gugunName` VARCHAR(30) NULL DEFAULT NULL,
  `sidoName` VARCHAR(30) NULL DEFAULT NULL,
  `tel` VARCHAR(15) NULL DEFAULT NULL,
  `hospname` VARCHAR(60) NULL DEFAULT NULL,
  PRIMARY KEY (`hospno`),
  INDEX `sidoName` (`sidoName` ASC) VISIBLE,
  CONSTRAINT `hospital_ibfk_1`
    FOREIGN KEY (`sidoName`)
    REFERENCES `happyhouse`.`sidocode` (`sidoName`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`houseinfo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`houseinfo` (
  `aptCode` INT NOT NULL,
  `aptName` VARCHAR(50) NULL DEFAULT NULL,
  `dongCode` VARCHAR(10) NULL DEFAULT NULL,
  `dongName` VARCHAR(30) NULL DEFAULT NULL,
  `buildYear` INT NULL DEFAULT NULL,
  `jibun` VARCHAR(30) NULL DEFAULT NULL,
  `lat` VARCHAR(30) NULL DEFAULT NULL,
  `lng` VARCHAR(30) NULL DEFAULT NULL,
  `img` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`aptCode`),
  INDEX `dongCode` (`dongCode` ASC) VISIBLE,
  CONSTRAINT `houseinfo_ibfk_1`
    FOREIGN KEY (`dongCode`)
    REFERENCES `happyhouse`.`dongcode` (`dongCode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`housedeal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`housedeal` (
  `no` INT NOT NULL AUTO_INCREMENT,
  `aptCode` INT NULL DEFAULT NULL,
  `dealAmount` VARCHAR(20) NULL DEFAULT NULL,
  `dealYear` INT NULL DEFAULT NULL,
  `dealMonth` INT NULL DEFAULT NULL,
  `dealDay` INT NULL DEFAULT NULL,
  `area` VARCHAR(30) NULL DEFAULT NULL,
  `floor` VARCHAR(30) NULL DEFAULT NULL,
  `type` VARCHAR(30) NULL DEFAULT NULL,
  `rentMoney` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`no`),
  INDEX `aptCode` (`aptCode` ASC) VISIBLE,
  CONSTRAINT `housedeal_ibfk_1`
    FOREIGN KEY (`aptCode`)
    REFERENCES `happyhouse`.`houseinfo` (`aptCode`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`qna`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`qna` (
  `articleno` INT NOT NULL AUTO_INCREMENT,
  `userid` VARCHAR(16) NULL DEFAULT NULL,
  `subject` VARCHAR(100) NULL DEFAULT NULL,
  `content` TEXT NULL DEFAULT NULL,
  `hit` INT NULL DEFAULT '0',
  `regtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`articleno`),
  INDEX `qna_to_member_fk` (`userid` ASC) VISIBLE,
  CONSTRAINT `qna_to_member_fk`
    FOREIGN KEY (`userid`)
    REFERENCES `happyhouse`.`member` (`userid`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`memo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`memo` (
  `memono` INT NOT NULL AUTO_INCREMENT,
  `userid` VARCHAR(16) NULL DEFAULT NULL,
  `comment` VARCHAR(500) NULL DEFAULT NULL,
  `memotime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `articleno` INT NULL DEFAULT NULL,
  PRIMARY KEY (`memono`),
  INDEX `memo_to_qna_fk` (`articleno` ASC) VISIBLE,
  INDEX `memo_to_member_fk_idx` (`userid` ASC) VISIBLE,
  CONSTRAINT `memo_to_member_fk`
    FOREIGN KEY (`userid`)
    REFERENCES `happyhouse`.`member` (`userid`),
  CONSTRAINT `memo_to_qna_fk`
    FOREIGN KEY (`articleno`)
    REFERENCES `happyhouse`.`qna` (`articleno`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `happyhouse`.`notice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `happyhouse`.`notice` (
  `articleno` INT NOT NULL AUTO_INCREMENT,
  `userid` VARCHAR(16) NULL DEFAULT NULL,
  `subject` VARCHAR(100) NULL DEFAULT NULL,
  `content` TEXT NULL DEFAULT NULL,
  `hit` INT NULL DEFAULT '0',
  `regtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`articleno`),
  INDEX `qna_to_member_fk` (`userid` ASC) VISIBLE,
  CONSTRAINT `qna_to_member_fk0`
    FOREIGN KEY (`userid`)
    REFERENCES `happyhouse`.`member` (`userid`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
