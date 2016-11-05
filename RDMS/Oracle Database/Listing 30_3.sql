create or replace procedure insamt (rollno in number, fdate in date,
amt in number) as 
highamt exception;
begin
	if (amt > 10000) then
		raise highamt;
	else
   		insert into feespaid(rollno, feespaiddate, amount) values (rollno, 				fdate, amt);
  	end if;
end;
/
