create trigger enquiry1_sunday
before insert or update or delete on enquiry 
declare
	uname varchar2(20);
begin
	select user into uname from dual;
	if inserting  then 
		if (to_char(sysdate,'Day') != 'Sunday')
		then
 			 raise_application_error(-20111,'Insertion is not allowed 					on other days');
		end if;
	end if;
	if updating or deleting then
		raise_application_error(-20112,'Updation and Deletion is not 				allowed ');   
	end if;
end;
/
