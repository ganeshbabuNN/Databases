declare
	cursor cl(ccode varchar2) is
	Select * from batch where coursecode=ccode;
	z cl%rowtype;
begin
	Open cl(‘10’);
	fetch cl into Z;
	while (cl%found) loop 
	dbms_output.put_line ( 'Batchcode is '  || z.batchcode);
	fetch cl into z;
	end  loop;
	close cl;
end;
/
