select ename,connect_by_isleaf isleaf,
sys_connect_by_path(ename,'/') abspath,
level ,
connect_by_iscycle cycle
from emp2
start with ename='vijay'
connect by nocycle prior ename=mname
/ 
