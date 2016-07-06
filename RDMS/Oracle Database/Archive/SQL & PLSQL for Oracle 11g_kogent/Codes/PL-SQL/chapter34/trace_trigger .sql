create or replace  trigger trace_trigger  
before insert on T1 for each row  
declare  
pragma autonomous_transaction;  
begin  
	insert into T2 values(:new.A,:new.B);  
    	commit;  
end;  
/
