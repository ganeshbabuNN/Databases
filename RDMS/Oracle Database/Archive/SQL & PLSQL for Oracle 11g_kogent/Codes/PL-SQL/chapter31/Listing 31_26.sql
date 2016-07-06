create or replace procedure sumamt_month as
cursor c1 is
select sum(amount) samt,
substr(to_char(feespaiddate,'DD-MON-YY'),4,3) mnth
from feespaid
group by substr(to_char(feespaiddate,'DD-MON-YY'),4,3);
begin
	for z in c1 loop
     		dbms_output.put_line(z.mnth||'  '||z.samt);
	end loop;
end sumamt_month;
/
