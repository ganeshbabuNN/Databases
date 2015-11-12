--creating the directory
CREATE OR REPLACE DIRECTORY file_dir AS 'C:\emp_demo'; 

--fh is like a pointer based like a C pointer or an ID of an File. this is used to --handle multiple file so that we can use.file handle is identified by the file --type called UTL_FILE.file_type package

declare
   fh UTL_FILE.file_type;
begin
   null;
end;