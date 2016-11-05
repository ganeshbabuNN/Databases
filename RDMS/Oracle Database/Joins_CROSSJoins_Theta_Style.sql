--prior to 9i do not support an explicit cross join

select first_name,last_name,department_name
from employees ,departments;

--Employeess has 121 record
--deparment has 27 records