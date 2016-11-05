DECLARE
  fh UTL_FILE.file_type;
BEGIN
  fh := utl_file.fopen(
       location => 'FILE_DIR', 
       filename => 'first_file.txt',
       open_mode => 'a');       
  FOR i IN 1..5  --append to a file content
  LOOP
    utl_file.put(fh,
        'Hello. This is line ' ||
        to_char(i) );
  END LOOP;  
  utl_file.fclose(fh);  
END;
/