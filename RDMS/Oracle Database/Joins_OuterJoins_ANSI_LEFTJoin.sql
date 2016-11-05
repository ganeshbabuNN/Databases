select first_name,last_name,department_name
from employees e left join departments d  ----left join
on e.department_id=d.department_id;