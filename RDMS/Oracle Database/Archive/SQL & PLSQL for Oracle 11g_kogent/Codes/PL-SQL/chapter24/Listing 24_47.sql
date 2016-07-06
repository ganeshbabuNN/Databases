declare
	type batch1 is ref cursor
	return batch%rowtype;
	type batch2 is ref cursor
	return batch%rowtype;
	x batch1;
	y batch1;
	z batch2;
begin
	x := y ;					--A
	z := x ;					--B; will throw error
end;
