						--The procedure auto2 is marked as 								--autonomous  
create or replace procedure auto2 as    
pragma autonomous_transaction;  
procedure local is  
begin  
	insert into z values(1,5);  
end local;  
begin  
	local;  
	commit;  
end auto2;
/  
