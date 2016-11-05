DECLARE
  v_cntr NUMBER := 0;
  v_message constant varchar2(30) := 'Hello world on ';
  v_system_date constant date := sysdate;

BEGIN
  LOOP
    EXIT WHEN v_cntr >= 10;
    
    --v_message :='what '; --constant nevery changes its value
    dbms_output.put_line('Hello world on ' || to_char(v_system_date, 'MM/DD/YYYY'));
    v_cntr := v_cntr + 1;
  END LOOP;
END;
/