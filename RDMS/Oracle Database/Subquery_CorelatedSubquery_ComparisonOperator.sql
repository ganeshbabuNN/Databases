select first_name,last_name,department_id
from employees
where department_id <    --comparison operator
(select min(department_id) 
from departments 
where department_id=employees.employee_id);