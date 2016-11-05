SELECT employee_id,
  first_name,
  last_name,
  department_id
FROM employees
WHERE EXISTS           ---- EXISTS
  (SELECT *
  FROM departments
  WHERE employees.department_id=departments.department_id);

--This operator returns TRUE, if the subquery returns at least one row
  