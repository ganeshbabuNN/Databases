declare
 	cursor c1 is
 	select coursename,batchcode,startingdate,duration,coursefees,
  	netincome,expectedincome,batch.lastno
 	from course,batch
 	where course.coursecode=batch.coursecode;
begin
 	for z in c1 loop
  		dbms_output.put_line(z.coursename||'   '||z.batchcode||'   '||
   		z.startingdate||'   '||z.duration||'   '||z.coursefees||'   '||
   		z.netincome||'   '||z.expectedincome||'   '||z.lastno);
 	end loop;
end;
/