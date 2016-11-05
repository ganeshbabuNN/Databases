begin
	insert into course
	values ( ....);
	if check_duplicate then
		rollback;
	end if;
end;
