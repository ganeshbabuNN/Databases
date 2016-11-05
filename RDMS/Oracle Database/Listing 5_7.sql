update emp_company 
set cname = ‘TATA’,salary = 1.2 * salary
where cname = ‘ACC’ 
and salary > 8000 
and ename 
in 
(select ename from employee where city = ’MUMBAI’);
