select first_name,last_name,department_id
from employees   --outerquery
where department_id IN
(select department_id  --inner query
from departments);