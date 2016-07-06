update emp_company set salary = salary – 100 where ename = ‘VIJAY’ and
ename in(select e1.ename from employee e1 where e1.city = ’CHENNAI’) and exists 		(select emp1.ename from employee emp1 where emp1.ename = ‘SUNIL’ and 		emp1.city = ’CHENNAI’);
