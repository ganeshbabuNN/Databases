CREATE OR REPLACE PROCEDURE text_it(
   P_message IN VARCHAR2 )
AS
BEGIN
  Dbms_output.put_line(p_message);
END;
/
