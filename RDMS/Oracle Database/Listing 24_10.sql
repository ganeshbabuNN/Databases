declare
	cursor cl is
	select * from batch;
	z cl%rowtype;
begin
	Open cl;
	fetch cl into Z;
	while (Cl%found) loop 
	dbms_output.put_line ( 'Batchcode is '  || z.batchcode);
	fetch cl into Z;
	end  loop;
	close cl;
end;
/
