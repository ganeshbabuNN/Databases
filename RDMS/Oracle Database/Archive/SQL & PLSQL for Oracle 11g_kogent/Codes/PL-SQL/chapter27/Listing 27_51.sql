declare
	x ref empobj;
	cursor c1 is
	select ref(p) refp
	from empobjtab p;
begin
	for z in c1 loop
		insert into emp_ref values(1,z.refp);
	end loop;
end;
/
