create or replace procedure open_batch_cur (x in out batch_data.batch_curtype, 		ch in number) as
begin
	if ch = 1 then
		open x for select * 
				from batch
				where coursecode =10;
	elsif ch = 2 then
		open x for select *
		from batch
		where startingdate > '01-nov-1998'; 
	end if;
end;
/
