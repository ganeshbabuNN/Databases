declare
	x exception; 				--A
	n number;
begin
  	n := 56;
  	declare
    		x exception; --B
  	begin
   		raise x; 			--handled by others, referring B
  	end;  					--End of inner block B
Exception
	when x then 				--handler referring definition A
 	dbms_output.put_line('exception x');
	when others then
	dbms_output.put_line('others');
end;
/
