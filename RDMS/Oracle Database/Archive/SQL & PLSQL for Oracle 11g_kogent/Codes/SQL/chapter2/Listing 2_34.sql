select emp2.ename 
from employee emp1, employee emp2
where emp1.city = emp2.city 
and emp1.ename = ‘SUNIL’
/
