insert all
when cname = ’ACC’ then
into emp_acc values(ename,salary,jdate)
when cname = ’TATA’ then
into emp_tata values (ename,salary,jdate)
when cname = ’CMC’  and ename in (select ename from emp_shift where shift = ’A’) 	then
into emp_cmc values (ename,salary,jdate)
select ename,cname,salary,jdate
from emp_company
/
