CREATE OR REPLACE PROCEDURE write_employees3 AS
  CURSOR c1 IS 
     SELECT first_name, 
            hire_date hire_date, 
            salary salary
       FROM hr.employees
       WHERE rownum <= 3;       
  v_fh UTL_FILE.file_type;
  v_string VARCHAR2(32000);  
BEGIN
  v_fh := UTL_FILE.fopen('FILE_DIR', 'emps3.txt', 'w', 32000);  
  FOR ci IN c1 
  LOOP
    v_string := v_string || '"' || stringer.stringify(ci.first_name)  || '",';  
    v_string := v_string || stringer.stringify(ci.hire_date) || ',';  
    v_string := v_string || stringer.stringify(ci.salary);  
    UTL_FILE.put_line( v_fh, v_string );
    v_string := NULL;
  END LOOP;  
  UTL_FILE.fclose( v_fh );  
END; 
/