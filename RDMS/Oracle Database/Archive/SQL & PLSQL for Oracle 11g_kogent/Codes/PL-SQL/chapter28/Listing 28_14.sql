declare
 	cursor c1 is
 	select *
 	from expenditure;
begin
 	for z in c1 loop
  		dbms_output.put_line(z.expcode|| ' '||z.amount|| ' '||z.expdate|| ' 			'|| z.bankname|| ' '||z.remark|| ' '||z.batchcode);
 	end loop;
end;
/