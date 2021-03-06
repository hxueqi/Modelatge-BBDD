-- MySQL Script generated by MySQL Workbench
-- Tue Feb 25 19:21:21 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`avion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`avion` (
  `avion_id` INT NOT NULL AUTO_INCREMENT,
  `capacidad_col` INT NOT NULL,
  `modelo_col` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`avion_id`),
  UNIQUE INDEX `avion_id_UNIQUE` (`avion_id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`asiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`asiento` (
  `asiento_id` INT NOT NULL,
  `nombre_col` VARCHAR(16) NULL,
  PRIMARY KEY (`asiento_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`avion_tiene_asiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`avion_tiene_asiento` (
  `avion_avion_id` INT NOT NULL,
  `asiento_asiento_id` INT NOT NULL,
  PRIMARY KEY (`avion_avion_id`, `asiento_asiento_id`),
  INDEX `fk_avion_tiene_asiento_avion_idx` (`avion_avion_id` ASC),
  INDEX `fk_avion_tiene_asiento_asiento1_idx` (`asiento_asiento_id` ASC),
  CONSTRAINT `fk_avion_tiene_asiento_avion`
    FOREIGN KEY (`avion_avion_id`)
    REFERENCES `mydb`.`avion` (`avion_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_avion_tiene_asiento_asiento1`
    FOREIGN KEY (`asiento_asiento_id`)
    REFERENCES `mydb`.`asiento` (`asiento_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
