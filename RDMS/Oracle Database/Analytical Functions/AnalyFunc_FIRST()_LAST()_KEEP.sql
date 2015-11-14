select department_id,
       employee_id,
       salary,
       DENSE_RANK() OVER(order by employee_id) "DENSE",
       MIN(salary) KEEP (DENSE_RANK FIRST order by employee_id) over(partition by department_id) "LOWSAL",
       MAX(salary) KEEP (DENSE_RANK LAST order by employee_id) over(partition by department_id) "MAXSAL"
from employees
order by employee_id,department_id;

/*
-the FIRST Function is used when a group of records are ranked and several records are found to be in the first rank. In such situation an aggregate function can be applied on the records with first rank
-the LAST Function is used when a group of records are ranked and several records are found to be the last rank.In such situations an aggregate function can be applied on the records with last rank
*/