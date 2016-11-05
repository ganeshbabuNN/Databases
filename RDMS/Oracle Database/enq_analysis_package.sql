create or replace package enq_analysis as 
type address_rec is record
(plot varchar2(30),
street varchar2(30),
city varchar2(3),
pin number (8));
lastenqno number;
invalid_date exception;
cursor c1 return enquiry%rowtype;
function findname(enqno number) return varchar2;
procedure updateenrollstatus(enqno in number);
end enq_analysis;
/
