create trigger drop_table 
after update on T1 
declare 
pragma autonomous_transaction; 
begin 
	execute immediate 'drop table T2'; 
end;  
/
