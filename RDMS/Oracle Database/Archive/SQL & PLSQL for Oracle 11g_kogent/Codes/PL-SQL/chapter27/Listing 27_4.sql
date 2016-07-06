declare
	x complex1;
	y complex1;
	z complex1;
begin
	x := complex1(3, 4);
	y := complex1(5, 6);
	x.print;
	y.print;
	z := x.add1(y);
	z.print;
end;
/
