declare
	x number := 0;
begin
	x := 0;
	for i in 1..10 loop
 		x := x + i;
	end loop;
	dbms_output.put_line('sum is '||to_char(x));
end;
/
