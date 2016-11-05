--getting the listing of the employees where single department name
select department_id,first_name,last_name
from employees 
where department_id =   -- this will return only one value
(select department_id from departments 
where department_name='Administration');