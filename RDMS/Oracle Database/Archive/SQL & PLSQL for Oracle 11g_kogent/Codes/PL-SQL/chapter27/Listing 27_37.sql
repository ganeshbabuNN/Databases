declare
	x  empobj;
	cursor c1 is
	select deref(p.emp) derefp
	from emp_ref p;
begin
	for z in c1 loop
		x := z.derefp;
		dbms_output.put_line(x.name);
	end loop;
end;
/
