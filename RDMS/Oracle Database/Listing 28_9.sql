declare
	cursor c1 is 
	select advdate 
	from advertisement;
begin
	for z in c1 loop
		dbms_output.put_line(z.advdate);
	end loop;
end;
/