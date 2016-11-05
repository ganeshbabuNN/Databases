declare
	loc BFILE;
begin
	Select emppicture
	into loc
	from employee
	where empid = 101;
	if ( DBMS_LOB.FILEEXISTS( loc )=1) then
         	DBMS_OUTPUT.PUT_LINE ( ' File in existance ' ) ;
	else
	 	DBMS_OUTPUT.PUT_LINE ( ' File does not exist ' );
	end if;
end;
/
