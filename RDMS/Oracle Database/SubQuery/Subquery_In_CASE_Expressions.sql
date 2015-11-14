select first_name,
       last_name,
       department_id,
       (CASE 
       WHEN department_id IN    
        (select department_id from departments) THEN 'Available'
       ELSE
       'Not Available'
       END)"Department status"        
from employees