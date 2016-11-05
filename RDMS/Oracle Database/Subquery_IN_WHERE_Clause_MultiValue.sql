--getting the listing of the employees where multiple department name
select department_id,first_name,last_name
from employees 
where department_id IN 
(select department_id from departments --- this will multiple values
where department_name='Administration'
or department_name='Marketing');