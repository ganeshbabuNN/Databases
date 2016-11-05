create or replace package body test1 as
z number;  --A
function add2(a in number,b in number) return number is
begin
 return(a+b);
end;
procedure add3(a in number,b in number,d in number,c out number) is
e number;
begin
 e := add2(a,b);
 z := add2(e,d);
 c:= z;
end;
function sqr(a number) return number is
begin
 return(a*a);
end;
begin --B
  x :=67;
  y :=80;
  z :=0;
  dbms_output.put_line(' initialization code');
end test1; --C
/

