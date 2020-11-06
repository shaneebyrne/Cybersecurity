/*DROP DATABASE IF EXISTS studentaiddatabase;*/
CREATE DATABASE IF NOT EXISTS studentAidDatabase CHARACTER SET utf8mb4;

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema studentAidDatabase
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `studentAidDatabase` DEFAULT CHARACTER SET utf8mb4 ;
USE `studentAidDatabase` ;

-- -----------------------------------------------------
-- Table `studentAidDatabase`.`schoolCode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentAidDatabase`.`schoolCode` (
  `schoolName` CHAR NOT NULL,
  `schoolCode` INT NOT NULL,
  `address` CHAR NOT NULL,
  `city` CHAR NOT NULL,
  `stateCode` CHAR NOT NULL,
  `zipcode` INT NOT NULL,
  `province` CHAR NOT NULL,
  `country` CHAR NOT NULL,
  `postalCode` INT ,
  PRIMARY KEY (`schoolName`),
  UNIQUE INDEX `schoolName_UNIQUE` (`schoolName` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `studentAidDatabase`.`disbursedByLocation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentAidDatabase`.`disbursedByLocation` (
  `grantDist` INT NOT NULL,
  `location` CHAR NOT NULL,
  `grantRec` INT NULL,
  `loanDis` INT NULL,
  `totalDis` INT NULL,
  `totalRec` INT NULL,
  PRIMARY KEY (`location`, `grantDist`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `studentAidDatabase`.`greatfulEmployment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentAidDatabase`.`greatfulEmployment` (
  `ciPcode` DOUBLE NOT NULL,
  `schoolName` CHAR NOT NULL,
   `address` CHAR NULL,
  `city` CHAR NULL,
  `state` CHAR NULL,
  `zipCode` INT NULL,
  `schoolType` CHAR NOT NULL,
  `credLevel` CHAR NULL,
  `repayRate` DOUBLE NULL,
  `replayRateNum` INT NULL,
  `debtToEarnings` DOUBLE NULL,
  `debtToEarnNum` DOUBLE NULL,
  `debtToEarnDisRate` DOUBLE NULL,
  `medPrivRate` DOUBLE NULL,
  `medInstLoan` DOUBLE NULL,
  `merdTitlewIVloanYear` INT NULL,
  PRIMARY KEY (`ciPcode`, `schoolName`, `schoolType`),
  UNIQUE INDEX `schoolName_UNIQUE` (`schoolName` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `studentAidDatabase`.`ffelVol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentAidDatabase`.`ffelVol` (
  `schoolType` CHAR NOT NULL,
  `ffelSubRec` INT NULL,
  `ffelLoanNum` INT NULL,
  `ffelNumDis` INT NULL,
  `ffelCostDis` INT NULL,
  `ffelUnSubRec` INT NULL,
  `ffelSubLoanOrl` INT NULL,
  `ffelUnSubCostLoansOri` INT NULL,
  `ffelParRec` INT NULL,
  `ffelParNumLoanOri` INT NULL,
  `ffelParNUmDis` INT NULL,
  `ffelParCostDIs` INT NULL,
  `ffelGrandRec` INT NULL,
  `ffelGradNumLoanOri` INT NULL,
  `ffelgradCostLoanOri` INT NULL,
  `ffelGrandNumDisc` INT NULL,
  `ffelGradCostDIs` INT NULL,
  PRIMARY KEY (`schoolType`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `studentAidDatabase`.`distByAge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentAidDatabase`.`distByAge` (
  `grantsDisb` INT NOT NULL,
  `grantsRec` INT NULL,
  `loansDist` INT NULL,
  `loansRec` INT NULL,
  `totalDist` INT NULL,
  `totalRec` INT NULL,
  `age` INT NULL,
  PRIMARY KEY (`grantsDisb`))
ENGINE = InnoDB
COMMENT = '	';


-- -----------------------------------------------------
-- Table `studentAidDatabase`.`grantVol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentAidDatabase`.`grantVol` (
  `schoolName` CHAR NOT NULL,
  `opeID` INT NULL,
  `state` CHAR NOT NULL,
  `zipCode` INT NULL,
  `pellGrantSumRec` DOUBLE NULL,
  `pellGrantSumDis` DOUBLE NULL,
  `teachProgSumRec` DOUBLE NULL,
  `teachProgSumDis` DOUBLE NULL,
  `serfvGrantSumRec` DOUBLE NULL,
  `servGrandSumDis` DOUBLE NULL,
  PRIMARY KEY (`schoolName`, `state`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `studentAidDatabase`.`distributedByProgram`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentAidDatabase`.`distributedByProgram` (
  `cipCode` DOUBLE NOT NULL,
  `programTitle` CHAR NULL,
  `recip` INT NULL,
  `distributed` INT NULL,
  PRIMARY KEY (`cipCode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `studentAidDatabase`.`grants`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `studentAidDatabase`.`grants` (
  `grantDisb` INT NOT NULL,
  `grantDist` DOUBLE NOT NULL,
  PRIMARY KEY (`grantDisb`, `grantDist`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

SHOW VARIABLES LIKE 'securefilepriv';


LOAD DATA INFILE 'AY18Disbursements-by-Program.csv' 
INTO TABLE `studentAidDatabase`.`distributedByProgram` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;