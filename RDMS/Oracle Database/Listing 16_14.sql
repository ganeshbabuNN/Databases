insert first
when cname = ’ACC’ then
into emp_cmc values(ename,salary,jdate)
when ename = ’TATA’ then
into emp_tata values(ename,salary,jdate)
else
into emp_all  values(ename,salary,jdate)
select ename,cname,salary,jdate from emp_company;
select * from emp_all;
