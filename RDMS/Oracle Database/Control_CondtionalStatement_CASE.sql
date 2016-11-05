-simple case
declare
  v_name varchar2(30):= 'ganesh';
begin
   case v_name
    when  'ganesh'
    then 
      dbms_output.put_line ('name=ganesh');
    when 'babu'
    then
      dbms_output.put_line('name=LEWIS');
    else
     dbms_output.put_line('i don''t know the name');
   end case;
end;
/


-Search case instead of nested if you can you 

declare
  v_name varchar2(30):= 'ganesh';
begin
   case
    when v_name = 'ganesh'
    then 
      dbms_output.put_line ('name=ganesh');
    when v_name ='babu'
    then
      dbms_output.put_line('name=LEWIS');
   end case;
end;
/


-
