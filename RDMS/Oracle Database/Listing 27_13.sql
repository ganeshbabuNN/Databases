declare
	x complex3;
	y complex3;
	z complex3;
begin
	x := complex3(3, 4);
	y := complex3(5, 6);
	x.print; 				--inherited method
	y.print;
	z := y.sub1(x);
	z.print;
end;
/
