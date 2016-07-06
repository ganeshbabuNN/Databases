declare
	x ref empobj;
	y empobj;
begin
	select ref(p)
	into x
	from empobjtab p
	where p.empid=1;
	select deref(x)
	into y 
	from dual;
	dbms_output.put_line(y.name);
end;
/
