declare
cursor c1 is
select ename en,salary
from emp_company;   ---A
begin
 for z in c1 loop                             --B
    dbms_output.put_line('data is '||z.en||' '||z.salary); --C
  end loop;
 
end;
/
