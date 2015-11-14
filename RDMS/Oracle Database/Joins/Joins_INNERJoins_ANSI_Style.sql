--also called as Equi Joins

select a.first_name,a.last_name,b.department_name
from employees a inner join departments b --Inner JOin
on a.department_id=b.department_id;