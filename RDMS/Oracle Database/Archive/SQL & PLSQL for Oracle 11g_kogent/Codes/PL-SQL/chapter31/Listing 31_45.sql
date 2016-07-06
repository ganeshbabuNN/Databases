create or replace procedure minmaxdt_batch (bcode in number) as
cursor c1 is
select min(enrollmentdate) min_date,max(enrollmentdate) max_date
from enrollment
where batchcode = bcode;
begin
	for z in c1 loop
       	dbms_output.put_line(z.min_date||'    '||z.max_date);
   	end loop;
end minmaxdt_batch;
/
