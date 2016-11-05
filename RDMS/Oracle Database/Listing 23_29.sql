declare
	x number;
	y number;
begin
	x:= 5;
	goto abc;
	<<abc>>
	begin
		if (x>500) then
			y:= 10;
		end if;
	end;
end;
/
