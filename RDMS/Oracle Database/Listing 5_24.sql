insert into employee (ename,city) 
select e1.ename, c2.city 
from emp_company e1, company c2 where 
e1.cname = ’ACC’
and e1.cname= c2.cname;
