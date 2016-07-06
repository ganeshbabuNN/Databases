create or replace function expforbatch (bcode number) 
return number is
samt number;
begin
  	select sum(amount)
  	into samt
  	from expenditure
  	where batchcode = bcode;
  	return(samt);
end expforbatch;
/
