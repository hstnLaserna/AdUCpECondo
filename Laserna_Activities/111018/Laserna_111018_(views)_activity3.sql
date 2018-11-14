/* ACTIVITY 3
	Creating Views from tables
*/

CREATE DATABASE dbLaserna_views;
USE dbLaserna_views;

DROP TABLE if exists `sales`;
CREATE TABLE `sales` (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`unit_price` DECIMAL(20,2) NOT NULL,
`quantity` INT NOT NULL
);

-- POPULATE WITH SAMPLE VALUES
INSERT INTO sales (unit_price, quantity) VALUES (30.5,3);
INSERT INTO sales (unit_price, quantity) VALUES (120,2);
INSERT INTO sales (unit_price, quantity) VALUES (90.99,5);
INSERT INTO sales (unit_price, quantity) VALUES (350,4);
INSERT INTO sales (unit_price, quantity) VALUES (10,20);
SELECT * FROM sales;

-- CREATE VIEW FOR (a)
DROP VIEW IF EXISTS view_act3A;
CREATE VIEW view_act3A AS
	SELECT *, (quantity * unit_price) as totalPrice
	FROM sales;
SELECT * FROM view_act3A;

-- CREATE VIEW FOR (b) 
DROP VIEW IF EXISTS view_act3B;
CREATE VIEW view_act3B AS
	SELECT id, totalPrice
	FROM view_act3A;
SELECT * FROM view_act3B;

/* OR
SELECT id,totalPrice FROM view_act3A;
*/