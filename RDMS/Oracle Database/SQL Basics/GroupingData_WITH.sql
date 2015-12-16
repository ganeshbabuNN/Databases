--Normal way.

WITH empsalary AS
  (SELECT department_id,
    SUM(salary)as totalsal
  FROM employees
  WHERE department_id IS NOT NULL
  GROUP BY department_id
  ),
   empavgsalary AS
  (SELECT AVG(totalsal) as avgsalary FROM empsalary
  )
SELECT department_id,
       totalsal
FROM empsalary
WHERE totalsal > (SELECT avgsalary FROM empavgsalary);
/

---another complex calculation by divding query into simple queries

with stevensalary as(select distinct salary s1 from employees where first_name='Steven'),
Neenasalary as (select salary s2 from employees where first_name='Neena'),
Lex as (select salary s3 from employees where first_name='Lex')
select t1.s1,t2.s2,t3.s3
from stevensalary t1,Neenasalary t2, Lex t3;

