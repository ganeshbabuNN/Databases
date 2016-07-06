--implicit conversion
DECLARE
  v_string VARCHAR2(30) := '10/30/1998 12:34:03 PM';
  v_date DATE;
BEGIN
  v_date := v_string;
END;
/

--explicit conversion
DECLARE
  v_string VARCHAR2(30) := '10/30/1998 12:34:03 PM';
  v_date DATE;
BEGIN
  v_date := to_date(v_string);
END;
/

-- Date conversion using the format mask

DECLARE
  v_string VARCHAR2(30) := '10/30/1998 12:34:03 PM';
  v_date DATE;
BEGIN
  v_date := to_date(v_string, 'MM/DD/YYYY HH:MI:SS AM');
  dbms_output.put_line(v_date);
END;
/

-- Timestamp conversion

DECLARE
  v_string VARCHAR2(30) := '10/30/1998 12:34:03.987654 PM';
  v_date timestamp;
BEGIN
  v_date := to_timestamp(v_string, 'MM/DD/YYYY HH:MI:SS.FF AM');
  dbms_output.put_line(v_date);
END;