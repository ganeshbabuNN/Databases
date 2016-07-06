declare
	TYPE plstab IS TABLE OF number
     INDEX BY BINARY_INTEGER;
	x plstab;
begin
	x(1) := 54;
	x(2) := 65;
	dbms_output.put_line(x(1));
end;
/
