declare
	x  batch.batchcode % type;
	y batch.expectedincome % type;
begin
	x :=  .........
	y :=  .........	
	insert into temp 
	values ( x,y);
end;
 
declare
	x batch.batchcode % type;
	y batch.expectedincome% type;
begin
	select batchcode, expectedincome
	into x,y
	from temp
	where ......;
	............
	update  .........
	set co1 := x;
end;
