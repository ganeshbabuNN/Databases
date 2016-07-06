create or replace procedure list_employees(dept1 varchar2) is 
type curtype is ref cursor; 
c1           curtype; 
str   	varchar2(300); 
name    	varchar2(20); 
id     	number; 
begin 
	str:='select e.empno,e.ename from emp1 e where 
	exists(select * from department d where 
	d.dept = :dept1 
 	and 
	e.empno = d.empno)'; 
	open c1 for str using dept1; 
	loop 
		fetch c1 into id,name; 
		exit when c1%notfound; 
		dbms_output.put_line('id:'||' '||id); 
		dbms_output.put_line('name:'||' '||name); 
	end loop; 
	close c1; 
end; 
/
