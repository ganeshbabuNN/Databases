create or replace procedure opencur(c1 in out batch_data.batch_curtype, c2 in 		out batch_data.batch_curtype) is
begin
	open c1 for select *
		           from batch
		           where coursecode = 10;
	open c2 for select *
		         from batch
		         where coursecode = 20;	
end;
