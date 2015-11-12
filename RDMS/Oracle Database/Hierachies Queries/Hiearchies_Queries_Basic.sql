select ename from emp
connect by prior empno=mgr
start with 
ename='JONES';