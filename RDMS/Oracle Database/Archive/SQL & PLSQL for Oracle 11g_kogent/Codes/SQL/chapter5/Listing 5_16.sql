delete emp_company
where ename in (select ename 
from 	employee where city = ‘MUMBAI’);
