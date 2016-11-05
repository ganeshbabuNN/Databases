
--special formats using DDSP
select employee_id,first_name,
       hire_date,
       to_char(hire_date,'DDSP') "Hire Date"
from employees
order by to_char(hire_date,'MM');