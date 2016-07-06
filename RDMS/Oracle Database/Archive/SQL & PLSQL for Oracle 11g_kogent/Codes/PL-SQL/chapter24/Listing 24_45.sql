declare
	type curtype is ref cursor;
	c1 curtype;
	status number:=1;
	x varchar2(20); 				--emp_company.ename%type;
	y number;
begin
 	if (status=1) then
 		open c1 for
 		select ename,salary
 		from emp_company
 		where cname='acc'
 		order by salary;
 	else
 		open c1 for
 		select ename,salary
 		from emp_company
 		where cname='acc'
 		order by ename;
 	end if;
 	fetch c1 into x,y;
 	while(c1%found) loop
  		dbms_output.put_line
  		(' name '||x||' sal '||to_char(y));
  		fetch c1 into x,y;
 	end loop;
 	close c1;
end;
