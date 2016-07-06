declare
	x varchar2(30);
begin
	select  coursename
	into x
	from the (select courses
	from tab_student 
	where sname = 'sunil')
	where coursecode = 10;
	dbms_output.put_line(x);		--prints oracle
end;
/
