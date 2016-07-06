declare
	cursor c1 is 
	select batchcode
	from batch
	where netincome > 5000;
begin
	for z in c1 loop
		dbms_output.put_line(z.batchcode);
	end loop;
end;	

/