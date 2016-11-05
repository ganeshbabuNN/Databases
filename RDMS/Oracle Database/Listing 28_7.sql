declare
 	cursor c1 (zcname varchar2) is
 	select enquiryno from enquiry e,course c  where c.coursename = zcname
 	and c.coursecode = e.coursecode;
begin
 	for z in c1('ORACLE') loop
  		dbms_output.put_line(z.enquiryno);
 	end loop;
end;
/