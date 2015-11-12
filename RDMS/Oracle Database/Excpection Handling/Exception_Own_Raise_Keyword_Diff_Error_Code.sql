-- if I change the sql code to some other thing and call the procedure, then check --the outputerror code is different and cannot handle the exceptions.
CREATE OR REPLACE PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  BEGIN
    v_what := 'abc';
  EXCEPTION
    WHEN OTHERS
    THEN
      IF SQLCODE = -06503 
      THEN
        v_what := 123;
      ELSE
        RAISE;
      END IF;
  END;  
  dbms_output.put_line(v_what);
END;
/

--call
begin
bad_abc;
end;
/