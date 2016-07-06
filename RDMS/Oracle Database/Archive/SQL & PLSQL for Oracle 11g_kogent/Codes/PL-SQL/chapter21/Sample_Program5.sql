declare
 x number :=34;
 y number:=0;
 z number(2);
 begin
   z:=x/y;  --a
   z:=z+10 --g
   dbms_output.put_line('z value '||to_char(z)); --b
   exception
   when zero_divide then
   z:=0; --c
   dbms_output.put_line('z value  excp '||to_char(z)); --d
   when others then
   z:=0; --e
   dbms_output.put_line('z value  excp value '||to_char(z)); --f
 end; 
/
