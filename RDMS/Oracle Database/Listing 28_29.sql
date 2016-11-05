declare
  	cursor c1(bcode number) is
  	select b2.batchcode
  	from batch b1,batch b2
  	where b1.batchcode = bcode
  	and b2.netincome > b1.netincome;
begin
  	for z in c1(10001) loop
   		dbms_output.put_line(z.batchcode);
  	end loop;
 end;
/