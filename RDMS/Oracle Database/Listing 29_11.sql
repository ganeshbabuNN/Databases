declare
  	cursor c1 (crs varchar2)is
  	select *
  	from batch
  	where coursecode
  	in
  	(select coursecode
   	from course
   	where coursename = crs);
begin
   	for z in c1 ('ORACLE') loop
       	dbms_output.put_line(z.batchcode||'    '||
             z.coursecode||'    '||z.startingdate
             ||'    '||z.duration||'   '||z.coursefees
             ||'    '||z.netincome||'    '||z.expectedincome
             ||'    '||z.lastno);
   	end loop;
end;
/
