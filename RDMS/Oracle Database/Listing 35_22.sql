create or replace procedure alerttest  
as  
x number;  
y varchar2(100);  
begin  
	dbms_alert.register('alert_demo');  
	dbms_alert.waitone('alert_demo',y , x,1);  
	if x=1 then  
		dbms_output.put_line(x);  
	else  
		dbms_output.put_line('the alert occurred '||x||y);  
	end if;  
end;  
/
