--be default is ASC
select employee_id,first_name,last_name,salary
from employees
order by first_name;
--explicit ASC
select employee_id,first_name,last_name,salary
from employees
order by first_name ASC;
--explicit DEscending
select employee_id,first_name,last_name,salary
from employees
order by first_name DESC;
--by column positions
select employee_id,first_name,last_name,salary
from employees
order by 1 ;