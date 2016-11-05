create or replace procedure update_dbms_sql(deptname varchar2) as 
empid_array dbms_sql.number_table;  
cursor1 number; 
str varchar2(200); 
rows_processed number; 
begin  
	str := 'update department  
     set dept = :newdept 
	returning empno into :id'; 
	cursor1 := dbms_sql.open_cursor;  
	dbms_sql.parse 
	(cursor1, str, dbms_sql.native);  
					--supply binds  
	dbms_sql.bind_variable 
	(cursor1, ':newdept', deptname);  
	dbms_sql.bind_array 
	(cursor1, ':id', empid_array);  
					--execute cursor  
	rows_processed := dbms_sql.execute(cursor1);  
	             			--get returning column into out bind array  
	dbms_sql.variable_value 
	(cursor1, ':id', empid_array);  
               			--display the empoyee id 
	for i in empid_array.first..empid_array.last loop 
	dbms_output.put_line('the empid of updated department 					is'||empid_array(i)); 
	end loop; 
	dbms_output.put_line('the number of rows processed are:' || 				rows_processed);
	dbms_sql.close_cursor(cursor1);  
end; 
/
