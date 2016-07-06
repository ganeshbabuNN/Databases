select m.ename,mname,shift
from manager m left outer join emp_shift s
on (m.ename = s.ename)
/
