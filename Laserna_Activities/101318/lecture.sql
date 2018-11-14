-- joining tables
-- Inner join

SELECT a.name, b.title
FROM
	writers as a
    INNER JOIN
    books as b
    on a.id = 6;
    
/* -- on SELF JOIN [ref. table = employees]
	id	name	supervisor_id
    1	Mark	NULL
    2	Dexter	(1)
*/
-- code for self join above
SELECT e.name, s.name
FROM
	employees as e
    LEFT JOIN
    employees as s
    on e.supervisor_id = s.id;
    
/* -- on AGGREGATE QUERY [ref. table = books]
	ID	TITLE	GENRE	PAGE
    1	HP1		SF		200
    2	HP2		SF		150
    3	FGM		MEME	10
    4	PEPEH	MEME	30
    5	WOJAK	MEME	50

/* -- AGGREGATE FUNCTIONS
	SUM
	AVG
    MAX
    MIN
    COUNT
*/

SELECT genre, COUNT(id)
FROM books
GROUP BY genre;
/* use database laserna (from generated 100618 activity)*/

use laserna;
show tables;
show columns from employees;


SELECT *
FROM employees;

SELECT first_name, age
FROM employees
GROUP BY age
HAVING count(age)=2;

SELECT *
FROM employees
where age = 72;
/*THEREFORE HAVING COUNT(age)=2 means ROWS is grouped by age, counts how many rows the group has, and prints colummn */



/*-- MYSQL SUBQueries [ref table: number]
	NUMBER
    Number
    1
    2
    3
    10
    20
    4
    5
    
*/
SELECT Number
FROM number
WHERE number IN (SELECT AVG(NUMBER)
				FROM NUMBER);