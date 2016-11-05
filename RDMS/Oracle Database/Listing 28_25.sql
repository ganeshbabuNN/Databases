declare
	cursor c1(bcode number) is 
	select ins.rollno,fname,installmentdate,amount
	from installment ins,enrollment en,enquiry eq
	where en.batchcode = bcode
	and en.rollno = ins.rollno
	and en.enquiryno = eq.enquiryno;
begin
	for z in c1(20002) loop
		dbms_output.put_line(z.rollno|| '   '||z.fname|| '   					'||z.installmentdate|| '   '||z.amount);
	end loop;
end;
/