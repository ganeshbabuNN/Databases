declare
	z batch%rowtype;
begin
	z := batch_data.give_one_row;
	dbms_output.put_line('batchcode '||z.batchcode);
	z := batch_data.give_one_row;
	dbms_output.put_line('batchcode '||z.batchcode);
end;
/
