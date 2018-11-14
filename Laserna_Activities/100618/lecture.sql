-- lecture

select *
from <table>
where * not between|between;
-- <value2> and <value2>

select *
from  <table>
where <column> like "z%";
-- <value2> and <value2>


-- slicing the result
show databases;
use sys;
select variable as var
from sys_config;

select variable  as var
from sys_config
where var = 'statement_truncate_len';

select variable  as var
from sys_config
limit 3;
select variable  as var
from sys_config
limit 3, 2;