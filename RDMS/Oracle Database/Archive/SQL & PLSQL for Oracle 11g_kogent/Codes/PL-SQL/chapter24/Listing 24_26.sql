declare
	totalrows number := 0;
	cursor c1 is
	select batchcode
	from batch;
	Z c1%rowtype;
begin
	open c1;
	fetch c1 into Z;
	WHILE c1%FOUND LOOP
		totalrows := totalrows +1;
		fetch c1 into Z;
	END LOOP;
        close c1;
	dbms_output.put_line('The no of rows are ' ||  To_CHAR(totalrows));
end;
/
