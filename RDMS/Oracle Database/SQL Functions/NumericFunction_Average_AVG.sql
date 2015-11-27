--normal
SELECT department_id,AVG(salary) FROM employees
group by department_id;
--using Distinct
SELECT distinct department_id department_id,
       AVG(distinct salary) FROM employees
group by department_id;
--using ALL by default
SELECT distinct department_id department_id,
       AVG(ALL salary) FROM employees
group by department_id;