update emp_company
set salary = (select (emp_company.salary + ec1.salary)
from emp_company ec1 where ec1.ename = ‘SUNIL’)
where ename = ‘VIJAY’;
