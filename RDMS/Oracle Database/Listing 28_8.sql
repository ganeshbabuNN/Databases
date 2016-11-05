declare
	cursor c1 is 
	select fname 
	from enquiry
	where city = 'NAGPUR';
begin
	for z in c1 loop
		dbms_output.put_line(z.fname);
	end loop;
end;
/