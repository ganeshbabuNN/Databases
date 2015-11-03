declare
  v_cntr number :=0;
begin
  while v_cntr <=10 loop
    v_cntr := v_cntr +1;
    dbms_output.put_line(v_cntr);
  end loop;
end;
/