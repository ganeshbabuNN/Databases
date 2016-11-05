create or replace procedure insert_fees(rlno in number, fdate date, amt number) 		as
begin
  	if (amt>100000) then
   		raise_application_error(-20110,'Amount is very high');
  	else
   		insert into feespaid(rollno, feespaiddate, amount)
		values (rlno, fdate, amt);
  	end if;
end;
/
