create table emp_tab4(empno number, ename varchar2(20),salary number)
/ 
insert into emp_tab4 values(1,'anil',1000)
/ 
insert into emp_tab4 values(2,'sunil',2000)
/ 
insert into emp_tab4 values(3,'amit',3000)
/ 
insert into emp_tab4 values(4,'ajay',4000)
/
insert into emp_tab4 values(5,'vijay',5000)
/ 
insert into emp_tab4 values(6,'ravi',6000)
/ 
insert into emp_tab4 values(7,'yogesh',8000)
/ 
insert into emp_tab4 values(8,'sunil',5000)
/
declare 
	type eno is table of number; 
	type ename is table of varchar2(20); 
	x eno; 
	y ename; 
	cursor c1 is select empno,ename from emp_tab4 where salary > 1000; 
	rows natural:=2; 
	cnt number:=0; 
begin 
	select empno,ename bulk collect into x , y from emp_tab4;--a 
	open c1; 
	fetch c1  bulk collect into x , y; 
	for i in x.first..x.last loop 
		dbms_output.put_line(x(i)||'  '||y(i)); 
	end loop; 
	close c1; 
	open c1; 
	fetch c1  bulk collect into x , y limit rows;	--b 
	dbms_output.put_line('limits the no of rows'); 
	for i in x.first..x.last loop 
		dbms_output.put_line(x(i)||'  '||y(i)); 
	end loop; 
	close c1; 
	delete emp_tab4 where ename='sunil'			--c 
	returning empno  bulk collect into x; 
	for i in x.first..x.last loop 
		cnt:=cnt+1; 
	end loop; 
	dbms_output.put_line('the no of rows affected'||' '|| cnt); 
end; 
/
