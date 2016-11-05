select m.ename, mname, shift
from manager m full  outer join emp_shift s
on (m.ename = s.ename)
/
