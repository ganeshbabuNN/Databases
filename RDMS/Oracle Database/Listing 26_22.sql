declare
	dlob CLOB;
	slob CLOB;
	amt integer;
	buffer varchar2(30);
	read_amt integer := 20;
	read_oft integer := 1;
begin
	Select empinfo
	into dlob
	from employee
	where empid = 101;
	dbms_output.put_line(dbms_lob.getlength(dlob));
	dbms_lob.read(dlob,read_amt,read_oft,buffer);
	dbms_output.put_line(buffer);
	commit;
end;
/
