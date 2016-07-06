declare
	type studentmarks is
	table of integer;
	x  studentmarks := studentmarks (53, 73, 60, 80);
begin
	x(1) := x(2) + 0.5 *  x(3);
	x(2) := round(100/x(1));
	x ('c') := 5; 				--RAISES EXCEPTION VALUE_ERROR
	x(0) := 10; 				--RAISES EXCEPTION 
                                      	--SUBSCRIPT_OUTSIDE_LIMIT
	x(8) := 20; 				--RAISES EXCEPTION
                                     	--SUBSCRIPT_BEYOUND_COUNT 
end;
/
