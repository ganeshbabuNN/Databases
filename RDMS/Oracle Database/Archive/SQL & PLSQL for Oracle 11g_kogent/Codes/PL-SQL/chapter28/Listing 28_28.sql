declare
 	cursor c1 is
 	select fp.rollno,fname
 	from feespaid fp,enrollment en,enquiry eq
 	where fp.rollno = en.rollno
 	and en.enquiryno = eq.enquiryno
 	and fp.amount > 5000;
begin
 	for z in c1 loop
  		dbms_output.put_line(z.rollno|| ' '||z.fname);
 	end loop;
end;
/