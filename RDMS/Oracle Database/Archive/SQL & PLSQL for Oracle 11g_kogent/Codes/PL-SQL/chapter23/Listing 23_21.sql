declare
	k number := 1;
begin
	<<A>>
	for j in 1..5 loop
		<<B>>
		for i in 1..10 loop
   			if(j=i) then
    				exit A;
   			end if;
   			dbms_output.put_line(' '||to_char(k));
   			k := k + 1;
  		end loop;
 	end loop;
end;
/
