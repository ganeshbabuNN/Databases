Declare
	x number := 45;
	y number := 60;
	z number := 23;
	big number;
begin
	big := x;
	if(y > big) then
   		big := y;
	else
   		if(z > big) then
     			big := z;
   		end if;
	end if;
	dbms_output.put_line('the biggest number is '||to_char(big));
end;
/
