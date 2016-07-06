declare
   	cursor c1 (d1 date) is
   	select fname, en.batchcode
   	from enquiry eq, enrollment en
   	where 
	eq.enquiryno=en.enquiryno and
	en.batchcode
   	in
   	(select batchcode
    	from batch
    	where startingdate > d1);
begin
   	for z in c1 ('20-FEB-99') loop
       	dbms_output.put_line(z.fname ||' '|| z.batchcode );
   	end loop;
end;
/
