declare
	x tab_courselist;
begin
	x := tab_courselist (tab_course( 10, 'oracle'), tab_course(25,'c'));
	update tab_student
	set courses = x
	where sname = 'Anil';
end;
/
