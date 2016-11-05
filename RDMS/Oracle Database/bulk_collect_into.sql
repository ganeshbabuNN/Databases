DECLARE
  TYPE t_local_emps 
    IS TABLE OF EMPLOYEES%ROWTYPE;
  v_local_emps t_local_emps;
BEGIN

  SELECT *
    BULK COLLECT INTO v_local_emps
    FROM EMPLOYEES;

  FOR i IN 1..v_local_emps.LAST
  LOOP
    dbms_output.put_line(v_local_emps(i).last_name);
  END LOOP;
END;
/

