select c.ename, m.mname, c.salary
from manager m, emp_company c
where c.ename = m.ename
and salary < 3000
/
