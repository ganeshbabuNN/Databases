declare
  fh UTL_FILE.file_type;
begin
  fh := utl_file.fopen(
   location => 'FILE_DIR',
   filename => 'first_file2.txt',
   open_mode => 'r');
  utl_file.fclose(fh);
end;
/

