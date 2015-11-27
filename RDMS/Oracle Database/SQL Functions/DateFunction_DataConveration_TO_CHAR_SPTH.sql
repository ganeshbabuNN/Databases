--special formats using SPTH
select employee_id,first_name,
       hire_date,
       to_char(hire_date,'DDSPTH') "Hire Date"
from employees
order by to_char(hire_date,'MM');