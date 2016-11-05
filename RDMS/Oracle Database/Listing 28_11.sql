declare
	cursor c1 is
	select expcode
	from expenditure;
begin
	for z in c1 loop
		dbms_output.put_line(z.expcode);
	end loop;
end;
/