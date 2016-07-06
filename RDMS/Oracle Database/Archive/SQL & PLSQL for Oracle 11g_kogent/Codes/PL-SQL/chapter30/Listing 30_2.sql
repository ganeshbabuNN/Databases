declare
	edate date;
	enqno number:= 110002;
	invalid_date exception;
begin 
	select enquirydate into edate
	from enquiry
	where enquiryno=enqno;
	if edate > SYSDATE then 
		raise invalid_date;
	end if;
	exception
	When invalid_date then
	dbms_output.put_line('The enquiry date is not proper');
end; 
/	
