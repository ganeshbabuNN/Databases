select first_name,last_name,min_salary salary
from employees ,jobs
where min_salary BETWEEN 1 AND 10000
order by first_name,last_name,salary DESC;