select department_id,sum(salary)
from employees
group by department_id
HAVING sum(salary) >10000;

--another
select e.department_id,sum(e.salary)
from employees e,job_history j
where e.job_id=j.job_id(+)
and j.start_date < '01-jan-14'
group by e.department_id
having sum(e.salary) > 10000;