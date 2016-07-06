declare
	X tab_courselist;
begin 
	select courses
	into X
	from tab_student
	where sname = 'Sunil' ;
end;
/
