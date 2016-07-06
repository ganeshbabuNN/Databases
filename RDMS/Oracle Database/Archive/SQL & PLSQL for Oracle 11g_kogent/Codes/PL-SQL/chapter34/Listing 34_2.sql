create table z_copy(a number , b number);
/ 
create or replace trigger autotrigger 
before insert on  z for each row 
declare 
	pragma autonomous_transaction; 
begin 
	insert into z_copy values(:new.A,:new.B); 
	commit; 
end; 
/
