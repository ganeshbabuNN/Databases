-- using || operator
select 'Customer Name ' || first_name ||' ' || last_name || ' belongs to department '||
department_name || ' of salary ' || salary || ' as join on ' || hire_date "employee information"
from employees,departments
where employees.department_id=departments.department_id;

--using concat(arg1,arg2...) operator
SELECT concat('Customer Name ',
        concat(first_name ,
        concat(' ',
        concat(last_name, 
        concat(' belongs to department ',
        concat(department_name,
        concat(' of salary ',
        concat(salary,
        concat(' as join on ',
        hire_date))))))))) "employee information"
FROM employees,
  departments
WHERE employees.department_id=departments.department_id;


