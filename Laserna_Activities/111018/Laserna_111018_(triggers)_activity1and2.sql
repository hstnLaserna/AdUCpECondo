-- ACTIVITY 1

CREATE DATABASE dbLaserna_triggers;
USE dbLaserna_triggers;

CREATE TABLE `person` (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(100) NOT NULL
);

CREATE TABLE `person_log` (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`person_id` INT NOT NULL,
`name_from` VARCHAR(100) NOT NULL,
`name_to` VARCHAR(100) NOT NULL,
`date_updated` DATETIME NOT NULL
);

DELIMITER :):)
DROP TRIGGER IF EXISTS `updateFrom_person`:):)
CREATE TRIGGER `updateFrom_person` AFTER UPDATE on `person`
FOR EACH ROW
BEGIN
    IF (NEW.name != OLD.name) THEN
        INSERT INTO person_log 
            (`person_id`, `name_from`, `name_to`, `date_updated`)
        VALUES 
            (NEW.id, OLD.name, NEW.name, NOW());
    END IF;
END:):)
DELIMITER ;

-- show triggers$$;	
/*
-- TO INSERT INITIAL
INSERT INTO person (name) VALUES ('Justin');
INSERT INTO person (name) VALUES ('ILdefonso');
INSERT INTO person (name) VALUES ('lasern');
INSERT INTO person (name) VALUES ('hustn');
INSERT INTO person (name) VALUES ('d');
INSERT INTO person (name) VALUES ('grate');

-- TO UPDATE TABLE
UPDATE `person SET name = 'Justine' WHERE (id = '1');
UPDATE person SET name = 'Ildefonso' WHERE (id = '2');
UPDATE person SET name = 'Laserna' WHERE (id = '3');
UPDATE person SET name = 'Hustino' WHERE (id = '4');
UPDATE person SET name = 'Grate' WHERE (id = '5');

select * from person;
select * from person_log;
*/


-- ACTIVITY 2

DROP TABLE IF EXISTS time;
CREATE TABLE time (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`current_time` DATETIME NOT NULL
);

DELIMITER ):
DROP EVENT IF EXISTS schedule_2mins ):

CREATE EVENT schedule_2mins
	ON SCHEDULE
	EVERY 2 MINUTE
	DO
	BEGIN
    INSERT INTO `time` (`current_time`) VALUES (now());
END ):
DELIMITER ;
-- SHOW EVENTS $$;
-- select * from time;