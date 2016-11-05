declare
  	cursor c1(crs varchar2) is
  	select medianame,advdate
  	from advertisement a,course c,enquiry e
  	where c.coursename = crs
  	and c.coursecode = e.coursecode
  	and e.refcode = a.refcode;
begin
  	for z in c1('ORACLE') loop
   		dbms_output.put_line(z.medianame|| ' '||z.advdate);
  	end loop;
 end;
/