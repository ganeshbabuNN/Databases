create or replace function testbatchcode (bcode number) return boolean as
	cursor c1 is
	select 'x'
	from batch
	where batchcode = bcode;
	flag boolean;
	z c1%rowtype;
begin 
	open c1;
	fetch c1 into z;
	if c1%found then
		flag  := true;
	else
		flag := false;
	end if;
	close c1;
	return (flag);
end;
/
