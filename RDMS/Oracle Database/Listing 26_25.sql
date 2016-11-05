declare
	loc   bfile;
begin
	select emppicture
	into loc
	from employee
	where empid = 104;
	dbms_lob.fileopen(loc);
	if ( dbms_lob.fileisopen(loc)=1)  then
		dbms_output.put_line ( ' file is open' );
	end if ;
end;
/