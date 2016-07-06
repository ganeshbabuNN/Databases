create or replace Procedure  findname (enqno1 IN number, fname1 out varchar2) is 
fname2 varchar2(30); 					--A
begin
	select fname
	into fname2
	from enquiry
	where enquiryno = enqno1; 				--B
	fname1:= fname2; 					--C
Exception
	when no_data_found then
	raise_application_error (-20100,
	'The given enquiry number is not present');		--D
end;
/
