declare
        type rec_type is record
         (code number);
        
	Type cur_num_type is
	ref cursor ;      					--A
	cur_num cur_num_type;        				--B
	x   rec_type;
	pcnt  number;
	ccnt  number;
begin 
	Open cur_num
	FOR select batchcode 
		from batch;              			-- C
	Fetch cur_num into x;          			-- D
	pcnt := 0;
	WHILE cur_num%found Loop	    			-- D
		pcnt := pcnt + 1;
		FETCH cur_num into x;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE ( 'Number of rows in batch are ' || TO_CHAR(pcnt));
        close cur_num;
	OPEN cur_num						--E
	FOR Select coursecode
		from course;
Fetch cur_num into X;
	ccnt := 0;
	WHILE cur_num%found Loop
		ccnt := ccnt +1;
		Fetch cur_num into X;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE ('Number of rows in course are ' || TO_CHAR(ccnt));
	CLOSE cur_num;						--F
end; 
/
