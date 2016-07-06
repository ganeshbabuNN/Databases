create or replace procedure sumexp_type as
cursor c1 is
select exptype,sum(amount) samt
from expenditure ex,expmaster mast
where ex.expcode=mast.expcode
group by exptype;
begin
	for z in c1 loop
     		dbms_output.put_line(z.exptype||'  '||z.samt);
	end loop;
end sumexp_type;
/
