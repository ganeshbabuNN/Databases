declare
	x batch_data.batch_curtype ;
	z batch%rowtype;
begin
	batch_data.open_batch(x);
	loop
		fetch x into z;
		exit when x%notfound;
		dbms_output.put_line('value of batchcode '||z.batchcode);
	end loop;
	close x;
end;
/
