create or replace procedure emp_proc1(myempno1 number) as 
myename varchar2(15); 
begin 
 	select ename into myename from emp_temp where empno = myempno1; 
 	dbms_output.put_line('ename is '||myename); 
end;
/
