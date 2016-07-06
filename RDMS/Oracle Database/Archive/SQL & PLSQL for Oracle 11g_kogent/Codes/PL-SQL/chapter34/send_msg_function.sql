create or replace function send_msg(msg varchar2)return varchar2 
is 
pragma autonomous_transaction; 
begin 
	insert into debug values(msg); 
 	commit; 
 	return msg; 
end; 
/
