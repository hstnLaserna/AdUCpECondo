-- Get tenants with service request created before params

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

/*
-- Get tenants and number of concerns (number of unsolved service request + approved vehicles + approved pet)

DROP PROCEDURE IF EXISTS GetTenantsConcerns;
DELIMITER $$
CREATE PROCEDURE GetTenantsConcerns()
    BEGIN
		SELECT t.id
		FROM tenants t
		WHERE services. date_requested < dateref;
    END$$
DELIMITER ;

SELECT t.id, count(*) as unfinishedReqs
from tenants t
inner join services s on t.id = s.tenants_id 
where 
group by t.id;


select *
from services
where tenants_id = 5;
SELECT COUNT(*) AS unfinishedReqs FROM services WHERE isAccomplished=0;

SELECT b.title
FROM books b
WHERE pages >
(
	SELECT AVG(pages)
    FROM books b2
    WHERE b.author_id = b2.author_id
)*/

-- Get tenants with service request created before params
/*
DROP PROCEDURE IF EXISTS GetTenantsWithPetsMoreThan;
DELIMITER $$
CREATE PROCEDURE GetTenantsWithPetsMoreThan(IN petcount INT)
    BEGIN
		SELECT tenants_id
		FROM pets
		WHERE petcount>(SELECT count(*) FROM pets WHERE petcount > count(*)  GROUP BY tenants_id);
    END$$
DELIMITER ;


SELECT tenants_id
		FROM pets
		WHERE 3>(SELECT count(*) FROM pets WHERE 3 > count(*)  GROUP BY tenants_id);

CALL GetTenantsWithPetsMoreThan(3);
SELECT count(*) `Tenant_Pets` FROM pets GROUP BY tenants_id;
SELECT * from pets;

SELECT tenants_id
		FROM pets
		WHERE 3 > counts(SELECT count(*) FROM pets GROUP BY tenants_id);
*/


-- [4] Get tenants with service request created before params

DROP PROCEDURE IF EXISTS GetCarWithSeats;
DELIMITER $$
CREATE PROCEDURE GetCarWithSeats(IN carseat INT)
    BEGIN
		SELECT *, id
		FROM vehicles
		WHERE carseat< vehicles.car_seats;
    END$$
DELIMITER ;
CALL GetCarWithSeats('10');


-- [5] Get tenant whose number of solved request is greater than the average solved request per tenant

DROP PROCEDURE IF EXISTS TenantAverage;
DELIMITER $$
CREATE PROCEDURE TenantAverage()
    BEGIN
    END$$
DELIMITER ;
CALL GetCarWithSeats('10');

select * from tenants;
select * from services;