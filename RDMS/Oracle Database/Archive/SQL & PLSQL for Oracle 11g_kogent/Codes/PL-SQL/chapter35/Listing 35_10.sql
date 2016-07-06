create or replace procedure ddl_add_table is 
begin 
	execute immediate 
	'create table emp_detail 
	( 
	ename   varchar2(10), 
	city    varchar2(20) 
)'; 
end; 
/
