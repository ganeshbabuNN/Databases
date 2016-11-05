create or replace procedure cal(a number,b number,operation number) 
as 
begin 
	if(operation = 1 ) then 
		compute1(a,b); 
	elsif(operation = 2) then 
		compute2(a,b); 
	end if; 
end; 
/
