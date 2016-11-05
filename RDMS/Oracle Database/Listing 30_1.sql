declare
	firstname varchar2(30);
begin
	select fname
	into firstname
	from enquiry
	where enquiryno=10;
	dbms_output.put_line('The name is ' || firstname);
	exception
	when no_data_found then 
	dbms_output.put_line('The required name is not present');
	when others then
	dbms_output.put_line('Error is generated');
end;
/
