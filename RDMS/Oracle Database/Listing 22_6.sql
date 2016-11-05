declare
    tm1 char(5);
    tm2 char(5);
   diff number(5);
begin
    select to_char(sysdate,'sssss')
    into tm1
    from dual;
    tm2 := '10000';
   diff := tm1 - tm2;
/* implicit conversion is taking place in above expression  */
end;
