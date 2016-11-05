declare
	x number(2);
	bcode number(8);
begin 
	bcode := 100010;
	select expectedincome/nvl(netincome,0)
	into x
	from batch 
	where batchcode = bcode;	-- a
	insert into batchanalysis(batchcode, value)
	values(bcode,x);		-- b
end;
/
