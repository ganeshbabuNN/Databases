declare
	cursor c1 is
	Select batchcode, startingdate from batch;
	bcode batch.batchcode%type; 
	sdate batch.startingdate%type;
	z c1%rowtype;
begin
	open c1;
	fetch c1 into bcode, sdate;         	--A
	fetch c1 into z;			--B
	fetch c1 into bcode; 			--C
	close cl;
end;
/
