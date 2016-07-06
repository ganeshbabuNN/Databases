declare 
	cursor c1 is
	select batchcode, expectedincome, rowid
	from batch;
	z c1%rowtype;
     cnt number:=0;
begin
	open c1;
	fetch c1 into z;
      while(c1%found) loop
	update batch
	set netincome=1.1*netincome
	where rowid = z.rowid;
      if(mod(cnt,100)=0) then
	commit;
      end;
      cnt:=cnt+1;
	fetch c1 into z;
      end loop;
	close c1;
end;
