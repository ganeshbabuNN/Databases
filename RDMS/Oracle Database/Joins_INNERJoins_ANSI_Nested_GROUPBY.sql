select a.first_name,a.last_name,b.department_name,SUM(min_salary)
from employees a 
inner join departments b on a.department_id=b.department_id
inner join jobs c on a.job_id=c.job_id    --nested inner joins
Group by first_name,last_name,department_name;   --- grouping and no alais used