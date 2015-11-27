
SELECT employee_id,
  first_name,
  last_name,
  salary
FROM employees
WHERE salary < ALL(3000,5000)    -- ALL
order by salary;