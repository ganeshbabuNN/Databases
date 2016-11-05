create or replace procedure sumamt_week as
cursor c1 is
select to_char(feespaiddate,'MON') mnt,
to_char(feespaiddate,'W') week,
sum(amount) samt from feespaid
group by to_char(feespaiddate,'MON'),to_char(feespaiddate,'W');
begin
	for z in c1 loop
     		dbms_output.put_line(z.mnt||'    '||z.week  ||'    '||z.samt);
	end loop;
end sumamt_week;
/
