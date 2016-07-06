update emp_company 
set salary = (select ec1.salary 
from emp_company ec1 where ec1.ename = ’SUNIL’), 
cname = (select ec2.cname from emp_company ec2 			
where ec2.ename = ‘ANIL’) 
where ename = ‘VIJAY’;
