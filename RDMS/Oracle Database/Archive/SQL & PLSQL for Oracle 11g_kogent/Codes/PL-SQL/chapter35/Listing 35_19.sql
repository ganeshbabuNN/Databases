--this is done from terminal 1
create or replace procedure sendmessage(msg varchar2) as  
status_id  number;  
begin  
	dbms_pipe.pack_message(length(msg));  
	dbms_pipe.pack_message(msg);  
	status_id := dbms_pipe.send_message('send_message');  
	if status_id != 0 
	then  
		raise_application_error(-20099, 'send error');  
	end if;  
end sendmessage;  
/
