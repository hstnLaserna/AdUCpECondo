-- DROP DATABASE IF EXISTS `AdUCPEResidences`;
-- `` '';
DROP DATABASE IF EXISTS `AdUCPEResidences`;
CREATE DATABASE IF NOT EXISTS `AdUCPEResidences`;
USE `AdUCPEResidences`;


CREATE TABLE IF NOT EXISTS `AdUCPEResidences`.`tenants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `lastname` VARCHAR(100) NOT NULL,
  `firstname` VARCHAR(100) NOT NULL,
  `middlename` VARCHAR(100) NULL,
  `unit_no` VARCHAR(45) NOT NULL, /* varchar to be data-safe  */
  `phone_no` VARCHAR(45) NULL, /* varchar to be data-safe  */
  `email_address` VARCHAR(100) NULL,
  `provincial_address` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `AdUCPEResidences`.`pets` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pet_type` VARCHAR(45) NOT NULL,
  `breed` VARCHAR(45) NOT NULL,
  `tenants_id` INT NOT NULL,
  PRIMARY KEY (`id`, `tenants_id`),
  INDEX `fk_pets_tenants1_idx` (`tenants_id` ASC) VISIBLE,
  CONSTRAINT `fk_pets_tenants1`
    FOREIGN KEY (`tenants_id`)
    REFERENCES `AdUCPEResidences`.`tenants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `AdUCPEResidences`.`vehicles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vehicle_type` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `plate_number` VARCHAR(45) NOT NULL,
  `tenants_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_vehicles_tenants1_idx` (`tenants_id` ASC) VISIBLE,
  CONSTRAINT `fk_vehicles_tenants1`
    FOREIGN KEY (`tenants_id`)
    REFERENCES `AdUCPEResidences`.`tenants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `AdUCPEResidences`.`employees` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  `middlename` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `AdUCPEResidences`.`services` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `service_type` VARCHAR(45) NOT NULL,
  `service_charge` DECIMAL(10,2) NOT NULL,
  `isAccomplished` TINYINT NOT NULL,
  `remarks` VARCHAR(100) NULL,
  `tenants_id` INT NOT NULL,
  `employees_id` INT NOT NULL,
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
ENGINE = InnoDB;