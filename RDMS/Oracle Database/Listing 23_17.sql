declare
	x varchar2(20) := 'abcdf';
begin
	for j in 1..length(x) loop
  		for i in j..length(x) loop
   			dbms_output.put(substr(x,i,1));
 			dbms_output.new_line;
  		end loop;
 		exit;
	end loop;
end;
/
