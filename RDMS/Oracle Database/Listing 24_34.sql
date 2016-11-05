select netincome
into amt
from batch
where batchcode = bcode;
exception
when OTHERS then
	if SQL%NOTFOUND then
		..............
	end if;
	if ...........
		..............
	end if;
end;

