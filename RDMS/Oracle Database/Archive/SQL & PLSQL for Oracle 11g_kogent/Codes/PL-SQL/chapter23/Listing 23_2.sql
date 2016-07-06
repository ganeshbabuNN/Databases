declare
	x number;
	y number;
	z number;
	big number;
begin
	z := 10;
	x := 100;
	y := 50;
	big := x;
	if(y > big) 
	then
		
			big := y;
	end if;
	if(z > big) 
	then
		big := z;
	end if;
	dbms_output.put_line(' The highest is  '|| to_char(big));
end;
/
