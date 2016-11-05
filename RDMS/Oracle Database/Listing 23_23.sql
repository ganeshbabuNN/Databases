declare
	i number :=1;
begin
 	while(i <=21) loop
  		dbms_output.put_line(to_char(i));
  		i:= i+2;
 	end loop;
end;
/
