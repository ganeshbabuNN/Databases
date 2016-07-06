update emp_company EC1
set salary =(select 0.5*avg(EC2.salary)+EC1.SALARY 
from emp_company  EC2 where EC2.cname = ‘ACC’) 
where EC1.ename = ‘VIJAY’;
