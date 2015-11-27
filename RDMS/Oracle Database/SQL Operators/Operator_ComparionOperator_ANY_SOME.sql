-- =ANY
SELECT employee_id,
  first_name,
  last_name,
  department_id
FROM employees
WHERE department_id = ANY
  (SELECT department_id FROM departments WHERE department_id <50);  -- =ANY
--  =SOME
SELECT employee_id,
  first_name,
  last_name,
  department_id
FROM employees
WHERE department_id =SOME
  (SELECT department_id FROM departments WHERE department_id < 50); --  =SOME