-- C - Create
DROP PROCEDURE IF EXISTS AddTenant;
DELIMITER $$
CREATE PROCEDURE AddTenant(IN lname VARCHAR(100), IN fname VARCHAR(100), IN midname VARCHAR(100), IN unitno VARCHAR(45), IN phoneno VARCHAR(45), IN email VARCHAR(100), IN provincialadd VARCHAR(100))
    BEGIN
		INSERT INTO `AdUCPEResidences`.`tenants` (`lastname`, `firstname`, `middlename`, `unit_no`, `phone_no`, `email_address`, `provincial_address`)
			VALUES(lname,fname,midname,unitno,phoneno,email,provincialadd);
    END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS AddPet;
DELIMITER $$
CREATE PROCEDURE AddPet(IN pettype VARCHAR(45), IN breed VARCHAR(45), IN tenant_id INT)
    BEGIN
		INSERT INTO `pets` (`pet_type`, `breed`,`tenants_id`)
			VALUES	(pettype, breed, tenant_id);
    END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS AddVehicle;
DELIMITER $$
CREATE PROCEDURE AddVehicle(IN model VARCHAR(45), IN make VARCHAR(45), IN plate VARCHAR(45), IN seats INT, IN ownerid INT)
    BEGIN
		INSERT INTO vehicles (`car_model`, `manufacturer`, `plate_number`, `car_seats`, `tenants_id` )
			VALUES (model, make, plate, seats, ownerid);
    END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS AddServiceRequest; -- Charge will be set by program, Employee will be set by 'HR head', Null means not yet assigned
DELIMITER $$
CREATE PROCEDURE AddServiceRequest(IN servicetype VARCHAR(45), IN ownerid INT)
    BEGIN
		INSERT INTO services(`service_type`, `tenants_id`)
			VALUES (servicetype, ownerid);
    END$$
DELIMITER ;

-- R - Read
DROP PROCEDURE IF EXISTS SeeAllTables;
DELIMITER $$
CREATE PROCEDURE SeeAllTables()
	BEGIN
		SELECT * FROM `AdUCPEResidences`.`tenants`;
		SELECT * FROM `AdUCPEResidences`.`pets`;
		SELECT * FROM `AdUCPEResidences`.`vehicles`;
		SELECT * FROM `AdUCPEResidences`.`employees`;
		SELECT * FROM `AdUCPEResidences`.`services`;
    END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS GetTenant;
DELIMITER $$
CREATE PROCEDURE GetTenant(IN tenantid INT)
    BEGIN
    IF (tenantid > 0)
    THEN
		(SELECT * FROM tenants where tenants.id = tenantid);
    ELSE	
		(SELECT * FROM tenants);
	END IF;
    END$$
DELIMITER ;
-- CALL GetTenant(0); -- To return all tenants

DROP PROCEDURE IF EXISTS GetPets;
DELIMITER $$
CREATE PROCEDURE GetPets(IN pet_id INT)
    BEGIN
		SELECT * FROM `AdUCPEResidences`.`pets` WHERE `AdUCPEResidences`.`pets`.id = pet_id;
    END$$
DELIMITER ;
-- CALL GetPets(45);


/* trial to call procedures
CALL AddTenant('laserna', 'Justine', 'I', '0201', '09053993434', 'hah@paks.bubu', 'kabiteh');
CALL AddPet('Dog', 'Terrier', 39);
CALL AddVehicle('Auroa', 'Mezde','NGO-150', 16, 6);
CALL AddServiceRequest('Housekipping', 49);
CALL SeeAllTables();
*/