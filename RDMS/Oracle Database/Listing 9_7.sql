select ename,connect_by_isleaf isleaf,
sys_connect_by_path(ename,'/') abspath,
level
from emp2
start with ename='chairman'
connect by  prior ename=mname
order  siblings by ename
/
