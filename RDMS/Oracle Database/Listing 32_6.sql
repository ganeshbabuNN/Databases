declare
	x boolean;
begin
	x := PKGbatchcode.validate_batchcode(20002);
		--x := PKGbatchcode.validate_coursecode(20); error not accessible
	if(x) then
		dbms_output.put_line('code is valid');
	else
		dbms_output.put_line('code is not valid');
	end if;
end;
/
