select e.ename, e.city
from employee e where e.ename in
(select c.ename from emp_company c where c.cname='ACC')
  					-- Suppose query produces anil sunil
 and e.ename in (select s.ename from emp_shift s where s.shift='A'); 
 	 				-- Suppose query produces ajay sunil 
  					-- The output of query will be sunil
