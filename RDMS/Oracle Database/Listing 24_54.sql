cursor y is select * from batch;    
procedure open_batch (batchcur in out batch_curtype) is
begin
	open batchcur
	for select *
	         from batch;
      end open_batch;
      function give_one_row return batch%rowtype is
      z batch%rowtype;
      begin
      	fetch x into z;
      	if x%notfound then
      		close x;
      		open x;
      	else
       		return z;
      	end if;
      end;
	begin     --initialization
		open x;
end batch_data;
