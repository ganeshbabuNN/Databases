BEGIN
  FOR v_cntr IN 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE(v_cntr);
    IF v_cntr = 5
    THEN
      RAISE_APPLICATION_ERROR(-20001, 'Got me an exception');
    END IF;
  END LOOP;
EXCEPTION
  WHEN others
  THEN
    IF sqlcode = -20001
      THEN NULL;
    ELSE
      RAISE;
    END IF;
END;
/
