update emp_company
set salary = (select e1.salary from  emp_company e1 where e1. ename = ’SUNIL’) 
where ename = ‘VIJAY’;
