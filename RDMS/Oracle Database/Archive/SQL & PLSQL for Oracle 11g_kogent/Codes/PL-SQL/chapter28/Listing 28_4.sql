declare
	cursor c1( d1 date) is 
	select * 
	from batch
	where startingdate = d1;
begin
	for z in c1('25-JAN-99') loop
		dbms_output.put_line(z.batchcode||’ ‘||z.coursecode||’ ‘||
		z.startingdate||’ ‘||z.coursefees||’ ‘||z.netincome||’ ‘||
		z.expectedincome||’ ‘||z.lastno);
	end loop;
end;	
/