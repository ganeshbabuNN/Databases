declare
	user_exception exception;
	code number;
	msg varchar2(512);
begin
	raise user_exception;
exception 
	when user_exception then
	code := sqlcode;
	msg := sqlerrm;
	dbms_output.put_line('code and messages are *'||code||' '||msg);
end;
/
			--code and messages are *1 User-Defined Exception
declare
	x exception;
	code number;
	msg varchar2(512);
	pragma exception_init(x,-20110);
begin
	insert_fees(12345,'12-jul-2003',2345555);
exception 
	when x then
	code := sqlcode;
	msg := sqlerrm;
	dbms_output.put_line('code and messages are'||code||' '||msg);
end;
/
		--code and messages are-20110 ORA-20110: Amount is very high
