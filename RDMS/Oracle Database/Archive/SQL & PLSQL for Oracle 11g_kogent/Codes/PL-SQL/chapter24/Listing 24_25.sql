declare
	amt number := 0;
	cnt number := 0;
	cursor c1 is
	select netincome 
	from batch
	order by netincome desc;
	Z c1%rowtype;
begin
	open c1;
	fetch c1 into Z;
	while (c1%found) and (cnt <= 5) loop
		cnt := cnt +1;
		fetch c1 into Z;
        end loop;
	if cnt = 5 then
		dbms_output.put_line ('The amount is' || TO_CHAR ( Z.netincome));
	else
		dbms_output.put_line ('The required rows are not present');
	end if;
        close c1;
end;
/
