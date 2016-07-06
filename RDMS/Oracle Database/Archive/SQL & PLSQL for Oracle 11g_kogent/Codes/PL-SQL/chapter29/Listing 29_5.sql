declare
  	cursor c1 is
  	select enq.fname
  	from enquiry enq
  	where coursecode = 10
  	and enq.en_st = 'Y'
  	intersect
  	select enq.fname
  	from enquiry enq
  	where coursecode = 20
  	and enq.en_st = 'Y';
begin
  	for z in c1 loop
      	dbms_output.put_line(z.fname);
  	end loop;
end;
/
