insert all
into emp_cmp_shift values(ename,cname,shift)
into emp_cmp_mgr values(ename,cname,mname)
select e.ename,cname,mname,shift
from emp_company e ,manager,emp_shift
where e.ename = manager.ename 
and e.ename = emp_shift.ename
/
