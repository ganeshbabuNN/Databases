declare
  	cursor c1 (cname varchar2) is
  	select syllabus
  	from course
  	where coursename = cname;
 begin
  	for z in c1('ORACLE') loop
   		dbms_output.put_line(z.syllabus);
  	end loop;
 end;
/