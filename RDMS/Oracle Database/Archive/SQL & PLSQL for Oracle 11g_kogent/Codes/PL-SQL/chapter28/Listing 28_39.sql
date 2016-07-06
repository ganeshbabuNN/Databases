create or replace procedure delete_spbatch(bcode in number) as
begin
	delete batch where batchcode = bcode;
end delete_spbatch;
