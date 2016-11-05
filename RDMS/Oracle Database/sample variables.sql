DECLARE
  v_cntr NUMBER := 0;

  v_system_date CONSTANT DATE := sysdate;

  v_message CONSTANT VARCHAR2(30) := 'Hello world on ';

BEGIN

  LOOP
    EXIT WHEN v_cntr >= 10;

    dbms_output.put_line(v_message || to_char(v_system_date, 'MM/DD/YYYY'));

    v_cntr := v_cntr + 1;
  END LOOP;

END;
/
