declare
	x number;
begin
	x := 2;
	loop
		dbms_output.put_line(x);
		x:= x + 2;
		exit when (x >10);
	end loop;
end;
/
