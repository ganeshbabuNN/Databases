-- in Normal query, we cannot add employee_id has need to be added in GROUP BY, --where in analyatical functions its independent, not dependent by GROUP BY, it will be row specific

--normal way of aggregations
select department_id,
       --employee_id,  --cannot add 
       count(first_name) "count_of_emp"
from employees
group by department_id;

--Analytical functions
select distinct department_id,
       employee_id, --can add 
       count(first_name)over(partition by department_id ) "count_of_emp"
from employees;