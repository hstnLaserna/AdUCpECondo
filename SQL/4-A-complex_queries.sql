-- total number of vehicles per tenant --
DELIMITER $$
CREATE PROCEDURE GetTotalNumberOfVehicles()
    BEGIN
		SELECT `AdUCPEResidences`.`tenants`.`id`, `AdUCPEResidences`.`tenants`.`lastname`, COUNT(*) AS 'total number of cars'
		FROM `AdUCPEResidences`.`tenants`, `AdUCPEResidences`.`vehicles`
		WHERE `AdUCPEResidences`.`tenants`.`id` = `AdUCPEResidences`.`vehicles`.`tenants_id`
		GROUP BY `AdUCPEResidences`.`tenants`.`lastname`;
    END$$
DELIMITER ;
CALL GetTotalNumberOfVehicles();


-- total number of pets per tenant --
DELIMITER $$
CREATE PROCEDURE GetTotalNumberOfPets()
    BEGIN
SELECT `AdUCPEResidences`.`tenants`.`id`, `AdUCPEResidences`.`tenants`.`lastname`, COUNT(*) AS 'total number of pets'
FROM `AdUCPEResidences`.`tenants`, `AdUCPEResidences`.`pets`
WHERE `AdUCPEResidences`.`tenants`.`id` = `AdUCPEResidences`.`pets`.`tenants_id`
GROUP BY `AdUCPEResidences`.`tenants`.`lastname`;
    END$$
DELIMITER ;
CALL GetTotalNumberOfPets();

-- total service charge per tenant --
DELIMITER $$
CREATE PROCEDURE GetTotalServiceCharge()
    BEGIN
SELECT `t`.id, `t`.`lastname`, sum(`s`.`service_charge`) as 'Total service charges availed'
FROM `AdUCPEResidences`.`services` s 
INNER JOIN `AdUCPEResidences`.`tenants` t 
ON `s`.`tenants_id` = `t`.`id`
GROUP BY `t`.`id`,`t`.`lastname`;
    END$$
DELIMITER ;
CALL GetTotalServiceCharge();

-- total service fee per tenant --
DELIMITER $$
CREATE PROCEDURE GetTotalServiceFee()
    BEGIN
SELECT T.id, T.lastname, T.firstname, S.service_type 
FROM `AdUCPEResidences`.`tenants` T 
INNER JOIN `AdUCPEResidences`.`services` S ON s.tenants_id=T.id
ORDER BY T.lastname, T.firstname, S.service_type;
    END$$
DELIMITER ;
CALL GetTotalServiceFee();

-- total duration of stay per tenant --
DELIMITER $$
CREATE PROCEDURE GetTotalDurationOfStay()
    BEGIN
SELECT *, concat(datediff(CURDATE(), move_in_date),' days') as stay 
FROM `AdUCPEResidences`.`tenants`;
    END$$
DELIMITER ;
CALL GetTotalServiceFee();





