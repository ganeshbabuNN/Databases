--insert the 'ename' column into another 							--table table2 
create or replace procedure copy_ename1 
(table1 varchar2, table2 varchar2) is 
enamecol  array_type; 
begin 
        copy_ename(table1,enamecol);
	execute immediate 
	'begin 
		forall i in :first .. :last 
	       insert into ' || table2 || ' values (:tab(i)); 
	end;'  
	using enamecol.first, enamecol.last, enamecol; 
end; 
/
