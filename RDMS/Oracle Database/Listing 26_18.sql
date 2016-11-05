declare
	dlob CLOB;
	slob CLOB;
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
	Select empinfo
	into slob
	from employee
	where empid = 104;
	dbms_lob.copy(dlob, slob, 10, 1, 1);
	dbms_lob.read(dlob,read_amt,read_oft,buffer);
	dbms_output.put_line(buffer);
	commit;
end;
/