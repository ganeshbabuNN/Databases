declare
	x empobj;
begin
	select emp
	into x
	from empcoltab p
	where p.emp.empid=1;
	dbms_output.put_line(x.name);
	select value(p) –- use of value function
	into x
	from empobjtab p
	where p.empid=1;
	dbms_output.put_line(x.name);
end;
/
