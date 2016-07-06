select text
from dba_source
where name='STANDARD';

--- checking its catching the exception block are not. the below exception has not matched.
declare
  v_name varchar2(30):= 'ganesh1';
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
exception
  when no_data_found
  then null;
end;
/

---matching the pre-defined excpeitons

declare
  v_name varchar2(30):= 'ganesh1';
begin
   case v_name
    when  'ganesh'
    then 
      dbms_output.put_line ('name=ganesh');
    when 'babu'
    then
      dbms_output.put_line('name=LEWIS');
  end case;
exception
  when case_not_found
  then null;
end;
/

--Raising your own exceptions
begin
  for v_cntr  in 1..10 loop
    dbms_output.put_line(v_cntr);
    IF v_cntr = 5
    then
      raise no_data_found;
    end if;
  end loop;
end;
/

-- now if you RAISE and handle the raised exceptions
begin
  for v_cntr  in 1..10 loop
    dbms_output.put_line(v_cntr);
    IF v_cntr = 5
    then
      raise no_data_found;
    end if;
  end loop;
exception    - exception handler...
  when no_data_found    -- exception able to handle 
  then null;
end;
/

--handle the exception immdiately using the nested block

begin
  for v_cntr  in 1..10 loop
    dbms_output.put_line(v_cntr);
    IF v_cntr = 5
    then
      begin
          raise no_data_found;
      exception
      when no_data_found  --Handled it immdiately
      then null;
      end;
    end if;
  end loop;
end;
/


--using custom exception using RAISE_APPLICATION_ERROR and OTHER keyword

begin
  for v_cntr  in 1..10 loop
    dbms_output.put_line(v_cntr);
    IF v_cntr = 5
    then
        raise_application_error(-2001,'got me exception');
       end if;
  end loop;
  exception
    when others   -- this is sepecial keyword
     then
     if sqlcode =-2001
     then null;
     else
        raise ;
    end if;
end;
/

--using custom exception using RAISE_APPLICATION_ERROR and OTHER keyword if does not matches, then it will raise again to the caller of the program

begin
  for v_cntr  in 1..10 loop
    dbms_output.put_line(v_cntr);
    IF v_cntr = 5
    then
        raise_application_error(-2002,'got me exception');
       end if;
  end loop;
  exception
    when others   -- this is sepecial keyword
     then
     if sqlcode =-2001
     then null;
     else
        raise ;
    end if;
end;
/





