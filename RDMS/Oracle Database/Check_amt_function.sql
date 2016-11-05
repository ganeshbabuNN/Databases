Create Function check_amt(amt number)
	Return varchar2 is
begin
	if amt > 100000 then
		return ('HIGH');
	else
		return('LOW');
	end if;
end;
/
