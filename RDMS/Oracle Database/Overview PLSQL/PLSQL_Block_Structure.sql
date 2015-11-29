DECLARE
/*Declarations section: Variables, Types and local subprograms */
--  v_var varchar2(10);
  v_var varchar2(10) = "Hello world";

BEGIN
/*Executable section: Procedural and SQL Statements are place here. */
  /*this is the only section of the block that is required*/
--dbms_output.put_line('Hello world');
dbms_output.put_line(v_var);

EXCEPTION
 /*Exception handling section: Error Handling statemetns are placed here.*/
 when no_data_found THEN 
  null;
end;

END;