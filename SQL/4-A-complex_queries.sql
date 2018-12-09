-- total number of cars per tenant --
SELECT `AdUCPEResidences`.`tenants`.`id`, `AdUCPEResidences`.`tenants`.`lastname`, COUNT(*) AS 'total number of cars'
FROM `AdUCPEResidences`.`tenants`, `AdUCPEResidences`.`vehicles`
WHERE `AdUCPEResidences`.`tenants`.`id` = `AdUCPEResidences`.`vehicles`.`tenants_id`
GROUP BY `AdUCPEResidences`.`tenants`.`lastname`;

-- total number of pets per tenant --
SELECT `AdUCPEResidences`.`tenants`.`id`, `AdUCPEResidences`.`tenants`.`lastname`, COUNT(*) AS 'total number of pets'
FROM `AdUCPEResidences`.`tenants`, `AdUCPEResidences`.`pets`
WHERE `AdUCPEResidences`.`tenants`.`id` = `AdUCPEResidences`.`pets`.`tenants_id`
GROUP BY `AdUCPEResidences`.`tenants`.`lastname`;

-- total service charges per tenant --
SELECT `t`.id, `t`.`lastname`, sum(`s`.`service_charge`) as 'Total service charges availed'
FROM `AdUCPEResidences`.`services` s 
INNER JOIN `AdUCPEResidences`.`tenants` t 
ON `s`.`tenants_id` = `t`.`id`
GROUP BY `t`.`id`,`t`.`lastname`;




SELECT T.id, T.lastname, T.firstname, S.service_type 
FROM `AdUCPEResidences`.`tenants` T 
INNER JOIN `AdUCPEResidences`.`services` S ON s.tenants_id=T.id
ORDER BY T.lastname, T.firstname, S.service_type;


select *, concat(datediff(CURDATE(), move_in_date),' days') as stay 
from `AdUCPEResidences`.`tenants`;

