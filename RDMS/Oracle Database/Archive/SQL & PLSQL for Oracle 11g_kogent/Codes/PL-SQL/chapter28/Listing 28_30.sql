declare
	cursor c1(name varchar2) is
	select e2.fname
	from enquiry e1,enquiry e2
	where e1.fname = name
	and e2.city = e1.city;
begin
	for z in c1('ANIL') loop
		dbms_output.put_line(z.fname);
	end loop;
end;
/