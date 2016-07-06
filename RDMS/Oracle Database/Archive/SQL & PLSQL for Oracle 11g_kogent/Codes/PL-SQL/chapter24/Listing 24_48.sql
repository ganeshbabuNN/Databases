declare 
	type batch1 is ref cursor return batch%row type;
	x  batch1; 
	r  batch%rowtype;
	y  batch1;
begin
	y := x;
					--the above statement is useless because x							--is not pointing to any work area.
	open x for select *
			from batch;
	fetch x into r;
					-- fetch first row from cursor
	fetch y into r;
					-- raise exception invalid cursor
exception
when invalid_cursor then
	y := x;
	fetch y into r;
					-- fetches record from cursor
	open y for select *
	from batch;
					--it reuses work area for another query
	fetch x into r;
end;
