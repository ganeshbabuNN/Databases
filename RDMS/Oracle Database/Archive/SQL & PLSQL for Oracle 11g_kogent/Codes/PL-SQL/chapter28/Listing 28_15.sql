declare
 	cursor c1 is
 	select *
 	from installment
 	where installmentstatus = 'N';
begin
 	for z in c1 loop
  		dbms_output.put_line(z.rollno||' '||z.installmentdate||' 					'||z.amount);
 	end loop;
end;
/