create or replace procedure date_resadv(advname varchar2) as
cursor c1 is select enquirydate,count(*) cnt
from enquiry,advertisement adv
where adv.medianame = advname
and adv.refcode = enquiry.refcode
group by enquirydate;
begin
	for z in c1 loop
     		dbms_output.put_line(z.enquirydate||'   '||z.cnt);
	end loop;
end date_resadv;
/
