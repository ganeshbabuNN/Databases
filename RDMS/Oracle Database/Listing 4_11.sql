select e1.ename
from emp_company e1 where e1.salary in  
(select max(e2.salary)  
from emp_company e2 where e1.cname=e2.cname)
/
