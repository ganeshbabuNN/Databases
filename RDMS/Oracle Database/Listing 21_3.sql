<<A>>
Declare      				--start of Block A
	i number ;
begin
	i := 5 ;
	Declare   				--start of Block B 
		j number;
   	begin
        	j := 10;
    		exception
    		when value_error then 
		j :=15;
    	end;    				--end of Block B
	i := i+1;
	Exception
	when value_error then 
	i := 20;
end;   					--end of Block A
/
