declare
	type vmarktype is
	table of integer;				--A
	y vmarktype;					--B
        total number;
begin
	y :=  vmarktype(15, 30, 25, 18, 10);		--C
	total := y.count;				--D
	for i in 1 .. total  loop
		dbms_output.put_line (y(i));		--E
	end loop;
end;
/
