declare
	x ref cust_type;
	y cust_type;
begin
	select ref(p)
	into x
	from  cust_nagpur p
	where cust_code=1;
	select deref(x)
	into y
	from dual;
	dbms_output.put_line('name is '||y.cust_name);
	dbms_output.put_line('name is '||y.getname);
end;
/
