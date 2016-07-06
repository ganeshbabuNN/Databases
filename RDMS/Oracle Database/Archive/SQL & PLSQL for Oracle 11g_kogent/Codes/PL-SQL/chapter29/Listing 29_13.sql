declare
   	cursor c1 (crsname varchar2)is
   	select distinct fname
   	from enquiry
   	where en_st = 'Y'
   	and coursecode
   	in
   	(select coursecode
    	from course
    	where coursename = crsname);
begin
    	for z in c1('ORACLE') loop
        	dbms_output.put_line(z.fname);
    	end loop;
end;
/
