declare
x number := 45;
y number := 60;
z number := 23;
big number;
begin
big := x;
if(y > big) then
big := y;
end if;
if(z > big) then
big := z;
end if;
dbms_output.put_line('the big number is '||to_char(big));
end;
/
