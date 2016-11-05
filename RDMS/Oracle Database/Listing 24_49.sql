declare
	type batchcur is ref cursor
	return  batch%rowtype;
	type coursecur is ref cursor
	return course%rowtype;
	x batchcur;
	y coursecur;
	procedure open_batch (batchcursor in out batchcur) is
	begin
		open batchcursor for select * from batch;
	end;
begin
	open_batch (y);			-- it raises exception
end;
/
