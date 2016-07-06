create table emp (empno number,ename varchar2(20),salary number); 
declare  
	type emp_id is varray(10) of number;  
  	id emp_id := emp_id(10001,10010,10013,10018);  
begin  
	for i in id.first..id.last loop  
  		delete from emp where empno = id(i);  
  	end loop;  
end;  
/
