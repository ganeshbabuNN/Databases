create or replace procedure proc1 as
x number;
begin
	select count(1)
	into x
	from pls_test;
	dbms_output.put_line(x);
end;
/
