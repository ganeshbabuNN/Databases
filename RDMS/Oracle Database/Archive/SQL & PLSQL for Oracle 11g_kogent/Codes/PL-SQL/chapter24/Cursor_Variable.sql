declare
type rectype is record –c defines record type
( 
 rn number,
 name varchar2(30),
 p number,
 c number,
 m number
 );
z rectype; --d  defines variable of record type
type curtype  is  ref cursor return rectype; --a define cursor data type
c1 curtype; --b define variable of cursor type

status number:=2;

begin
 if(status=1) then
   open c1 for  --4
   select rn,name,p,c,m  
   from pcm
   order by p;  
 end if;
 if(status=2) then
   open c1 for  --4
   select rn,name,p,c,m  
   from pcm
   order by c;  
 end if;
 if(status=3) then
   open c1 for  --4
   select rn,name,p,c,m  
   from pcm
   order by m;  
 end if;
 fetch c1 into z; --2
 while(c1%found) loop  --3
   dbms_output.put_line(rpad(z.rn,2) ||' '||rpad(z.name,30)||' '||z.p||' '||z.c||' '||z.m); --4
   fetch c1 into z; --5
  end loop;--6
 close c1; --7
end;
/
