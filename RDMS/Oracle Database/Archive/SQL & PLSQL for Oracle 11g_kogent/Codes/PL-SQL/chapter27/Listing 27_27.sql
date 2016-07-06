create table empcoltab (orgno number, emp empobj,
constraint pkemp1 primary key(emp.empid),
constraint fk_dept1  foreign key(emp.deptno) references dept1(deptno))
/
