declare
  	cursor c1 is
  	select e2.fname
  	from enquiry e1,enquiry e2
  	where e1.fname = 'ANIL'
  	and e1.coursecode = e2.coursecode
  	and e2.en_st = 'Y';
begin
  	for z in c1 loop
   		dbms_output.put_line(z.fname);
  	end loop;
 end;
/