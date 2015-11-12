BEGIN
  FOR i IN 1..5
  loop
    dbms_output.put_line(i);
  END loop;
END;
/