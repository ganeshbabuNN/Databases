Declare
	marks number :=45;
begin
 	if (marks<40) and (marks>0) then
  		dbms_output.put_line('fail');
 	end if;
 	if (marks<60) and (marks>=40) then
  		dbms_output.put_line('pass');
 	end if;
end;
/
