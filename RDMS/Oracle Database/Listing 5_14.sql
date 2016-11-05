update emp_company ec1
set salary = (select max(salary) 
from emp_company ec1
where ec1.cname 
in (select ec2.cname from  
emp_company ec2 
where ec2.ename = ‘SUNIL’))
where ename = ‘VIJAY’;
