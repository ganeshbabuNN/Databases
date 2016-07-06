select e.ename, e.city 
from employee e --Main
where e.ename in
(select c.ename 	--All employees of ACC,TATA; ajay sunil vijay
from emp_company c  	--Q1
where c.cname in 
(select m.cname   	-- Suppose query produces ACC TATA
from company m   	--Q2
where m.city='MUMBAI') );
