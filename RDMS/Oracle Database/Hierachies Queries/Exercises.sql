1.CONNECT BY,PRIOR and START WITH
---------------------------------
-retrive the top hiearchy of adms, use LPAD to format output

select
  lpad(' ',3*LEVEL-3) ||ENAME
from
  emp
connect by
 prior mgr=empno
start with
  ename='ADAMS';

2.LEVEL
------
-starting with KING, retrive all level 4 employees
select
  ename
from
emp
where
level=4
connect by
 mgr=prior empno
start with
ename='KING';

3.PRIOR
-------
for each employee,retrieve the ratio of his salary to the salary of his manager. return the rows in descending order of the ratio
select
  ename,
  sal,
  prior ename mgrname,
  prior sal mgrsal,
  to_char(100*sal/prior sal,'990.00L','NLS_CURRENCY=%') RATIO
from
emp
connect by
 mgr=prior empno
start with
 mgr is null
order by
 sal/prior sal desc nulls first;

4.SYS_CONNECT_BY_PATH
---------------------
-using SYS_CONNECT_BY_PATH and aggregation, return an aggregated list of employees grouped by department
select
  deptno,
  substr(max(sys_connect_by_path(ename,';')),2) ename
from
  emp
connect by
  ename <prior ename
  and
  deptno=prior deptno
group by
  deptno;

5.CONNECT_BY_ROOT
-----------------
for each employee,retreive the sum of his salary and the salary of all his employees
with 
t
as
(
select
  connect_by_root ename ename,
  sal
  from
    emp
  connect by
   mgr=prior empno
 )
select
  ename,
  sum(sal)
from
  T
group by
ename;

6.CYCLE
-------
reterive the three employees that make the query fails

select
 sys_connect_by_path(ename,'/')
from
emp
connect by
  prior nvl(mgr,7788)=empno
start with
  ename='ADAMS';

--connect loop fails
select
 distinct ename mgr,
 prior ename emp
from
emp
where
  connect_by_iscycle=1
connect by nocycle
prior nvl(mgr,7788)=empno;

--scott(7788) is the manager of the top manager king; king is the manager of jones, who is the manage of scott.
Connect_by_iscycle returns 1 for cycling rows.

7.Reverse the hiearchy
create table
  hemp
as select
  rownum r,
  level l,
  ename,
  empno
from
  emp
connect by
  mgr=prior empno
start with
mgr is null;

select * from hemp;
--using an analytic function, retrieve the manager of each employee in the table HEMP.
select 
  empno,
  ename,
  last_value(empno)
  over
  (
  order by L*1E12+R
  range between unbounded preceding and 1E12 preceding
  )MGR
from
  hemp;

