create or replace function fadd2(x number,y number)return number as
z number;
begin
z:=x+y;
return(z);
end;
/
program for using function
declare 
a number;
begin
a:=fadd2(12,56)+fadd2(4,6); --use of function
dbms_output.put_line(a);
end;
/
