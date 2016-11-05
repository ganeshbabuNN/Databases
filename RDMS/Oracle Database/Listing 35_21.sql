create or replace trigger alerttrigger1 after insert or update or 		delete on scott.emp 
begin   
	dbms_alert.signal('alert_demo', 'this is a test');   
end;  
/
