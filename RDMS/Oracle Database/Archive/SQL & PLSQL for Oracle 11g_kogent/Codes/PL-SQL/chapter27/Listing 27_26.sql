create table empobjtab of empobj(constraint pkemp primary key(empid),
constraint fk_dept  foreign key(deptno) references dept1(deptno))
/
