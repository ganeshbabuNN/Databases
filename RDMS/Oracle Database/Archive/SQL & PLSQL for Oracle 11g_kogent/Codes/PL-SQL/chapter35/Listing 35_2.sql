declare 
	str varchar2(200); 
	cursor_c1 int; 
	no_of_rows int; 
	name varchar2(10); 
	id int; 
	wherestr varchar2(50) := ‘ and  salary < 5000’;
begin 
				--open cursor and get cursor pointer
	cursor_c1 := dbms_sql.open_cursor;  
				--construct dynamic string
	str := 'select empno, ename from emp1 where   salary > :sal' || wherestr; 
				--a. first phase parse the statement
	dbms_sql.parse(cursor_c1, str, dbms_sql.native); 
        			--b. bind variable like :sal should be given values
	dbms_sql.bind_variable(cursor_c1, 'sal', 3000); 
				--c. define variable where values from rows are kept
	dbms_sql.define_column(cursor_c1, 1, id); 
	dbms_sql.define_column(cursor_c1, 2, name,10); 
     				-- d. execute phase 
	no_of_rows := dbms_sql.execute(cursor_c1);
				-- execute return value only for dml statement
	loop 
				-- e. fetch a row 
		if dbms_sql.fetch_rows(cursor_c1) > 0 then 
	      			-- fetch columns from the row 
	      		dbms_sql.column_value(cursor_c1, 1, id); 
	      		dbms_sql.column_value(cursor_c1, 2, name); 
               	dbms_output.put_line(id||'  '||name); 
	   	else 
	       		exit; 
	  	end if; 
	end loop; 
	dbms_sql.close_cursor(cursor_c1);
				-- f. close cursor 
end; 
/ 
