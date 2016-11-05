-- >=
SELECT employee_id,first_name,hire_date FROM employees where extract (YEAR FROM hire_date) >='2008';     -- >=
-- <=
SELECT employee_id,first_name,hire_date FROM employees where extract (YEAR FROM hire_date) <='2008';     -- <=