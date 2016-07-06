create or replace procedure update_lastno_crs as
	cursor c1 is
	select lastno,coursecode
	from course;
	cursor c2 is 
	select sum(lastno) slastno,
		substr(to_char(batchcode),1,2) ccode
	from batch
	group by substr(to_char(batchcode),1,2);
begin
	for z1 in c1 loop
	   for z2 in c2 loop
		if(to_char(z1.coursecode)=z2.ccode) then
			update course
			set course.lastno = z2.slastno
			where coursecode = z1.coursecode;
		end if;
	    end loop;
	end loop; 
end update_lastno_crs;
/