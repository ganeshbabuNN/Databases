declare
	clob_lock clob;
	write_amt  integer;
	write_offset  integer;
	buffer varchar2( 40) := 'employeed in cc';
begin
	select empinfo
	into clob_lock
	from employee
	where empid = 101
	for update;
	write_amt := 6;
	write_offset := 10;
	dbms_lob.write( clob_lock, write_amt, write_offset, buffer);
end;
/