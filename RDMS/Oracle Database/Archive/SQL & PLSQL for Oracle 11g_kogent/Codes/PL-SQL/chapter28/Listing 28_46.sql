create or replace procedure delete_duplicate_enq as
  	cursor c1 is
  	select *
  	from enquiry;
begin
  	for z in c1 loop
   		delete enquiry
   		where enquiry.enquiryno = z.enquiryno
   		and rowid > any
   		(select rowid
   		from enquiry
   		where enquiry.enquiryno = z.enquiryno);
  	end loop;
 end delete_duplicate_enq;
/