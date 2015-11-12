select 
  substr
  (
   sys_connect_by_path (ENAME,'/'),
   2,
   INSTR
   (
    sys_connect_by_path (ENAME,'/'),'/',
    2
    )-2
    )ANCESTOR,
    ENAME
from 
  emp
where
  level >1  ---changes the level
connect by
  prior empno=mgr;