declare
	cursor c1 is 
	select * 
	from batch;
begin
	for z in c1 loop
		dbms_output.put_line(z.batchcode||’ ‘||z.coursecode||’  ‘||
		z.startingdate||’ ‘||z.coursefees||’ ‘||z.netincome||’ ‘||
		z.expectedincome||’ ‘||z.lastno);
	end loop;
end;
/