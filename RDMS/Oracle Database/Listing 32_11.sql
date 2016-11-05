Create or replace package enq_analysis as
PRAGMA SERIALLY_REUSABLE;
u1 varchar2(30);
date1 date;
function finddate (enqno1 number) return date;
function finddate (fname1 varchar2) return date;
end enq_analysis;
/
