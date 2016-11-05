declare
	type batchcur is ref cursor 
	return batch%rowtype;
	x batchcur; 
	r batch%rowtype;
	y batchcur;
begin
	open x for select * from batch;
	fetch x into r;    			-- first row is fetched
	y := x;
	fetch y into r;     			-- second row is fetched 
	close y;               		-- cursor area is closed
          fetch x into r;    		-- raises exception 
                                      	-- invalid_cursor 

end;
