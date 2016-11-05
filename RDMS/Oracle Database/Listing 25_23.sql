declare
	x courselist2;
begin
	x := courselist2 (tcourse1 (10,'oracle'),
	tcourse1 (20,'pascal'), tcourse1 (30,'c'));
	update student4 set course = x where sname = 'Ajay';
end;
/
