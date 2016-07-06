select c.ename, m.mname,c.salary
from manager m join emp_company c
on (c.ename = m.ename and salary > 3000)
/
