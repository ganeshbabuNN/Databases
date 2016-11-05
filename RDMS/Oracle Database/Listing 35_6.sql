create or replace procedure cal(a number,b number,operation number) 
as 
begin 
	execute immediate 
	'begin 
		compute' || to_char(operation)||'(:1,:2); 
	end;' 
	using a,b; 
end; 
/
