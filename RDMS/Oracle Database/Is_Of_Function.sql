declare
x complex3;
flag1 boolean;
flag2 boolean;
begin
x := complex3(3,4);
flag1:= x is of (complex1);
if(flag1) then
 dbms_output.put_line(' x is of type complex1');
end if;
flag2:= x is of (complex3);
if(flag1) then
 dbms_output.put_line(' x is of type complex3');
end if;
end;
