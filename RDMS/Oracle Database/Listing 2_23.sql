select e.ename,e.city
from employee e
where exists
(select 'X' from emp_company c where c.cname='CMC'and e.ename=c.ename)      		and exists (select 'X' from emp_shift s where s.shift='B'and 				e.ename=s.ename); 
