declare
	cursor c1 is
	select ename,salary from emp_company
	where cname='acc';
	total number := 0;
begin
 	for z in c1 loop
  		total := total+z.salary;
  		dbms_output.put_line(z.ename||'   '||to_char(z.salary));
 	end loop;
	dbms_output.put_line(total);
end;
/
