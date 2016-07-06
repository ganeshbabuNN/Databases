Declare 
	Cursor c1 is
	select batchcode, expectedincome, rowid
	from batch;
	Z c1%rowtype;
begin
	open c1;
	fetch c1 into Z;
	update batch
	set netincome=1.1*netincome
	where rowid = Z.rowid;
	commit;
	fetch c1 into Z;
	close c1;
end;
/
