declare
	dest clob;
        src clob;
        buffer varchar2(30);
        read_amt integer := 20;
        read_oft integer := 1;
begin
	select empinfo 
	into dest from employee
	where empid = 101
	for update;
	select empinfo 
	into src from employee
	where empid= 104;
	dbms_lob.append(dest, src);
        dbms_lob.read(dest,read_amt,read_oft,buffer);
        dbms_output.put_line(buffer);
end;
/