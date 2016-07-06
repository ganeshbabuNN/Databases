declare
	info1 clob;
begin
	select empinfo
	into info1
	from employee 
	where empid = '101';
	dbms_output.put_line ( 'size of column is  '|| dbms_lob.getlength(info1));
end;
/
