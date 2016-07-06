declare
	type mark_var is varray(10) of integer;
	type mark_tab is table  of integer;
	x mark_var;
	y mark_tab;
begin
	x := mark_var(10,20,30);
	y := mark_tab(10,20,30);
	dbms_output.put_line('var count '||x.count||' first '||x.first||' last 			'||x.last);
	dbms_output.put_line('tab count '||y.count||' first '||y.first||' last 			'||y.last);
						-- x.delete(1); error
	y.delete(1);
	dbms_output.put_line('tab count '||y.count||' first '||y.first||' last 			'||y.last);
	y.delete(3);
	dbms_output.put_line('tab count '||y.count||' first '||y.first||' last 			'||y.last);
end;
/
