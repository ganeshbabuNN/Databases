create or replace package gen_batch_data as
	type generic_cur is ref cursor;
end gen_batch_data;
/
create or replace procedure open_batch_cur( x in out gen_batch_data.generic_cur,
					       ch in number ) as
begin
	if ch = 1 then
		open x for select batchcode,coursecode
				from batch;
	elsif  ch = 2 then
		open x for select batchcode,netincome 
				from batch;
	end if;
end;
/
