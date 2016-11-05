select m.ename,mname,shift
from manager m right outer join emp_shift s
on (m.ename = s.ename)
/
