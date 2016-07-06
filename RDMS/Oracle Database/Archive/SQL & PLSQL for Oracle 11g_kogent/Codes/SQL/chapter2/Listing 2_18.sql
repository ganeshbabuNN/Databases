select e1.ename       			--all employees working in ACC,TATA
from emp_company e1 where e1.cname in
(select c1.cname   			-- ACC,TATA
from company c1 where c1.city in
(select c2.city  		-- MUMBAI    
from company c2
where c2.cname in   		--ACC
(select e2.cname
from emp_company e2 where e2.ename='AJAY')));
