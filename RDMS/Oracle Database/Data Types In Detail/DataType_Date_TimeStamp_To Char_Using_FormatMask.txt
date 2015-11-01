DECLARE
  v_string VARCHAR2(30) := '10/30/1998 12:34:03 PM';
  v_date DATE;
BEGIN
  v_date := to_date(v_string,'MM/DD/yyyy HH:MI:SS AM');
   dbms_output.put_line(  to_char(v_date, 'FMDD Month, YYYY') );
END;
/

-- FM is a format mask , if you don't you it.. check .. will be right padded space
