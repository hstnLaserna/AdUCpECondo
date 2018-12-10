DROP PROCEDURE IF EXISTS DeleteTenant;
DELIMITER $$
CREATE PROCEDURE DeleteTenant(IN tenant_id INT)
    BEGIN
		DELETE FROM `AdUCPEResidences`.`tenants` WHERE `AdUCPEResidences`.`tenants`.id = tenant_id;
    END$$
DELIMITER ;


DROP PROCEDURE IF EXISTS DeletePet;
DELIMITER $$
CREATE PROCEDURE DeletePet(IN pet_id INT)
    BEGIN
		DELETE FROM `AdUCPEResidences`.`pets` WHERE `AdUCPEResidences`.`pets`.id = pet_id;
    END$$
DELIMITER ;


DROP PROCEDURE IF EXISTS DeleteVehicle;
DELIMITER $$
CREATE PROCEDURE DeleteVehicle(IN vehicle_id INT)
    BEGIN
		DELETE FROM `AdUCPEResidences`.`vehicles` WHERE `AdUCPEResidences`.`vehicles`.id = vehicle_id;
    END$$
DELIMITER ;


DROP PROCEDURE IF EXISTS DeleteService;
DELIMITER $$
CREATE PROCEDURE DeleteService(IN service_id INT)
    BEGIN
		DELETE FROM `AdUCPEResidences`.`services` WHERE `AdUCPEResidences`.`services`.id = service_id;
    END$$
DELIMITER ;