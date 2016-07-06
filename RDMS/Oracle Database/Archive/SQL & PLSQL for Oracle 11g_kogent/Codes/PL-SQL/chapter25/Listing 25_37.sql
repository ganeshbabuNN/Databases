declare
	type mark_var is varray(10) of integer;
	type mark_tab is table  of integer;
	x mark_var;
	y mark_tab;
	procedure print_var(px mark_var) is
begin
	for i in 1..px.count loop
		dbms_output.put_line('the elements in varray are '||px(i));
	end loop;
end;
procedure print_tab(px mark_tab) is
begin
	for i in px.first..px.last loop
		if(px.exists(i)) then
			dbms_output.put_line('the elements in varray are '||px(i));
		end if;
	end loop;
end;

begin
	x := mark_var(10,20,30);
	y := mark_tab(10,20,30);
	dbms_output.put_line('tab count '||y.count||' first '||y.first||' last 			'||y.last);
	print_tab(y);
	dbms_output.put_line('tab count '||y.count||' first '||y.first||' last 			'||y.last);
	y.extend(2,3);--extending third element two times
	dbms_output.put_line('tab count '||y.count||' first '||y.first||' last 			'||y.last);
	print_tab(y);
end;
/
