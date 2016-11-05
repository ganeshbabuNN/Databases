declare
	cursor c1 is
	select e2.fname
	from enquiry e2,enrollment enr2
	where enr2.enquiryno = e2.enquiryno
	and enr2.batchcode
	in
	(select enr1.batchcode
	from enquiry e1, enquiry e2,enrollment enr1
	where e1.fname = 'ANIL'
	and e2.fname = 'SUNIL');
begin
	for z in c1 loop
		dbms_output.put_line(z.fname);
	end loop;
end;
/