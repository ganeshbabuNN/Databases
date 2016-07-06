create or replace package enq_analysis as
function finddate (enqno1 number) return date;
function finddate (fname1 varchar2,lname1 varchar2) return date;
end enq_analysis;
/
