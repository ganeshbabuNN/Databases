declare
 	cursor c1 is 
 	select * 
 	from course;
begin
	 for z in c1 loop
  		dbms_output.put_line(z.coursecode||’ ‘||z.coursename||’ ‘||
     		z.syllabus||’  ‘||z.lastno);
 	end loop;
end;
/