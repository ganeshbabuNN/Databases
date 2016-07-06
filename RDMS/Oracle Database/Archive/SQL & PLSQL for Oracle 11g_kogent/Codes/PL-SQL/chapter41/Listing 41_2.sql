create or replace procedure emp_proc(myempno1 number) 
authid current_user as 
myename varchar2(15); 
begin 
 	select ename into myename from emp_temp where empno = myempno1; 
 	dbms_output.put_line('ename is '||myename); 
end;
/
