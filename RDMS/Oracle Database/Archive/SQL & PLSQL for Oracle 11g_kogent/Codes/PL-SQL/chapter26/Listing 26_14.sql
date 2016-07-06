declare
	fd1 bfile;
    	fd2 bfile;
	status integer;
begin
	fd1 := bfilename ( 'test', 'a.txt');
	fd2 := bfilename ( 'test', 'b.txt');
	dbms_lob.fileopen(fd1);
	dbms_lob.fileopen(fd2);
	status := dbms_lob.compare (fd1,fd2,5,1,1);
	if (status != 0) then
		dbms_output.put_line ( 'files are different');
 	else
		dbms_output.put_line ('files are same');
	end if;	
	dbms_lob.fileclose(fd1);
	dbms_lob.fileclose(fd2);
end;
/
