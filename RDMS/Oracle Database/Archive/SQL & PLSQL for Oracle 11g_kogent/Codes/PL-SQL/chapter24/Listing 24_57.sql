--Procedure for dropping table
					--Procedure for dropping table
create or replace procedure drtable (tname in varchar2) as
	cursorid integer;
begin
	/* open new cursor and retun it's cursor id*/
	cursorid := dbms_sql.open_cursor;
	/* parse and execute dynamic sql statment */
	dbms_sql.parse (cursorid, 'drop table' || tname, dbms_sql.native);
	/* close cursor */
	dbms_sql.close_cursor(cursorid);
     exception
     when others then
               dbms_sql.close_cursor (cursorid);
end drtable;
/
