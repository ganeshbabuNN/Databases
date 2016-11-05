declare
	cursor c1 is 
	select *
	from enrollment;
begin
	for z in c1 loop
		dbms_output.put_line(z.rollno|| ' '||z.enquiryno|| ' '||
			z.batchcode|| ' '||z.enrollmentdate);
	end loop;
end;
/