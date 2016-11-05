DECLARE
  TYPE r_info IS RECORD (
    loc NUMBER,
    prior_letter VARCHAR2(1) );    
  TYPE t_info IS TABLE OF r_info
    INDEX BY BINARY_INTEGER;    
  v_info t_info;  
  v_string CONSTANT VARCHAR2(30) := 'Ganesh Babu';
BEGIN
  FOR i IN 1..3
  LOOP
    v_info(i).loc := instr(v_string, 'n', 1, i);
    v_info(i).prior_letter := substr(v_string, 
                           v_info(i).loc - 1,
                           1 );
  END LOOP;
  FOR i IN 1..3
  LOOP
    dbms_output.put_line('The letter just before position ' ||
       to_char(v_info(i).loc) || 
       ' is ' ||
       v_info(i).prior_letter  );
  END LOOP;
END;
/