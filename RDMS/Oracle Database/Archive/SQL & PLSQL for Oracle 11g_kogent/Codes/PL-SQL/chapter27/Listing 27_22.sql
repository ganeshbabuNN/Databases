declare
	x complex6;
	y complex6;
	z complex5;
begin
	x := complex6(3, 4);
	y := complex6(5, 6);
					--z:=complex5(5, 7); 
					--Error cannot instantiate object
	x.print;
	y.print;
	z := x; 			--no error. You can assign object reference 							--of subtype to supertype
	z.print;
end;
/