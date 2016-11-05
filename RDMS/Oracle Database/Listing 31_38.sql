create or replace procedure amt_format as
cursor c1 is
select rollno,to_char(amount,'99,999,99') amt from feespaid;
begin
	for z in c1 loop
		dbms_output.put_line(z.rollno||'     '||z.amt);
	end loop;
end amt_format;
/
