declare
	x complex2;
	y complex2;
	z complex2;
begin
	x := complex2(3, 4);
	y := complex2(5, 6);
	x.print;
	y.print;
	if(x > y ) then 	--call x.val(y) > 0 then 
				--x is more otherwise y more
		x.print;
	else
		y.print;
	end if;
end;
/