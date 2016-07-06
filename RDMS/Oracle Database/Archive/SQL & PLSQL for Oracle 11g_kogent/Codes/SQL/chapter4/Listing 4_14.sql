select cname,count(ename) 
from emp_company group by cname 
having count(ename) > 1;
