declare
  	cursor c1(bcode number) is
  	select fp.rollno,fname,sum(amount) sumamt
  	from feespaid fp,enrollment en,enquiry eq
  	where en.batchcode = bcode
  	and en.rollno = fp.rollno
  	and en.enquiryno = eq.enquiryno
  	group by fp.rollno,fname;
begin
  	for z in c1(20002) loop
   		dbms_output.put_line(z.rollno|| ' '||z.fname|| ' '||z.sumamt);
  	end loop;
 end;
/