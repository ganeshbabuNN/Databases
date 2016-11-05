--basic
select empno,ename,mgr,level from emp
where level =2  ---- adding the level
connect by prior empno=mgr
start with 
ename='JONES';

---hiearchical level
select concat(LPAD(' ',LEVEL*3-3),ENAME)ENAME from emp
connect by prior empno=mgr
start with 
ename='JONES';