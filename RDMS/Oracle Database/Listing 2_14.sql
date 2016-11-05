select e.ename, e.city
from employee e
where e.city
in
(select e1.city    			--Delhi
from employee e1
where e1.ename='AJAY');
