create or replace procedure delete_oldenq as
begin
 	delete enquiry
 	where enquirydate < add_months(sysdate,-6)
 	and en_st = 'N';
end delete_oldenq;
/