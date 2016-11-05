select ename,salary,cname,(select max(salary) from emp_company r where r.cname = 	s.cname) max_salary
from emp_company s
where salary = (select max(salary) from emp_company r where r.cname = s.cname) 
/
