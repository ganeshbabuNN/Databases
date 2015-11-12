select 
concat(LPAD(' ',LEVEL*3-3),ENAME)ENAME 
from emp
connect by prior empno=mgr
start with 
MGR is null
ORDER  BY ---without siblings
EMP.ENAME; 