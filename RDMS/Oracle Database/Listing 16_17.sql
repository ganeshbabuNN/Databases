merge into emp_all a
using emp_company b
on (a.ename = b.ename)
when matched then
      update set a.salary = b.salary + 100
when not matched then
     insert (a.ename,a.salary,a.jdate)
     values(b.ename,b.salary,b.jdate);
select * from emp_all;
