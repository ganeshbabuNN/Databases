create or replace package body enq_analysis as
U1 varchar2(20);
date1 date;
function finddate (enqno1 number) return date is
begin
	select enquirydate
	into date1
	from enquiry
	where enquiryno = enqno1;
	return (date1);
end finddate;
function finddate(fname1 varchar2,lname1 varchar2) return date is
begin
	select enquirydate
	into date1
	from enquiry
	where fname=fname1
	and sname=lname1;
	return (date1);
end finddate;
end enq_analysis;
/	
