declare
   	cursor c1 is
   	select distinct fname
   	from enquiry enq,enrollment enr,installment ins
   	where ins.installmentstatus = 'N'
   	and ins.installmentdate < sysdate
   	and ins.rollno = enr.rollno
   	and enr.enquiryno = enq.enquiryno;
 begin
   	for z in c1 loop
       	dbms_output.put_line(z.fname);
   	end loop;
end;
/
