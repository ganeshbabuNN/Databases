declare
  	cursor c1(coursenm varchar2) is
  	select e.fname
  	from enquiry e,course course
  	where course.coursename = coursenm
  	and course.coursecode = e.coursecode;
 begin
  	for z in c1('ORACLE') loop
   		dbms_output.put_line (z.fname);
  	end loop;
 end;
/