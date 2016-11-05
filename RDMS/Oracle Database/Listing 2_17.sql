select e1.ename   				--ajay
from employee e1 				--Main
where e1.city in   				-- delhi
(select c1.city   			-- delhi
from company c1    			--Q1
where c1.cname in (select m1.cname  	--tata
from emp_company m1  		--Q2
where m1.ename=e1.ename));
