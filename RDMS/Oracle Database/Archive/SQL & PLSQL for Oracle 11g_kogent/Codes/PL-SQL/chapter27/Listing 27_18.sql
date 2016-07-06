declare
	x complex2;
	y complex2;
	z complex4;
begin
	x := complex2(3, 4);
	y := complex2(5, 6);
	x.print; 			--use method complex2.print
	y.print;
	z := complex4(8, 9);
	z.print;
	x := z;  			--you can assign supertype to subtype
	x.print; 			--use method complex4.print
					--z:=x; error condition
end;
/