DECLARE
  i NUMBER := -99999;
  v_errm VARCHAR2(2001);
BEGIN
  LOOP
    EXIT WHEN i >= 2;
    
    v_errm := sqlerrm(i);
    IF v_errm NOT LIKE '%: Message % not found;%'
      AND
      v_errm NOT LIKE '%: non-ORACLE exception%'
    THEN
      dbms_output.put_line(v_errm);
    END IF;  
    
    i := i + 1;
  END LOOP;
  
END;
/

