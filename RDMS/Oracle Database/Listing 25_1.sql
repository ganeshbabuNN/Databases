declare
	type vmarktype is
	varray(10) of  integer;			--A
	total integer;
	x vmarktype;					--B
begin
	x := vmarktype ( 15, 36, 25, 18, 17);		--C
	total := x.count;				--D
	for i in 1 .. total  loop 
		dbms_output.put_line(x(i));		--E
	end loop;
end;
/
