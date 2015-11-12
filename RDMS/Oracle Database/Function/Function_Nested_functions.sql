---let us take the for loop scenarios
DECLARE
  v_increment NUMBER := 3;
BEGIN
  FOR I IN REVERSE 1..10
  LOOP
    IF mod(i,v_increment) != 0
    THEN
      CONTINUE;
    END IF;
    dbms_output.put_line(i);
  END LOOP;
END;
/

--now let us modularize the logic by nested functions
DECLARE
  v_increment NUMBER := 3;
  FUNCTION modit(
    p_dividend IN NUMBER,
    p_divisior IN NUMBER )
  RETURN BOOLEAN
  AS
  BEGIN
    RETURN (mod(p_dividend,p_divisior) = 0);
  END;
BEGIN
  FOR I IN REVERSE 1..10
  LOOP
    IF modit(i,v_increment)
    THEN
      dbms_output.put_line(i);
    END IF;
  END LOOP;
END;
/