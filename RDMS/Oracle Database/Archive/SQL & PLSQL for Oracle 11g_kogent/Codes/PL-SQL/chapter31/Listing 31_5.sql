Create or replace Function check_amt(amt  number)
	return varchar2 is
	X varchar2 (10);
begin
	if amt > 100000 then
		X :='HIGH';
	else
		X:='LOW';
	end if;
	RETURN (X);
END;
/
