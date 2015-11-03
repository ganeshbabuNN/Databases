--if else statment

declare
  v_name varchar2(30):= 'GANESH';
begin
  if v_name ='ganesh'
  then
   dbms_output.put_line('name=GANESH');
  ELSIF v_name = 'GANESH'
  then
    dbms_output.put_line('name=ganesh');
  else
    dbms_output.put_line('i don t know what name is ');
  END if;
end;
/



--if statment
declare
  v_name varchar2(30):= 'GANESH';
begin
  if v_name ='ganesh'
  then
   dbms_output.put_line('name=GANESH');
   else
    dbms_output.put_line('i don t know what name is ');
  END if;
end;
/

--nested if

