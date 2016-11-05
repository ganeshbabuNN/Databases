declare
	cnt number;
	cursor cl is
	select batchcode
	from batch;
begin 
	cnt := 0;
	for Z in  cl loop
		cnt := cnt + 1;
	end loop;
	dbms_output.put_line (z.batchcode);         -- illegal
end;
/
