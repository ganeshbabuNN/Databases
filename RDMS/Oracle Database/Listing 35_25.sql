declare
	file1 utl_file.file_type;
	samstr varchar2(100);
	errstr varchar2(1000);
      DIR_TEMP VARCHAR2(30)=’C:\TEMP’;
begin
					--utl_file_dir=/home/oracle8i/tmp
					-- utl_file_dir=C:\temp\,C:\TEMP1

	file1 := utl_file.fopen(DIR_TEMP,'sample.txt','r');
  	begin
    		loop
    			utl_file.get_line(file1,samstr);
    			dbms_output.put_line('the sample output '||samstr);
    		end loop;
     		exception
     		when no_data_found then
    		dbms_output.put_line('the sample output is complete');
   	end;
					--dbms_output.put_line('the sample output 							--'||samstr);
	utl_file.fclose(file1);
	file1 := utl_file.fopen(DIR_TEMP,'sample.txt','a');
	utl_file.put_line(file1,'The test is passed');
	utl_file.fclose(file1);
	exception
	when others then
	errstr :=sqlerrm;
	dbms_output.put_line(errstr);
end;
/
