create or replace package test1 as
x number;
y number:=90;
procedure add3(a in number,b in number,d in number,c out number);
function sqr(a number) return number;
end test1;
/
