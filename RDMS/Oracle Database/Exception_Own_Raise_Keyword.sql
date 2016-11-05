CREATE OR REPLACE PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  BEGIN
    v_what := 'abc';
  EXCEPTION
    WHEN OTHERS
    THEN
      IF SQLCODE = -06502 
      THEN
        v_what := 123;
      ELSE
        RAISE; --- use Raise keyword
      END IF;
  END;  
  dbms_output.put_line(v_what);
END;
/

--call
begin
bad_abc;
end;

