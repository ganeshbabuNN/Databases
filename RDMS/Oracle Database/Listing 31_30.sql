create or replace procedure quartinc_crs(name varchar2) as
cursor c1 is
select to_char(feespaiddate,'Q') qtr,
to_char(feespaiddate,'MON')mnt, sum(amount) samt
from feespaid,course
where course.coursename=name
and course.coursecode=substr(to_char(rollno),1,2)
group by to_char(feespaiddate,'Q'),to_char(feespaiddate,'MON');
begin
	for z in c1 loop
     		dbms_output.put_line(z.qtr||'    '||z.mnt    ||'    '||z.samt);
   	end loop;
end quartinc_crs;
/
