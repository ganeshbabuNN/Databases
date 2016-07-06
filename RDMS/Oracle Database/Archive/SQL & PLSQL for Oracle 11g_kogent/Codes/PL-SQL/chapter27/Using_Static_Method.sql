declare
	x complex2;
	y complex2;
	z complex2;
begin
	x := complex2(3, 4);
	y := complex2(5, 6);
	x.print;
	y.print;
	z := complex2.add1(x, y); -- A
	z.print;
end;
