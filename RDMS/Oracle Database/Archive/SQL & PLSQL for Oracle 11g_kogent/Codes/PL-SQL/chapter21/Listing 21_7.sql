declare 
    amt number(10,2);
    i number;
begin
    amt := 2000;
    for i in 1..10 loop
         amt := (amt *15/100) +amt;
    end loop;
end;
/
