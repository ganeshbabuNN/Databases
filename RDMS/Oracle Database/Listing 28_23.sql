declare
	cursor c1(bcode number) is 
	select rollno,fname,plotno,street,city
	from enrollment,enquiry
	where enrollment.batchcode = bcode
	and enrollment.enquiryno = enquiry.enquiryno;
begin
	for z in c1(10001) loop
		dbms_output.put_line(z.rollno|| ' '||z.fname|| ' '||z.plotno|| ' 				'|| z.street|| ' '||z.city);
	end loop;
end;
/