declare
	cursor cl is
	select batchcode,expectedincome
	from batch
	for update;
	z  cl% rowtype;
begin
	open cl; 						-- A
	fetch cl into z; 					-- B
	commit;							-- C
	fetch cl into z ; 
end;
