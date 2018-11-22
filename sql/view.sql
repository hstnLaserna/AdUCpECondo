-- CREATE VIEWS

DROP VIEW IF EXISTS viewTenants;
CREATE VIEW viewTenants AS
	SELECT *
	FROM `AdUCPEResidences`.`tenants`;
SELECT * FROM viewTenants;

DROP VIEW IF EXISTS viewServices;
CREATE VIEW viewServices AS
	SELECT *
	FROM `AdUCPEResidences`.`services`;
SELECT * FROM viewServices;

DROP VIEW IF EXISTS viewEmployees;
CREATE VIEW viewEmployees AS
	SELECT *
	FROM `AdUCPEResidences`.`employees`;
SELECT * FROM viewEmployees;