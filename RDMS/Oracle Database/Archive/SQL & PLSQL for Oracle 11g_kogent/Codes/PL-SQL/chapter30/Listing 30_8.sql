declare
	x exception;
	pragma exception_init(x,-20110);
begin
	insert_fees(12345,'12-jul-2003',2345555);
exception 
	when x then
	dbms_output.put_line('handling error using exception');
end;
/
