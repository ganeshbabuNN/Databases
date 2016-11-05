DECLARE
 	x bfile;
 	y clob;
 	z binary_integer;
begin
 	x := bfilename('test','a.txt');
	if dbms_lob.fileexists(x) =1 then
		z := dbms_lob.getlength(x);
 		dbms_lob.fileopen(x);
 		insert into emp1(empid,empinfo) values(1,empty_clob()) returning 				empinfo into y;
		dbms_lob.loadfromfile(y,x,z);
 		dbms_lob.fileclose(x);
  	else
		dbms_output.put_line('specified file does not exist.');
	end if;
end; 
/