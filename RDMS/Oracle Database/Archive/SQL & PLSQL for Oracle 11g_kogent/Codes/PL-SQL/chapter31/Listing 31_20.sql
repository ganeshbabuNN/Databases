create or replace procedure sumexp_code as
cursor c1 is
select expcode,sum(amount) samt
from expenditure
group by expcode;
begin
	for z in c1 loop
     		dbms_output.put_line(z.expcode||'  '||z.samt);
	end loop;
end sumexp_code;
/
