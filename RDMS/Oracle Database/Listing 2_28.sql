select e1.empno,e1.deptno,e1.salary
from empdep e1 where (e1.empno,e1.deptno)
in(select e2.empno,e2.deptno from empcity e2 where city='NAGPUR');
