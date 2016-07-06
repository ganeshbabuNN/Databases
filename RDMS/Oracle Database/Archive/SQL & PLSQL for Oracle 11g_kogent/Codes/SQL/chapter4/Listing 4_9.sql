select e.ename,e.city from employee e where e.ename in
(select c.ename from emp_company c where  c.cname = 'TATA'
and c.salary in (select max(c1.salary)
from emp_company c1 where c1.cname = 'TATA'))
/
