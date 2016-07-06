-variables
- v_cntrl is the variable declared as NUMBER as Data type and initialized to zero.

declare
  v_cntr NUMBER := 0;  --v_cntr is a variable
begin
  loop
  exit when v_cntr >=10;
   v_cntr :=v_cntr +1;
   dbms_output.put_line('row' || to_char(v_cntr));
  end loop;  
end;
/




