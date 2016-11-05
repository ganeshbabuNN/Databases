select e.ename, e.city
from employee e
where 
exists
(select 'X'            
from employee e1
where e1.ename='AJAY'
and e.city = e1.city);
