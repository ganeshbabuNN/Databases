create or replace trigger t1 
before update on tempfeespaid
for each row 
declare
	x number;
begin 
	insert into feesanalysis 
	values (:old.amt);
	select avg(amt)
	into x 
	from feesanalysis;
	if  x > 200 then
		insert into feesaudit values (x);
	end if;
end;
/

