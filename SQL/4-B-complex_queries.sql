-- [1] Get tenants with service request created before params --

DROP PROCEDURE IF EXISTS GetRequestsBefore;
DELIMITER $$
CREATE PROCEDURE GetRequestsBefore(IN dateref TIMESTAMP)
    BEGIN
		SELECT services.tenants_id
		FROM services
		WHERE date_requested < dateref;
    END$$
DELIMITER ;
CALL GetRequestsBefore('2018-05-27');
CALL GetRequestsBefore('2018-10-27');
CALL GetRequestsBefore('2018-01-27');


-- [2] Get tenants and number of concerns (number of unsolved service request + approved vehicles + approved pet) --
DROP PROCEDURE IF EXISTS GetTenantsConcerns;
DELIMITER $$
CREATE PROCEDURE GetTenantsConcerns()
    BEGIN
		SELECT * , (SELECT COUNT(*) FROM AdUCPEResidences.services AS S WHERE S.tenants_id=T.id AND S.isAccomplished='1') + (SELECT COUNT(*) FROM AdUCPEResidences.vehicles AS V 
        WHERE V.tenants_id=T.id AND V.is_approved='1') + (SELECT COUNT(*) FROM AdUCPEResidences.pets AS P WHERE P.tenants_id=T.id AND P.is_approved='1') AS no_of_concerns
		FROM AdUCPEResidences.tenants AS T;
    END$$
DELIMITER ;
CALL GetTenantsConcerns();


-- [3] Get tenants with pets more than params --
DROP PROCEDURE IF EXISTS GetTenantsWithPetsMoreThan;
DELIMITER $$
CREATE PROCEDURE GetTenantsWithPetsMoreThan(IN petcount INT)
    BEGIN
		SELECT p.tenants_id, f.pets_owned
		FROM pets p
        LEFT JOIN (SELECT tenants_id, count(*) `pets_owned` FROM pets GROUP BY tenants_id) f
        ON p.tenants_id = f.tenants_id
        WHERE f.pets_owned > petcount
        GROUP BY p.tenants_id;
    END$$
DELIMITER ;
CALL GetTenantsWithPetsMoreThan(3);


-- [4] Get tenants with vehicles that can contain seats greater than params --
DROP PROCEDURE IF EXISTS GetCarWithSeats;
DELIMITER $$
CREATE PROCEDURE GetCarWithSeats(IN carseat INT)
    BEGIN
		SELECT *, id
		FROM vehicles
		WHERE vehicles.car_seats > carseat;    
    END$$
DELIMITER ;
CALL GetCarWithSeats('15');


-- [5] Get tenant whose number of solved request is greater than the average solved request per tenant --
DROP PROCEDURE IF EXISTS TenantAverage;
DELIMITER $$
CREATE PROCEDURE TenantAverage()
    BEGIN
    SELECT * , (SELECT COUNT(*) FROM AdUCPEResidences.services AS S WHERE S.tenants_id=T.id AND S.isAccomplished='1') solved_request 
    FROM AdUCPEResidences.tenants AS T
	WHERE (SELECT COUNT(*) FROM AdUCPEResidences.services AS S WHERE S.tenants_id=T.id AND S.isAccomplished='1') > (SELECT AVG(tblave.cnt) AS ave 
    FROM (SELECT S.tenants_id, COUNT(id) cnt FROM AdUCPEResidences.services AS S WHERE S.isAccomplished='1' 
    GROUP BY S.tenants_id) AS tblave);
    END $$
DELIMITER ;
CALL TenantAverage();
