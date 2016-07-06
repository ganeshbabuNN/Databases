declare
   	cursor c1 is
   	select fname
   	from enquiry enq  where
	enq.enquiryno in (select enquiryno from enrollment enr
   	where enq.enquiryno = enr.enquiryno)
	group by fname
    	having count (enq.coursecode) > 1;
begin
	for z in c1 loop
     		dbms_output.put_line(z.fname);
   	end loop;
end;
/
