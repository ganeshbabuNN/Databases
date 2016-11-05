declare
    	cursor c1 (d1 date) is
    	select distinct fname
    	from enquiry 
    	where enquiry.enquiryno
    	in
    	(select enquiryno
     	from enrollment
	where enrollmentdate > d1);
 begin
    	for z in c1 ('20-JAN-99') loop
        	dbms_output.put_line(z.fname);
    	end loop;
end;	
/
