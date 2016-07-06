declare
	cursor c1(pcname varchar2) is
 	select ename,salary
 	from emp_company
 	where cname=pcname;
	z c1%rowtype;
begin
 	open c1('acc');
 	fetch c1 into z;
 	while(c1%found) loop
  		dbms_output.put_line
  		(' name '||z.ename||' sal '||to_char(z.salary));
  		fetch c1 into z;
 	end loop;
 	close c1;
end;
/
