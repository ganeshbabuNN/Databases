declare
 	x number;
 	y number;
begin
 	x := 5;
 	goto abc;
 	begin
  		<<abc>>
  		y:=10;
 	end;
end;
/
