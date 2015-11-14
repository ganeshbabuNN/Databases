select row_number() over( order by first_name ASC)
       department_id,
       first_name,
       employee_id,
       hire_date,
       salary,
       SUM(salary)over(order by first_name ROWS UNBOUNDED PRECEDING) CUMSUM 
from employees;