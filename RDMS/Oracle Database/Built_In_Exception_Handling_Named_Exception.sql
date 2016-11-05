--Built-In Exception 
CREATE OR REPLACE PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  FOR i IN 1..5
  LOOP
    BEGIN
      v_what := 'abc';
    EXCEPTION
      WHEN VALUE_ERROR
      THEN
        v_what := 123;
    END;
    dbms_output.put_line('i= ' || i || ' ' || v_what);
  END LOOP;  
  dbms_output.put_line('Finished');
END;
/

--call
BEGIN
  bad_abc;
END;
/

