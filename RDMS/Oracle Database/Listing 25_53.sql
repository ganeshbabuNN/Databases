declare 
   	type emp_rec is table of emp%rowtype; 
   	rec emp_rec; 
   	cursor c1 is 
   	select empno, ename, salary from emp where salary > 1000; 
begin 
   	open c1; 
   	fetch c1 bulk collect into rec;  
   	close c1; 
end; 
/
