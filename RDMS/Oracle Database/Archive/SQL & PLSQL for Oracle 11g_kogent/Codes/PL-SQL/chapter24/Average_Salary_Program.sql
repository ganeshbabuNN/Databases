declare
cursor c1 is
select salary
from emp_company;
x number:=0;
y number:=0;
countx number:=0;
avgx number := 0;
begin
 for z in c1 loop
       x := x + nvl(z.salary,0);
    countx := countx + 1;
 end loop;
 avgx := x/countx;
 dbms_output.put_line(avgx);
 
end;
/
