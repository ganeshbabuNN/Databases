select department_id,first_name,last_name
from employees                     --outer query
where department_id IN 
(select department_id from departments    --nested 1
where location_id IN 
(select location_id                      --nestest 2
from locations where country_id IN ('UK'))
);