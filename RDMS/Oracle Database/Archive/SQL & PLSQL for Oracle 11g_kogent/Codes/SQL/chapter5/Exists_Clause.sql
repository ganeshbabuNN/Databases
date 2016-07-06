delete emp_company where exists (select ‘x’ 
from employee where employee.ename = emp_company.ename 
and city = ‘MUMBAI’);
