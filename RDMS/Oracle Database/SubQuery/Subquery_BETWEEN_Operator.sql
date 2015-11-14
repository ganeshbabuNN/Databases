select first_name,last_name,department_id
from employees 
where 
(department_id BETWEEN    
(select min(department_id) from departments)  --result 1
 AND
(select avg(department_id) from departments) --result 2
);