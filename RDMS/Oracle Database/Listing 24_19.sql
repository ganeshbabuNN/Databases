declare
	sumamt number;
	cursor c1 is
	select batchcode, 0.1 * netincome nincome
	from batch;
begin
	sumamt := 0;
	For Z in c1 loop
		sumamt := sumamt + Z.nincome;
	end loop;
	dbms_output.put_line (TO_CHAR(sumamt));
end;
/
