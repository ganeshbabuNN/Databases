create or replace procedure delstudent (studentname varchar2,ccode number) as
X courselist2;
cnt number;
i number;
begin
	select course
	into x from student4
	where sname = studentname;
	cnt := x.last;
	For i in 1 .. cnt loop
		if x(i).coursecode = ccode then
			x(i).coursecode := null;
			x(i).coursename := null;
		end if;
	end loop;
	update student4
	set course = x where sname = studentname;
end;
/
