select first_name,
       last_name,
       job_id
from employees a
order by (select min_salary from jobs b where a.job_id=b.job_id);

select first_name,
       last_name,
       job_id
from employees a
order by (select min_salary from jobs b where a.job_id=b.job_id) DESC;