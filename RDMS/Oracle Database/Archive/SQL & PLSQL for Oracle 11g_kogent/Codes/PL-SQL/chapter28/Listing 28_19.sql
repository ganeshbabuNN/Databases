declare
	cursor c1 is 
	select crs.coursename,bat.startingdate
	from course crs,batch bat
	where bat.coursecode = crs.coursecode;
begin
	for z in c1 loop
		dbms_output.put_line(z.coursename||’ ‘||z.startingdate);
	end loop;
end;
/