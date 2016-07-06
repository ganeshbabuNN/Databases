create or replace function totamt return number as
tamt number;
begin
	select sum(amount)
  	into tamt
  	from feespaid;
  	return(tamt);
end totamt;
/
