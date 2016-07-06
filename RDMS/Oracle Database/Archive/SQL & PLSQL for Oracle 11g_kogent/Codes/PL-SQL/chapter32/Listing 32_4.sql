create or replace package PKGbatchcode as
u1 varchar2(30);
date1 date;
procedure generate_batchcode
(ccode IN number,
bcode out number);
function validate_batchcode (bcode IN number) return boolean;
end PKGbatchcode;
/
