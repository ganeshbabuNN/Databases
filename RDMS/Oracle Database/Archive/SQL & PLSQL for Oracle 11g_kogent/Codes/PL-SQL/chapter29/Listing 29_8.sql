declare
  	cursor c1 is
  	select coursename,batchcode
  	from batch,course
  	where netincome > 50000
  	and batch.coursecode = course.coursecode;
begin
  	for z in c1 loop
      	dbms_output.put_line(z.coursename||'  '||z.batchcode);
  	end loop;
end;
/
