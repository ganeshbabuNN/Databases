delete emp_company where salary > 8000 			
and ename in (select ename from employee where city = ‘CHENNAI’) and 		
cname in (select cname from company where city = ‘MUMBAI’);
