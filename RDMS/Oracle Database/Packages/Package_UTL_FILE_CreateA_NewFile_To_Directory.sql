declare
  fh UTL_FILE.file_type;
begin
  fh := utl_file.fopen(
   location => 'FILE_DIR', --directory which you have created
   filename => 'first_file.txt',
   open_mode => 'w'); --write mode
  utl_file.fclose(fh);
end;