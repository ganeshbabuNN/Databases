declare  					--start of block A
	i number;
begin
	i := 5;
	i := i+1;
	exception
	when value_error then
	declare  				--start of block B
            j number ;
	begin
		j := 10;
		j := j +1;
        	exception
        	when value_error then
		j := 20;
	end;  --  end of block b
end; 						--end of block A
/
