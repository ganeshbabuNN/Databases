Create or replace function getname(enqno1 number) return varchar2 as
fname1 varchar2(30);
begin
	select   fname
	into  fname1
	from enquiry
	where enquiryno = enqno1;
	return (fname1);
Exception
	when no_data_found then
	raise_application_error(-20110,'The enquiry number is not present');
end;
/
