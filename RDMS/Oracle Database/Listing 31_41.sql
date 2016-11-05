create or replace procedure date_closing_amount as
cursor c1 is
select sum(amount) amt,to_char(feespaiddate,'DD-MON-YY') dt
from feespaid
group by to_char(feespaiddate,'DD-MON-YY');
begin
	for z in c1 loop
     		dbms_output.put_line(z.dt||'    '||z.amt);
    	end loop;
end date_closing_amount;
/
