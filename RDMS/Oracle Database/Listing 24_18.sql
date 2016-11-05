declare
	cnt number;
begin
	cnt := 0;
	for z in (select batchcode from batch)loop
		cnt := cnt + 1;
       	dbms_output.put_line (z.batchcode);
	end loop;
end;
/
