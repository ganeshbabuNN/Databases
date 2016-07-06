declare
	type emprec is record
	(ename varchar2(20),
  	salary number);
	type curtype is ref cursor; 
	c1 curtype;
	z emprec; 			--cursor row variable using record type
	status number:=1;
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
 	fetch c1 into z;
 	while(c1%found) loop
  		dbms_output.put_line
  		(' name '||z.ename||' sal '||to_char(z.salary));
  		fetch c1 into z;
 	end loop;
 	close c1;
end;
