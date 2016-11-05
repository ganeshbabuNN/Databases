DECLARE
	Y   REAL;   		--Outer Y       		--A
BEGIN
	.................
								--Block1
	DECLARE
		Y INTEGER;  	-- Inner Y   			--B
	BEGIN
								--Block2  
		Y : = 5 ;   	--Referencing Inner Y 		--E 
	END;                                                	--C
	Y : = 5.34;      	--Referencing outer Y       	--D
END ;
