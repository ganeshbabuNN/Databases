create Table employee_mgr
 (mname varchar2(20), ename varchar2(20) primary key,
 salary number(8,2), constraints FK1_employee_mgr foreign key (ename)
 references employee (ename));
