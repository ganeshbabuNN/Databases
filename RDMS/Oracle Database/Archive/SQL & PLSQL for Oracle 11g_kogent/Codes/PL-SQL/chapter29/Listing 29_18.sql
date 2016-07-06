declare
   	cursor c1 is
   	select distinct fname
   	from enquiry
   	where city = 'NAGPUR'
   	and en_st = 'Y'
   	and coursecode = 10;
begin
   	for z in c1 loop
       	dbms_output.put_line(z.fname);
   	end loop;
end;
/
