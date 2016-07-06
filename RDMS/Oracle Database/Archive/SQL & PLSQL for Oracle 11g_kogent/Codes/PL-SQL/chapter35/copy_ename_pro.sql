create or replace procedure copy_ename 
(table1 varchar2,  
enamecol out array_type) as  
begin 
	execute immediate 
	'begin 
		select ename bulk collect into :tab 
		from ' || table1 || '; ok
  	end;' 
	using out enamecol; 
end;
/
