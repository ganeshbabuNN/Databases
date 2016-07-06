select e.ename,e.city 
from employee e
where exists
(select'X' from emp_company c
where e.ename=c.ename and exists
(select 'X'
from company m
where c.cname = m.cname and m.city='MUMBAI') );
