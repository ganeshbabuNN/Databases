declare
	dlob clob;
	slob clob;
	amt integer;
	buffer varchar2(30);
	read_amt integer := 20;
	read_oft integer := 1;
begin
	select empinfo
	into dlob
	from employee
	where empid = 101
	for update;
	dbms_lob.trim(dlob,10);
	dbms_lob.read(dlob,read_amt,read_oft,buffer);
	dbms_output.put_line(buffer);
	commit;
end;
/