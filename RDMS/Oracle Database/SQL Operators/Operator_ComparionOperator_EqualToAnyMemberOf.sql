-- IN --reutrns more than value
SELECT employee_id,
  first_name,
  last_name,
  department_id
FROM employees
WHERE department_id IN
  (SELECT department_id FROM departments WHERE department_id < 50);
-- = ANY--reutrns more than value
SELECT employee_id,
  first_name,
  last_name,
  department_id
FROM employees
WHERE department_id = ANY
  (SELECT department_id FROM departments WHERE department_id < 50);