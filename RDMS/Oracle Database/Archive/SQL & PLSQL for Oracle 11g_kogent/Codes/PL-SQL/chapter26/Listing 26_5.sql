declare
	clob_s clob;
	clob_u  clob;
	read_amt integer;
	read_oft  integer;
	write_amt integer;
	write_oft integer;
	buffer varchar2(20);
begin
	select empinfo 
	into clob_s
	from employee
	Where empid = '101';
	Select empinfo 
	into clob_u
	from employee
	where empid = '101'
	for update;
	read_amt := 10;
	read_oft := 1;
	dbms_lob. read (clob_s, read_amt, read_oft, buffer);
	dbms_output.put_line (' value ' || buffer);	-- displays aaaa
	read_amt := 10;
	dbms_lob.read(clob_u, read_amt, read_oft, buffer);
	dbms_output.put_line ('value ' || buffer );	-- displays aaaa
	write_amt := 4;
	write_oft := 5;
	buffer := 'aabb';
	dbms_lob.write(clob_u, write_amt, write_oft, buffer);
	read_amt := 10;
	dbms_lob.read (clob_s, read_amt, read_oft, buffer);
	dbms_output.put_line(' value ' || buffer);-- still displays aaaa				read_amt := 10;
     	dbms_lob.read (clob_u, read_amt, read_oft, buffer);
	dbms_output.put_line(' value ' || buffer);-- aaaaaabb	
end;
/