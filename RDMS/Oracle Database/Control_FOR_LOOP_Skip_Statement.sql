--using modulus is good for skipping the statement
DECLARE
  v_increment NUMBER := 5;
BEGIN
  FOR I IN 1..10
  LOOP
    IF mod(i,v_increment) != 0
    THEN
      CONTINUE;
    END IF;
    dbms_output.put_line(i);
  END LOOP;
END;
/