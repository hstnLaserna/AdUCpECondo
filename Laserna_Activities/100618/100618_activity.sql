show databases;
use laserna;

show tables;
show columns from employees;

SELECT id, first_name, age
FROM employees
order by age
limit 10, 10;

SELECT id, last_name
FROM employees
where first_name like 'h%s'
order by level
limit 10;

SELECT id, last_name, age, level
FROM employees
where age between 59 and 78
limit 10;

SELECT id, first_name, age, level, last_name
FROM employees
where salary >78 and last_name like '%k'
limit 5;

SELECT id, first_name
FROM employees
where first_name like 'h%' and level < 78
order by level asc, salary desc
limit 5;