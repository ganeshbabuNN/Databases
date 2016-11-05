--special formats using TH
select employee_id,first_name,
       to_char(hire_date,'DDth-MON-YY') "Hire Date"
from employees
order by to_char(hire_date,'MM');