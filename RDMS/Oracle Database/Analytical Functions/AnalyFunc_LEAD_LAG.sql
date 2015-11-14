select department_id,
       first_name,
       employee_id,
       hire_date,
       LAG(hire_date)OVER(ORDER BY employee_id)LAG,
       LEAD(hire_date)OVER(ORDER BY employee_id)LEAD,
       LAG(hire_date,2)OVER(ORDER BY employee_id)LAG_1,
       LEAD(hire_date,2)OVER(ORDER BY employee_id)LEAD_1
from employees
order by employee_id;

/*
-LEAD - it has the ability to compute an expression on the next rows which are going to come after current row and return the value to the current row
-LAG - it has the ability to compute an expression on the previous rows which have past the current row and return the value to the current rows
*/