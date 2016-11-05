	--nocopy
declare 
	y number;
	procedure test(x out nocopy number) is
	excp1 exception;
begin
	x := 5+50;
	raise excp1;
end;
begin
	y := 45;
	test(y);
	dbms_output.put_line(y);
	exception
	when others then
	dbms_output.put_line(y);
end;
/
