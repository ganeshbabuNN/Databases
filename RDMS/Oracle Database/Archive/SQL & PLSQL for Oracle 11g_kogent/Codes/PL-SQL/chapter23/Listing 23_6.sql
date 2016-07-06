declare
 	X number := 45;
 	begin
 		if (X<40) then
    			dbms_output.put_line('F');
		ELSIF (X<=60) then
    			dbms_output.put_line('S');
 		ELSIF (X<75) then
    			dbms_output.put_line('I');
 		else
    			dbms_output.put_line('D');
 		end if;
 	end;
	/
