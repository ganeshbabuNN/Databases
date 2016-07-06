manager.ename = emp_company.ename
select ename,mname,salary
from manager join emp_company using(ename)
where salary < 3000
/
