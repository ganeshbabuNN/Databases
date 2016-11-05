declare
	type studentmarks is varray(10) of integer;
	x studentmarks;
	function doublemarks(x in studentmarks)
  	return studentmarks is
	y studentmarks;
begin
	y := x;
	for i in 1..x.count loop
		y(i) := 2 * y(i);
	end loop;
	return y;
end;
begin
	x := studentmarks(10, 20, 30);
	dbms_output.put_line(doublemarks(x)(2));
end;
/
