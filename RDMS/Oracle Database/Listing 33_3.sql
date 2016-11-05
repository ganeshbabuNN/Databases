create or replace trigger enquirytrg1
before insert or update or delete  on enquiry 
declare 
	uname varchar(30);
begin
	select user into uname
	from dual;
	If uname='STUDENT1' 					--caps 
	then
		raise_application_error(-20110,'Invalid insertion');
	end if;
end;
/
