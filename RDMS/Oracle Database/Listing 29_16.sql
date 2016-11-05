declare
   	cursor c1 is
   	select distinct fname
   	from enquiry enq,enrollment enr
   	where enq.enquiryno = enr.enquiryno
   	and enr.rollno
   	not in
   	(select rollno
   	from feespaid);
begin
   	for z in c1 loop
       	dbms_output.put_line(z.fname);
   	end loop;
end;
/
