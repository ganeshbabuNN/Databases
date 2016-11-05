create or replace procedure crs_maxdiff as
cursor c1 is
select coursename
from batch,course
where course.coursecode = batch.coursecode
and (expectedincome-netincome) =
(select max(expectedincome-netincome)
from batch);
begin
	for z in c1 loop
		dbms_output.put_line(z.coursename);
	end loop;
end crs_maxdiff;
/
