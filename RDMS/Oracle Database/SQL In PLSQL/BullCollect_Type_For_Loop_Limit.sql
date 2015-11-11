DECLARE
  CURSOR c_emps IS
    SELECT last_name, first_name
      FROM employees;
  TYPE t_local_emps 
    IS TABLE OF c_emps%ROWTYPE;    
  v_local_emps t_local_emps;  
  v_loop_counter NUMBER := 0;
BEGIN
  OPEN c_emps;  
  LOOP
    FETCH c_emps 
      BULK COLLECT INTO v_local_emps
      LIMIT 3; ----limiting the row
    v_loop_counter := v_loop_counter + 1;
    FOR i IN 1..v_local_emps.LAST
    LOOP
      dbms_output.put_line('On Loop: ' || 
        v_loop_counter ||
        ',  ' || v_local_emps(i).last_name);
    END LOOP;
    EXIT WHEN c_emps%NOTFOUND;      
  END LOOP;          
END;
/