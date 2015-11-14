select department_id,first_name,last_name,employee_id
from employees                     --outer query
where employee_id = 
(select max(employee_id)  ---aggregations
from job_history);  