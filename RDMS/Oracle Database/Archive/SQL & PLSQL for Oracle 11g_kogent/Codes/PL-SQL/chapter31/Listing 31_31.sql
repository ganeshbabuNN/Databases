create or replace procedure sumexp_month as
cursor c1 is select sum(amount) samt,
substr(to_char(expdate,'DD-MON-YY'),4,3) mnth
from expenditure
group by substr(to_char(expdate,'DD-MON-YY'),4,3);
begin
	for z in c1 loop
     		dbms_output.put_line(z.mnth||'  '||z.samt);
	end loop;
end sumexp_month;
/
