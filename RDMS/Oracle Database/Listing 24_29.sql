declare
	cursor c1 is
	select batchcode
	from batch;
	Z c1%ROWTYPE;
begin
	open c1;
	dbms_output.put_line (TO_CHAR(C1%ROWCOUNT));    -- Prints 0
	fetch c1 into Z;
	dbms_output.put_line (TO_CHAR(C1%ROWCOUNT));    -- Prints 1
	Fetch c1 into Z;
	dbms_output.put_line (TO_CHAR( C1%ROWCOUNT));     -- Prints2
	close c1;
	dbms_output.put_line(TO_CHAR(C1%ROWCOUNT));
					-- raises exception INVALID_CURSOR 
end;
/
