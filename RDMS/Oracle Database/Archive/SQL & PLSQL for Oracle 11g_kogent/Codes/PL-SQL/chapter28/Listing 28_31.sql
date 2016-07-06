declare
 	cursor c1(bcode number) is
 	select b2.batchcode
 	from batch b1,batch b2
 	where b1.batchcode = bcode
 	and b2.expectedincome > b1.expectedincome
 	and substr(to_char(b2.batchcode),1,2) =substr(to_char(b1.batchcode),1,2);
begin
 	for z in c1(10001) loop
  		dbms_output.put_line(z.batchcode);
 	end loop;
end;
/