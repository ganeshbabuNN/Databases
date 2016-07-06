declare
	sumamt number := 0;
	btcode number;
	cursor c1 (pbtcode number) is
	select netincome from batch
	where batchcode = pbtcode;
begin
	sumamt := 0;
	btcode := 20001;
	for z in c1 (btcode) loop
		sumamt := sumamt + z.netincome;
	end loop;
	dbms_output.put_line ('the income for batch is ' ||  to_char (sumamt));
end;
/
