declare
   	cursor c1 is
   	select enq.fname
   	from enrollment enr,enquiry enq
   	where substr(to_char(batchcode),1,2) = 10
   	and enr.enquiryno = enq.enquiryno
   	minus
   	select enq.fname
   	from enrollment enr,enquiry enq
   	where substr(to_char(batchcode),1,2) = 20
   	and enr.enquiryno = enq.enquiryno;
begin
   	for z in c1 loop
       	dbms_output.put_line(z.fname);
   	end loop;
end;
/
