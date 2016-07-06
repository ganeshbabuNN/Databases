declare
	cursor cl is
	select ename from emp
	where cname=’acc’                            
	for update
	nowait;
begin
	open cl;
	close cl;
end;
/
