declare
	cursor c1 is 
	select batchcode
	from batch
	where expectedincome > (netincome + 2000);
begin
	for z in c1 loop
		dbms_output.put_line(z.batchcode);
	end loop;
end;	
/