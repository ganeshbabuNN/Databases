declare
	fname2 varchar2(30);
	enqno2 number(5);
begin
	enqno2 := 12345;
	fname2 := getname(enqno2);
	dbms_output.put_line(fname2);
end;
/
