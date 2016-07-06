declare
	x courselist2;
begin
	select course
	into x
	from student4
	where sname= 'Ajay';
	dbms_output.put_line(x(1).coursename);
						--prints oracle
end;
/
