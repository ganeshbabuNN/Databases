--unconditional loop

declare
  v_cntr NUMBER := 0;
begin
   loop
   exit when v_cntr >= 10;
   dbms_output.put_line(v_cntr);
   v_cntr :=v_cntr + 1;   
   end loop;
end;
/

