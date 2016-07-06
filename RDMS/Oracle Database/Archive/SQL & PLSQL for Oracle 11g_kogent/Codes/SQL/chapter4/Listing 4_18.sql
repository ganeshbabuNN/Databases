select cname,avg(e.salary)
from emp_company e where e.ename in
(select l.ename from employee l where l.city=’DELHI’)
group by e.cname;
