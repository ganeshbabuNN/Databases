declare
 	dlob clob;
 	slob clob;
 	amt binary_integer;
 	v_buffer raw(2000);
begin
 	select empinfo
	into dlob
	from employee
	where empid = 101
	for update;
	select empinfo
	into slob
	from employee
	where empid = 104;
	amt:=1000;
 	dbms_lob.read(dlob,amt , 500 ,v_buffer);
 	dbms_lob.write(slob ,amt , 1200 ,v_buffer);
 	commit;
end;
/