select first_name,last_name,department_name,sum(min_salary)
from employees ,departments,jobs 		--diff table name
where employees.department_id=departments.department_id 	--theta style
and employees.job_id=jobs.job_id
group by first_name,last_name,department_name; 	--grouping and no alais used