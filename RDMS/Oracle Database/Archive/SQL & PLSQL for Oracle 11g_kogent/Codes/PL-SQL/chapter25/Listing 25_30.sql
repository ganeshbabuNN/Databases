create or replace procedure insstudent (studentname in varchar2, ccode in 		number, cname in varchar2) as
	x  courselist2;
	c number;
     i number;
begin 
	select  course
	into x
	from student4
	where sname = studentname;
	x.extend;--  it extends array to add new element
     	x(x.last):=tcourse1(ccode, cname);
					--put new values into local variable x
	update student4
	set course = x
	where sname = studentname;	--put updated  value back to table 
end;
/
