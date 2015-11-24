-- IS[NOT]NULL

--Is NULL
SELECT distinct(employee_id),
  first_name,
  last_name
FROM employees
WHERE manager_id is null
order by salary;

-- IS NOT NULL
SELECT distinct(employee_id),
  first_name,
  last_name
FROM employees
WHERE manager_id is not null
order by salary;