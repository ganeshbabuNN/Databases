select first_name,last_name,department_name
from employees e right join departments d  ----right join
on e.department_id=d.department_id;