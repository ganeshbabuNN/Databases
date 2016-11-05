select 
concat(LPAD(' ',LEVEL*3-3),ENAME)ENAME 
from emp
connect by prior empno=mgr
start with 
MGR is null
ORDER SIBLINGS BY
EMP.ENAME; ---need to add the table name