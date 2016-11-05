create or replace procedure insert_into_table ( 
table_name  varchar2, 
empno       	number, 
name    	varchar2, 
sal    	number) is 
str    	varchar2(200); 
begin 
	str := 'insert into ' || 
	table_name || ' values 
	(:empno, :name, :sal)'; 
	execute immediate str 
	using 
	empno,name,sal; 
end; 
/
