update emp_company
set salary = salary – 100 
where ename = ‘VIJAY’ 
and cname = ‘ACC’
and exists (select e1.ename from emp_company e1 where 	
e1.ename = ’SUNIL’ and e1.cname = ’ACC’);

update emp_company
set salary = salary + 100
where ename = ’SUNIL’ 
and cname = ‘ACC’ 
and exists (select e1.ename from emp_company e1 
where e1.ename = ’VIJAY’ and e1.cname = ’ACC’);
