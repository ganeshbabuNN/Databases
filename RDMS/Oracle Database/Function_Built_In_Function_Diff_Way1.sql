--in different way1
declare
   v_declare_value varchar2(1); --declare a local variable
begin
  select decode('D','D','B','C')
   into v_declare_value  --store it
   from dual;   
   if v_declare_value='C' --from there you use for manipulation
   then
      logit('this is ganesh','D');
   end if;
end;
/