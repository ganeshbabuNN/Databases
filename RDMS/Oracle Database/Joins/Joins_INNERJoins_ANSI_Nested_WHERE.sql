select a.first_name,a.last_name,b.department_name,c.min_salary Salary
from employees a 
inner join departments b on a.department_id=b.department_id
inner join jobs c on a.job_id=c.job_id    --nested inner joins
where c.min_salary >10000;   --- condition