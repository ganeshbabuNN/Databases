select department_id,
       employee_id,
       salary,
       first_value(salary)OVER(partition by department_id ORDER BY employee_id) lowsal,
       last_value(salary)OVER(partition by department_id ORDER BY employee_id) highsal
from employees
order by department_id;

/*
-FIRST_VALUE analytic function picks the first record from the partitions after doing the ORDER BY. THE SQL Expression is computed on the column on this first record and results are returned.
-LAST_VALUE functions is used to similar context except that is acts on the last record of the the partitions.
*/