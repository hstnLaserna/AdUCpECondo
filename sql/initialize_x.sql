-- MySQL Workbench Synchronization
-- Generated: 2018-11-23 02:50
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Hustino

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `AdUCPEResidences` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `AdUCPEResidences`.`tenants` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `lastname` VARCHAR(100) NOT NULL,
  `firstname` VARCHAR(100) NOT NULL,
  `middlename` VARCHAR(100) NULL DEFAULT NULL,
  `unit_no` VARCHAR(45) NOT NULL,
  `phone_no` VARCHAR(15) NULL DEFAULT NULL,
  `residence_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `AdUCPEResidences`.`pets` (
  `id` INT(11) NOT NULL,
  `pet_type` VARCHAR(45) NOT NULL,
  `breed` VARCHAR(45) NOT NULL,
  `tenants_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`, `tenants_id`),
  INDEX `fk_pets_tenants1_idx` (`tenants_id` ASC) VISIBLE,
  CONSTRAINT `fk_pets_tenants1`
    FOREIGN KEY (`tenants_id`)
    REFERENCES `AdUCPEResidences`.`tenants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `AdUCPEResidences`.`vehicles` (
  `id` INT(11) NOT NULL,
  `vehicle_type` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `plate_number` VARCHAR(45) NOT NULL,
  `tenants_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_vehicles_tenants1_idx` (`tenants_id` ASC) VISIBLE,
  CONSTRAINT `fk_vehicles_tenants1`
    FOREIGN KEY (`tenants_id`)
    REFERENCES `AdUCPEResidences`.`tenants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `AdUCPEResidences`.`employees` (
  `id` INT(11) NOT NULL,
  `lastname` VARCHAR(100) NOT NULL,
  `firstname` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `AdUCPEResidences`.`services` (
  `id` INT(11) NOT NULL,
  `service_type` VARCHAR(45) NOT NULL,
  `service_charge` DECIMAL(10,2) NOT NULL,
  `isAccomplished` TINYINT(4) NOT NULL,
  `remarks` VARCHAR(100) NULL DEFAULT NULL,
  `tenants_id` INT(11) NOT NULL,
  `employees_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`, `tenants_id`),
  INDEX `fk_services_tenants_idx` (`tenants_id` ASC) VISIBLE,
  INDEX `fk_services_employees1_idx` (`employees_id` ASC) VISIBLE,
  CONSTRAINT `fk_services_tenants`
    FOREIGN KEY (`tenants_id`)
    REFERENCES `AdUCPEResidences`.`tenants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_services_employees1`
    FOREIGN KEY (`employees_id`)
    REFERENCES `AdUCPEResidences`.`employees` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
