-- SEED
-- 	For populating the database
-- 	with initial data for testing

INSERT INTO `AdUCPEResidences`.`tenants`(`lastname`, `firstname`, `middlename`, `unit_no`, `phone_no`, `email_address`, `provincial_address`)
VALUES
    ('1YFJB', 'dYxaY', '5M7TE', '0101', '1DjSP', 'FXFDx', '4MUmZ'),
    ('2S7q8', 'FMxR2', 'qbybG', '0102', 'LB42J', 'eyvLB', 'gHRHy'),
    ('Jv4b6', 'h4BjC', 'YaWZ6', '5019', 'APgfB', 'xaXkE', 'DG11Q'),
    ('1YFJB', 'dYxaY', '5M7TE', '0101', '1DjSP', 'FXFDx', '4MUmZ'),
    ('2S7q8', 'FMxR2', 'qbybG', '0102', 'LB42J', 'eyvLB', 'gHRHy'),
    ('Jv4b6', 'h4BjC', 'YaWZ6', '5019', 'APgfB', 'xaXkE', 'DG11Q'),
    ('1YFJB', 'dYxaY', '5M7TE', '0101', '1DjSP', 'FXFDx', '4MUmZ'),
    ('2S7q8', 'FMxR2', 'qbybG', '0102', 'LB42J', 'eyvLB', 'gHRHy'),
    ('Jv4b6', 'h4BjC', 'YaWZ6', '5019', 'APgfB', 'xaXkE', 'DG11Q'),
    ('1YFJB', 'dYxaY', '5M7TE', '0101', '1DjSP', 'FXFDx', '4MUmZ'),
    ('2S7q8', 'FMxR2', 'qbybG', '0102', 'LB42J', 'eyvLB', 'gHRHy'),
    ('Jv4b6', 'h4BjC', 'YaWZ6', '5019', 'APgfB', 'xaXkE', 'DG11Q'),
    ('1YFJB', 'dYxaY', '5M7TE', '0101', '1DjSP', 'FXFDx', '4MUmZ'),
    ('2S7q8', 'FMxR2', 'qbybG', '0102', 'LB42J', 'eyvLB', 'gHRHy'),
    ('Jv4b6', 'h4BjC', 'YaWZ6', '5019', 'APgfB', 'xaXkE', 'DG11Q'),
    ('1YFJB', 'dYxaY', '5M7TE', '0101', '1DjSP', 'FXFDx', '4MUmZ'),
    ('2S7q8', 'FMxR2', 'qbybG', '0102', 'LB42J', 'eyvLB', 'gHRHy'),
    ('Jv4b6', 'h4BjC', 'YaWZ6', '5019', 'APgfB', 'xaXkE', 'DG11Q'),
    ('1YFJB', 'dYxaY', '5M7TE', '0101', '1DjSP', 'FXFDx', '4MUmZ'),
    ('2S7q8', 'FMxR2', 'qbybG', '0102', 'LB42J', 'eyvLB', 'gHRHy'),
    ('Jv4b6', 'h4BjC', 'YaWZ6', '5019', 'APgfB', 'xaXkE', 'DG11Q'),
    ('knK7r', 'OUCBg', 'fMFrU', '3901', 'fVZkA', 'YQ3TB', '20sfO');


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
    ('FMxR2', 580, 1, 'LB42J', 1, 22),
    ('FMxR2', 580, 1, 'LB42J', 6, 2),
    ('FMxR2', 580, 1, 'LB42J', 7, 19),
    ('FMxR2', 580, 1, 'LB42J', 2, 3),
    ('h4BjC', 170, 0, 'APgfB', 3, 3);
    
    select * from tenants;
    select * from employees;
    select * from services;