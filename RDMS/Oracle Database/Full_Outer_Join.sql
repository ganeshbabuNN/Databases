select m.ename,mname,shift
from manager m,emp_shift s
where (m.ename = s.ename(+))
union
select m.ename,mname,shift
from manager m,emp_shift s
where (m.ename(+) = s.ename)
