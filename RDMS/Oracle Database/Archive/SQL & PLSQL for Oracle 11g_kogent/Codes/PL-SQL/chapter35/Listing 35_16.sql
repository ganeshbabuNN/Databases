create or replace procedure insert_dbms_sql(empnumber number,deptname varchar2) 
as 
str varchar2(200); 
cursor1 number; 
rows_processed number; 
begin 
	str := 'insert into department values (:empno, :dname)'; 
     cursor1 := dbms_sql.open_cursor; 
  	dbms_sql.parse(cursor1, str, dbms_sql.native); 
  	dbms_sql.bind_variable 
  	(cursor1, ':empno', empnumber); 
  	dbms_sql.bind_variable 
  	(cursor1, ':dname', deptname); 
 	rows_processed := dbms_sql.execute(cursor1); -- execute 
 	dbms_sql.close_cursor(cursor1); -- close 
end; 
/
