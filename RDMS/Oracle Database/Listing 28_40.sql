create or replace procedure del_nullexpbatch as
begin
	delete batch
	where expectedincome = 0;
end del_nullexpbatch;

