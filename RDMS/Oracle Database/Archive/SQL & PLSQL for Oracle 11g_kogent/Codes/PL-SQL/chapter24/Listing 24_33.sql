declare
	...............
begin
	select netincome
	into amt
	from batch
	where batchcode=bcode;
	IF SQL%NOTFOUND then
		A;
	END IF;
	Exception
	When no_data_ found then
		B;
end;
