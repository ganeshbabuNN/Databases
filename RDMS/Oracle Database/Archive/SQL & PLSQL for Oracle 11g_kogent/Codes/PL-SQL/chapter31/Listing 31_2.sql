declare
	enqno2  number(5);
	fname2  varchar2(30);
begin
	enqno2:= 12345;
	findname(enqno2,fname2);			--call to subprogram
	dbms_output.put_line(fname2);
end;
/
