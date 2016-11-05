select department_id,
       first_name,
       employee_id,
       hire_date,
       salary,
       salary *.1 SAL,
       salary *.9 LOW,
       salary *1.3 HIGH,
       ROW_NUMBER()OVER(order by salary) SORSAL,
       COUNT(*) OVER(
       order by salary 
       RANGE BETWEEN 
       salary *.1 PRECEDING
       AND
       salary *.1 FOLLOWING)COUNT
from employees;

/* the sort kety is the salary . the count of employees with the same salary, +/- 10%, is evalated */


---Example for date and timestampe.. TBD