declare
	cnt number;
	cursor cl is
	select batchcode
	from batch;
begin 
	cnt := 0;
	for z in cl loop
		cnt := cnt +1;
             dbms_output.put_line(z.batchcode);
	end loop;
	dbms_output.put_line ( TO_CHAR(cnt));
end;
/
