select distinct first_name,last_name
from employees 
where job_id IN 
(select job_id from jobs 
group by job_id 
having sum(min_salary) <    ---along with group by clause
(select max(max_salary) from jobs)); --innermost query