DECLARE
  v_CURSOR_string VARCHAR2(2000) := '
    SELECT *
      FROM employees
      WHERE rownum < :rowsproc';
  TYPE t_local_emps 
    IS TABLE OF employees%ROWTYPE;
  v_local_emps t_local_emps;
BEGIN

  EXECUTE IMMEDIATE v_cursor_string
    BULK COLLECT INTO v_local_emps
    USING 3;
  
  FOR i IN 1..v_local_emps.LAST
  LOOP
    dbms_output.put_line('On Loop: ' || 
      i ||
      ',  ' || v_local_emps(i).last_name);
  END LOOP;    
      
END;
/