update emp_company
set salary = salary * 1.5 
where ename in
(select ename from employee where city = ’CHENNAI’);
