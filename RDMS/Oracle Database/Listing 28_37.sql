declare
  	cursor c1(insrollno number) is
  	select *
  	from installment
  	where rollno = insrollno;
begin
  	for z in c1(20002001) loop
   		dbms_output.put_line(z.installmentdate||z.amount||z. 					installmentstatus);
  	end loop;
 end;
/