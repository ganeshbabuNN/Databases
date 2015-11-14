select first_name,last_name,department_name
from employees ,departments
where employees.department_id=departments.department_id;