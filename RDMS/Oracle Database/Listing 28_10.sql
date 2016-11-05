declare
  	cursor c1 (bcode number) is
  	select rollno
  	from enrollment
  	where batchcode = bcode;
 begin
  	for z in c1(10003) loop
   		dbms_output.put_line(z.rollno);
  	end loop;
 end;
/