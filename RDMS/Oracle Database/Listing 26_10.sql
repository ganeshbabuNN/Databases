declare
	clob_u clob;
	read_amt integer;
	read_oft integer;
	write_amt integer;
	write_oft integer;
	buffer varchar2(20);
begin 
	update employee
    	set empid=empid;
	select empinfo 
	into clob_u
	from employee
	where empid = 101;
	read_amt := 10;
	read_oft :=1;
	dbms_lob.read ( clob_u, read_amt, read_oft, buffer);
	dbms_output.put_line( buffer);
	/* assumming initial value 'aaaa' displays 'aaaa' */
	commit;        
	write_amt := 4;
	write_oft := 5; 
	buffer := 'bbbb'; 
	dbms_lob.write (clob_u, write_amt, write_oft, buffer);
	commit;
	/* displays error ORA-22990 : LOB locator cannot span transaction */
end;
