create or replace Procedure updatebatch (rlno in number, amt in number) as 
bcode number;
begin
	select batchcode 
	into bcode
	from enrollment
	where rollno = rlno;
	update batch
	set netincome = netincome+amt 
	where batchcode = bcode;
end updatebatch;
/
