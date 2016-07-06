declare
  	cursor c1(bcode number) is
  	select crs.coursename,bat.startingdate
  	from course crs,batch bat
  	where bat.batchcode = bcode
  	and bat.coursecode = crs.coursecode;
 begin
  	for z in c1(20002) loop
   		dbms_output.put_line(z.coursename|| ' '||z.startingdate);
  	end loop;
 end;
/