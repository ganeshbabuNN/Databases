declare
	x number;
begin
 	select salary
 	into x
 	from emp_company
 	where ename='anil'; 				
      if x < 1000 then
  		dbms_output.put_line('a');
 	elsif x < 2000 then
  		dbms_output.put_line('b');
 	elsif x < 3000 then
  		dbms_output.put_line('c');
 	else
  		dbms_output.put_line('d');
 	end if;
end;
/
