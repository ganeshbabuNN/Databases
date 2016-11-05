declare
	clob_u clob;
	clob_c clob;
	clob_s clob;
	read_amt integer;
	read_oft integer;
	write_amt  integer;
	write_oft  integer;
	buffer  varchar2(20);
begin
	select empinfo
	into clob_u
	from employee
	where empid = 101
	for update;
	clob_c := clob_u;
	read_amt := 10;
	read_oft := 1;
	dbms_lob.read ( clob_c, read_amt, read_oft, buffer);
	dbms_output.put_line(buffer);
	/* print 'aaaa' if the initial value is aaaa */
	write_amt := 4;
	buffer := 'bbbb';
	write_oft := 5;
	dbms_lob.write (clob_u, write_amt, write_oft, buffer);
read_amt := 10;
	dbms_lob.read (clob_u, read_amt , read_oft, buffer);
	dbms_output.put_line (buffer);
	/* displays aaaabbbb*/
	read_amt := 10;
	dbms_lob.read ( clob_c, read_amt, read_oft, buffer);
	dbms_output.put_line( buffer);
	/* displays 'aaaa' */
	insert into employee (empid, empinfo) 
	values ( 104, clob_c);
	Select empinfo
	into clob_s
	from employee
	where empid = 104;
        read_amt :=10;
	dbms_lob.read ( clob_s, read_amt, read_oft, buffer);
	dbms_output.put_line (buffer);
	/* display aaaa */
end;
/
