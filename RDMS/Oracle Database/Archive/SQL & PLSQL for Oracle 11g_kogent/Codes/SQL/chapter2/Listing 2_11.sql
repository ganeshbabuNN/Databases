select ename, city from employee 
where ename in(select ename from 		
emp_company where cname = ’ACC’);
