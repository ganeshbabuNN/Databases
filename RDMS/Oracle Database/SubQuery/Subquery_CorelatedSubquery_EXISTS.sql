
select distinct first_name,last_name
from employees a where  EXISTS   ---exists operator
(select department_id from departments b 
where b.department_id=a.department_id)