-- NOT IN--
SELECT employee_id,
  first_name,
  last_name,
  department_id
FROM employees
WHERE department_id NOT IN	-- NOT IN--
  (SELECT department_id FROM departments WHERE department_id < 50);
-- = !=ANY
SELECT employee_id,
  first_name,
  last_name,
  department_id
FROM employees
WHERE department_id !=ANY		-- = !=ANY
  (SELECT department_id FROM departments WHERE department_id < 50);