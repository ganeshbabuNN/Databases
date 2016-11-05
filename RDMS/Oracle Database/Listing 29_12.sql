declare
   	cursor c1(bcode number) is
   	select fname
   	from enquiry
   	where enquiryno
   	in
   	(select enr.enquiryno
    	from enrollment enr,enquiry enq
    	where batchcode = bcode
    	and enr.enquiryno = enq.enquiryno );
begin
    	for z in c1(10001) loop
        	dbms_output.put_line(z.fname);
    	end loop;
end;
/
