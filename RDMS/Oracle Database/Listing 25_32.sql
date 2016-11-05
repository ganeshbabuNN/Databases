create or replace procedure updstudent ( studentname varchar2, ccode number, 		cname varchar2) as
	x courselist2;
	i number;
	cnt number;
begin
	select course
	into x
	from student4
	where sname = studentname;
	cnt := x.last;
	for i in 1 .. cnt loop
		if x(i).coursecode = ccode then 
			x(i).coursename := cname;
		end if;
	End loop;
	update student4
	Set course = x
	where sname = studentname;
end;
/
