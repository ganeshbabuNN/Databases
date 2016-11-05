select department_id,department_name 
from departments where NOT EXISTS  --not exists
(select department_id from employees 
where employees.department_id=departments.department_id);