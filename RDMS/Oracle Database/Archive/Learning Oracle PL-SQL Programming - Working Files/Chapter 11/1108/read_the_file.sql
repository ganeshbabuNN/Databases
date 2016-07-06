
DECLARE
  fh UTL_FILE.file_type;
  v_buffer VARCHAR2(1000);
BEGIN
  fh := utl_file.fopen(
       location => 'FILE_DIR', 
       filename => 'first_file.txt',
       open_mode => 'r');
       
  FOR i IN 1..6
  LOOP
    utl_file.get_line(fh, v_buffer );
        
    dbms_output.put_line(v_buffer);    
  END LOOP;
  
  utl_file.fclose(fh);
  
END;
/

