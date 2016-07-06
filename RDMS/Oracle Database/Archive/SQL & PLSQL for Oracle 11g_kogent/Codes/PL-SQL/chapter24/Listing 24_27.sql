declare
	cnt number := 0;
	cursor c1 is
	select batchcode
	from batch;
	z c1%rowtype;
begin
	cnt := 0;
	open c1;
	loop
		fetch c1 into z;
		exit when c1%notfound;
		cnt := cnt +1;
	end loop;
	close c1;
	dbms_output.put_line( ' the number of rows are ' ||  to_char(cnt));
end;
/
