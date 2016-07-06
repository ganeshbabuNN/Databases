declare 
	bcode batch.batchcode%type;
	amt number(10,2) := 0;
begin
	bcode := 20001;
	amt :=10000;
	Update batch
	Set netincome = amt
	where batchcode = bcode;
	IF SQL%NOTFOUND THEN 
insert into batch (coursecode,batchcode,         		netincome,startingdate,duration,lastno,coursefees)
	values (1,bcode,0,'1-jan-2003',30,0,1000);
	END IF;
end;
/
