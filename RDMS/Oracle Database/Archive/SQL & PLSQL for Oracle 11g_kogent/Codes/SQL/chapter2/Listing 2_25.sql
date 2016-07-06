select e1.ename from employee e1
where exists   
(select 'X'    
from company c1
where c1.city = e1.city and exists
(select 'X'  
from emp_company m1
where m1.ename=e1.ename and c1.cname=m1.cname)); 
