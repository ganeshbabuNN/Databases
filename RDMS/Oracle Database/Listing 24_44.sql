declare
	type curtype is ref cursor;
	c1 curtype;
	z emp_company%rowtype;
	status number:=1;
begin
 	if (status=1) then
 		open c1 for
 		select *
 		from emp_company
 		where cname='acc'
 		order by salary;
 	else
 		open c1 for
 		select *
 		from emp_company
 		where cname='acc'
 		order by ename;
 	end if;
 	fetch c1 into z;  						--A
 	while(c1%found) loop
  		dbms_output.put_line
  		(' name '||z.ename||' sal '||to_char(z.salary));
  		fetch c1 into z;
 	end loop;
 	close c1;  							--B
end;
