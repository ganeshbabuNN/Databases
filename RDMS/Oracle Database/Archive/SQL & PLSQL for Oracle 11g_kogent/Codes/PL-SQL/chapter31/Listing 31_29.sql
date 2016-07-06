create or replace procedure enrl_batch_days(bcode number) as
cursor c1 is
select enrollmentdate dt,count(*) cnt
from enrollment,batch
where batch.batchcode=bcode
and batch.batchcode=substr(to_char(rollno),1,5)
and (to_date(sysdate)-enrollmentdate)
between 1 and 15
group by enrollmentdate;
begin
	for z in c1 loop
     		dbms_output.put_line(z.dt||'   '||z.cnt);
	end loop;
 end enrl_batch_days;
 /
