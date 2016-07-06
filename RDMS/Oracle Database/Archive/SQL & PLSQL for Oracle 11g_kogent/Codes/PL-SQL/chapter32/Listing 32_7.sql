create package body enq_analysis as 
enqdate1 date;
cursor c1 is
select * from enquiry;
function checkenqno(enqno number) return boolean is
begin
end checkenqno;
function findname (enqno number) return varchar2 is
begin
end findname;
procedure updateenrollstateus(enqno number) is
begin
end;
begin					--package initialization part
	select max(enquiryno)
	into lastenqno
	from enquiry;
end enq_analysis;
/
