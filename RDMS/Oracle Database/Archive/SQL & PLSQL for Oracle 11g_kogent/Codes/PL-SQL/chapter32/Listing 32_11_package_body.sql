create or replace package body enq_analysis as
PRAGMA SERIALLY_REUSABLE;
u1 varchar2(30);
date1 date;
function finddate (enqno1 number) return date is
date1 date;
begin
	select enquirydate
	into date1
	from enquiry
	where enquiryno = enqno1;
	Return (date1);
end finddate;
function finddate(fname1 varchar2) return date is
date1 date;
begin
	select enquirydate
	into date1
	from enquiry
	where fname=fname1;
	return (date1);
end finddate;
begin
	select USER 
	into u1 
	from dual;
	select sysdate
	into date1
	from dual;
	insert into batchaudit values(u1, date1);

end enq_analysis;
/
