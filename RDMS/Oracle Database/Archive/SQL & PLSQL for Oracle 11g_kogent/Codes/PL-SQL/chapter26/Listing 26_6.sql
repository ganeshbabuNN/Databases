declare
	clob_u clob;
	read_amt integer;
	read_oft integer;
	buffer varchar2(50);
begin
	select empinfo
	into clob_u
	from employee
	where empid = 101;
	read_amt := 10;
	read_oft := 1;
	dbms_lob.read (clob_u, read_amt, read_oft, buffer);
	dbms_output.put_line(buffer);
	/*  if initial value of empinfo is aaaa, displays aaaa */
	update employee
	set empinfo = empty_clob( )
	where empid = 101;
	read_amt := 10;
	dbms_lob.read (clob_u, read_amt, read_oft, buffer);
	dbms_output.put_line( buffer);
	/* still displays aaaa the old value */
	Select empinfo into clob_u
	from employee
	where empid = 101;
	/* Refreshing locator */
	dbms_lob.read (clob_u, read_amt, read_oft, buffer);
	/* ERROR no Data found */
end;
/