-- SEED
-- 	For populating the database
-- 	with initial data for testing
use aducperesidences;
show columns from Employees;
INSERT INTO `AdUCPEResidences`.`tenants`(`lastname`, `firstname`, `middlename`, `unit_no`, `phone_no`)
VALUES
    ('Laserna', 'Hustino', 'ChuckNorris', '1111', '09360452366'),
    ('Laserna', 'Hustino', 'ChuckNorris', '1111', '09360452366'),
    ('Laserna', 'Hustino', 'ChuckNorris', '1111', '09360452366')
    ;


INSERT INTO `AdUCPEResidences`.`Employees`(`firstname`, `lastname`)
VALUES
    ('1YFJB', 'dYxaY'),
    ('5M7TE', 'VIbBU'),
    ('1DjSP', 'FXFDx'),
    ('jBBRo', '4MUmZ'),
    ('t3LHn', 'R4X6g'),
    ('obYZj', 'l71D7'),
    ('4a9Dq', '744BR'),
    ('BbNXZ', '5Llaz'),
    ('TWGSu', 'Y7qYm'),
    ('4kFsd', 'lXye3'),
    ('Jv4b6', 'h4BjC'),
    ('2S7q8', 'FMxR2'),
    ('qbybG', 'QemDW'),
    ('LB42J', 'eyvLB'),
    ('gHRHy', 'YaWZ6'),
    ('yF4Hd', 'LFlv7'),
    ('xaXkE', 'DG11Q'),
    ('knK7r', 'OUCBg'),
    ('fMFrU', 'lUolY'),
    ('fVZkA', 'YQ3TB'),
    ('20sfO', 'Lvl2M'),
    ('t5MKc', 'XIwDM'),
    ('WuP5p', 'iGyjJ');
INSERT INTO `AdUCPEResidences`.`services` (`service_type`, `service_charge`,`isAccomplished`,`remarks`, tenants_id, employees_id)
VALUES
    ('Laundry', 950, 1, 'dry clean only', 8, 3),
    ('Limousine', 12500, 0, 'with booze pls', 18, 2),
    ('Housekeeping', 450, 0, 'Change linens', 4, 3),
    ('Food', 1380, 1, 'Deliver to my unit', 10, 3),
    ('Massage', 2000, 1, 'extra service', 28, 3);
    
    select * from tenants;
    select * from employees;
    select * from services;