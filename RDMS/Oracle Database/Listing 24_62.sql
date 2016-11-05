declare
	cursor cl is
	select batchcode, expectedincome from batch
	for update;
	z  cl%rowtype;
begin
	open cl;
	loop
		fetch cl into z;
		exit when cl%notfound;
		update batch
		set expectedincome = 1.1 * expectedincome
		where current of cl;
	end loop;
	close cl;
end;
